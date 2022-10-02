#!/bin/bash
# https://www.cyberciti.biz/faq/ubuntu-linux-install-openssh-server/

apt update && upgrade -y

# Install openssh server
apt-get install -y openssh-server

# Enable ssh service
systemctl enable ssh --now

# Start ssh service
systemctl start ssh

# Check ssh service
systemctl status ssh
