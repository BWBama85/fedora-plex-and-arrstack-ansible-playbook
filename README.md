# Fedora Media Server Setup via Ansible

This is an Ansible playbook to setup a Fedora 38 server as a media server. The playbook can install Plex, Sonarr, Radarr, Prowlarr, Lidarr, Whisparr, Readarr, and qBittorrent-nox. It will also setup a systemd service for each application and configure firewalld to allow access to the applications.

## Requirements
- Fedora Server
- Ansible
- SSH access to the server with a user with sudo privileges and a SSH key
- make installed on ansible machine where playbook will be run

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