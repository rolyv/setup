#!/bin/bash
# Simple setup.sh

sudo apt-get install -y software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

ansible-playbook <(wget -qO - https://raw.githubusercontent.com/rolyv/setup/ansible/main.yml)
