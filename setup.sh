#!/bin/bash
apt-get update
apt-get install openjdk-8-jdk unzip zip
live_dir=/opt/mc-live-server
mkdir -p $live_dir
ln -s /opt/mc-server/run_server.sh ${live_dir}/run_server.sh
pushd $live_dir
echo "eulta=true" > eula.txt
curl -o ${live_dir}/minecraft_server.1.16.3.jar https://launcher.mojang.com/v1/objects/f02f4473dbf152c23d7d484952121db0b36698cb/server.jar
