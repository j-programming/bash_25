#!/bin/bash

func() {
  echo parametry $#: $*
}

echo parametry $#: $* #0 nie, zdefiniowane parametry 

czwarty=trzeci
func pierwszy drugi $czwarty
