#!/bin/bash
hostname agent.example.com
mv /tmp/sshd_config /etc/ssh/sshd_config
mkdir ~/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDncabVCF2+c/tulqSzu9Z+FZ0Lsi7s/PGAZejQSA68G99/I+yq8EKFiXr15qo0ilNATEq+oQIPjLTwlvgSRcZd/VxJ5ZgInqxgK+agxOs77aPpTCyhbV3IkthCr0bgo0/7YOP1zMVjI71RcB5bSyTUNH9plw1VG0lmnBWmtbtfTcrYqBUR+YDfhTQSmzJcSZF63eYbO872iKuLKViZHJBDiqvx4XCBGHrF+nrp+DR1FrylK6PImM8tp6CZ2cQvgncjbN+pJsFsCLumHgyym3UHRENIMTPtBbn7tG6V4Os/HV1Xg3hzrqW7m3YX5vckVxj6DsnqqoybjJP2hpXgn/Mh
root@ansible.example.com" > ~/.ssh/authorized_keys
systemctl restart sshd
useradd ansible
echo P@ssw0rld | passwd ansible --stdin
echo P@ssw0rld | passwd root --stdin
echo "192.168.111.2     ansible.example.com" >> /etc/hosts
echo "192.168.111.3     agent.example.com" >> /etc/hosts

