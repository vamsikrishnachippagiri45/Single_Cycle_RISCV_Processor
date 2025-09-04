`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2025 19:26:00
// Design Name: 
// Module Name: ALU
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


module ALU(Operation,In1,In2,ALU_result);
input [3:0]Operation ;
input [31:0]In1,In2;
output reg [31:0]ALU_result;

always @(*)
begin 
    case (Operation)
    4'b0000 : ALU_result = In1 & In2 ;
    4'b0001 : ALU_result = In1 | In2 ;
    4'b0010 : ALU_result = In1 + In2 ;
    4'b0110 : ALU_result = In1 - In2 ;
    endcase
end
endmodule
