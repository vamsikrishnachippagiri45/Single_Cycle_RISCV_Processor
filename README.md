# Single_Cycle_RISCV_Processor
This project is a single-cycle RISC-V processor designed in Verilog. It supports the basic RV32I instructions (7 core instructions), and demonstrates the fundamental concepts of processor design, instruction execution, and datapath implementation..

Features

Architecture: Single-cycle (all instructions execute in one clock cycle).
Instruction Set (7 instructions across 4 classes):

R-type: ADD, SUB, AND, OR

I-type: ADDI, LW

S-type: SW

SB-type: BEQ

ALU Operations: Addition, subtraction, AND, OR.
Modular Design: Separate Verilog modules for ALU, Control Unit, Register File, Instruction Memory, and Data Memory.
Testbenches: For simulation and verification.

Instruction Classes and Formats:
This processor implements four instruction classes, each with a distinct RISC-V instruction format:

R-type (Arithmetic Instructions)

Opcode: 51₁₀ (0x33)

Operands: rs1, rs2 (sources), rd (destination)

funct3 + funct7 fields determine ALU operation

Implemented Instructions:

ADD rd, rs1, rs2  and
SUB rd, rs1, rs2  and 
AND rd, rs1, rs2  and
OR rd, rs1, rs2

I-type (Load Instructions)

Opcode: 3₁₀ (0x03)

Operands: rs1 (base register), rd (destination), 12-bit immediate (offset)

Effective Address = rs1 + immediate

Implemented Instruction:
LW rd, offset(rs1)

S-type (Store Instructions)

Opcode: 35₁₀ (0x23)

Operands: rs1 (base register), rs2 (source), 12-bit immediate (split)

Effective Address = rs1 + immediate

Implemented Instruction:
SW rs2, offset(rs1)

SB-type (Conditional Branch Instructions)

Opcode: 99₁₀ (0x63)

Operands: rs1, rs2 (registers compared), 12-bit immediate (branch offset)

Target Address = PC + (sign-extended immediate << 1)

Implemented Instruction:
BEQ rs1, rs2, label
