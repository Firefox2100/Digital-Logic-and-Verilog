`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/22 09:14:17
// Design Name: 
// Module Name: a_register
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


module a_register(D,clk,rst,Q);
    
    input [7:0] D;
    input clk,rst;
    output reg [7:0] Q;
    
    always @(negedge rst, posedge clk)
    if (!rst)
        Q<=0;
    else
        Q<=D;
endmodule
