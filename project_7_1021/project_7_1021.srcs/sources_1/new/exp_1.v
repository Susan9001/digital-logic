`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/21 12:43:16
// Design Name: 
// Module Name: exp_1
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


module exp_1(
    input [2:0] A,
    input [2:0] B,
    input C_in,
    output C_out,
    output [2:0] S
    );
    wire [2:0] G = A & B;
    wire [2:0] P = A ^ B;
    
    // 2为高位，0为低位, 210
    wire C1, C2; // 从1开始的A1+B1, A2+B2所产生的进位
    assign C1 = G[0] + (P[0] & C_in); // 记得要加括号呀！
    assign C2 = G[1] + (P[1] & C1);
    assign C_out = G[2] + (P[2] & C2);
    
    assign S[0] = P[0] ^ C_in;
    assign S[1] = P[1] ^ C1;
    assign S[2] = P[2] ^ C2;
    
endmodule



