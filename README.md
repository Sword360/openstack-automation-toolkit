📘 OpenStack Automation Toolkit
A complete automation framework for provisioning & patching OpenStack nodes using Ansible + Bash.

🚀 OpenStack Automation Toolkit
✔ What It Automates

⚙️ Provisioning of controller & compute nodes
🔐 OS patching, kernel updates & reboots
🔄 Idempotent configuration management
📉 Reduces manual effort by ~50%


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

Hostname configuration
NTP setup via Jinja2 templates
OpenStack repository configuration
Package installation
System update baseline

🔐 Automated Security Patching

Update detection (yum/dnf)
Apply package + kernel patches
Auto‑reboot if required
Post‑reboot Ansible validation

⚡ One‑Click Operations

precheck.sh → Validate Ansible & SSH
patch-wrapper.sh → Full patch cycle
add-node.sh → Add nodes to inventory

🧩 Modular & Extensible

Clear role separation
Templated configuration
Environment-based inventory

🛡️ Production‑Ready

Idempotent automation
Clean directory layout
GitHub‑style documentation
Proper gitignore & licensing


📥 Prerequisites
Install Python packages:
Shellpip install -r requirements.txt``Show more lines
Install Ansible Galaxy collections:
Shellansible-galaxy install -r requirements.ymlShow more lines
Requirements:

Ansible 9.x+
Python 3.x
SSH access to all OpenStack nodes
RHEL / CentOS / Rocky Linux OS


🚀 Getting Started
1️⃣ Clone the Repo
Shellgit clone https://github.com/<your-org>/openstack-automation-toolkit.gitcd openstack-automation-toolkitShow more lines
2️⃣ Run Prechecks
Shell./scripts/precheck.shShow more lines
3️⃣ Provision Nodes
Shellansible-playbook -i inventories/production.ini playbooks/provision.ymlShow more lines
4️⃣ Patch Nodes
Shell./scripts/patch-wrapper.shShow more lines
5️⃣ Add a New Node
Shell./scripts/add-node.sh compute03 10.0.0.33 computesShow more lines

📌 Inventory Example
[controllers]
ctrl01 ansible_host=10.0.0.11
ctrl02 ansible_host=10.0.0.12

[computes]
compute01 ansible_host=10.0.0.21
compute02 ansible_host=10.0.0.22


🛠 Customization
Provisioning
roles/provision/tasks/main.yml
roles/provision/templates/

Patching
roles/patch/tasks/main.yml

Add New Roles
roles/<your-role>/


🧪 Testing Tips
Check syntax:
Shellansible-playbook playbooks/provision.yml --syntax-checkShow more lines
Test on a single node:
Shell--limit compute01Show more lines
Verbose output:
Shell-vvShow more lines

📚 Documentation
See detailed usage guide:
📄 docs/usage.md

🧑‍💻 Contributing

Fork the repo
Create a feature branch
Submit a Pull Request
Follow YAML + Bash best practices


📄 License
Licensed under the Apache License 2.0.
See LICENSE for details.

⭐ Support
If this project helped you, please ⭐ star the repository!
