#!/usr/bin/env bash
set -e


echo "Installing VScode.."
sudo apt-get update
snap install code --classic

echo "vscode installed successfully. (command: code)"
