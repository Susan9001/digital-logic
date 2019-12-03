`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/03 23:29:37
// Design Name: 
// Module Name: seg_2
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

module seg_2(
    input [7:0] data,
    input clk190,
    input clr,
    output reg [6:0] a2g,
    output reg [1:0] an
    );
    
    reg s = 0; // 位
    reg [3:0] digit;
    reg isFirst = 1;
       
    always @(s) begin
        case(s)
            0: digit = data[3:0];
            1: digit = data[7:4];
            default: digit = data[3:0];
        endcase
        case(digit)
            4'b0000: a2g = 7'b1111110;
			4'b0001: a2g = 7'b0110000;
			4'b0010: a2g = 7'b1101101;
			4'b0011: a2g = 7'b1111001;
			4'b0100: a2g = 7'b0110011;
			4'b0101: a2g = 7'b1011011;
			4'b0110: a2g = 7'b1011111;
			4'b0111: a2g = 7'b1110000;
			4'b1000: a2g = 7'b1111111;
			4'b1001: a2g = 7'b1111011;
			4'b1010: a2g = 7'b1110111;
			4'b1011: a2g = 7'b0011111;
			4'b1100: a2g = 7'b1001110;
			4'b1101: a2g = 7'b0111101;
			4'b1110: a2g = 7'b1001111;
			4'b1111: a2g = 7'b1000111;
			default:;
		endcase
		an = 2'b00;
		an[s] = 1;
    end
    
    // 1位计数器
    always @(posedge clk190 or posedge clr) begin
        if (clr) s <= 0;
        else  s <= s + 1;
    end
    
endmodule

