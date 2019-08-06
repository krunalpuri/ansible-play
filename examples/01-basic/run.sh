#!/bin/bash

# Ping
echo "PING MODULE"
ansible -i ./hosts remote -m ping --ask-pass --ssh-extra-args='-o PubkeyAuthentication=no' --user root

#Handler Example
echo "Ansible playbook Handler Example"
ansible-playbook -i ./hosts nginx-handler.yml --ask-pass --ssh-extra-args='-o PubkeyAuthentication=no' --user root
