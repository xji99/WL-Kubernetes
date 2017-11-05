#!/bin/bash


apt-get update

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
add-apt-repository "deb [arch=amd64] http://apt.kubernetes.io/ kubernetes-xenial main"

apt-add-repository ppa:ansible/ansible

apt-get update

apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    ansible \
    docker-ce \
    kubelet kubeadm kubectl kubernetes-cni

usermod -aG docker ${USER}

