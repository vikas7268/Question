`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2020 11:01:09
// Design Name: 
// Module Name: prob_6
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

module prob_6(input [7:0]A,
              input [7:0]B,
 input [7:0]C,
 input [7:0]D,
 input clk,
 output reg out);
 
 reg [7:0] L12_X1,L12_X2,L12_D,L23_X3,L23_X4;
 always @(posedge clk)
begin
L12_X1 <= B & C;     //pipeline first stage
L12_X2 <= A | B;
L12_D <= D;
end
always @(posedge clk)
     begin
         L23_X3 <= L12_X1 ^ L12_D;   //pipepline second stage
         L23_X4 <= L12_X2;
     end
always @(posedge clk)
     begin
        if(L23_X4 != L23_X3)
            out <= 1;
        else
            out<=0;
     end
endmodule 

