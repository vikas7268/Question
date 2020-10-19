`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2020 00:47:57
// Design Name: 
// Module Name: counter_test
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


module counter_test( );

reg clk; 
reg reset; 
wire[31:0] counter;

counter_32 t1(clk, reset,counter);
initial 
begin
clk=1'b0;
reset =1'b0;
end
always
#10 clk =~clk;
endmodule
