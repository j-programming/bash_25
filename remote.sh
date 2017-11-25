#!/bin/bash

gzip -c remote_exec.sh | ssh localhost "zcat > /tmp/exec.sh; chmod +x /tmp/exec.sh; /tmp/exec/sh"

#scp remote_exec.sh student@localhost:/home/student/import/remote_exec.sh
#ssh localhost | ./import/remote_exec
