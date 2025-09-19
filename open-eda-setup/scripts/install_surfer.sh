#!/usr/bin/env bash
set -e

# Base repo location
BASE_DIR="$HOME/Open_source-EDA-Tools"
TOOLS_DIR="$BASE_DIR/tools"

echo "Updating apt and installing dependencies..."
sudo apt-get update
sudo apt-get install -y openssl libssl-dev curl unzip pkg-config build-essential

# Install Rust if not already present
if ! command -v cargo &> /dev/null; then
    echo "Installing Rust (rustup)..."
    curl https://sh.rustup.rs -sSf | sh -s -- -y
    source "$HOME/.cargo/env"
else
    echo "Rust already installed, skipping..."
fi

# Ensure Cargo is on PATH
if [[ ":$PATH:" != *":$HOME/.cargo/bin:"* ]]; then
    echo "Adding Cargo to PATH..."
    echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> "$HOME/.bashrc"
    export PATH="$HOME/.cargo/bin:$PATH"
fi

# Install Surfer from GitLab
echo "Installing Surfer from source..."
cargo install --git https://gitlab.com/surfer-project/surfer.git surfer

# Verify installation
if command -v surfer &> /dev/null; then
    echo "Surfer installed successfully."
    surfer --version
else
    echo "Surfer installed, but command not found."
    echo "Run: export PATH=\"$HOME/.cargo/bin:\$PATH\""
fi

echo "Installation complete. Run Surfer with:"
echo "    surfer path/to/wavefile.vcd"
