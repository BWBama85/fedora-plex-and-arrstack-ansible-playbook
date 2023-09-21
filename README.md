# Fedora Media Server Setup via Ansible

This is an Ansible playbook to setup a Fedora 38 server as a media server. It is based on the [Fedora 38 Server](https://getfedora.org/en/server/download/) installation. This is opinionated and will need some adjusting based on your use case until I can spend more time making it more flexible. This should give you a good starting point though.

## Requirements
- Fedora 38 Server
- Ansible
- SSH access to the server with a user with sudo privileges and a public key with no password
- make installed on ansible machine

## Features
- Plex Media Server
- Sonarr
- Radarr
- Prowlarr
- Lidarr
- Whisparr
- Readarr
- qBittorrent-nox

## Assumptions
This script currently assumes you will be storing all your media files and torrents on a NAS and using SMB to connect to that NAS. I also have a backup folder on my nas.

## Usage
To run the playbook, run the following command:
```make media```

Adjust the variables in the `host_vars/media/vars.yml` and `hosts.yml` to your needs.

### Ports
- Prowlarr: 9696
- Sonarr: 8989
- Radarr: 7878
- Lidarr: 8686
- Whisparr: 6969
- Readarr: 8787
- Plex: 32400
- qBittorrent: 8080