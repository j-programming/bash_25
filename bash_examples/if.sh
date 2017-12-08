#!/bin/bash

if [ "$#" -ne 2 ] ; then
  echo "Podaj dwa parametry"
fi

par1="$1"
par2="$2"

if [ -z "$par1" ]; then
  echo pierwszy parametr pusty
elif [ -z "$par2" ]; then
  echo drugi parametr pusty
else
  if [ "$par1" = "$par2" ]; then
    echo Parametry takie same
  else
    echo "rozne parametry"
  fi
fi
