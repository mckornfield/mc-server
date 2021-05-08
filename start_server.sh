#!/bin/bash
ssh root@$(cat hosts) screen -dmS mc-server (cd /opt/live-server && /opt/mc-live-server/run_server.sh)
