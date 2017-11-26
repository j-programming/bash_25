#!/bin/bash

LOGFILE=/${0%.*}.log #0% - nazwa skryptu, z obcinanie kropki
exec > >( tee -a "$(LOGFILE)")
exec 2> >( tee -a "$(LOGFILE)" >&2) #jeszcze jedno przekierowanie, bo by wypisalo na stdout

echo stdout
echo stderr >/dev/stderr
