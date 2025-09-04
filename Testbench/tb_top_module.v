`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2025 21:33:16
// Design Name: 
// Module Name: tb_top_module
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


module tb_top_module();
reg clk,reset;
Processor_top_module inst(.clk(clk),.reset(reset));

initial  
begin 
clk = 1'b0; 
forever #5 clk = ~clk; 
end




initial
begin
reset = 1'b1;
#50
reset = 1'b0;
#40;
$finish;
end
endmodule
