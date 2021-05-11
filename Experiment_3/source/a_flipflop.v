`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/22 09:10:26
// Design Name: 
// Module Name: a_flipflop
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


module a_flipflop(D,clk,rst,Q);
    input D,clk,rst;
    output reg Q;
    
    always @(negedge rst,posedge clk)
        if (!rst)
            Q<=0;
        else
            Q<=D;
endmodule
