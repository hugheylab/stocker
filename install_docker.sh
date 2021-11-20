#!/bin/bash
set -e

# sudo apt-get update
# sudo apt-get upgrade -y

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo groupadd -f docker
sudo usermod -aG docker $USER
