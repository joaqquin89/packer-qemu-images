#!/bin/sh
set -e

useradd centos
usermod -aG wheel centos
sudo -u centos ssh-keygen -b 2048 -t rsa -f /home/centos/.ssh/id_rsa -N ''
usermod -aG docker centos
echo "%centos ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/centos