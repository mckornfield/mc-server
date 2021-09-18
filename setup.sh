#!/bin/bash
apt-get update
apt-get install curl openjdk-8-jdk unzip zip -y
live_dir=/opt/mc-live-server
mkdir -p $live_dir
ln -s /opt/mc-server/run_server.sh ${live_dir}/run_server.sh
pushd $live_dir
echo "eula=true" > eula.txt
curl -o ${live_dir}/minecraft_server.1.17.1.jar https://launcher.mojang.com/v1/objects/a16d67e5807f57fc4e550299cf20226194497dc2/server.jar
