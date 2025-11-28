# RTL Implementation
Verilog code for BCD adder functional verification.

## Files
- **bcd_adder.v and bcd_adder.tb** - Complete RTL implementation of Netlist1 and Netlist2

## Description
This RTL code was verified in Xilinx Vivado for functional correctness before transistor-level implementation in Cadence.

## How to Use
```bash
# Compile
iverilog -o bcd_adder bcd_adder.v bcd_adder.tb

# Simulate (with testbench)
vvp bcd_adder
```

## Testbench
The code includes inline testbench for BCD addition verification.
