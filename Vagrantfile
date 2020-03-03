Vagrant.configure("2") do |config|
  config.vagrant.plugins = [
    "vagrant-reload"
  ]

  config.vm.box = "generic/ubuntu1804"
  config.vm.network "public_network", bridge: "Vagrant"

  config.vm.provider :hyperv do |hyperv|
    hyperv.vmname = "ubuntu-1804-xfce4"
    hyperv.memory = 4096
    hyperv.cpus = 4
  end

  config.vm.provision 'shell', privileged: true, path: 'provision/update-box.sh', name: 'update-box.sh'
  config.vm.provision 'shell', privileged: true, path: 'provision/install-basics.sh', name: 'install-basics.sh'
  config.vm.provision 'shell', privileged: true, path: 'provision/install-git.sh', name: 'install-git.sh'
  config.vm.provision 'shell', privileged: true, path: 'provision/install-zsh.sh', name: 'install-zsh.sh'
  config.vm.provision :reload
  config.vm.provision 'shell', privileged: true, path: 'provision/install-desktop.sh', name: 'install-desktop.sh'
  config.vm.provision 'shell', privileged: true, path: 'provision/install-chromium.sh', name: 'install-chromium.sh'
  config.vm.provision 'shell', privileged: true, path: 'provision/install-nvm-node.sh', name: 'install-nvm-node.sh'
  config.vm.provision 'shell', privileged: true, path: 'provision/install-pyenv-python.sh', name: 'install-pyenv-python.sh'
  config.vm.provision 'shell', privileged: true, path: 'provision/install-gvm-go.sh', name: 'install-gvm-go.sh'
  config.vm.provision 'shell', privileged: true, path: 'provision/install-rvm-ruby.sh', name: 'install-rvm-ruby.sh'
  config.vm.provision 'shell', privileged: true, path: 'provision/install-sdkman.sh', name: 'install-sdkman.sh'
  config.vm.provision 'shell', privileged: true, path: 'provision/install-jabba-java.sh', name: 'install-jabba-java.sh'
  config.vm.provision 'shell', privileged: true, path: 'provision/install-netcore.sh', name: 'install-netcore.sh'
  config.vm.provision 'shell', privileged: true, path: 'provision/install-awscli.sh', name: 'install-awscli.sh'
  config.vm.provision 'shell', privileged: true, path: 'provision/install-vscode.sh', name: 'install-vscode.sh'
  config.vm.provision 'shell', privileged: true, path: 'provision/install-pycharm.sh', name: 'install-pycharm.sh'
  config.vm.provision 'shell', privileged: true, path: 'provision/install-intellij.sh', name: 'install-intellij.sh'
  config.vm.provision 'shell', privileged: true, path: 'provision/install-terminus.sh', name: 'install-terminus.sh'
  config.vm.provision :reload
end
