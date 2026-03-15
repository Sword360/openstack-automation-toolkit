OpenStack Automation Toolkit
A complete automation framework for provisioning & patching OpenStack nodes using Ansible + Bash.

🚀 OpenStack Automation Toolkit
https://img.shields.io/badge/License-Apache%202.0-blue.svg](#license)
https://img.shields.io/badge/Built%20With-Ansible%20%7C%20Bash%20%7C%20YAML-green
https://img.shields.io/badge/Status-Production%20Ready-brightgreen
https://img.shields.io/badge/Platform-Linux%20%7C%20OpenStack-orange
The OpenStack Automation Toolkit is a lightweight, modular, and production-grade solution designed to automate:

⚙️ Provisioning of OpenStack controller & compute nodes
🔐 Patching, kernel upgrades, and secure reboots
🔄 Repeatable, idempotent configuration management
📉 Reduction of manual operational effort by ~50%

This project uses Ansible, Bash, Jinja2, and YAML, making it portable and extremely easy to integrate into existing Cloud/DevOps workflows.

📂 Repository Structure
openstack-automation-toolkit/
│── README.md
│── ansible.cfg
│── requirements.yml
│── requirements.txt
│── .gitignore
│── LICENSE
│
│── inventories/
│   └── production.ini
│
│── playbooks/
│   ├── provision.yml
│   └── patch.yml
│
│── roles/
│   ├── common/
│   │   └── tasks/main.yml
│   ├── provision/
│   │   ├── tasks/main.yml
│   │   ├── templates/ntp.conf.j2
│   │   └── templates/openstack.repo.j2
│   └── patch/
│       └── tasks/main.yml
│
│── scripts/
│   ├── precheck.sh
│   ├── add-node.sh
│   └── patch-wrapper.sh
│
└── docs/
    └── usage.md


✨ Key Features
🔧 Automated Provisioning

Hostname setup
NTP configuration using Jinja2 templates
OpenStack repository setup
Core package installation
System updates & baseline configuration

🔐 Automated Security Patching

Detect updates (yum/dnf)
Apply system + kernel patches
Safe controlled reboots
Post-reboot validation via Ansible

⚡ One‑Click Operations

precheck.sh – Validate SSH + connectivity
patch-wrapper.sh – Automated patch cycle
add-node.sh – Add nodes dynamically to inventory

🧩 Modular & Extensible

Clearly separated roles: common, provision, patch
Custom templates for environment-specific config
Environment-based inventories

🛡️ Production‑Ready

Idempotent Ansible tasks
Clean directory structure
GitHub-style documentation
Proper .gitignore + licensing


📥 Prerequisites
You will need:

Ansible 9.x or later
Python 3.x
SSH access to all OpenStack nodes
RHEL / CentOS / Rocky Linux based systems

Install Python dependencies:
Shellpip install -r requirements.txtShow more lines
Install Ansible Galaxy dependencies:
Shellansible-galaxy install -r requirements.ymlShow more lines

🚀 Getting Started
1️⃣ Clone the Repository
Shellgit clone https://github.com/<your-org>/openstack-automation-toolkit.gitcd openstack-automation-toolkitShow more lines
2️⃣ Run Prechecks
Shell./scripts/precheck.shShow more lines
3️⃣ Provision New Nodes
Shellansible-playbook -i inventories/production.ini playbooks/provision.ymlShow more lines
Run on a specific node:
Shellansible-playbook playbooks/provision.yml --limit compute01Show more lines
Dry run:
Shellansible-playbook playbooks/provision.yml --checkShow more lines
4️⃣ Patch Nodes (One‑Click)
Shell./scripts/patch-wrapper.shShow more lines
5️⃣ Add New Node Automatically
Shell./scripts/add-node.sh compute03 10.0.0.33 computesShow more lines

📌 Inventory Example
[controllers]
ctrl01 ansible_host=10.0.0.11
ctrl02 ansible_host=10.0.0.12

[computes]
compute01 ansible_host=10.0.0.21
compute02 ansible_host=10.0.0.22


🛠 Customization
Customize Provisioning
Modify:
roles/provision/tasks/main.yml
roles/provision/templates/*

Customize Patching
Modify:
roles/patch/tasks/main.yml

Add New Roles
Add directories under:
roles/


🧪 Testing Tips
Syntax check:
Shellansible-playbook playbooks/provision.yml --syntax-checkShow more lines
Limit to one node:
Shell--limit hostnameShow more lines
Use verbose output:
Shell-vvShow more lines

📚 Documentation
More detailed instructions:
📄 docs/usage.md

🧑‍💻 Contributing

Fork the repo
Create a feature branch
Submit a Pull Request
Follow coding conventions (YAML, Bash, Ansible)


📄 License
This project is licensed under the Apache License 2.0.
See the LICENSE file for details.

⭐ Support the Project
If this toolkit saves time or helps in production—
please ⭐ star this repo on GitHub!