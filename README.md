# Fedora Media Server Setup via Ansible

This is an Ansible playbook to setup a Fedora 38 server as a media server. It is based on the [Fedora 38 Server](https://getfedora.org/en/server/download/) installation. This is opinionated and will need some adjusting based on your use case until I can spend more time making it more flexible. This should give you a good starting point though.

## Requirements
- Fedora 38 Server
- Ansible
- SSH access to the server with a user with sudo privileges and a public key with no password
- make installed on ansible machine

To run the playbook, run the following command:
```make media```

Adjust the variables in the `host_vars/media/vars.yml` file to your needs.