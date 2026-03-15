
# 📘 OpenStack Automation Toolkit
A complete automation framework for provisioning & patching OpenStack nodes using Ansible + Bash.

---

## 🚀 Toolkit Overview

The **OpenStack Automation Toolkit** simplifies lifecycle management for OpenStack nodes:

- Provision controller & compute nodes  
- Automate OS patching and kernel updates  
- Reboot & validate nodes safely  
- Standardize configuration using Ansible roles  
- Reduce manual effort by **~50%**  

---

## 📂 Repository Structure

```
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
```

---

## ✨ Key Features

### 🔧 Provisioning
- Hostname setup
- NTP config
- Repos + packages installation
- System updates

### 🔐 Security Patching
- yum/dnf updates
- Kernel patching
- Automatic reboot
- Post‑reboot connectivity check

### ⚡ One‑Click Automation Scripts
- `precheck.sh`
- `patch-wrapper.sh`
- `add-node.sh`

---

## 📥 Setup

Install Python packages:

```bash
pip install -r requirements.txt
```

Install Ansible collections:

```bash
ansible-galaxy install -r requirements.yml
```

---

## 🚀 Usage

### 1️⃣ Prechecks
```bash
./scripts/precheck.sh
```

### 2️⃣ Provision Nodes
```bash
ansible-playbook -i inventories/production.ini playbooks/provision.yml
```

### 3️⃣ Patch Nodes
```bash
./scripts/patch-wrapper.sh
```

### 4️⃣ Add Node
```bash
./scripts/add-node.sh compute03 10.0.0.33 computes
```

---

## 📌 Inventory Example

```
[controllers]
ctrl01 ansible_host=10.0.0.11
ctrl02 ansible_host=10.0.0.12

[computes]
compute01 ansible_host=10.0.0.21
compute02 ansible_host=10.0.0.22
```

---

## 🧪 Testing

```bash
ansible-playbook playbooks/provision.yml --syntax-check
ansible-playbook playbooks/provision.yml --limit compute01
```

---

## 🧑‍💻 Contributing
- Fork the repo  
- Create a branch  
- Submit PR  

---

## 📄 License
Apache License 2.0

---

