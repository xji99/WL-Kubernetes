#!/bin/bash


apt-get update

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

apt-get update
apt-get install -y docker-ce
usermod -aG docker ${USER}
