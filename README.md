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
vagrant plugin install vagrant-env
```

## Customize it

Dig into the .env file to customize how the VM behaves for you. Since I am using this as a base developer environment, my CPU and RAM are set relatively high.

## Spinning up the environment

Clone the repo, cd to it with an admin powershell, and run:
```
.\provision.ps1
```

This is needed due to us using Hyper-V with enhanced mode. It allows us to open the VM via Hyper-V Manager with good graphics and minimal latency.

## Accessing the environment

### SSH

After the environment is provisioned, you can access it two different ways. If you need SSH access only, you can run the following from the directory root:
```
vagrant ssh
```

Otherwise, you can grab the IP of the instance by running:
```
vagrant ssh-config
```

From there, you can ssh using your favorite client. Use `vagrant` for both the username and password.

### GUI

If you need GUI access, connect to the VM via Hyper-V Manager. If you right-click and hit connect, it should open an RDP session and you should get a login screen. Login using xorg for the session type and `vagrant` for both the username and password

## Credits

- Thanks to https://github.com/halvards/vagrant-xfce4-ubuntu for giving me a better idea on how to layout this repo.
- Thanks to https://github.com/heidemn/vagrant-bionic-desktop for helping get a GUI working well
- Thanks to https://github.com/microsoft/linux-vm-tools for getting xrdp working well for a nice GUI experience with Hyper-V

## TODO's

- VSCode config
- Git credentials - Not sure a great way
- Terminus config
- Other items to install that would be nice? R & RStudio?
- Change default password
