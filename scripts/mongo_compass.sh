#!/bin/bash

wget https://downloads.mongodb.com/compass/mongodb-compass_1.33.1_amd64.deb

dpkg -i mongodb-compass_1.33.1_amd64.deb

apt -f install

dpkg -i mongodb-compass_1.33.1_amd64.deb

rm mongodb-compass_1.33.1_amd64.deb