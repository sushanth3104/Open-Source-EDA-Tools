#!/usr/bin/env bash
set -e

# Base repo location
BASE_DIR="$HOME/Open-Source-EDA-Tools"
TOOLS_DIR="$BASE_DIR/tools"

echo "Cloning or updating OpenROAD in $TOOLS_DIR ..."
cd "$TOOLS_DIR"

if [ ! -d OpenROAD ]; then
    git clone --recursive https://github.com/The-OpenROAD-Project/OpenROAD.git
else
    cd OpenROAD && git pull --recurse-submodules && cd ..
fi

echo "Running OpenROAD dependency installer..."
cd "$TOOLS_DIR/OpenROAD"
sudo ./etc/DependencyInstaller.sh -all

echo "Building OpenROAD..."
mkdir -p build && cd build
cmake ..
make -j"$(nproc)"

echo "Installing OpenROAD..."
sudo make install

echo "OpenROAD installed successfully. (command: openroad)"
