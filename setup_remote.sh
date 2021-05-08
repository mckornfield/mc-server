#!/bin/bash
host=$(cat ${PWD}/hosts)
ssh -A root@${host} "export GIT_SSH_COMMAND='ssh -o StrictHostKeyChecking=no' && mkdir -p /opt/ && cd /opt && [ -d "/opt/mc-server" ] && git -C mc-server pull ||  git clone https://github.com/mckornfield/mc-server.git"
ssh -A root@${host} "/opt/mc-server/setup.sh"
if ls avatar.zip 1> /dev/null 2>&1; then
    scp avatar.zip root@${host}:/opt/mc-live-server/
    ssh root@${host} "cd /opt/mc-live-server/ && mkdir mods && unzip avatar.zip -d mods"
fi
if ls forge*.jar 1> /dev/null 2>&1; then
    scp forge*.jar root@${host}:/opt/mc-live-server/
    ssh root@${host} "sed -i s/minecraft_server/forge/g" /opt/mc-server/run_server.sh
    ssh root@${host} "java -jar /opt/mc-live-server/forge*.jar --installServer"
    ssh root@${host} "mv /opt/mc-live-server/forge*installer.jar ~"
fi
