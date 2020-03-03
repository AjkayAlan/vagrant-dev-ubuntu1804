#!/bin/zsh

# Install dependencies
sudo apt install -y \
    software-properties-common \
    gnupg2 \
    awk \
    sed \
    grep \
    which \
    ls \
    cp \
    tar \
    curl \
    gunzip \
    bunzip2

# Install RVM
gpg2 --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
source ~/.zshrc

# Install Ruby
rvm install ruby --latest