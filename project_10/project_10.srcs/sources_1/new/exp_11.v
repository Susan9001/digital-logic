`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/11 13:11:15
// Design Name: 
// Module Name: exp_11
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


module exp_11(
    input [3:0] in_num,
    input [3:0] in_chip,
    output reg [6:0] out_num,
    output [3:0] out_chip
    );
    assign out_chip = in_chip;
    
    always @(in_num)
        case (in_num)
            4'b0000 : out_num = 7'b1111110;
            4'b0001 : out_num = 7'b0110000;
            4'b0010 : out_num = 7'b1101101;
            4'b0011 : out_num = 7'b1111001;
            4'b0100 : out_num = 7'b0110011;
            4'b0101 : out_num = 7'b1011011;
            4'b0110 : out_num = 7'b1011111;
            4'b0111 : out_num = 7'b1110000;
            4'b1000 : out_num = 7'b1111111;
            4'b1001 : out_num = 7'b1111011;
            4'b1010 : out_num = 7'b1110111;
            4'b1011 : out_num = 7'b0011111;
            4'b1100 : out_num = 7'b1001110;
            4'b1101 : out_num = 7'b0111101;
            4'b1110 : out_num = 7'b1001111;
            4'b1111 : out_num = 7'b1000111;
            default : begin
                out_num = 'bx;
                $display("not match");
            end
        endcase
       
endmodule
