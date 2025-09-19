#!/usr/bin/env bash
set -e


echo "Installing Icarus Verilog..."
sudo apt-get update
sudo apt-get install -y iverilog

echo "Icarus Verilog installed successfully. (command: iverilog)"
