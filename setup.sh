#!/bin/bash
apt-get update
apt-get install openjdk-8-jdk
live_dir=/opt/mc-live-server
mkdir -p $live_dir
pushd $live_dir
curl -o ${live_dir}/minecraft_server.1.16.3.jar https://launcher.mojang.com/v1/objects/f02f4473dbf152c23d7d484952121db0b36698cb/server.jar
popd
