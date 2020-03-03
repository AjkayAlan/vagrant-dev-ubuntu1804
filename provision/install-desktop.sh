#!/bin/zsh

# Set default ubuntu user
echo "ubuntu:ubuntu" | sudo chpasswd

# Install tasksel
sudo apt install -y tasksel

# Install gnome desktop
sudo tasksel install ubuntu-desktop
