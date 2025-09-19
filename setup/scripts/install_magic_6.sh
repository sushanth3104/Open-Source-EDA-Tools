#!/usr/bin/env bash
set -e

# Base repo location
BASE_DIR="$HOME/Open-Source-EDA-Tools"
TOOLS_DIR="$BASE_DIR/tools"

echo "Installing dependencies for Magic..."
sudo apt-get update
sudo apt-get install -y \
    build-essential clang bison flex \
    libreadline-dev gawk tcl-dev libffi-dev git \
    graphviz xdot pkg-config python3 libboost-system-dev \
    libboost-python-dev libboost-filesystem-dev zlib1g-dev \
    make m4 tcsh csh libx11-dev gperf tcl8.6-dev tk8.6 tk8.6-dev \
    libxpm4 libxpm-dev libxcb1 libcairo2 \
    libxrender-dev libx11-xcb-dev libxaw7-dev freeglut3-dev \
    automake yosys libtool

echo "Cloning or updating Magic in $TOOLS_DIR ..."
cd "$TOOLS_DIR"

if [ ! -d magic ]; then
    git clone git://opencircuitdesign.com/magic
else
    cd magic && git pull && cd ..
fi

echo "Building Magic..."
cd "$TOOLS_DIR/magic"
./configure
make -j"$(nproc)"

echo "Installing Magic..."
sudo make install

echo "Magic installed successfully. (command: magic)"
