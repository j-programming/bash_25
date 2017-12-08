#!/bin/bash

lokalna="wartosc globalna"
func() {
  local lokalna="mam lokalna wartosc"
  echo  $lokalna
}

func
echo $lokalna
