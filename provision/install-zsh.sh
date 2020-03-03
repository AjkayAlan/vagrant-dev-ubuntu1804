#!/bin/bash

# Install zsh
sudo apt install -y zsh

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Change default shell to zsh
sudo chsh -s /bin/zsh vagrant
zsh

# Install a nerdfont
mkdir -p ~/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Meslo/M/Regular/complete/Meslo%20LG%20M%20Regular%20Nerd%20Font%20Complete.ttf -P ~/.local/share/fonts
fc-cache -vf ~/.local/share/fonts/

# Install powerlevel9k
if [ ! -d "$ZSH_CUSTOM/themes/powerlevel9k" ] ; then
    git clone https://github.com/bhilburn/powerlevel9k.git $ZSH_CUSTOM/themes/powerlevel9k
    sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel9k\/powerlevel9k"/g' ~/.zshrc
fi

# Set mode to nerdfont

