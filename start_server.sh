#!/bin/bash
ssh root@$(cat hosts) screen -dmS mc-server /opt/mc-live-server/run_server.sh
