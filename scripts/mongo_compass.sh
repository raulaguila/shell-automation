#!/bin/bash

package_name="mongodb-compass"
file_name="mongodb-compass_1.33.1_amd64.deb"

package_installed=$(dpkg-query -W --showformat='${Status}\n' $package_name|grep "install ok installed")
echo Checking for $package_name: $package_installed

if [ "" = "$package_installed" ]; then
    if ! [[ -f "./$file_name" ]]; then
        wget https://downloads.mongodb.com/compass/$file_name
    fi

    dpkg -i $file_name

    apt --fix-broken install

    package_installed=$(dpkg-query -W --showformat='${Status}\n' $package_name|grep "install ok installed")
    echo Checking for $package_name: $package_installed

    if [ "" = "$package_installed" ]; then
        dpkg -i $file_name
    fi

    if [[ -f "./$file_name" ]]; then
        rm $file_name
    fi
fi
