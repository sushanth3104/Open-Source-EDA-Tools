#!/usr/bin/env bash
set -e

BASE_DIR="$HOME/Open-Source-EDA-Tools"
TOOLS_DIR="$BASE_DIR/tools"

echo "Installing dependencies for Yosys..."
sudo apt-get install -y \
    build-essential clang lld  flex libfl-dev \
    libreadline-dev gawk tcl-dev libffi-dev git \
    graphviz xdot pkg-config python3 \
    libboost-system-dev libboost-python-dev \
    libboost-filesystem-dev zlib1g-dev

 
echo " Cloning or updating Yosys in $TOOLS_DIR..."
cd "$TOOLS_DIR"
if [ ! -d yosys ]; then
    git clone --recurse-submodules https://github.com/YosysHQ/yosys.git
else
    cd yosys && git pull && cd ..
fi

wget http://ftp.gnu.org/gnu/bison/bison-3.6.tar.gz
tar -xvzf bison-3.6.tar.gz
cd bison-3.6

./configure --prefix=/usr/local
make -j"$(nproc)"
sudo make install
export PATH=/usr/local/bin:$PATH
cd ..



echo "Building Yosys..."
cd "$TOOLS_DIR/yosys"
make -j"$(nproc)"

echo " Installing Yosys..."
sudo make install

echo "Yosys installed successfully!"
