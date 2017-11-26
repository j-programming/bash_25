#!/bin/bash
assert() {
	set -x
	if eval "$1" ; then
		echo True; exit 0
	else echo False, assertion faild in line "$2"; exit 1
	fi	
	set +x
}

exec 3>assert.log
BASH_XTRACEFD=3

assert "$1" $LINENO

3>&-

