# NAND-Based Logic Gate Library

A reusable Verilog RTL library implementing seven digital logic gates using NAND-based structural modeling.

## Overview

This project demonstrates how fundamental digital logic gates can be constructed by instantiating NAND-based logic modules and verified using Verilog testbenches.

The designs were developed and tested using AMD Vivado 2025.2 targeting the Spartan-7 FPGA (`xc7s50csga324-1`).

## Implemented Logic Gates

| Gate | RTL Module | Implementation |
|---|---|---|
| NAND | `nand_gate` | Direct NAND logic |
| NOT | `not_gate` | NAND with tied inputs |
| AND | `and_gate` | NAND + NOT |
| OR | `or_gate` | NOT + NAND |
| NOR | `nor_gate` | OR + NOT |
| XOR | `xor_gate` | Four NAND gates |
| XNOR | `xnor_gate` | XOR + NOT |

## Repository Structure

```text
nand-based-logic-gates/
├── rtl/
│   ├── nand_gate.v
│   ├── not_gate.v
│   ├── and_gate.v
│   ├── or_gate.v
│   ├── nor_gate.v
│   ├── xor_gate.v
│   └── xnor_gate.v
├── tb/
│   ├── tb_nand_gate.v
│   ├── tb_not_gate.v
│   ├── tb_and_gate.v
│   ├── tb_or_gate.v
│   ├── tb_nor_gate.v
│   ├── tb_xor_gate.v
│   └── tb_xnor_gate.v
└── docs/
    └── NAND-Based Logic Gate Library.docx
```

## Tools and Technologies

- Verilog HDL
- AMD Vivado 2025.2
- Spartan-7 FPGA
- Behavioral simulation
- RTL synthesis and LUT initialization analysis

## Verification

Each two-input gate is tested across all four possible input combinations. The NOT gate is tested with both possible input values.

The testbenches display input and output values in the simulation console and can be used to inspect the corresponding waveforms in Vivado.

## Synthesis Notes

Vivado may optimize the structural RTL into lookup tables (LUTs) during FPGA synthesis. Therefore, the synthesized schematic may differ from the original hierarchy of NAND and NOT modules.

LUT initialization values recorded in the project report describe the truth-table configuration of the synthesized LUTs.

## How to Use

1. Download or clone this repository.
2. Open Vivado and create or open an RTL project.
3. Add the required Verilog modules from the `rtl/` directory as design sources.
4. Add the corresponding testbench from the `tb/` directory as a simulation source.
5. Set the desired testbench as the simulation top and run behavioral simulation.
6. Set the desired gate module as the synthesis top to inspect its synthesized implementation.

For example, to use `and_gate`, include `and_gate.v`, `nand_gate.v`, and `not_gate.v` in the project.

## Documentation

See `docs/NAND_Logic_Library_Report.docx` for the Boolean equations, RTL implementations, testbench results, truth tables, waveforms, and synthesis observations.

## Purpose

This project is an educational RTL design and verification exercise demonstrating structural modeling, module instantiation, functional simulation, and FPGA synthesis optimization.