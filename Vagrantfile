# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  
  config.vm.box = "suse/sles11sp3"
  config.vm.box_check_update = false
 
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  
  # config.vm.network "private_network", ip: "192.168.33.10"
  
  # config.vm.network "public_network"
  
  # config.vm.synced_folder "../data", "/vagrant_data"
  
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end
  config.vm.provision "shell", inline: <<-SHELL
  wget https://raw.githubusercontent.com/kmonticolo/Ansible-on-SLES11/master/ansible_sles11.sh -O - | sudo bash
  #   apt-get update
  #   apt-get install -y apache2
  SHELL
end
