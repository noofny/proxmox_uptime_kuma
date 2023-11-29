# Uptime Kuma on Proxmox

<p align="center">
    <img height="200" alt="Uptime Kuma Logo" src="img/logo_uptime_kuma.png">
    <img height="200" alt="Docker Logo" src="img/logo_docker.png">
    <img height="200" alt="ProxMox Logo" src="img/logo_proxmox.png">
</p>

Create a [ProxMox](https://www.proxmox.com/en/) LXC running Ubuntu and [Uptime Kuma](https://uptime.kuma.pet/) on [Docker](https://www.docker.com/).

Tested on ProxMox v8, Docker 20.1, Uptime Kuma 1.23.

## Usage

SSH to your ProxMox server as a privileged user and run...

```shell
bash -c "$(wget --no-cache -qLO - https://raw.githubusercontent.com/noofny/proxmox_uptime_kuma/master/setup.sh)"
```
