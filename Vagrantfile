# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.ssh.insert_key = true
  config.vm.box = "bento/ubuntu-16.04"

  config.vm.define "xeap-2018" do |my|
  	my.vm.network "public_network"
  	my.vm.synced_folder ".", "/vagrant"
  end

  config.vm.hostname = "xeap-2018"

end
