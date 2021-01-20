#!/bin/bash

useradd ansible
echo P@ssw0rld | passwd ansible --stdin
echo "192.168.111.2     ansible.example.com" >> /etc/hosts
echo "192.168.111.3     agent.example.com" >> /etc/hosts

