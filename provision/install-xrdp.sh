#!/bin/zsh

# Install xrdp
sudo apt install -y xrdp 

# Configure it to work correctly
# See https://linuxize.com/post/how-to-install-xrdp-on-ubuntu-18-04/
sudo adduser xrdp ssl-cert
echo "exec startxfce4" | sudo tee -a /etc/xrdp/xrdp.ini
sudo ufw allow from 192.168.1.0/24 to any port 3389
sudo systemctl restart xrdp
