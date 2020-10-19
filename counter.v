`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2020 10:59:25
// Design Name: 
// Module Name: counter
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
module counter(input clk,
               input reset,
  output reg[7:0] A, B, C, D);
reg [31:0] count;
always@(posedge clk)
begin
if(reset==1)
count <=32'b0;
else
begin
        count <=count+1;  
    A <= count[7:0];
B <= count[15:8];
C <= count[23:16];
D <= count[31:24];
end
end
endmodule
