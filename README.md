# OpenStack Automation Toolkit

Automates provisioning & patching of OpenStack controller/compute nodes using:
- Ansible
- Bash wrapper scripts

Target: Reduce operational effort by **50%** through reusable automation.

## Features
✔ Automated provisioning (network, hostname, NTP, repos, packages)  
✔ Automated patching (security updates + auto reboot)  
✔ One-click scripts  
✔ Inventory-driven  
✔ Modular roles  

## Quick Start

### 1. Run Prechecks
./scripts/precheck.sh

### 2. Provision Nodes
ansible-playbook -i inventories/production.ini playbooks/provision.yml

### 3. Patch Nodes
./scripts/patch-wrapper.shvi ans