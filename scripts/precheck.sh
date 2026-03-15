#!/bin/bash
echo "[INFO] Running Ansible pre-checks..."
ansible all -m ping
