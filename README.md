# Vagrant-Dev-Ubuntu1804

A vagrant setup for a normal developer machine using VirtualBox with Ubuntu 18.04 LTS

## Computer Setup

1. Install VirtualBox (via Chocolatey):
```
choco install virtualbox
```

2. Install Vagrant (via Chocolatey):
```
choco install vagrant
```

3. Install a plugin to allow reloading between provisioning steps (useful when updating causes a kernel update):
```
vagrant plugin install vagrant-reload
```

## Spinning up the environment

Clone the repo, cd to it, and then run the following:
```
vagrant up
```

## Credits
- Thanks to https://github.com/halvards/vagrant-xfce4-ubuntu for giving me a better idea on how to layout this repo.
- Thanks to https://github.com/heidemn/vagrant-bionic-desktop for helping get a GUI working well