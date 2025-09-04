`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2025 16:48:25
// Design Name: 
// Module Name: Processor_top_module
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Processor_top_module(clk,reset);
input clk,reset;
wire [13:0]PC;
wire [31:0]Instruction;
wire [13:0]NextPC;
wire branch,ALUSrc,Mem_to_reg,Reg_write,Mem_read,Mem_write;
wire [1:0]ALUOp;
wire [31:0]ALU_result,Immediate,write_data,Rs1,Rs2,ALU_in2,read_data;
wire [3:0]Operation;

assign NextPC = (branch && ~(|ALU_result))? (PC + (Immediate[13:0])):(PC+1);
assign ALU_in2 = (ALUSrc) ? Immediate : Rs2 ;
assign write_data = (Mem_to_reg)? read_data:ALU_result ;

Program_counter inst1(.reset(reset),.clk(clk),.PC_in(NextPC),.PC_out(PC));
Instruction_memory inst2(.reset(reset),.read_address(PC),.instruction_out(Instruction),.clk(clk));
Main_control_unit  inst3(.opcode(Instruction[6:0]),.ALUSrc(ALUSrc),.Mem_to_reg(Mem_to_reg),.Branch(branch),.Reg_write(Reg_write),.Mem_read(Mem_read),.Mem_write(Mem_write),.ALUOp(ALUOp));
Registers  inst4(.Rr1(Instruction[19:15]),.Rr2(Instruction[24:20]),.Rd1(Rs1),.Rd2(Rs2),.Write_address(Instruction[11:7]),.Write_data(write_data),.reg_write(Reg_write),.clk(clk));
Immediate_generation inst5(.Instruction(Instruction),.Immediate(Immediate));
ALU_Control inst6(.ALUOp(ALUOp),.F7(Instruction[31:25]),.F3(Instruction[14:12]),.Operation(Operation));
ALU  inst7(.Operation(Operation),.In1(Rs1),.In2(ALU_in2),.ALU_result(ALU_result));
Data_memory inst8(.mem_read(Mem_read),.mem_write(Mem_write),.address(ALU_result),.write_data(Rs2),.read_data(read_data));
endmodule
