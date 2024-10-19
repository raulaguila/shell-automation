#!/bin/bash
# gedit is an alternative for nano for quick file editing, with an interface.

apt update && upgrade -y

apt install -y gedit dbus-x11
