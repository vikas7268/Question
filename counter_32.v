`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2020 00:04:27
// Design Name: 
// Module Name: counter_32
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


module counter_32 (input clk, reset, output reg [31:0] counter
    );
//reg [31:0] counter_up;

always @(posedge clk or posedge reset)
begin
if(reset)
 counter <= 31'd0;
else
 counter <= counter + 31'd1;
end 
endmodule