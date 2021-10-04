#!/bin/bash
#upload repo
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
#upd repo
sudo apt-get update
#install mongodb
sudo apt-get install -y mongodb-org
#start mongodb
sudo systemctl start mongod
#add autorun
sudo systemctl enable mongod
#check status
sudo systemctl status mongod
