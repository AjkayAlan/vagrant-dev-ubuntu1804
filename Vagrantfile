Vagrant.configure("2") do |config|
  config.vagrant.plugins = [
    "vagrant-env"
  ]
  config.env.enable

  config.vm.box = ENV['BOX_NAME']
  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.provider :virtualbox do |vb|
    vb.gui = true
    vb.default_nic_type = "virtio"
    vb.memory = ENV['MEMORY']
    vb.cpus = ENV['CPU_COUNT']
    vb.customize ["modifyvm", :id, "--vram", "128"]
    vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
    vb.customize ["modifyvm", :id, "--uart1", "0x3F8", "4"]
	  vb.customize ["modifyvm", :id, "--uartmode1", "file", File::NULL]
  end

  config.vm.provision 'shell', privileged: false, path: 'provision/update-box.sh', name: 'update-box.sh'
end
