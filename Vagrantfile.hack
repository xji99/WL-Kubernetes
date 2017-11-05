# -*- mode: ruby -*-
# vi: set ft=ruby :

# README
#
# Getting Started:
# 1. vagrant plugin install vagrant-hostmanager
# 2. vagrant up
# 3. vagrant ssh
#
# This should put you at the control host
#  with access, by name, to other vms
Vagrant.configure(2) do |config|
  config.hostmanager.enabled = true

  config.vm.box = "ubuntu/xenial64"
  config.vm.define "learnKubernetes" do |h|
    h.vm.hostname = "learnKubernetes"
#    h.vm.network "private_network", ip: "192.168.135.101"
    h.vm.provision :shell, path: "bootstrap.sh"

    h.vm.provider :virtualbox do |vb|
         vb.customize ["modifyvm", :id, "--memory", "8096"]
         vb.customize ["modifyvm", :id, "--cpus", "2"]
    end
  end
end

