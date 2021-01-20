#!/bin/bash

yum update -y
yum install epel-release -y
yum install python-pip git openssh -y
pip install ansible
git config --global user.name "Giridhar Konda"
git config --global user.email "giridhar0241@gmail.com"
useradd ansible
echo P@ssw0rld | passwd ansible --stdin
echo "192.168.111.2     ansible.example.com" >> /etc/hosts
echo "192.168.111.3     agent.example.com" >> /etc/hosts


