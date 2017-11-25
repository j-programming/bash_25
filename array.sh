#!/bin/bash

tablica=(pierwszy drugi trzeci)
tablen=${#tablica[*]}

i=0
for key in ${!tablica[@]} ; do
	echo Element $key : ${tablica[$key]} #NOT i because removing elements from table
	let i++
done
