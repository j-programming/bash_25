#!/bin/bash


zm1="wefw"
zm2="fwgf"

if [-z  "$zm1" ]
then
	echo param1 pusty
else
	echo "param1 nie jest pusty"
fi

if [-z  "$zm2" ]
then
        echo param2 pusty           
else
        echo "param1 nie jest pusty"
fi


if [ "$#" -ne 2] ; then 
	echo "podaj 2 el"
fi

par1="$1"
par2="$2"

if [ -z "$par1" ] ; then
	echo pierwszypusty
elif [ -z "$par2"] ; then
        echo pierwszypusty
fi
