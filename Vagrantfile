# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
 
  config.vm.box = "hashicorp/precise64"
 config.vm.provision :shell, :path => 'provision-vm.sh'
 config.vm.network "forwarded_port", guest: 5000, host: 5000
end

