#!/bin/bash

BC_SCALE=3

function fexpr() {
  [ "$#" -eq 0 ] && return -1
  echo "scale=${BC_SCALE}; $@" | bc -q 2>/dev/null
}

function ftest() {
  [ "$#" -eq 0 ] && return -1
  local res=$( echo "scale=${BC_SCALE}; $@" | bc -q 2>/dev/null )
  [ -z "$res" ] && res=0

  # return 1 oznacza warunek falszywy
  return $(( res == 0 ))
}

fexpr 4.0 - 4

if ftest "2.0 < 1.0" ; then
  echo prawda
else
  echo nie prawda
fi

