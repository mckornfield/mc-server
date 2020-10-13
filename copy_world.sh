#!/bin/bash
host=$(cat ${PWD}/hosts)
scp world.zip root@${host}:/opt/mc-live-server/world.zip
ssh -A root@${host} "unzip -o /opt/mc-live-server/world.zip -d /opt/mc-live-server"