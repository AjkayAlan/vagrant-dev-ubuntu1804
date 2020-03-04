#!/bin/zsh

# Set default ubuntu user
echo "ubuntu:ubuntu" | sudo chpasswd

# Install kde
sudo apt install -y kde-plasma-desktop
