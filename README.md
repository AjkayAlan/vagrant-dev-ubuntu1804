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
    - Type: External
    - Name: Vagrant
    - External Network: Select your adapter that has internet
    - Check "Allow management operation system to share this network adapter"

## Customize it

Dig into the Vagrantfile to customize how the VM behaves for you. Since I am using this as a base developer environment, my CPU and RAM are set relatively high.

## Spinning up the environment

Clone the repo, cd to it with an admin powershell, and run:
```
.\provision.ps1
```

This is needed due to us using Hyper-V with enhanced mode. It allows us to open the VM via Hyper-V Manager with good graphics and minimal latency.

## Credits
- Thanks to https://github.com/halvards/vagrant-xfce4-ubuntu for giving me a better idea on how to layout this repo.
- Thanks to https://github.com/heidemn/vagrant-bionic-desktop for helping get a GUI working well

## TODO's

- VSCode extensions and config
- Git credentials - Not sure a great way
- Make everything not internet accessible (i.e. allow outgoing, but not incoming), or double check that is how it currently behaves
- Other languages?
- Terminus config
- Preferences (keyboard shortcuts, etc.)
- Variablize more items in Vagrantfile w/ provision.ps1, such as RAM, CPU, Name, etc.
- Other items to install that would be nice? PowerShell Core? R & RStudio?
- Cleanup of resources when provisioned (i.e. deleting .deb's)
