`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/01 15:05:17
// Design Name: 
// Module Name: dataShift8
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

module dataShift8(
    input notCR,
    input clk,
    input [1:0] g,
    input [1:0] ds,
    input [7:0] DATA,
    output [7:0] Q
    );
    
    wire clk_out;
    clkdiv clkdiv(.clk_in(clk), .clk(clk_out));
    
    wire [1:0] dsH, dsL; // 高4位/低4位的ds
    assign dsH = {Q[3], ds[1]};
    assign dsL = {ds[0], Q[4]};
    shift_194 shiftH(.notCR(notCR), .clk(clk_out), .s(g), .ds(dsH), .data(DATA[7:4]), .q(Q[7:4]));
    shift_194 shiftL(.notCR(notCR), .clk(clk_out), .s(g), .ds(dsL), .data(DATA[3:0]), .q(Q[3:0]));    

endmodule




