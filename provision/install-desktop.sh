#!/bin/zsh

# Set default ubuntu user
echo "ubuntu:ubuntu" | sudo chpasswd

# Install ubuntu's desktop
sudo apt install -y ubuntu-desktop
