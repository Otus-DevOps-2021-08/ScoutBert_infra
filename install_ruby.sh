#!/bin/bash
#update OS
sudo apt update
#install ruby and bundler
sudo apt install -y ruby-full ruby-bundler build-essential
#test ruby and bundler
ruby -v
bundler -v
