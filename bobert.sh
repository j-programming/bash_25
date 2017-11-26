#!/bin/bash

if [ "$#" -gt 3 ] ; then
	((x="$@")) 2>/dev/null
	if [ $? != 0 ]; then
		echo dzielenie przez 0	
		exit 1
	else
	echo $x
	fi
else
echo podaj minimum 3 argumenty
	
fi

