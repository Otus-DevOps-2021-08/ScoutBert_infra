#!/bin/bash

yc compute instance create \
 --name reddit-app \
 --hostname reddit-app \
 --memory=2 \
 --cores=2 \
 --core-fraction=20 \
 --create-boot-disk image-family=reddit-full,size=5GB --zone ru-central1-a \
 --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
 --metadata serial-port-enable=1 \
 --ssh-key ~/.ssh/appuser.pub
