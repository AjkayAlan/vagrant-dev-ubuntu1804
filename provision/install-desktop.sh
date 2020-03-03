#!/bin/zsh

# Set default ubuntu user
echo "ubuntu:ubuntu" | sudo chpasswd

# Install tasksel
sudo apt install -y tasksel

# Install gnome desktop
sudo apt-get install -y ubuntu-gnome-desktop

# Enable xrdp
wget https://raw.githubusercontent.com/Microsoft/linux-vm-tools/master/ubuntu/18.04/install.sh
sudo chmod +x install.sh
sudo ./install.sh
