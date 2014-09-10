# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "C:/Users/dladd/Downloads/opscode_ubuntu-10.04_chef-provisionerless.box"

   config.vm.provider "virtualbox" do |vb|
    # Don't boot with headless mode
     vb.gui = true
  
     # Use VBoxManage to customize the VM. For example to change memory:
     vb.customize ["modifyvm", :id, "--memory", "1024"]
   end

   config.vm.network "forwarded_port", guest: 80, host:8080
	config.omnibus.chef_version = :latest
  config.vm.provision "chef_client" do |chef|
    chef.chef_server_url = "https://api.opscode.com/organizations/dladd"
    chef.validation_key_path = ".chef/dladd-validator.pem"
    chef.validation_client_name = "dladd-validator"
    chef.node_name = "chef_test2"
   end

end
