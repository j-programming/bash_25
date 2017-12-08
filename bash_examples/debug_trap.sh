#!/bin/bash
#set -x

function traps() {
  [ "$3" == 'traps' ] && return

  echo "$@"
}

trap 'traps EXIT $LINENO ${FUNCNAME[0]}' EXIT

#set -e
set -o errtrace
trap 'traps ERR $LINENO ${FUNCNAME[0]}' ERR

shopt -s extdebug
trap 'traps DEBUG $LINENO ${FUNCNAME[0]}' DEBUG

set -o functrace
trap 'traps RETURN $LINENO ${FUNCNAME[0]}' RETURN

function test() {
  echo "funkcja ${FUNCNAME[0]}"
}

false

test
echo test

