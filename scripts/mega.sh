#!/bin/bash

package_name="megasync"
file_name="megasync-xUbuntu_22.04_amd64.deb"

package_installed=$(dpkg-query -W --showformat='${Status}\n' $package_name|grep "install ok installed")
echo Checking for $package_name: $package_installed

if [ "" = "$package_installed" ]; then
    if ! [[ -f "./$file_name" ]]; then
        wget https://mega.nz/linux/repo/xUbuntu_22.04/amd64/$file_name
    fi
    
    dpkg -i $file_name

    apt --fix-broken install -y

    package_installed=$(dpkg-query -W --showformat='${Status}\n' $package_name|grep "install ok installed")
    echo Checking for $package_name: $package_installed

    if [ "" = "$package_installed" ]; then
        dpkg -i $file_name
    fi

    if [[ -f "./$file_name" ]]; then
        rm $file_name
    fi
fi
