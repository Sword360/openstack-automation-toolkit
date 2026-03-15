#!/bin/bash
echo "[INFO] Starting patching..."
ansible-playbook -i inventories/production.ini playbooks/patch.yml
