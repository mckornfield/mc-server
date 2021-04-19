#!/bin/bash
apt-get update
apt-get install curl openjdk-8-jdk unzip zip -y
live_dir=/opt/mc-live-server
mkdir -p $live_dir
ln -s /opt/mc-server/run_server.sh ${live_dir}/run_server.sh
pushd $live_dir
echo "eula=true" > eula.txt
curl -o ${live_dir}/minecraft_server.1.16.5.jar https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar
