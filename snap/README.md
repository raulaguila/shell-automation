# Snap

[Snap](https://snapcraft.io/) is a software packaging and deployment system developed by Canonical for operating systems that use the Linux kernel and the systemd init system.

This script automates the installation of [snap package](https://snapcraft.io/store) list.

Command example:

```bash
sudo ./snap.sh -i ./list.txt
```

Where:
- (`sudo`) It is to run the script with privileges;
- (`./snap.sh`) Is the script;
- (`-i` or `-r`) Is the parameter to install or remove the packages;
- (`./list.txt`) Is the file with packages to install or remove;