# Asynchronous FIFO (Verilog)

## Overview
This project implements an **Asynchronous FIFO (First-In-First-Out)** using Verilog HDL. An asynchronous FIFO is used for safe data transfer between two different clock domains by maintaining separate read and write clocks.

## Features
- Separate read and write clock domains
- Independent read and write operations
- FIFO Full and Empty status flags
- Parameterizable FIFO depth and data width
- Verilog testbench for simulation and verification

## Files
| File | Description |
|------|-------------|
| `asyn_fifo.v` | Verilog implementation of the Asynchronous FIFO |
| `asyn_fifo_tb.v` | Testbench for simulation |
| `README.md` | Project documentation |

## Working
- Data is written into the FIFO using the **write clock (`wr_clk`)**.
- Data is read from the FIFO using the **read clock (`rd_clk`)**.
- Write operations stop when the FIFO becomes **Full**.
- Read operations stop when the FIFO becomes **Empty**.
- Separate read and write pointers ensure safe communication across different clock domains.

## Simulation
Compile the design and testbench using your preferred Verilog simulator.

Example using Icarus Verilog:

```bash
iverilog -o fifo asyn_fifo.v asyn_fifo_tb.v
vvp fifo
```

To view waveforms:

```bash
gtkwave dump.vcd
```

## Applications
- Clock Domain Crossing (CDC)
- UART Communication
- SPI Interfaces
- AXI Stream Interfaces
