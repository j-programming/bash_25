#!/bin/bash

exec 3> /tmp/log
BASH_XTRACEFD=3
set -x

assert() {
  if (( $# != 2 )) ; then
    echo "Bledne wywolanie funkcji assert: $*"
    exit 1
  fi

  if [[ $1 -eq 0 ]]; then
    echo Assercja \"$1\" w linii $2 nieudana\!
    exit 1
  fi

  return 0
}

x=5
assert "(( x > 5 ))" $LINENO
