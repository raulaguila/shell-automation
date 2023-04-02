#!/bin/bash

# remove old versions
apt-get remove docker docker-engine docker.io containerd runc

# Update the apt package index and install packages to allow apt to use a repository over HTTPS:
apt-get update
apt-get install ca-certificates curl gnupg

# Add Docker’s official GPG key:
mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -y -o /etc/apt/keyrings/docker.gpg

# Use the following command to set up the repository
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the apt package index
apt-get update

# Install the latest version
apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Create the docker group
groupadd docker

# Add your user to the docker group
usermod -aG docker $USER

clear

echo "- > Runing \"docker ps\"" 
docker ps