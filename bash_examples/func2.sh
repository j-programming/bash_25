#!/bin/bash

func() {
  echo Parametry $#: $*
}

echo Parametry $#: $*

czwarty=trzeci
func pierwszy drugi $czwarty

