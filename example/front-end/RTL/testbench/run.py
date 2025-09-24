import subprocess

# Step 1: Compile
subprocess.run(["iverilog", "-o", "sim.vvp","../design/test_design.v","./test_design_tb.v"], check=True)
# command : iverilog -o 

# Step 2: Run simulation
subprocess.run(["vvp", "sim.vvp"], check=True)
# command : vvp sim.vvp

# Step 3: Open waveform
subprocess.run(["surfer", "sim.vcd"])
# command : surfer 
