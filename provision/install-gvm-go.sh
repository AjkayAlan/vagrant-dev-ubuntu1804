#!/bin/bash

# Install needed dependencies
sudo apt install -y \
    curl \
    git \
    mercurial \
    make \
    binutils \
    bison \
    gcc \
    build-essential

# Install gvm
zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
source ~/.zshrc

# Install go
gvm install go1.14 --binary
gvm use go1.14
