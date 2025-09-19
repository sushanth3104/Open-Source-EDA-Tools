#!/usr/bin/env bash
set -e

# Base repo location
BASE_DIR="$HOME/Open-source-EDA-Tools"
TOOLS_DIR="$BASE_DIR/tools"

echo "Cloning or updating OpenSTA in $TOOLS_DIR ..."
cd "$TOOLS_DIR"

if [ ! -d OpenSTA ]; then
    git clone https://github.com/The-OpenROAD-Project/OpenSTA.git
else
    cd OpenSTA && git pull && cd ..
fi

echo "Building OpenSTA..."
cd "$TOOLS_DIR/OpenSTA"
mkdir -p build && cd build
cmake ..
make -j"$(nproc)"

echo "Installing OpenSTA..."

sudo make install

echo "OpenSTA installed successfully. (command: sta)"
