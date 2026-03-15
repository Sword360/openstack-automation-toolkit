<<<<<<< HEAD
📘 OpenStack Automation Toolkit — Usage Guide
This guide explains how to use the OpenStack Automation Toolkit to provision, patch, and manage OpenStack controller and compute nodes using Ansible, Bash, and Jinja2 templates.
The toolkit is designed to ensure consistency, reliability, and 50%+ reduction in manual effort.

🔧 Prerequisites
Before using the toolkit, ensure the following requirements are met:
✔ Ansible Installed
Shellansible --versionShow more lines
✔ Python 3 Installed
Shellpython3 --versionShow more lines
✔ SSH Access to All Nodes

SSH key-based authentication recommended
Ensure connectivity:

Shellssh <node-ip>Show more lines
✔ Inventory File Updated
Your node list should be inside:
inventories/production.ini

Example:
[controllers]
ctrl01 ansible_host=10.0.0.11

[computes]
compute01 ansible_host=10.0.0.21


📁 Toolkit Directory Layout
openstack-automation-toolkit/
├── inventories/
├── playbooks/
├── roles/
├── scripts/
└── docs/


🧪 1. Run Prechecks
This validates:

Ansible installation
SSH connectivity
Inventory reachability

Run:
Shell./scripts/precheck.shShow more lines
Expected output includes:
pong
pong


🚀 2. Provision OpenStack Nodes
Provisioning includes:

Hostname configuration
NTP setup
Installing required packages
Configuring OpenStack repo
Applying initial system updates

Run provisioning:
Shellansible-playbook -i inventories/production.ini playbooks/provision.ymlShow more lines
Provision a single node:
Shellansible-playbook playbooks/provision.yml --limit compute01Show more lines
Dry-run mode (no changes applied):
Shellansible-playbook playbooks/provision.yml --checkShow more lines

🔐 3. Patch Nodes (One‑Click Patch Cycle)
This script performs:

Listing available updates
Applying security & kernel patches
Rebooting nodes safely
Post‑reboot availability validation

Run:
Shell./scripts/patch-wrapper.shShow more lines

➕ 4. Add a Node to Inventory (Automated)
Use helper script:
Shell./scripts/add-node.sh <hostname> <ip> <group>Show more lines
Example:
Shell./scripts/add-node.sh compute03 10.0.0.33 computesShow more lines
This automatically updates:
inventories/production.ini


🧩 Inventory Example
[controllers]
ctrl01 ansible_host=10.0.0.11
ctrl02 ansible_host=10.0.0.12

[computes]
compute01 ansible_host=10.0.0.21
compute02 ansible_host=10.0.0.22


🛠 Customizing the Toolkit
Modify Provisioning Logic
roles/provision/tasks/main.yml
roles/provision/templates/

Modify Patching Logic
roles/patch/tasks/main.yml

Add New Roles
roles/<new-role-name>


🧪 Troubleshooting
❗ SSH connection fails

Check inventory IPs
Validate SSH keys
Try:

Shellssh -v <node-ip>Show more lines
❗ Ansible cannot reach nodes
Run:
Shellansible all -i inventories/production.ini -m pingShow more lines
❗ Repo / package issues
Check repo template:
roles/provision/templates/openstack.repo.j2


🎉 You Are Ready to Automate!
You now have everything needed to:
✔ Provision new OpenStack nodes
✔ Apply patches safely
✔ Extend automation modularly
✔ Maintain consistent environments
Happy automating! 🚀
=======
# 📘 OpenStack Automation Toolkit — Usage Guide

This document explains how to use the provisioning and patching automation included in the **OpenStack Automation Toolkit**.  
The toolkit uses **Ansible**, **Bash**, and **Jinja2 templates** to manage OpenStack nodes efficiently and consistently.

---

# 🔧 Prerequisites

Before using the toolkit, ensure:

## ✔ Ansible is installed
```bash
ansible --version
>>>>>>> cb0cfa4 (changes v2)
