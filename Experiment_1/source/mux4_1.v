`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/15 10:37:58
// Design Name: 
// Module Name: mux4_1
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


module mux4_1(A,B,C,D,S,nEN,Y);

input [1:0] A,B,C,D;
input [1:0] S;
input nEN;
output [1:0] Y;

reg [1:0] Y;

always @*
if(nEN)
Y = 2'b00;
else case(S)
2'b00: Y=A;
2'b01: Y=B;
2'b10: Y=C;
2'b11: Y=D;
default: Y=2'bxx;
endcase

endmodule
