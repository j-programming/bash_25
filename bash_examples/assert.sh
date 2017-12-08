#!/bin/bash

exec 3> /tmp/${0%.*}.log
BASH_XTRACEFD=3
set -x

assert() {
  if (( $# != 2 )) ; then
    echo "Bledne wywolanie funkcji assert: $*"
    exit 1
  fi

  if ! eval $1 ; then
    echo Assercja \"$1\" w linii $2 nieudana\!
    exit 1
  fi
}

#assert "[ aa = bb ]" $LINENO

x=5
assert "(( x > 5 ))" $LINENO

