# node_exporter role

Deploys Prometheus node_exporter on hosts from Ansible inventory.

## Features

- installs node_exporter from the OS package manager
- supports Debian and RedHat family systems via `ansible_os_family`
- creates a dedicated system user and group
- renders and enables a systemd unit for Linux hosts

## Variables

### Required

- `node_exporter_listen_address` — exporter listen address, default `":9100"`

### Defaults

```yaml
node_exporter_user: node_exporter
node_exporter_group: node_exporter
node_exporter_service_name: node_exporter
node_exporter_bin_path: /usr/bin/node_exporter
node_exporter_listen_address: ":9100"
node_exporter_package_name: prometheus-node-exporter
```

## Example usage

Example role definition:

```yaml
- hosts: all
  become: true
  roles:
    - role: node_exporter
```

Run the playbook from the project root:

```bash
ansible-playbook playbooks/node-exporter.yml
```

## Notes

- This role is intentionally limited to systemd-based Linux hosts.
- The install method is package-based only for production stability and consistency.
