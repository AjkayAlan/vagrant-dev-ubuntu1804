# Vagrant-Dev-Ubuntu1804

A vagrant setup for a normal developer machine using Hyper-V with Ubuntu 18.04 LTS

## Computer Setup

1. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
1. Install [Vagrant](https://www.vagrantup.com/downloads.html)
1. Install vagrant plugins:
```sh
vagrant plugin install vagrant-env
```

## Customize it

Dig into the .env file to customize how the VM behaves for you. Since I am using this as a base developer environment, my CPU and RAM are set relatively high.

Additionally, I am using a local box created from https://github.com/AjkayAlan/packer-vagrant-ubuntu-dev-box. You will need to compile that box yourself and add it to your local vagrant box store via something like:

```sh
vagrant box add package.box --force --name ubuntu-dev
```

## Spinning Up The Box

It's super easy to spin the box up! First, add the environment variables to your shell:

Using PowerShell (Windows):
```PowerShell
$content = Get-Content ".\.env" -ErrorAction Stop
Write-Verbose "Parsed .env file"

foreach ($line in $content) {
    if ($line.StartsWith("#")) { continue };
    if ($line.Trim()) {
        $line = $line.Replace("`"","")
        $kvp = $line -split "=",2
        [Environment]::SetEnvironmentVariable($kvp[0].Trim(), $kvp[1].Trim(), "Process") | Out-Null
    }
}
```

Using Bash (Linux/MacOS):
```sh
for v in `cat .env` ; do export ${v%%=*}=${v##*=} ; done
```

Then run it:
```sh
vagrant up
```

After starting up, install the guest additions:
1. Navigate to Devices -> Insert Guest Additions CD image
2. Open Konsole, and run the following commands:

```sh
sudo apt update
sudo apt install build-essential dkms linux-headers-$(uname -r)
sudo mkdir -p /mnt/cdrom
sudo mount /dev/cdrom /mnt/cdrom
cd /mnt/cdrom
sudo sh ./VBoxLinuxAdditions.run
sudo shutdown -r now
```

After rebooting, verify the additions are running:
```sh
lsmod | grep vboxguest
```

You should see output like the following:
```sh
vboxguest             348160  5 vboxsf
```

Now you should be able to set resolution and such as you want!

## TODOs
* Guest Additions?
