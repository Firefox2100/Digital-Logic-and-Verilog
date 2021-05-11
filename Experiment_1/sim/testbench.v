`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/15 10:47:20
// Design Name: 
// Module Name: testbench
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


module testbench();

reg [1:0] A,B,C,D;
reg [1:0] S;
reg nEN;
wire [1:0] Y;

mux4_1 m1(A,B,C,D,S,nEN,Y);

initial
begin
A=0;B=0;C=0;D=0;S=0;nEN=0;
end

always #10 {A,B,C,D,S,nEN}={A,B,C,D,S,nEN}+1;

endmodule
