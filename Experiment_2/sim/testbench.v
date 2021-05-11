`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/15 09:43:44
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
reg [0:7] A;
reg [0:7] B;
reg cin;
wire cout;
wire [0:7] S;
wire cout1;
wire [0:7] S1;
wire w[0:8];
CLA m1(A,B,S,cin,cout);
adder m2(A,B,S1,cin,cout1);
assign w[0]=~(cout^cout1);
assign w[1]=~(S[0]^S1[0]);
assign w[2]=~(S[1]^S1[1]);
assign w[3]=~(S[2]^S1[2]);
assign w[4]=~(S[3]^S1[3]);
assign w[5]=~(S[4]^S1[4]);
assign w[6]=~(S[5]^S1[5]);
assign w[7]=~(S[6]^S1[6]);
assign w[8]=~(S[7]^S1[7]);

initial
begin
cin=0;
A=8'b00000000;
B=8'b00000000;
end

always #10 {A,B,cin}={A,B,cin}+1;

endmodule
