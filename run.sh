#!/usr/bin/env bash

docker run --rm --name=rutorrent \
-v $CONFIG:/config \
-v $DOWNLOADS:/downloads \
-e PGID=1000 -e PUID=1000 \
-e TZ=America/Chicago \
-p 80:80 -p 5000:5000 \
-p 51413:51413 -p 6881:6881/udp \
linuxserver/rutorrent
