#!/bin/zsh

# Decrease grub timeout
echo 'GRUB_RECORDFAIL_TIMEOUT=0' | sudo tee -a /etc/default/grub
