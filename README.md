# Single_Cycle_RISCV_Processor
This project is a single-cycle RISC-V processor designed in Verilog. It supports the basic RV32I instructions (7 core instructions), and demonstrates the fundamental concepts of processor design, instruction execution, and datapath implementation..

Features

Architecture: Single-cycle (all instructions execute in one clock cycle).

ALU Operations: Addition, subtraction, AND, OR.
Modular Design: Separate Verilog modules for ALU, Control Unit, Register File, Instruction Memory, and Data Memory.
Testbenches: For simulation and verification.

This processor implements four instruction classes, each with a distinct RISC-V instruction format:

1. R-type (Arithmetic Instructions): These use opcode 51₁₀ (0x33) and have three register operands: rs1, rs2 (sources), and rd (destination). The ALU operation is determined by the funct3 and funct7 fields. The implemented instructions are ADD, SUB, AND, and OR.

2. I-type (Load Instructions): These use opcode 3₁₀ (0x03). The register rs1 acts as a base register, and a 12-bit immediate offset is added to it to form the memory address. The result is stored in destination register rd. The implemented instruction is LW.

3. S-type (Store Instructions): These use opcode 35₁₀ (0x23). The base address comes from rs1, and the value to be stored comes from rs2. The 12-bit immediate field (split into two parts) is added to rs1 to compute the memory address. The implemented instruction is SW.

4. SB-type (Conditional Branch Instructions): These use opcode 99₁₀ (0x63). The registers rs1 and rs2 are compared, and if the condition is met, the branch target address is computed as PC + (sign-extended immediate << 1). The implemented instruction is BEQ.

<img width="950" height="710" alt="image" src="https://github.com/user-attachments/assets/7405b95b-e59c-4621-921f-ff7ff874cc5e" />
