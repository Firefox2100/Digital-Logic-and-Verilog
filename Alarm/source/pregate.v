`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/08 14:22:36
// Design Name: 
// Module Name: pregate
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


module pregate(clk,gateout,cnt);
input clk;     //�����׼ʱ��
output gateout;//���Ԥ��բ���ź�

reg gateout,gatebuf;
output reg [31:0] cnt;//������

initial
begin
    cnt=0;
    gatebuf=0;
    gateout=0;
end

always @(posedge clk)
begin
//����ֵԽ��բ��ʱ��Խ��
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
