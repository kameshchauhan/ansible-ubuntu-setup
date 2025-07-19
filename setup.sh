#!/bin/bash

# Install Ansible
# Install Ansible if not present
if ! command -v ansible &> /dev/null; then
    sudo apt update
    sudo apt install -y ansible
fi

# Install required collections
ansible-galaxy collection install -r requirements.yml

# Run the playbook
ansible-playbook site.yml --ask-become-pass