# MIPS Paycheck Calculator

This program calculates a total paycheck using **MIPS Assembly**.  
It reads input values for hours worked, hourly rate, and bonus from memory-mapped I/O, multiplies hours × rate, adds the bonus, and stores the final result.

### 🧠 Purpose
This project demonstrates:
- Low-level input handling using memory-mapped registers  
- Arithmetic operations in MIPS Assembly (`mul`, `add`, `lw`, `sw`)  
- Simple control flow using branch instructions  

### 💻 How it works
1. The program waits for each input (hours, rate, bonus) using polling.  
2. It multiplies hours × rate and adds the bonus.  
3. The result is stored at address `8200`.  

### 🧩 Registers Used
| Register | Purpose           |
|-----------|-------------------|
| `$t0` | Output address (8200) |
| `$t1` | Hours worked |
| `$t2` | Hourly rate |
| `$t3` | Bonus |
| `$t4` | Computed paycheck |
| `$t5` | Input ready flag |
| `$t6` | Input address |

### ⚙️ Instructions
Run using a MIPS simulator such as **MARS** or **SPIM**.

### 📚 What I Learned
- How to use memory-mapped I/O in MIPS
- Implementing a simple algorithm directly in assembly
- Understanding register-level computation and instruction timing
