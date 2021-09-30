#!/bin/bash
#install GIT
sudo apt install git
#git clone
git clone -b monolith https://github.com/express42/reddit.git
#install addict
cd reddit && bundle install
#run
 puma -d
 #check
 ps aux | grep puma
