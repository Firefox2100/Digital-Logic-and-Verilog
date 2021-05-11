`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/12 21:52:05
// Design Name: 
// Module Name: divider
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


module divider(clk,clkout);
input clk;
output clkout;

reg clkout,gatebuf;
reg [31:0] cnt;

initial
begin
    cnt=0;
    gatebuf=0;
    clkout=0;
end

always @(posedge clk)
begin
if(cnt==32'd50000000)
    begin
    gatebuf<=~gatebuf;
    clkout<=gatebuf;
    cnt<=32'd0;
    end
else
    begin
    cnt<=cnt+32'd1;
    end
end
endmodule

