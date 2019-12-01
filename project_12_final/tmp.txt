`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/25 11:43:10
// Design Name: 
// Module Name: shift194
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

module shift194(
    input notCR,
    input clk,
    input s0,
    input s1,
    input [1:0] ds,
    input [3:0] data,
    output reg [3:0] qq
    );
    reg [1:0] ss;

    always @(posedge clk or negedge notCR)
        if (!notCR) 
        begin
            qq <= 4'b0000;
        end
        else 
        begin
            ss <= {s1, s0};
            case (ss)
                2'b00:;
                2'b01: qq <= {ds[0], qq[3:1]}; // right
                2'b10: qq <= {qq[2:0], ds[1]}; // left
                2'b11: qq <= data;
                default: qq <= 4'b0000;
            endcase
        end
endmodule



