`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2025 19:04:48
// Design Name: 
// Module Name: ALU_Control
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


module ALU_Control(ALUOp,F7,F3,Operation);
input [1:0]ALUOp;
input [6:0]F7;
input [2:0]F3;
output reg [3:0]Operation;
always @(*)
begin
casex({ALUOp,F7[5],F3})
6'b00_X_XXX : Operation = 4'b0010;
6'b01_X_XXX : Operation = 4'b0110;
6'b10_0_000 : Operation = 4'b0010;
6'b10_1_000 : Operation = 4'b0110;
6'b10_0_111 : Operation = 4'b0000;
6'b10_0_110 : Operation = 4'b0001;
endcase
end
endmodule
