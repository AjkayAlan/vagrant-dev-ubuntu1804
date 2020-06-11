Vagrant.configure("2") do |config|
  config.vagrant.plugins = [
    "vagrant-env"
  ]
  config.env.enable

  config.vm.box = ENV['BOX_NAME']
  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.provider :hyperv do |hyperv|
    hyperv.vmname = ENV['VM_NAME']
    hyperv.memory = ENV['MEMORY']
    hyperv.maxmemory = ENV['MAX_MEMORY']
    hyperv.cpus = ENV['CPU_COUNT']
  end

  config.vm.provision 'shell', privileged: false, path: 'provision/update-box.sh', name: 'update-box.sh'
end
