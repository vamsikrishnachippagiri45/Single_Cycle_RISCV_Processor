`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2025 16:47:22
// Design Name: 
// Module Name: Registers
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


module Registers(Rr1,Rr2,Rd1,Rd2,Write_address,Write_data,reg_write,clk);
input [4:0]Rr1;
input [4:0]Rr2;
input [4:0]Write_address;
input [31:0]Write_data ;
input reg_write,clk;
output [31:0]Rd1,Rd2;

reg [31:0] Mem_reg[0:31];


assign Rd1 = Mem_reg[Rr1];
assign Rd2 = Mem_reg[Rr2];


always @(negedge clk)
begin
    Mem_reg[0] = 32'h00000000;
    if(reg_write && ~(|Write_address))
    begin 
    Mem_reg[Write_address] <= Write_data ;
    end
end
endmodule
