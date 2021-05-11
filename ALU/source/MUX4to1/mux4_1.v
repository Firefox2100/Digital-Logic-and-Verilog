`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Northwestern Polytechnical University
// Engineer: Yunze Wang
// 
// Create Date: 2019/11/15 10:37:58
// Design Name: ALU implementation
// Module Name: mux4_1
// Project Name: ALU Design for Digital Logic and Verilog
// Target Devices: xc7a35tcsg324-1
// Tool Versions: Vivado 2018.3
// Description: 
// 
// Dependencies: 
// None.
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux4_1(A,B,C,D,S,nEN,Y);

input [7:0] A,B,C,D;
input [1:0] S;
input nEN;
output reg [7:0] Y;

always @*
if(!nEN)
Y = 8'b00000000;
else case(S)
2'b00: Y=A;
2'b01: Y=B;
2'b10: Y=C;
2'b11: Y=D;
default: Y=8'bxxxxxxxx;
endcase

endmodule
