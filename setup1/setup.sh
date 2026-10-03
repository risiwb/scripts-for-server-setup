#!/bin/bash
set -e

apt-get update
apt-get upgrade -y
apt-get install -y curl git python3 python3-venv python3-pip ufw htop sqlite3 ca-certificates

ufw allow OpenSSH
ufw --force enable

# cloudflared
curl -L -o /tmp/cloudflared.deb https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb
dpkg -i /tmp/cloudflared.deb

# atuin (as your user, not root)
sudo -u "$SUDO_USER" bash -c "curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh"
