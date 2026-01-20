#!/bin/bash
set -euo pipefail


# ------------------------------------
# Nginx + Certbot
# ------------------------------------
sudo apt-get update -y
echo "Installing Nginx + Certbot..."
sudo apt install -y nginx certbot python3-certbot-nginx
sudo systemctl enable --now nginx

echo "Setup complete!"