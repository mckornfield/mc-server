#!/bin/bash
apt-get update
apt-get install openjdk-8-jdk
mkdir -p ../mc-live-server
pushd mc-live-server
curl -o minecraft_server.1.16.3.jar https://launcher.mojang.com/v1/objects/f02f4473dbf152c23d7d484952121db0b36698cb/server.jar
popd
