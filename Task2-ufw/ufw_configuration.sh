#!/bin/bash

#Update system
sudo apt update

#install UFW
sudo apt install -y ufw

#Allow SSh
sudo ufw allow ssh

#deny http
sudo ufw deny http

#enable firewall
echo "y" | sudo ufw enable

#show final status
sudo ufw status numbered
