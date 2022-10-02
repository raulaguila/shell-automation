#!/bin/bash
# https://www.cyberciti.biz/faq/ubuntu-linux-install-openssh-server/

# Install openssh server
apt-get install openssh-server

# Enable ssh service
systemctl enable ssh --now

# Start ssh service
systemctl start ssh

# Check ssh service
systemctl status ssh
