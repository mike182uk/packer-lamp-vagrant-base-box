#!/usr/bin/env bash

# Set vagrant box build time
date > /etc/vagrant_box_build_time

# Set up sudo
echo %vagrant ALL=NOPASSWD:ALL > /etc/sudoers.d/vagrant
chmod 0440 /etc/sudoers.d/vagrant

# Setup sudo to allow passwordless sudo
usermod -a -G sudo vagrant

# Install vagrant ssh key
mkdir /home/vagrant/.ssh
wget --no-check-certificate -O authorized_keys "https://github.com/mitchellh/vagrant/raw/master/keys/vagrant.pub"
mv authorized_keys /home/vagrant/.ssh
chown -R vagrant /home/vagrant/.ssh
chmod -R go-rwsx /home/vagrant/.ssh