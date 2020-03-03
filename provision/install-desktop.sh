#!/bin/zsh

# Set default ubuntu user
echo "ubuntu:ubuntu" | sudo chpasswd

# Install xfce and virtualbox additions
sudo apt install -y \
    xfce4

# Install a login screen
sudo apt install -y \
    lightdm \
    lightdm-gtk-greeter
