# Vagrant-Dev-Ubuntu1804

A vagrant setup for a normal developer machine using Hyper-V with Ubuntu 18.04 LTS

## Computer Setup

1. Install Hyper-V (by running the following in an admin PowerShell session):
```
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
```

2. Install Vagrant (via Chocolatey):
```
choco install vagrant
```

3. Install some useful plugins:
```
vagrant plugin install vagrant-reload
vagrant plugin install vagrant-disksize
```

4. Create a new Virtual Switch in Hyper-V Manager with the following settings:
    Type: External
    Name: Vagrant
    External Network: Select your adapter that has internet
    Check "Allow management operation system to share this network adapter"

## Spinning up the environment

Clone the repo, cd to it, and then run the following:
```
vagrant up
```

## Credits
- Thanks to https://github.com/halvards/vagrant-xfce4-ubuntu for giving me a better idea on how to layout this repo.
- Thanks to https://github.com/heidemn/vagrant-bionic-desktop for helping get a GUI working well