# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
    v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
    v.name = "alpine38"
    v.gui = false 
    v.memory = 1024
    v.cpus = 2
  end
  config.vm.box = "generic/alpine38"
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.synced_folder "./estimation", "/var/www/html"
  config.vm.provision "file", source: "./vagrant/.profile", destination: "~/.profile"
  config.vm.provision "shell", path: "./vagrant/provision.sh"
  #config.vm.provision "shell", run: "always", path: "./vagrant/bootstrap.sh"
end