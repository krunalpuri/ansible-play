#!/bin/bash

ansible-playbook -i ./hosts nginx.yml --ask-pass --ssh-extra-args='-o PubkeyAuthentication=no' --user root
