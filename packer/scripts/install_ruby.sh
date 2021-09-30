#!/bin/bash
#update OS
apt-get update
rm /var/lib/apt/lists/lock
rm /var/cache/apt/archives/lock
rm /var/lib/dpkg/lock
rm /var/lib/dpkg/lock-frontend
dpkg --configure -a
#install ruby and bundler
apt-get install -y ruby-full ruby-bundler build-essential
