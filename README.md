<div align="center">

# ⚡ Microprocessors & Microcontrollers: 8086 Assembly Suite
### **Low-Level Hardware Computing, Register Arithmetic & System Interrupts**

[![Language](https://img.shields.io/badge/Language-Assembly_8086-orange?style=for-the-badge&logo=assemblyscript&logoColor=white)](https://en.wikipedia.org/wiki/X86_assembly_language)
[![Architecture](https://img.shields.io/badge/Architecture-x86_16--bit-blue?style=for-the-badge)](https://en.wikipedia.org/wiki/Intel_8086)
[![Emulator](https://img.shields.io/badge/Emulator-EMU8086_%7C_DOSBox-brightgreen?style=for-the-badge)](https://emu8086-microprocessor-emulator.en.softonic.com/)
[![Course](https://img.shields.io/badge/Course-Microprocessors-8E75FF?style=for-the-badge)](https://green.edu.bd)
[![License](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)](LICENSE)

**Direct hardware-level computing, register state manipulation, stack frames, and BIOS/DOS INT 21h interrupts.**

---

[Explore Features](#-features) • [Project Structure](#-project-structure) • [License](#-license)

</div>

---

## 📖 Overview
Developed as part of the Microprocessors & Microcontrollers curriculum at **Green University of Bangladesh**, this repository contains low-level **Intel 8086 Assembly Language** programs demonstrating direct register manipulation (AX, BX, CX, DX), segment memory addressing (DS, CS, SS), and software interrupt handling.

---

## 🚀 Features

- 💰 **Assembly Financial Ledger System (`financial_system.asm`):** Interactive menu-driven console program handling balance tracking, deposits, withdrawals, and interest/profit math directly in 16-bit registers.
- ✖️ **High-Performance Arithmetic (`multiplication.asm`):** Register-optimized multi-precision multiplication and division routines.
- 🖥️ **BIOS/DOS Interrupt Handling:** Direct string input/output utilizing DOS Service routines (`INT 21h, AH=01h`, `AH=02h`, `AH=09h`).
- 🧠 **Stack & Memory Management:** Efficient push/pop stack frame usage to protect context across subroutine calls.

---

## 📁 Project Structure

```text
Microprocessors-Microcontrollers/
├── src/
│   ├── financial_system.asm    # Core financial ledger logic (Deposit, Withdraw, Profit)
│   └── multiplication.asm      # Multi-precision arithmetic & shift multiplication
├── LICENSE                     # MIT License
└── README.md                   # System documentation
```

---

## 📄 License
Distributed under the MIT License. See `LICENSE` for more information.

<div align="center">

**Developed ❤️ by Softece**

</div>
