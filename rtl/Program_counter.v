`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2025 16:33:36
// Design Name: 
// Module Name: Program_counter
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


module Program_counter(reset,clk,PC_in,PC_out);
input reset,clk;
input [13:0]PC_in ;
output reg [13:0]PC_out ;

always @(posedge clk)
begin
if(reset) PC_out <= 14'b00000000000000;
else PC_out <= PC_in ;
end
endmodule
