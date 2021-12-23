#!/bin/bash
apt update
apt install curl unzip zip -y
#TODO automate jdk 17 install https://mkyong.com/java/how-to-install-java-jdk-on-ubuntu-linux/
# https://download.java.net/java/GA/jdk17/0d483333a00540d886896bac774ff48b/35/GPL/openjdk-17_linux-x64_bin.tar.gz
wget https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.deb
apt install ./jdk-17_linux-x64_bin.deb -y
echo 'export PATH="$PATH:/usr/lib/jvm/jdk-17/bin/"' >> ~/.bashrc
echo 'export JAVA_HOME=/usr/lib/jvm/jdk-17/' >> ~/.bashrc
live_dir=/opt/mc-live-server
mkdir -p $live_dir
ln -sf /opt/mc-server/run_server.sh ${live_dir}/run_server.sh
pushd $live_dir
echo "eula=true" > eula.txt
curl -o ${live_dir}/minecraft_server.1.18.1.jar https://launcher.mojang.com/v1/objects/125e5adf40c659fd3bce3e66e67a16bb49ecc1b9/server.jar
