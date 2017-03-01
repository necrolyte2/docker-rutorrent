#!/bin/bash

sudo cp docker-rutorrent.service /lib/systemd/system/
sudo sed -i "s%INSTALLDIR%$PWD%g" /lib/systemd/system/docker-rutorrent.service
sudo systemctl enable docker-rutorrent
sudo systemctl start docker-rutorrent
