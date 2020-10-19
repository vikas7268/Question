`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2020 11:04:32
// Design Name: 
// Module Name: test_prob
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


module test_prob;
wire[7:0]A;
wire[7:0]B;
wire[7:0]C;
wire[7:0]D;
wire out;
reg clk;
reg reset;
//wire[31:0] count;
counter UUT1(.clk(clk),.reset(reset),.A(A),.B(B),.C(C),.D(D));
prob_6 UUT(.A(A),.B(B),.C(C),.D(D),.out(out),.clk(clk));


initial
begin
clk=0;
reset = 1;
#20 reset =0;
end

always
 #10 clk =~clk;
endmodule 