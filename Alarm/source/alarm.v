`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/02 20:28:49
// Design Name: 
// Module Name: alarm
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


module alarm(c,mb,sb,start,L1,L2,L3,L4,buzz,l1,l2,l3,l4,clk);
    
    input c,mb,sb,start;
    output [6:0] L1,L2,L3,L4;
    output reg buzz;
    
    output wire clk;
    
/*    divider divider(
        .cin(c),
        .cout(clk)
        );*/
    
    pregate pregate(
        .clk(c),
        .gateout(clk)
        );
    
    output reg [3:0] l1,l2,l3,l4;
    
    display_decoder d1(
        .a(l1),
        .b(L1)
        );
    
    display_decoder d2(
        .a(l2),
        .b(L2)
        );
    
    display_decoder d3(
        .a(l3),
        .b(L3)
        );
    
    display_decoder d4(
        .a(l4),
        .b(L4)
        );
    
    reg [2:0] flag;
    reg [15:0] temp;
    
    initial
    begin
        flag = 3'b000;
        l1=4'd0;
        l2=4'd0;
        l3=4'd0;
        l4=4'd0;
        buzz=0;
    end
    
    always @(posedge clk,posedge mb,posedge sb,posedge start)
    begin
        if ( mb & sb )
        begin
            l1<=4'd0;
            l2<=4'd0;
            l3<=4'd0;
            l4<=4'd0;
            flag<=3'd0;
        end
        else if (flag == 0)
        begin
            if (mb)
            begin
                l2<=l2+1;
                if(l2==4'd10)
                begin
                    l2<=0;
                    l1<=l1+1;
                    if(l1==4'd10)
                        l1<=0;
                end
            end
            else if (sb)
            begin
                l4<=l4+1;
                if(l4==4'd10)
                begin
                    l4<=0;
                    l3<=l3+1;
                    if(l3==4'd6)
                        l3<=0;
                end
            end
            else if (start)
                if ({l1,l2,l3,l4} == 16'b0)
                begin
                    flag<=3'b010;
                end
                else
                begin
                    flag<=3'b001;
                    temp<={l1,l2,l3,l4};
                end
        end
        else if (flag == 3'b001 && start == 0)
        begin
            if (l4 == 0)//秒个位是0，减不了
            begin
                if (l3 == 0)//秒10位也是0，尝试向分借位
                begin
                    if(l2 == 0)//分个位也是0，尝试向10位借位
                    begin
                        if(l1 == 0)//已经全部清零，倒计时结束
                        begin
                            flag<=3'b111;
                            buzz<=1;
                        end
                        else//分10位不是0，一路借位借下去
                        begin
                            l1<=l1-1;
                            l2<=4'd9;
                            l3<=4'd5;
                            l4<=4'd9;
                        end
                    end
                    else//分个位不是0，借给秒
                    begin
                        l2<=l2-1;
                        l3<=4'd5;
                        l4<=4'd9;
                    end
                end
                else//秒10位不是0，借位
                begin
                    l3<=l3-1;
                    l4<=4'd9;
                end
            end
            else//秒个位不是0，直接减1
                l4<=l4-1;
        end
        else if (flag == 3'b010 && start == 0)
        begin
            l4<=l4+1;
            if(l4==4'd10)
            begin
                l4<=0;
                l3<=l3+1;
                if(l3==4'd6)
                begin
                    l3<=0;
                    l2<=l2+1;
                    if(l2==4'd10)
                    begin
                        l2<=0;
                        l1<=l1+1;
                        if(l1==4'd10)
                            l1<=0;
                    end
                end
            end
        end
        else if ((flag == 3'b001 || flag == 3'b010) && start == 1)
        begin
            flag <= flag + 3'b100;
        end
        else if ((flag == 3'b101 || flag == 3'b110) && start == 1)
        begin
            flag <= flag - 3'b100;
        end
        else if (flag == 3'b111 && start == 1)
        begin
            flag <= 3'd0;
            {l1,l2,l3,l4}<=temp;
            buzz<=0;
        end
    end
endmodule
