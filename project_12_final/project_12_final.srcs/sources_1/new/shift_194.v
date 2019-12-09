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
    input [1:0] s, // ��λ���򣨸����Ƶ����ƣ�
    input [1:0] ds, // ����������֣����Ƹ����Ƶͣ�
    input [3:0] data,
    output reg [3:0] q
    );
    
    always @(posedge clk or posedge notCR)
    begin
        if (notCR != 1)
            q = 4'b0000;
        else 
        begin
            case (s)
                2'b00:;
                2'b01: q = {ds[0], q[3:1]}; // right
                2'b10: q = {q[2:0], ds[1]}; // left
                2'b11: q = data;
                default: q = 4'b0000;
            endcase
        end
    end
endmodule

