`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/03 23:46:46
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
    
    reg isFirst = 1;
    
    always @(posedge clk48 or posedge clr) begin
        if (clr == 1)
            data <= 0;
        else begin
            if (isFirst) begin
                data <= 0;
                isFirst = 0;
            end
            data <= data + 1;
        end
    end
    
endmodule



