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
    reg [1:0] CC; // not CR, clk
    reg notCR;
    reg clk;
    reg [1:0] g;
    reg [1:0] ds;
    reg [7:0] DATA;
    
//    initial
//    begin
//        notCR = 1;
//        clk = 0;
//        g = 2'b00;
//        ds = 2'b01; // ×óÒÆ1£¬ÓÒ0
//        DATA = 8'b00101101;
//    end
//    always #20
//    begin
//        notCR = ~notCR;
//        g = g + 1; 
//    end

    parameter clk_period = 10;
//    reg clk;
    initial
    begin
        clk = 1'b0;
        notCR = 1;
        clk = 0;
        g = 2'b00;
        ds = 2'b01; // ×óÒÆ1£¬ÓÒ0
        DATA = 8'b00101101;
        forever
            #(clk_period / 2) clk = ~clk;
    end
    dataShift8 dataShift8(.notCR(notCR), .clk(clk), .g(g), .ds(ds), .DATA(DATA), .Q(Q));
    
endmodule
