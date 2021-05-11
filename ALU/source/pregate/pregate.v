`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Northwestern Polytechnical University
// Engineer: Yunze Wang
// 
// Create Date: 2019/12/08 14:22:36
// Design Name: ALU implementation
// Module Name: pregate
// Project Name: ALU Design for Digital Logic and Verilog
// Target Devices: xc7a35tcsg324-1
// Tool Versions: Vivado 2018.3
// Description: 
// The divider designed to divide the hardware clock into 1Hz to fit human observation.
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pregate(clk,gateout);
input clk;
output gateout;

reg gateout,gatebuf;
reg [31:0] cnt;

initial
begin
    cnt=0;
    gatebuf=0;
    gateout=0;
end

always @(posedge clk)
begin
if(cnt==32'd50000000)
    begin
    gatebuf<=~gatebuf;
    gateout<=gatebuf;
    cnt<=32'd0;
    end
else
    begin
    cnt<=cnt+32'd1;
    end
end
endmodule
