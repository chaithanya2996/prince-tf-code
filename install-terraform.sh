#!/bin/bash

set -e

echo "=========================================="
echo " Installing Terraform on Ubuntu"
echo "=========================================="

# Check if running as root
if [ "$EUID" -eq 0 ]; then
    SUDO=""
else
    SUDO="sudo"
fi

echo "[1/5] Updating package lists..."
$SUDO apt-get update -y

echo "[2/5] Installing prerequisites..."
$SUDO apt-get install -y \
    gnupg \
    software-properties-common \
    curl

echo "[3/5] Adding HashiCorp GPG key..."

curl -fsSL https://apt.releases.hashicorp.com/gpg | \
    $SUDO gpg --dearmor \
    -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

echo "[4/5] Adding HashiCorp repository..."

UBUNTU_CODENAME=$(grep -oP '(?<=UBUNTU_CODENAME=).*' /etc/os-release || \
                  lsb_release -cs)

echo "Ubuntu codename: $UBUNTU_CODENAME"

echo "deb [arch=$(dpkg --print-architecture) \
signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com \
$UBUNTU_CODENAME main" | \
$SUDO tee /etc/apt/sources.list.d/hashicorp.list > /dev/null

echo "[5/5] Installing Terraform..."

$SUDO apt-get update -y
$SUDO apt-get install -y terraform

echo ""
echo "=========================================="
echo " Terraform installation completed!"
echo "=========================================="

echo ""
echo "Terraform version:"
terraform version

echo ""
echo "Installation location:"
command -v terraform

echo ""
echo "Terraform help:"
terraform -help