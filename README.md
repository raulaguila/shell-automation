# Linux Automation

Scripts to automate the installation of softwares in linux on a new computer.

## Attention

To make a shell script executable, run the following command:

```bash
sudo chmod +x <script_file_name>.sh
```

## Snap Folder

Script to install a list of [snap packages](https://snapcraft.io/store).

Command example:

```bash
sudo ./snap.sh -i ./list.txt
```

Where:
- `sudo` It is to run the script with privileges;
- `./snap.sh` Is the script on snap folder;
- `-i` or `-r` Is the parameter to install or remove the packages;
- `./list.txt` Is the file with packages to install or remove;

## Scripts Folder

Scripts to install certain software on linux.
