#!/bin/bash

LOGFILE=/tmp/${0%.*}.log

exec > >( tee -a "${LOGFILE}" )
exec 2> >( tee -a "${LOGFILE}" >&2 )

echo stdout
echo stderr >/dev/stderr

