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
- **Operating System**: Ubuntu 20.04 / 22.04 LTS (recommended)  
- **Packages**:
  ```bash
  sudo apt-get update
  sudo apt-get install -y build-essential git make cmake       tcl-dev tk-dev python3 python3-pip       libx11-dev libxpm-dev libxft-dev libxext-dev       bison flex libreadline-dev gawk
  ```
- **Disk space**: ~10 GB free  
- **Internet connection**: Required to fetch source packages  

---

## 🚀 Installation

Clone this repository:
```bash
git clone https://github.com/sushanth3104/Open-Source-EDA-Tools.git
cd Open-Source-EDA-Tools/open-eda-setup
```

Run the setup script to install all tools:
```bash
chmod +x setup.sh
./setup.sh
```

You can also install tools individually by navigating to their respective folders and running:
```bash
chmod +x install.sh
./install.sh
```

---

## 📂 Repository Structure
```
Open-Source-EDA-Tools/
│
├── open-eda-setup/        # Installation scripts for tools
│   ├── yosys/             # Logic synthesis
│   ├── openroad/          # P&R and timing
│   ├── magic/             # Layout editor
│   ├── netgen/            # LVS tool
│   ├── open_pdks/         # Open PDKs (Sky130, etc.)
│   └── ...
│
├── setup.sh               # Script to install all tools sequentially
└── README.md              # Project documentation
```

---

## 🧩 Installed Tools
- **Yosys** – Logic Synthesis  
- **OpenROAD** – RTL-GDS flow (includes OpenSTA)  
- **Magic** – Layout Editor  
- **Netgen** – LVS comparison  
- **OpenPDKs** – SkyWater & other PDKs  
- **Others** (depending on selection)

---

## ✅ Usage Example
After installation, tools will be available globally. For example:
```bash
yosys -V
openroad -exit
magic -d XR
```

To verify:
```bash
which yosys
which openroad
```

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
Please check individual tools’ licenses in their repositories.

---

## 🙌 Acknowledgments
Special thanks to the open-source EDA community:
- [The OpenROAD Project](https://theopenroadproject.org/)  
- [YosysHQ](https://yosyshq.net/yosys/)  
- [Magic VLSI](http://opencircuitdesign.com/magic/)  
- [SkyWater PDK](https://github.com/google/skywater-pdk)  

---
