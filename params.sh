#!/bin/bash

echo uzycie '$@'
for p in $@ ; do
	echo "$p"
done
echo

echo uzycie "'$@'"
for p in $@ ; do
	echo "$p"
done
echo
