#!/bin/bash
apt-get update
apt-get install openjdk-8-jdk unzip zip -y
live_dir=/opt/mc-live-server
mkdir -p $live_dir
ln -s /opt/mc-server/run_server.sh ${live_dir}/run_server.sh
pushd $live_dir
echo "eula=true" > eula.txt
curl -o ${live_dir}/minecraft_server.1.16.4.jar https://launcher.mojang.com/v1/objects/35139deedbd5182953cf1caa23835da59ca3d7cd/server.jar
