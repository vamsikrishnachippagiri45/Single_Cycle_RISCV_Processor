`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2025 16:19:50
// Design Name: 
// Module Name: Instruction_memory
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


module Instruction_memory(reset,read_address,instruction_out,clk);
input reset,clk ;
input [13:0]read_address;
output [31:0]instruction_out ;


IM_wrapper IM(
    .BRAM_PORTA_0_addr(read_address),
    .BRAM_PORTA_0_clk(clk), 
    .BRAM_PORTA_0_din(32'h0), 
    .BRAM_PORTA_0_dout(instruction_out),
    .BRAM_PORTA_0_we(1'b0)
    );
endmodule
