#!/bin/zsh

# Set default ubuntu user
echo "ubuntu:ubuntu" | sudo chpasswd

# Install ubuntu's desktop
sudo apt install -y \
    xfce4 \
    xfce4-goodies \
    xorg \
    dbus-x11 \
    x11-xserver-utils

# Install a login screen
sudo apt install -y \
    lightdm \
    lightdm-gtk-greeter
