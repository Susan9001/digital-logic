`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/01 16:50:08
// Design Name: 
// Module Name: sim_1
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


module sim_1(
    output [7:0] Q
    );
    reg notCR;
    reg clk;
    reg [1:0] g;
    reg [1:0] ds;
    reg [7:0] DATA;
    reg isFirst;
    parameter clk_period = 10;
    
    initial
    begin
        clk = 1'b0;
        notCR = 1'b1;
        g = 2'b11; // ÏÈËÍÊý
        ds = 2'b10;
        DATA = 8'b00101101;
        isFirst = 1'b1;
        forever
        begin
            #(clk_period / 2) clk = ~clk;
            if (isFirst != 0)
            begin
                isFirst = 1'b0;
                g = 2'b10; // ×óÒÆ
            end
        end
    end
    dataShift8 dataShift8(.notCR(notCR), .clk(clk), .g(g), .ds(ds), .DATA(DATA), .Q(Q));
    
endmodule





