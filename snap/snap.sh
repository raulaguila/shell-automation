#!/bin/bash

if [[ "$1" = "-r" ]]; then action="remove"; echo "Removing packages."; fi
if [[ "$1" = "-i" ]]; then action="install"; echo "Installing packages."; fi

while read package
do  
    if [[ $package != "" ]]; then
        if [[ "$1" = "-r" ]]; then
            array=($package)
            package=${array[0]}
        fi
        snap $action $package
    fi
done <$2

if [[ $package != "" ]]; then
    if [[ "$1" = "-r" ]]; then
        array=($package)
        package=${array[0]}
    fi
    snap $action $package
fi
