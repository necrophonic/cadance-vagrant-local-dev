# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.provider "virtualbox" do |v|
    v.name = "cadance"
    v.memory = 2048
    v.cpus = 1
  end

  config.vm.box = "ubuntu/xenial64"
  config.vm.provision :shell, path: "build/sudo.sh"
  config.vm.provision :shell, privileged: false, path: "build/nosudo.sh"

  config.vm.provision "docker"

end
