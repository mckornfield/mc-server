#!/bin/bash
apt update
apt install openjdk-17-jdk curl unzip zip -y
#TODO automate jdk 17 install https://mkyong.com/java/how-to-install-java-jdk-on-ubuntu-linux/
# https://download.java.net/java/GA/jdk17/0d483333a00540d886896bac774ff48b/35/GPL/openjdk-17_linux-x64_bin.tar.gz
live_dir=/opt/mc-live-server
mkdir -p $live_dir
ln -s /opt/mc-server/run_server.sh ${live_dir}/run_server.sh
pushd $live_dir
echo "eula=true" > eula.txt
curl -o ${live_dir}/minecraft_server.1.17.1.jar https://launcher.mojang.com/v1/objects/a16d67e5807f57fc4e550299cf20226194497dc2/server.jar
