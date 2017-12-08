#!/bin/bash

declare -A tablica_a=([pierwszy]="ala ma" [drugi]=rudego [trzeci]=kota)
tablen=${#tablica_a[*]}

for key in ${!tablica_a[@]} ; do
	echo Element $key : ${tablica_a[$key]}
done

echo
echo "Usuwam klucz \"drugi\""
unset tablica_a[drugi]

for key in ${!tablica_a[@]} ; do
	echo Element $key : ${tablica_a[$key]}
done

