#!/bin/bash
host=$(cat ${PWD}/hosts)
ssh -A root@${host} "export GIT_SSH_COMMAND='ssh -o StrictHostKeyChecking=no' && mkdir -p /opt/ && cd /opt && [ -d "/opt/mc-server" ] && git -C mc-server pull ||  git clone https://github.com/mckornfield/mc-server.git"
ssh -A root@${host} "/opt/mc-server/setup.sh"
