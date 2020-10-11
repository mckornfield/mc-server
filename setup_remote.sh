#!/bin/bash
ssh -A root@$1 "export GIT_SSH_COMMAND='ssh -o StrictHostKeyChecking=no' && mkdir -p /opt/ && cd /opt && rm -rf /opt/mc-server && git clone git@github.com:mckornfield/mc-server"
ssh -A root@$1 "/opt/mc-server/setup.sh"
