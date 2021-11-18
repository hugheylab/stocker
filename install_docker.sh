#!/bin/bash
set -e

sudo apt-get update
sudo apt-get upgrade -y

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo groupadd -f docker
sudo usermod -aG docker $USER

# run this script:
# wget https://raw.githubusercontent.com/hugheylab/stocker/main/install_docker.sh
# sh install_docker.sh

# restart the system and log back in:
# sudo reboot
# ssh ...

# pull the latest stocker image:
# docker pull ghcr.io/hugheylab/stocker:latest

# create and start a container in interactive mode,
# and bind mount a directory on the host to a directory in the container:
# mkdir -p project
# docker run \
#   -it \
#   --name stocker \
#   --mount type=bind,src=/home/ubuntu/project,dst=/home/rstudio/project \
#   -e PASSWORD=<ultra-sweet-pw> \
#   ghcr.io/hugheylab/stocker \
#   bash

# if you exit the container, you can reconnect to it by:
# docker start stocker
# docker exec -it stocker bash
