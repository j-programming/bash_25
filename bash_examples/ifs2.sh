#!/bin/bash

IFS="|"

echo Uzycie '$*'
for p in $* ; do
  echo "$p"
done
echo

echo Uzycie '"$*"'
for p in "$*" ; do
  echo "$p"
done
echo

