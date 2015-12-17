#!/bin/sh



useradd -m iaassvc -p ${svc_password}
HOME_DIR="/home/iaassvc"

# Configure a sudoers for the vagrant user
echo "iaassvc ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/iaassvc

# Set up insecure Vagrant key
mkdir -p ${HOME_DIR}/.ssh
echo ${svc_ssh_key} > ${HOME_DIR}/.ssh/authorized_keys
chown -R iaassvc:iaassvc ${HOME_DIR}/.ssh
chmod 700 ${HOME_DIR}/.ssh
chmod 600 ${HOME_DIR}/.ssh/authorized_keys




