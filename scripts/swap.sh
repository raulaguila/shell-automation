#!/bin/bash

swapoff -a
fallocate -l 32G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile

# clear

free -m