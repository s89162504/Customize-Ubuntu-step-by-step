#!/bin/bash
sudo apt-get install -y git
DIR=$(dirname "$(readlink -f "$0")")
cp $DIR/.gitconfig ~/.gitconfig
sudo snap install --classic go
git clone https://github.com/github/hub.git /tmp/hub
cd /tmp/hub
script/build -o ~/bin/hub
cat $DIR/.bashrc | tee --append ~/.bashrc
source ~/.bashrc
