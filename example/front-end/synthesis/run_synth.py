from pathlib import Path

# Base PDK root: always inside the user's home directory
PDK_ROOT = Path.home() / "Open-Source-EDA-Tools" / "tools" / "open_pdks"

# Specific liberty file (typical corner)
LIB_FILE = (
    PDK_ROOT
    / "sky130"
    / "sky130A"
    / "libs.ref"
    / "sky130_fd_sc_hd"
    / "lib"
    / "sky130_fd_sc_hd__tt_025C_1v80.lib"
)

print("Using PDK_ROOT :", PDK_ROOT.resolve())
print("Using Liberty  :", LIB_FILE.resolve())
