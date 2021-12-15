#!/bin/bash
set -x 
set -e

APT_KEY_URL=$1
APT_REPO_LINE=$2
TARGET_PACKAGE=$3

# Install repo key
wget -qO - "$APT_KEY_URL" | sudo apt-key add -

# Update apt configuration with new repository
echo "$APT_REPO_LINE" | sudo tee /etc/apt/sources.list.d/regolith.list

# Install target package
sudo apt update
sudo apt install -y "$TARGET_PACKAGE"
