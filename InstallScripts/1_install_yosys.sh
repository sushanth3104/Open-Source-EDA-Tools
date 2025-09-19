#!/usr/bin/env bash
set -e  # stop if something fails

# Base directory for this project (in your home)
BASE_DIR="$HOME/open-eda-setup"
SCRIPTS_DIR="$BASE_DIR/scripts"
TOOLS_DIR="$BASE_DIR/tools"
DOCS_DIR="$BASE_DIR/docs"

echo "Setting up Open EDA project structure..."
mkdir -p "$SCRIPTS_DIR" "$TOOLS_DIR" "$DOCS_DIR"

echo "===> Installing dependencies for Yosys..."
sudo apt-get update
sudo apt-get install -y \
    build-essential clang lld bison flex libfl-dev \
    libreadline-dev gawk tcl-dev libffi-dev git \
    graphviz xdot pkg-config python3 \
    libboost-system-dev libboost-python-dev \
    libboost-filesystem-dev zlib1g-dev

echo "===> Cloning Yosys source into $TOOLS_DIR..."
cd "$TOOLS_DIR"
if [ ! -d yosys ]; then
    git clone --recurse-submodules https://github.com/YosysHQ/yosys.git
else
    cd yosys && git pull && cd ..
fi

echo "====> Building Yosys..."
cd "$TOOLS_DIR/yosys"
make -j"$(nproc)"

echo "====> Installing Yosys..."
sudo make install

echo "Yosys installed successfully!"

