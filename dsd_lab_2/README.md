# Lab-3 Simulation

**Abubakar Abrar**
*2023-EE-132*

This repository contains instructions to compile and simulate lab-3 Verilog RTL files and their corresponding testbench files manually.

## Usage

### 1. Compile the RTL and testbench files
Run the following command:
```sh
iverilog -o sim.out lab_1.sv full_adder.sv lab_1_tb.sv full_adder_tb.sv
```
This will use `iverilog` to compile the RTL and testbench files into an executable.

### 2. Run the simulation
After compilation, execute:
```sh
vvp sim.out
```
This will run the compiled simulation.

### 3. Clean up generated files
To remove generated simulation files, run:
```sh
rm -f sim.out *.vcd
```

## File Structure
- `lab_1.sv, full_adder.sv`: RTL files.
- `lab_1_tb.sv, full_adder_tb.sv`: Testbench file for simulation.

## Requirements
Ensure you have `iverilog` installed before running the commands.

## Notes
Modify the compilation command to include additional modules or testbenches as needed.
