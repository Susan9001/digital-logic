`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/18 11:40:37
// Design Name: 
// Module Name: counter
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


module counter(
    input clk48,
    input clr,
    output reg [7:0] data
    );
    
    always @(posedge clk48 or posedge clr)
    begin
        if (clr == 1)
            data <= 0;
        else if (data == 15)
            data <= 0;
        else 
            data <= data + 1;
    end
    
endmodule


