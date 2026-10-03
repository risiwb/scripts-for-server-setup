# Server Setup

Base setup script for a fresh Debian/Ubuntu server.

## Usage

```bash
curl -fsSL https://github.com/risiwb/scripts-for-server-setup/main/setup1/setup.sh -o setup.sh
sudo bash setup.sh
```

Run it from your normal user with `sudo`, not as root directly (Atuin is installed for the user who ran `sudo`).

## What it installs

| Package | Purpose |
|---|---|
| curl | Download files from the web |
| git | Clone app repositories |
| python3, python3-venv, python3-pip | Run Python apps in isolated environments |
| ufw | Firewall (only SSH allowed) |
| htop | Monitor CPU, memory, processes |
| sqlite3 | Inspect SQLite databases |
| ca-certificates | HTTPS certificate verification |
| cloudflared | Cloudflare tunnels |
| Atuin | Command history with folder, exit code and search |

It also runs `apt-get upgrade` to update existing packages.

## After running

Log out and back in, or run `source ~/.bashrc`, to activate Atuin.

## Notes

- Safe to rerun.
