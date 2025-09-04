`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2025 18:27:18
// Design Name: 
// Module Name: Data_memory
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


module Data_memory(mem_read,mem_write,address,write_data,read_data);
input mem_read,mem_write ;
input [13:0]address ;
input [31:0]write_data ;
output reg [31:0]read_data ;
reg [31:0] data_mem [0:16383];

always @(*)
begin
    if(mem_read) read_data <= data_mem[address];
    else if(mem_write) begin data_mem[address]<=write_data; read_data<=32'h00000000; end
end
endmodule
