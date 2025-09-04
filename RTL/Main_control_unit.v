`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2025 18:41:42
// Design Name: 
// Module Name: Main_control_unit
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


module Main_control_unit(opcode,ALUSrc,Mem_to_reg,Branch,Reg_write,Mem_read,Mem_write,ALUOp);
input [6:0]opcode ;
output reg ALUSrc,Mem_to_reg,Branch,Reg_write,Mem_read,Mem_write ;
output reg [1:0]ALUOp;

always @(*)
begin
    case (opcode)
    7'b0110011 :begin  ALUSrc = 1'b0;Mem_to_reg = 1'b0; Branch = 1'b0; Reg_write= 1'b1; Mem_read = 1'b0 ;Mem_write=1'b0;ALUOp=2'b10; end
    7'b0000011 :begin  ALUSrc = 1'b1;Mem_to_reg = 1'b1; Branch = 1'b0; Reg_write= 1'b1; Mem_read = 1'b1 ;Mem_write=1'b0;ALUOp=2'b00; end
    7'b0100011 :begin  ALUSrc = 1'b1;Mem_to_reg = 1'b0; Branch = 1'b0; Reg_write= 1'b0; Mem_read = 1'b0 ;Mem_write=1'b1;ALUOp=2'b00; end
    7'b1100011 :begin  ALUSrc = 1'b0;Mem_to_reg = 1'b0; Branch = 1'b1; Reg_write= 1'b0; Mem_read = 1'b0 ;Mem_write=1'b0;ALUOp=2'b01; end
    endcase
end
endmodule