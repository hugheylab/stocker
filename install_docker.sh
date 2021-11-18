#!/bin/bash
set -e

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

# then
# docker pull ghcr.io/hugheylab/stocker:latest
# docker run -it --name stocker -e PASSWORD=<ultra-sweet-pw> ghcr.io/hugheylab/stocker bash
# docker exec -it stocker bash
