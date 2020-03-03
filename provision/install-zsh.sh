#!/bin/bash

# Install zsh
sudo apt install -y zsh

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Change default shell to zsh
sudo chsh -s $(which zsh)
chsh -s $(which zsh)

# Install powerlevel10k
if [ ! -d "$ZSH_CUSTOM/themes/powerlevel10k" ] ; then
    sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
fi
