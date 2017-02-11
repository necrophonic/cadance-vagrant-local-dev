#!/usr/bin/env bash

function install {
  apt-get -qq install $1 -y --force-yes
}

UHOME=/home/ubuntu

echo "Running SUDO installs"

# Go
echo "Installing GO"
wget https://storage.googleapis.com/golang/go1.7.3.linux-amd64.tar.gz
tar -zxvf ${UHOME}/go1.7.3.linux-amd64.tar.gz -C /usr/local/
echo "export GOPATH=/vagrant/go" >> ${UHOME}/.bashrc
echo "PATH=$PATH:/usr/local/go/bin:/vagrant/go/bin" >> ${UHOME}/.bashrc

# Git
echo "Installing GIT"
install git

# Nodejs
echo "Installing nodejs + npm"
install nodejs
install npm

# Caddy
echo "Installing Caddy"
curl https://getcaddy.com | bash

echo "echo;echo VM IP: `perl /vagrant/scripts/welcome.pl`;echo" >> ${UHOME}/.bashrc
