#!/bin/bash
./stop_server_remote.sh
./save_world.sh
pushd terraform
terraform destroy -auto-approve
popd
