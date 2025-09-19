#!/usr/bin/env bash
set -e

# Base repo location
BASE_DIR="$HOME/Open-Source-EDA-Tools"
TOOLS_DIR="$BASE_DIR/tools"

echo "Installing Icarus Verilog..."
sudo apt-get update
sudo apt-get install -y iverilog

echo "Icarus Verilog installed successfully. (command: iverilog)"
