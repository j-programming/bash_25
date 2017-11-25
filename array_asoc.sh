#!/bin/bash

declare -A tablica_a=([pierwszy]=a [drugi]=b [trzeci]=c)
tablen=${#tablica_a[*]}
echo $tablen

for key in ${!tablica_a[@]} ; do
	echo Element $key : ${tablica_a[$key]} #NOT i because removing elements from table
done
echo
echo usuniecie:
unset tablica_a[drugi]

tablen=${#tablica_a[*]}
echo $tablen

for key in ${!tablica_a[@]} ; do
        echo Element $key : ${tablica_a[$key]} #NOT i because removing elements$
done

