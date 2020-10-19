`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2020 16:33:44
// Design Name: 
// Module Name: test
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

//sejal code
module test( );
wire [7:0] A;
wire [7:0] B;
wire [7:0] C;
wire [7:0] D;
wire  out;
wire [31:0]counter_value;
reg clk ;
reg rst;

quest t1(A,B,C,D,out,counter_value,clk,rst);

initial 
begin
clk=1'b0;
rst=1'b1;
end

 always 
 #1 clk =~clk;
 
 
initial 
begin
#5 rst=0;
end
endmodule
