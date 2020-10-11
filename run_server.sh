#!/bin/bash
ls ../mc-live-server/minecraft_server*.jar
java -Xmx1024M -Xms1024M -jar ../mc-live-server/minecraft_server*.jar nogui
