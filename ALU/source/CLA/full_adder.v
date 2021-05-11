`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Northwestern Polytechnical University
// Engineer: Yunze Wang
// 
// Create Date: 2019/11/15 09:03:06
// Design Name: ALU implementation
// Module Name: full_adder
// Project Name: ALU Design for Digital Logic and Verilog
// Target Devices: xc7a35tftg256-3
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


module full_adder(a,b,c,s,p,g);
    input a,b,c;
    output s,p,g;
    assign g=a&b;
    assign p=a|b;
    assign s=(a^b)^c;
endmodule
