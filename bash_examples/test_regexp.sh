#!/bin/bash

regtest="tekst2345"

if [[ $regtest =~ ([a-z]{5})([0-9]{4}) ]] ; then
  echo ${BASH_REMATCH[*]}
fi
