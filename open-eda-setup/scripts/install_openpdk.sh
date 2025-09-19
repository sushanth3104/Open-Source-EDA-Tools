#!/usr/bin/env bash
set -e

# Base repo location
BASE_DIR="$HOME/Open-Source-EDA-Tools"
TOOLS_DIR="$BASE_DIR/tools"

echo "Installing dependencies for open_pdks..."
sudo apt-get update
sudo apt-get install -y build-essential git tcl-dev

echo "Cloning or updating open_pdks in $TOOLS_DIR ..."
cd "$TOOLS_DIR"
if [ ! -d open_pdks ]; then
    git clone git://opencircuitdesign.com/open_pdks
else
    cd open_pdks && git pull && cd ..
fi

echo "Configuring open_pdks..."
cd "$TOOLS_DIR/open_pdks"

# Optional custom install prefix:
#   export PDK_PREFIX="$HOME/share/pdk"
# If PDK_PREFIX is set, pass it to configure; otherwise use default (/usr/local).
CONFIG_ARGS=(--enable-sky130-pdk)
if [ -n "${PDK_PREFIX:-}" ]; then
    CONFIG_ARGS+=("--prefix=$PDK_PREFIX")
fi

./configure "${CONFIG_ARGS[@]}"

echo "Building and installing open_pdks..."
sudo make
sudo make install

echo "open_pdks installed. Default location is /usr/local/share/pdk unless PDK_PREFIX was set."


#integrate sky130 to magic 
sudo ln -s /usr/local/share/pdk/sky130A/libs.tech/magic/* /usr/local/lib/magic/sys
