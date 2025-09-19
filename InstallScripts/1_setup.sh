#!/usr/bin/env bash
set -e

# Base project directory in home
BASE_DIR="$HOME/open-eda-setup"
SCRIPTS_DIR="$BASE_DIR/scripts"
TOOLS_DIR="$BASE_DIR/tools"
DOCS_DIR="$BASE_DIR/docs"

echo "🚀 Setting up folder structure at $BASE_DIR ..."
mkdir -p "$SCRIPTS_DIR" "$TOOLS_DIR" "$DOCS_DIR"

# Update package lists
echo "Updating apt repositories..."
sudo apt-get update
sudo apt-get upgrade -y

echo "Setup complete!"
echo "Directories created:"
echo "   $SCRIPTS_DIR"
echo "   $TOOLS_DIR"
echo "   $DOCS_DIR"