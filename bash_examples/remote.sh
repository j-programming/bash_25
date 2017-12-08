#!/bin/bash

gzip -c remote_exec.sh | ssh localhost "zcat > /tmp/exec.sh; chmod +x /tmp/exec.sh; /tmp/exec.sh"

