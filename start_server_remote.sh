#!/bin/bash
host=$(cat ${PWD}/hosts)
ssh -A root@${host} "cd /opt/mc-live-server/ && ./run_server.sh"
