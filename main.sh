#!/bin/bash
pushd terraform
terraform apply -auto-approve
popd
./update_host.sh
sleep 10 # Key propagation time x/
./setup_remote.sh
cp world_saved.zip world.zip
./copy_world.sh
./start_server_remote.sh
host=$(cat ${PWD}/hosts)
echo "MC server running on ${host}"
