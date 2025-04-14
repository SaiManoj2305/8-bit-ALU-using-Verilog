---

# 8-Bit-ALU  
Verilog RTL Implementation of an 8-bit Arithmetic Logic Unit capable of performing basic arithmetic and logic operations.

---
  This project contains a Verilog implementation of an 8-bit Arithmetic Logic Unit (ALU). The ALU performs a range of arithmetic and logic operations including addition, subtraction, bitwise AND, OR, XOR, NOT, left and right shifts, increment, decrement, and basic comparison checks. The design is modular, easy to understand, and suitable for both educational and practical digital design purposes. A testbench is included to simulate and verify the functionality of the ALU using standard Verilog simulation tools.
  
### 📌 `operation[3:0]` — Supported Operations

| Code | Operation        |
|------|------------------|
| 0000 | Addition          |
| 0001 | Subtraction       |
| 0010 | AND               |
| 0011 | OR                |
| 0100 | XOR               |
| 0101 | NOT (on A input)  |
| 0110 | Shift Left        |
| 0111 | Shift Right       |
| 1000 | Increment         |
| 1001 | Decrement         |
| 1010 | Compare (A == B)  |


---

### 🧠 Overview

This ALU takes two 8-bit inputs (`A`, `B`) and performs operations based on a 4-bit control signal (`operation[3:0]`). Outputs include the result and status flags to indicate condition outcomes (e.g., zero result, carry, etc.).

The design is modular and written in synthesizable Verilog. It is ideal for learning, simulation, or as a component in larger digital design projects.

---

### 🔧 Simulation and Testbench

A complete testbench is included to verify the correctness of all ALU operations. It can be simulated using tools like ModelSim, Icarus Verilog, or Vivado.

---

### 📷 RTL Schematic of the Main (ALU) Module


<br>

![schematic](https://github.com/user-attachments/assets/5e1809de-beb4-4cdc-8767-87337f17ca26)



---

### 📷 Waveform 

<br>

![waveform](https://github.com/user-attachments/assets/b302c6d1-c713-4ad0-bc5d-e45f33fd37d8)

---

