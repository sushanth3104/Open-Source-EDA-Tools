#!/usr/bin/env bash

# Repo paths
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
SCRIPTS_DIR="$REPO_DIR/scripts"

echo "Updating apt repositories..."
sudo apt-get update
sudo apt-get upgrade -y

echo "Installing Git.."
sudo apt-get install git -y


if [[ ! -d "$SCRIPTS_DIR" ]]; then
  echo "ERROR: scripts/ folder not found at $SCRIPTS_DIR"
  exit 1
fi

# ---- Order to run (by your numbered filenames) ----
ORDER=(
  "install_yosys_1.sh"
  "install_openroad_2.sh"
  "install_icarus_verilog_3.sh"
  "install_magic_4.sh"
  "install_openpdk_5.sh"
  "install_surfer_6.sh"
)

# Optional: do apt-get update once up front (comment out if each script already does it)
# sudo apt-get update -y

LOG_DIR="$REPO_DIR/logs"
mkdir -p "$LOG_DIR"

echo "Running installers from: $SCRIPTS_DIR"
for script in "${ORDER[@]}"; do
  path="$SCRIPTS_DIR/$script"
  if [[ -f "$path" ]]; then
    echo "==> $script"
    chmod +x "$path"
    # log each installer to its own file
    bash "$path" 2>&1 | tee "$LOG_DIR/${script%.sh}.log"
    echo
  else
    echo "!! Skipping $script (not found)"
  fi
done

echo "All requested installers finished."
echo "Logs saved in: $LOG_DIR"
