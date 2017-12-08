#!/bin/bash

[ "$#" -lt 1 ] && exit 0

(( x="$@" )) 2>/dev/null

if [ $? != 0 ]; then
  echo Bledne wyrazenie
else
  echo $x
fi

