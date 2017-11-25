#!/bin/bash

file="/usr/local/bin/test.sh"

echo ${file##*/}
echo ${file%/*.sh}
