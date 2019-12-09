`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/03 17:00:01
// Design Name: 
// Module Name: clk_div
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


module clk_div(
    input clk,
    input clr,
    output clk_3
    );
    
    reg [24:0] q;
    always @(posedge clk or posedge clr) begin
        if (clr == 1) q <= 0;
        else q <= q + 1;
    end
    
    assign clk_3 = q[24];
//    assign clk_3 = clk;
endmodule
