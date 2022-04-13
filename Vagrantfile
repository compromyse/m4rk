# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.network "public_network", bridge:""

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "512"
  end
end
