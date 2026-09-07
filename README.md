# Ansible project

This repository contains an Ansible project for infrastructure automation and host configuration management.

## Structure

- [inventory/](inventory/) - inventory and host/group variables
- [playbooks/](playbooks/) - playbooks for executing automation tasks
- [roles/](roles/) - reusable roles, including the node_exporter role
- [scripts/](scripts/) - helper automation scripts
- [ansible.cfg](ansible.cfg) - project-wide Ansible settings
- [requirements.txt](requirements.txt) - Python dependencies for local execution
- [requirements.yml](requirements.yml) - Ansible Galaxy dependencies

## Purpose

The project is organized around a role-based layout and is intended for managed deployments on Linux hosts.

## Local setup

Create and activate a Python virtual environment:

```bash
python3 -m venv .venv
source .venv/bin/activate
```

Install project dependencies:

```bash
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
```

Install required Ansible collections and roles:

```bash
ansible-galaxy install -r requirements.yml
```

Check the installed tooling:

```bash
ansible --version
```

## Notes

- The project is intentionally simple and role-oriented.
- Operational logic is delegated to roles under [roles/](roles/).
- The current role is focused on Debian and RedHat family systems with systemd.
