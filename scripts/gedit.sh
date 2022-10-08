#!/bin/bash

apt update && upgrade -y

apt install -y gedit dbus-x11

# gedit is an alternative for nano for quick file editing, with an interface.