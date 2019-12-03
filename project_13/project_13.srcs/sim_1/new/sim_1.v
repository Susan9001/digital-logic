`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/03 17:09:59
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
    output [5:0] lights
    );
    reg clk, clr;
    parameter clk_period = 10;
    
    initial begin
        clr = 1'b0;
        clk = 1'b0;
        forever
            #(clk_period / 2) clk = ~clk;
     end
     top top(clk, clr, lights);
    
endmodule





