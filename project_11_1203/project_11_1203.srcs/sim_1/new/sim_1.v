`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/03 20:05:06
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
    output [6:0] a2g,
    output [1:0] an
    );
    reg clk, clr;
    reg isFirst = 1;
    parameter clk_period = 10;
    
    initial begin
        clk = 0;
        clr = 1;
        forever begin
            #(clk_period / 2) clk = ~clk;
            if (isFirst == 1) begin
                isFirst = 0;
                clr = 0;
            end
        end
    end
    top top(.clk(clk), .clr(clr), .a2g(a2g), .an(an));
    
endmodule
