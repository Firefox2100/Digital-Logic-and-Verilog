`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/22 10:36:44
// Design Name: 
// Module Name: sim_counter
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


module sim_counter();
    
    reg en,ld,clk,rst;
    reg [7:0] data;
    wire [7:0] Q;
    counter c(
        .en(en),
        .ld(ld),
        .clk(clk),
        .rst(rst),
        .data(data),
        .Q(Q));
    
    initial
    begin
    data=0;
    en=1;
    ld=0;
    clk=0;
    #0 rst=0;
    #2 rst=1;
    #4 rst=0;
    #50 ld=1;
    #60 ld=0;
    #100 ld=1;
    #110 ld=0;
    #400 rst=1;
    #402 rst=0; 
    end
    
    always #5
        clk=~clk;
    
    always #50
        en=~en;
    
    always #10
        data={$random}%8'b11111111;
    
endmodule
