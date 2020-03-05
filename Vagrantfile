Vagrant.configure("2") do |config|
  config.vagrant.plugins = [
    "vagrant-reload",
    "vagrant-env"
  ]
  config.env.enable

  config.vm.box = ENV['BOX_NAME']
  config.vm.network ENV['NETWORK_IDENTIFIER'], bridge: ENV['BRIDGE_NAME']
  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.provider :hyperv do |hyperv|
    hyperv.vmname = ENV['VM_NAME']
    hyperv.memory = ENV['MEMORY']
    hyperv.maxmemory = ENV['MAX_MEMORY']
    hyperv.cpus = ENV['CPU_COUNT']
  end

  config.vm.provision 'shell', privileged: false, path: 'provision/update-box.sh', name: 'update-box.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/install-basics.sh', name: 'install-basics.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/install-git.sh', name: 'install-git.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/install-zsh.sh', name: 'install-zsh.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/install-desktop.sh', name: 'install-desktop.sh'
  config.vm.provision :reload
  config.vm.provision 'shell', privileged: false, path: 'provision/install-xrdp.sh', name: 'install-xrdp.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/install-chromium.sh', name: 'install-chromium.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/install-nvm-node.sh', name: 'install-nvm-node.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/install-pyenv-python.sh', name: 'install-pyenv-python.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/install-gvm-go.sh', name: 'install-gvm-go.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/install-rvm-ruby.sh', name: 'install-rvm-ruby.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/install-sdkman.sh', name: 'install-sdkman.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/install-jabba-java.sh', name: 'install-jabba-java.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/install-netcore.sh', name: 'install-netcore.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/install-powershell-core.sh', name: 'install-powershell-core.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/install-awscli.sh', name: 'install-awscli.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/install-vscode.sh', name: 'install-vscode.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/install-pycharm.sh', name: 'install-pycharm.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/install-intellij.sh', name: 'install-intellij.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/install-terminus.sh', name: 'install-terminus.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/set-preferences.sh', name: 'set-preferences.sh'
  config.vm.provision :reload
end
