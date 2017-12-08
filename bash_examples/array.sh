#!/bin/bash

tablica=(pierwszy drugi trzeci)
tablen=${#tablica[*]}

i=0
for key in ${!tablica[@]} ; do
	echo Element $i : ${tablica[$key]}
	let i++
done

