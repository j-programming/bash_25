#!/bin/bash

decho() {
  if [ -n "$DEBUG" ] ; then
    printf "+ $*\n" >&2

    printf "+ Trace:\n" >&2
    for key in ${!FUNCNAME[@]} ; do
      printf "+  ${BASH_SOURCE[$key]}:${FUNCNAME[$key]}:\
${BASH_LINENO[$key]}\n" >&2
    done
  fi
}

DEBUG=on
decho $LINENO: ala ma kota
DEBUG=
decho $LINENO: ala ma dwa koty

