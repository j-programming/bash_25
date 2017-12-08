#!/bin/bash

#exec 3> /tmp/log
#BASH_XTRACEFD=3
#set -x

function usage() {
  cat << _EOF_

Prosty skrypt

Usage: $0

  -f, --file file
    sprawdz czy plik istnieje

  -d, --dir dir
    sprawdz czy to katalog

  -h,--help
    wypisz pomoc

_EOF_

}

function parse_args() {

  while [ -n "$1" ]; do
    case "$1" in
    -f|--file)
      shift
      if [ -f "$1" ]; then
        echo "Plik $1 istnieje"
      fi
      shift
      ;;
    -d|--dir)
      shift
      if [ -d "$1" ]; then
        echo "Plik $1 istnieje i jest katalogiem"
      fi
      shift
      ;;
    -h|--help)
      usage
      exit 0
     ;;
    *)
      echo "Unrecognized option: $1"
      usage
      exit 1
    ;;
    esac
  done
}

if [ "$#" -lt 2 ]; then
  usage
  exit 1
fi

parse_args "$@"

