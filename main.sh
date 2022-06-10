#!/bin/bash
pushd terraform
terraform init
terraform apply -auto-approve
popd
./update_host.sh
host=$(cat ${PWD}/hosts)
ssh-keyscan -H $host >> ~/.ssh/known_hosts
sleep 10 # Key propagation time x/
./setup_remote.sh
cp world_saved.zip world.zip
./copy_world.sh
scp ops.json root@${host}:/opt/mc-live-server/ops.json
./start_server_remote.sh
echo "MC server running on ${host}"
