#!/bin/bash
set -eEuo pipefail

sudo apt-get update
sudo apt-get install -y --no-install-recommends curl ca-certificates
sudo curl -o /etc/apt/sources.list.d/d-apt.list https://master.dl.sourceforge.net/project/d-apt/files/d-apt.list
sudo apt-get update
sudo apt-get -y --allow-unauthenticated install --reinstall d-apt-keyring
sudo apt-get update
sudo apt-get -y install dmd-compiler dub
sudo apt-get remove -y curl ca-certificates
sudo apt-get autoremove -y
sudo apt-get clean -y
sudo rm -rf /var/lib/apt/lists/*
