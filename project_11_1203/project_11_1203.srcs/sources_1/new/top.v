`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/03 23:51:03
// Design Name: 
// Module Name: top
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


module top(
    input clk,
    input clr,
    output [6:0] a2g,
    output [1:0] an
    );
    
    wire clk48, clk190;
    wire [7:0] data;
    
    div div(clk, clk48, clk190);
    counter counter(clk48, clr, data);
    seg_2 seg_2(data, clk190, clr, a2g, an);
endmodule
