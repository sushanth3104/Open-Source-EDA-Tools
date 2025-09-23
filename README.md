# Open-Source EDA Tools

This repository provides a curated setup of **open-source Electronic Design Automation (EDA) tools** for the RTL-to-GDSII flow.  
It is designed for students, researchers, and professionals who want a quick and consistent installation of the essential tools for VLSI design and verification.

---

## 📌 Features
- Covers a wide range of RTL-GDS tools (logic synthesis, simulation, STA, P&R, layout, LVS/DRC).
- Organized installation scripts for each tool.
- Minimal dependencies for quick setup.
- Ready-to-use environment for academic and research projects.

---

## 🔧 Prerequisites
Before installing, make sure you have:
- **Operating System**
  - Ubuntu 20.04 or later 
  - If you wish to use WSL, make sure to have a PC with RAM > 8GB
  - Standalone Ubuntu installation is preferred
- **Packages**:
  All additional packages will be installed by running the scipts in the given order.
  
- **Disk space**: ~20 GB free  
- **Internet connection**: Required to fetch source packages  

---

## 🚀 Installation

Clone this repository:
```bash
git clone https://github.com/sushanth3104/Open-Source-EDA-Tools.git
cd Open-Source-EDA-Tools/setup
```

Run the setup script to install all tools: Not preferred - Hard to debug if installation fails 
```bash
chmod +x setup.sh
./setup.sh
```

- You can also install tools individually by navigating scripts folders and running: (Preferred way)
- Make sure to install the packages in the numbering order
```bash
cd Open-Source-EDA-Tools/setup/scripts
chmod +x install_*****.sh
./install_*****..sh
```

By default all tools will be installed in tools directory(Open-Source-EDA-Tools/tools/)

---

## 📂 Repository Structure
```
Open-Source-EDA-Tools/
│
├── tools/                 # After installation 
│   ├── yosys/             # Logic synthesis
│   ├── openroad/          # P&R and timing
│   ├── magic/             # Layout editor
│   ├── Surfer/            # Simulation viewer 
│   ├── open_pdks/         # Open PDKs (Sky130, etc.)
│   └── ...
├── setup/        # Installation scripts for tools
│   ├── setup.sh  # For automatic installation                 
│   ├── scripts   # Script to install tools manually
│       ├── install_yosys_1.sh
│       ├── install_openroad_2.sh
│       ├── install_icarus_verilog_3.sh
│       ├── install_magic_4.sh
│       ├── install_openpdk_5.sh
│       ├── install_surfer_6.sh
│       ├── install_vscode_7.sh
│       └─ ...
├
└── README.md              # Project documentation
```

---

## 🧩 Installed Tools
- **Yosys** – Logic Synthesis  
- **OpenROAD** – RTL-GDS flow (includes OpenSTA)  
- **Magic** – Layout Editor  
- **Surfer** - Simulation viewer 
- **OpenPDKs** – SkyWater & other PDKs  
- **Icarus Verilog** - Verilog simulator
- **VScode**  - Code editor and directory viewer
- **Others** (depending on selection)

---

## ✅ Usage Example


---

## 🤝 Contributing
Contributions are welcome!  
- Fork the repo  
- Create a new branch (`feature/your-feature`)  
- Commit your changes  
- Submit a pull request  

---

## 📜 License
This project is open-sourced under the **MIT License**.  
Please check individual tool's licenses in their repositories.

---

## 🙌 Acknowledgments
Special thanks to the open-source EDA community:
- [The OpenROAD Project](https://theopenroadproject.org/)  
- [YosysHQ](https://yosyshq.net/yosys/)  
- [Magic VLSI](http://opencircuitdesign.com/magic/)  
- [SkyWater PDK](https://github.com/google/skywater-pdk)  

---
