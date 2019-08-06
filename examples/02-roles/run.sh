#!/bin/bash


ansible-playbook -i ./hosts server.yml --ask-pass --ssh-extra-args='-o PubkeyAuthentication=no' --user root
