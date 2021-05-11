`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/08 15:20:22
// Design Name: 
// Module Name: sim_pregate
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


module sim_pregate();

    reg clk;
    wire gateout,cc;
    wire [31:0] cnt;
    
    pregate pregate(
        .clk(clk),
        .gateout(gateout),
        .cnt(cnt)
        );
        
    divider divider(
        .cin(clk),
        .cout(cc)
        );
    
    initial
        clk=0;
    
    always #5
        clk=~clk;
endmodule
