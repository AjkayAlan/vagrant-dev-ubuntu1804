Vagrant.configure("2") do |config|
  config.vagrant.plugins = "vagrant-reload"

  config.vm.box = "ubuntu/bionic64"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.name = 'xfce4-ubuntu-1804'
    vb.memory = 4096
    vb.cpus = 4
    vb.customize ['modifyvm', :id, '--vram', '256']
    vb.customize ['modifyvm', :id, '--accelerate2dvideo', 'off']
    vb.customize ['modifyvm', :id, '--accelerate3d', 'on']
    vb.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
  end

  config.vm.provision 'shell', privileged: false, path: 'provision/update-box.sh', name: 'update-box.sh'
  config.vm.provision :reload
  config.vm.provision 'shell', privileged: false, path: 'provision/install-desktop.sh', name: 'install-desktop.sh'
  config.vm.provision :reload
end
