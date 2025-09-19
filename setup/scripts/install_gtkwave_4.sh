#!/usr/bin/env bash
set -e


echo "Installing GTKWave..."
sudo apt-get update
sudo apt-get install -y gtkwave

echo "GTKWave installed successfully. (command: gtkwave)"
