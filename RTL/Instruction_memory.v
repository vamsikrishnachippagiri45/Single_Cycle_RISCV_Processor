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
    
/*reg [31:0]Instruction_Memory[0:16383];
integer i;
always @(negedge reset)
begin
    for(i=0;i<16383;i=i+1)
        begin
        Instruction_Memory[i] = 32'h00000000 ;
        end
     
     // $readmemh("D:\Vivado projects\Single_cycle_RISCV_processor\inst.mem",Instruction_Memory);
        Instruction_Memory[0] = 32'h000000A3 ;
        Instruction_Memory[1] = 32'h000070B3 ;
        Instruction_Memory[2] = 32'h00100103 ;
        Instruction_Memory[3] = 32'h00000423 ;
        Instruction_Memory[4] = 32'h00000863 ;     
end*/
endmodule
