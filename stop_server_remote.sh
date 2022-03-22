#!/bin/bash
host=$(cat ${PWD}/hosts)
ssh -A root@${host} "screen -XS mc-server quit"
