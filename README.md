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

The file [requirements.yml](requirements.yml) declares external roles and collections used by the project, such as Galaxy roles and shared Ansible collections. It is not used automatically by Ansible during a playbook run; it must be executed explicitly once in the environment to install the required dependencies.

Check the installed tooling:

```bash
ansible --version
```

## Pre-commit setup

Install the hook manager and register the project hooks:

```bash
python -m pip install pre-commit
pre-commit install
pre-commit run --all-files
```

This project includes a [.pre-commit-config.yaml](.pre-commit-config.yaml) file with basic Ansible hygiene checks, YAML validation, and `ansible-lint`.

## Notes

- The project is intentionally simple and role-oriented.
- Operational logic is delegated to roles under [roles/](roles/).
- The current role is focused on Debian and RedHat family systems with systemd.
