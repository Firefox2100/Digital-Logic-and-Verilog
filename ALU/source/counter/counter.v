`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Northwestern Polytechnical University
// Engineer: Yunze Wang
// 
// Create Date: 2019/11/22 10:03:20
// Design Name: ALU implementation
// Module Name: counter
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


module counter(en,ld,clk,rst,data,Q);
input clk,rst,en,ld;
input [7:0] data;
output reg [7:0] Q;

always @(posedge clk,negedge rst)
begin
    if(!rst)
        Q<=0;
    else if(ld)
        Q<=data;
    else if(en)
        Q<=Q+1;
end
endmodule
