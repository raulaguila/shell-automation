#!/bin/bash

FILE="spring-tool-suite-4-4.16.0.RELEASE-e4.25.0-linux.gtk.x86_64.tar.gz"

if ! [[ -f "/opt/$FILE" ]]; then
    
    wget "https://download.springsource.com/release/STS4/4.16.0.RELEASE/dist/e4.25/$FILE"

    mv "$FILE" /opt

fi

cd /opt

old_folders=($(echo *))

tar zxvf "$FILE"

new_folders=($(echo *))

for value in "${new_folders[@]}"; do
    if ! [[ " ${old_folders[*]} " =~ " ${value} " ]]; then
        new_folder="$value"
        break
    fi
done

echo "[Desktop Entry]
Name=Spring Tool Suite
Comment=Spring Tool Suite 4.16.0
Exec=/opt/$new_folder/SpringToolSuite4
Icon=/opt/$new_folder/icon.xpm
StartupNotify=true
Terminal=false
Type=Application
Categories=Development;IDE;Java;" > /usr/share/applications/stsLauncher.desktop