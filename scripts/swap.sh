#!/bin/bash
# https://ploi.io/documentation/server/change-swap-size-in-ubuntu

swapoff -a
fallocate -l 64G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile

free -m

# In line 5 in 64GB change to the desired size of your swap
