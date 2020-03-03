#!/bin/sh

# Install dependencies
sudo apt install -y software-properties-common

# Install RVM
sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt update
sudo apt install -y rvm

# Make RVM accessible
echo 'source "/etc/profile.d/rvm.sh"' >> ~/.zshrc
source ~/.zshrc

# Install ruby
rvm install ruby
