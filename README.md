# A SAMPLE SCRIPT TO TEST ANSIBLE ON A DOCKER CONTAINER
A template to learn or test Ansible scripts using local docker container as inventory

Clone this repository and modify the files.

# Install Ansible using Virtual Env (Please
[Recommended] Create a virtual environment to install ansible. 
(Refer this [tutorial](https://serversforhackers.com/c/an-ansible2-tutorial) )
```
cd ansible-play
virtualenv .venv 

# Enable the virtual environment
source .venv/bin/activate
pip install ansible
```

# Dockerfile for Ubuntu with SSHD
A dockerfile to build Ubuntu image with open-ssh server. The login credentials are defined at this line.
https://github.com/krunalpuri/docker-ansible-inventory/blob/870e7c62148ba84084d7212b045cc27b4c41a969/Dockerfile#L7

# Docker Compose file to create a static network
Uses the dockerfile to build image(s) and a network that assigns static ip address to onr or more docker containers.

The ip address is defined at this line

https://github.com/krunalpuri/docker-ansible-inventory/blob/870e7c62148ba84084d7212b045cc27b4c41a969/docker-compose.yml#L10

Run the following command to build and run containers.
```
docker-compose up --build -d
```

# Create a Host file for ansible inventory
The host file contains all ansible inventory hostnames.

# Run the script to test Ansible on Docker Container
```
sh run-ansible-playbook.sh
 ```




