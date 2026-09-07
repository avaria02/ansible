#!/usr/bin/env bash
set -euo pipefail

ansible-playbook -i inventory/production/hosts playbooks/site.yml
