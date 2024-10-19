#!/bin/bash

swapoff -a
fallocate -l 64G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile

free -m