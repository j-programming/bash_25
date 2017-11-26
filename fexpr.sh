#!/bin/bash

fepxr() {
	x="$(echo "scale=2; $@" | bc -q  2>/dev/null )"
		if [ $? != 0 ]; then
			echo error	
			exit 1
		else
		echo $x
	fi
}

ftest() {
	x="$( echo "$@" |bc -q 2>/dev/null )"
	if [ -z "$x" ] && x=0  ; then
        	echo error  	
                exit 1
        else
	        if [ $x -eq 1 ]; then
                echo Rowne
                exit 0
		fi	
        fi
};


fepxr $@;
ftest $@;


#cos prawie dziala
