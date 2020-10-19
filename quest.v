`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Design Name:  
// Question : requirement 
// 1. Input are four  8 bit vector A, B,C ,D,
// 2. need to find the condition when ( A OR B) is not equal to ( B AND C) XOR D)
// 3. operation ( B AND C) XOR D ) should be perform in 2 clk cycle 
// 4. input will change every clk cycle (i.e pilpelining shoeuld be done)
// 5. input are genrated from TB using 32 bit counter A = [7-0] bit ,B =[15-7]
//   C=[23-16] , D=[31-24]
//   Design Pass Criteria : Design should perform given operation and follow given desgin rule 
// 
//
// Create Date: 18.10.2020 16:12:55
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module quest(output reg[7:0]A,
             output reg[7:0]B,
             output reg[7:0]C,
             output reg[7:0]D,
             output reg out,
             output reg [31:0]counter_value,
             input clk,
             input rst  );
        
reg [31:0] count;
reg [7:0] temp1;
reg [7:0] lx1,lx2,lxD,lx3,lx4;
initial
begin
count=32'd0;
end 
always @(posedge clk)
begin
       count<= count +1;
       counter_value <=count;
end

always@(counter_value)
begin
 A=counter_value[7:0];
 B=counter_value[15:8];
 C=counter_value[23:16];
 D=counter_value[31:24];
 end
 
always @(posedge clk)
begin //Pipelining First stage 
  lx1 <= A | B;
  lx2 <= B & C;
  lxD <= D;
end

always @(posedge clk)
begin  //pipeline second stage
    lx3 <= lx2 ^ lxD;
    lx4 <= lx1;
end

always @(posedge clk)
 begin
 if( lx4 != lx3)
     begin
        out=1'b1;
     end
  else
         out=1'b0;
 end

endmodule
