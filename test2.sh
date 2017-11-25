#!/bin/bash

#mozna dokumentem miejscowym cat << __EOF__ txt __EOF__
help(){
	echo tu jest pomoc
}

file() {
	if [-f "$1"] ; then
	echo plik
	fi
}

folder() {
	echo fol
}

echo $1
echo $2
echo $*
arg=1

if [ "$#" -eq 2 ]; then
while [ -n "$1"]; do
	case "$1" in
		-f || --file)
			shift
			file $1
		;;
		-d || --dir)
			shift
			folder $1
		;;
		*)
			help
		;;

	esac
done
else
	help
fi
