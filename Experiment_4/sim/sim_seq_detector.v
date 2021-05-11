`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/29 09:07:26
// Design Name: 
// Module Name: sim_seq_detector
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


`timescale 1ns/1ps
module sim_seq_detector;
reg clk,rst,seq;
wire b;
reg [4:0] i;
parameter sequence = 18'b001_01100100_1101001;

seq_detector U(
.clk(clk),
.rst(rst),
.seq(seq),
.b(b)
);

initial 
begin
  i=0;seq=0;
  rst=0;clk=0; #4 rst=1;#4 clk=0;
  forever #2 clk=~clk;
end

always@(posedge clk or negedge rst)
begin
  if(~rst)
    begin
    i<=5'b0;
    end
  else if(i<=5'd17)
    begin
      seq<=sequence[i];
      i<=i+5'd1;
    end
  else
    i<=5'b0;
end    

endmodule    
