#!/bin/bash
host=$(cat ${PWD}/hosts)
ssh -A root@${host} "cd /opt/mc-live-server/ && zip -r world.zip world"
scp root@${host}:/opt/mc-live-server/world.zip world_saved.zip