# 🔄 Asynchronous FIFO (Verilog HDL)

An Asynchronous FIFO (First-In-First-Out) implementation in Verilog HDL for reliable data transfer between different clock domains.

## 📌 Overview

This project implements an **Asynchronous FIFO** with separate read and write clocks. It is designed to safely transfer data across different clock domains while preventing overflow and underflow conditions.

---

## ✨ Features

- ✅ Independent Read and Write Clocks
- ✅ FIFO Full Detection
- ✅ FIFO Empty Detection
- ✅ Separate Read & Write Pointers
- ✅ Verilog Testbench
- ✅ Simulation Waveform Included

---

## 🏗️ Project Structure

| File | Description |
|------|-------------|
| `asyn_fifo.v` | Asynchronous FIFO design |
| `asyn_fifo_tb.v` | Testbench |
| `simulation result.jpeg` | Simulation waveform |
| `README.md` | Project documentation |

---

## ⚙️ Working Principle

- Data is written using the **Write Clock**.
- Data is read using the **Read Clock**.
- Write operations stop when FIFO becomes **Full**.
- Read operations stop when FIFO becomes **Empty**.
- Read and write pointers operate independently to support asynchronous communication.

---

## ▶️ Simulation

### Using ModelSim

```tcl
vlog asyn_fifo.v
vlog asyn_fifo_tb.v
vsim asyn_fifo_tb
run -all
```

### Using Icarus Verilog

```bash
iverilog -o fifo asyn_fifo.v asyn_fifo_tb.v
vvp fifo
gtkwave dump.vcd
```

---

## 📈 Simulation Result

![Simulation Result](simulation%20result.jpeg)

---

## 💡 Applications

- Clock Domain Crossing (CDC)
- UART Communication
- SPI Interface
- FPGA Designs
- High-Speed Data Transfer
- Digital Signal Processing

---

## 🚀 Future Improvements

- Gray Code Pointer Synchronization
- Parameterized FIFO Depth
- Almost Full / Almost Empty Flags
- SystemVerilog Implementation

---

## 👩‍💻 Author

**Sneha Agarwal**

Electronics & Communication Engineering
