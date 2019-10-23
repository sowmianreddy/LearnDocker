# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|

  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "ubuntu/xenial64"
    ubuntu.vm.hostname = "ubuntu.example.com"
    ubuntu.vm.network "private_network", ip: "172.20.0.1"
    ubuntu.vm.provider "virtualbox" do |v|
      v.name = "ubuntu"
      v.memory = 1024
      v.cpus = 1
    end
    ubuntu.vm.provision "shell", path: "bootstrap_ubuntu.sh"
  end
end
