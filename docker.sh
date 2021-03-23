#!/bin/sh

sudo yum install -y yum-utils device-mapper-persistent-data lvm2 net-tools
sudo yum-config-manager --add-repo -y https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce
sudo systemctl start docker
sudo usermod -aG docker $USER
sudo curl -L https://github.com/docker/compose/releases/download/1.17.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
echo "alias dc=docker-compose" >> ~/.bashrc

docker version
docker-compose --version
