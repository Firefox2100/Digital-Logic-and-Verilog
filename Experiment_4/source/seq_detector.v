`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/29 08:38:43
// Design Name: 
// Module Name: seq_detector
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


module seq_detector(seq,clk,rst,b);       // detector "101100"
    input seq,clk,rst;
    output b; 

    reg b;
    reg [2:0]state;

    parameter   Idle    = 0,
                 S1      = 1,
                 S10     = 2,
                 S101    = 3,
                 S1011   = 4,
                 S10110  = 5;

    always @(posedge clk , negedge rst)
        if (!rst) begin
            state <= Idle;
            b <= 0;
            end
        else 
            case(state)
            Idle: if( seq == 0)
                begin
                    state <= Idle;
                    b <= 0;
                end
                  else
                begin
                    state <= S1;
                    b <= 0;
                end
 
            S1: if( seq == 0)
                begin
                    state <= S10;
                    b <= 0;
                end
                else
                begin
                    state <= S1;
                    b <= 0;
                end

            S10: if( seq == 0)
                begin
                    state <= Idle;
                        b <= 0;
                end
                else
                begin
                    state <= S101;
                    b <= 0;
               end

            S101: if( seq == 0)
                begin
                    state <= Idle;
                    b <= 0;
                end
                  else
                begin
                    state <= S1011;
                    b <= 0;
                end

            S1011: if( seq == 0)
                begin
                    state <= S10110;
                    b <= 0;
                end
                    else
                begin
                    state <= S1;
                    b <= 0;
                end
      
            S10110: if (seq == 0)
                begin
                    state <= Idle;
                    b <= 1;
                end
                else
                begin
                    state <= S1;
                    b <= 0;
                end
      
          default state <= 3'bx;
        endcase
endmodule
