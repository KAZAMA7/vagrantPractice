#!/bin/bash
hostname ansible.example.com
yum install epel-release -y
yum install python-pip git openssh -y
pip install ansible
mv /tmp/ssh /root/.ssh
chmod -R 600 /root/.ssh
chown -R root:root /root/.ssh
mv /tmp/sshd_config /etc/ssh/sshd_config
systemctl restart sshd
git config --global user.name "Giridhar Konda"
git config --global user.email "giridhar0241@gmail.com"
useradd ansible
echo P@ssw0rld | passwd ansible --stdin
echo P@ssw0rld | passwd root --stdin
echo "ansible ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/ansible
echo "192.168.111.2     ansible.example.com" >> /etc/hosts
echo "192.168.111.3     agent.example.com" >> /etc/hosts


