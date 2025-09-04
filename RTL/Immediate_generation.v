`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2025 17:22:16
// Design Name: 
// Module Name: Immediate_generation
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


module Immediate_generation(Instruction,Immediate);
input [31:0]Instruction ;
output reg [31:0]Immediate ;
always @(*)
begin
if(Instruction[6:0] == 7'b0110011) Immediate = 32'h00000000 ;//for R type instruction
else if(Instruction[6:0] == 7'b0000011) Immediate = {{32{Instruction[31]}},Instruction[31:20]}; // for Load Instruction
else if(Instruction[6:0] == 7'b0100011) Immediate = {{32{Instruction[31]}},{Instruction[31:25],Instruction[11:7]}}; // for Store Instruction 
else if(Instruction[6:0] == 7'b1100011) Immediate = {{32{Instruction[31]}},{Instruction[12],Instruction[7],Instruction[30:25],Instruction[11:8]}};//for Branch Instruction
end
endmodule
