`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/01 14:21:14
// Design Name: 
// Module Name: shift_194
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


module shift_194(
    input notCR,
    input clk,
    input [1:0] s, // 移位方向（高左移低右移）
    input [1:0] ds, // 所移入的数字（左移高右移低）
    input [3:0] data,
    output reg [3:0] q
    );
    reg isFirst = 1;
    
    initial // 这段貌似废了
        q = data;
    always @(posedge clk or posedge notCR)
    begin
        if (isFirst == 1)
        begin
            q = data;
            isFirst = 0;
        end
        else
        begin
            if (notCR != 1)
                q = 4'b0000;
            else 
            begin
                $display("1. q = %d", q);
                case (s)
                    2'b00:;
                    2'b01: q = {ds[0], q[3:1]}; // right
                    2'b10: q = {q[2:0], ds[1]}; // left
                    2'b11: q = data;
                    default: q = 4'b0000;
                endcase
                $display("2. q = %d", q);
            end
        end
    end
endmodule

