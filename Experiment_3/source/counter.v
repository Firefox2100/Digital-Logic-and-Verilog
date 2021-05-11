`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/22 10:03:20
// Design Name: 
// Module Name: counter
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


module counter(en,ld,clk,rst,data,Q);
input clk,rst,en,ld;
input [7:0] data;
output reg [7:0] Q;

always @(posedge clk,posedge rst)
begin
    if(rst)
        Q<=0;
    else if(ld)
        Q<=data;
    else if(en)
        Q<=Q+1;
end
endmodule
