# VLSI
VLSI PROJECTS
# Correction-Free BCD Adder in 45nm CMOS
Low-power Binary-Coded Decimal (BCD) adder achieving 68% power reduction through NAND-NAND optimization and transistor-level design.

## Key Results
| Metric | Value | Improvement |
|--------|-------|-------------|
| **Power** | 26nW | 68% reduction vs conventional |
| **Delay** | 188ps | 40% faster |
| **Transistors** | 708 | 30% reduction (1010→708) |
| **PDP** | 7.15fJ | 76% lower |

## Project Overview
This M.Tech thesis project implements a correction-free BCD adder using 45nm CMOS technology (gpdk045). Traditional BCD adders require a two-stage correction process (adding +6 when sum > 9). This design eliminates that correction stage entirely through optimized Boolean logic.

### Architecture
**Two-Stage Netlist Design:**
- **Netlist 1**: Computes intermediate sum K = J + I (where J = A[3:1], I = B[3:1])
- **Netlist 2**: Combines K with A[0], B[0], and Cin to generate final BCD output

**Key Innovation:** NAND-NAND logic implementation integrates correction directly into Boolean equations, eliminating sequential correction stages.

## Technical Details
- **Technology**: GPDK 45nm CMOS
- **Supply Voltage**: 0.8V
- **Operating Frequency**: 100MHz
- **Transistor Sizing**: PMOS 270nm/45nm, NMOS 135nm/45nm

## Validation
1. **RTL Verification** (Xilinx Vivado)
   - Functional simulation of Boolean equations
   - Testbench validation across all BCD digit combinations

2. **Transistor-Level Implementation** (Cadence Virtuoso)
   - Schematic design with optimized sizing
   - Transient analysis for timing and power validation

## Files in This Repository
- **Thesis PDF**: Complete M.Tech thesis document
- **Verilog RTL**: Netlist1 and Netlist2 implementation
- **Circuit Diagrams**: Cadence Virtuoso schematics
- **Simulation Results**: Waveforms and PPA analysis

## About This Project
This work was completed as part of my M.Tech in VLSI Design at GITAM University (2023-2025) under the guidance of Dr. T. Gowri.

**Why This Matters:**
- Demonstrates transistor-level optimization for low-power arithmetic
- Shows understanding of CMOS circuit design and PPA tradeoffs
- Bridges theoretical knowledge with practical implementation

## Author
**BODTEE AKSHAT RAO**  
M.Tech VLSI Design | GITAM University  
 bodteeakshatrao@gmail.com  
[LinkedIn](https://linkedin.com/in/bodtee-akshat-rao-vlsi)

## Tools Used
- Cadence Virtuoso (transistor-level design)
- Xilinx Vivado (RTL verification)
- GPDK 45nm PDK

## References

Based on research methodology from Al-Share et al., "Design of High-Speed BCD Adder Using CMOS Technology," IEEE Access, 2023.

---

*This repository showcases hands-on experience with low-power circuit design, PPA optimization, and multi-tool VLSI methodology.*
