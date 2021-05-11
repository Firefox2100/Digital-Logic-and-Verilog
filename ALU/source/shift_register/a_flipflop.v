`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Northwestern Polytechnical University
// Engineer: Yunze Wang
// 
// Create Date: 2019/11/22 09:10:26
// Design Name: ALU implementation
// Module Name: a_flipflop
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


module a_flipflop(D,clk,rst,Q);
    input D,clk,rst;
    output reg Q;
    
    always @(negedge rst,posedge clk)
        if (!rst)
            Q<=0;
        else
            Q<=D;
endmodule
