`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/18 11:40:37
// Design Name: 
// Module Name: div
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


module div(
    input clk,
    output clk48,
    output clk190
    );
    
    reg[24:0] q = 25'b0;
    always @(posedge clk)
    begin
    q <= q + 1;
    end
    
    assign clk190 = q[18];
    assign clk48 = q[24];
endmodule


