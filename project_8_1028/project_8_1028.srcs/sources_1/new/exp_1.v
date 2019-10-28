`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/28 12:13:17
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
    input [2:0] G,
    input [2:0] A,
    output [7:0] Y
    );
     
    wire E_tmp = (G[0] & ~(G[1]) & ~(G[2]));
    wire A0_not = ~A[0];
    wire A1_not = ~A[1];
    wire A2_not = ~A[2];
    
    assign Y[0] = ~(A0_not & A1_not & A2_not & E_tmp);
    assign Y[1] = ~(A[0] & A1_not & A2_not & E_tmp);
    assign Y[2] = ~(A0_not & A[1] & A2_not & E_tmp);
    assign Y[3] = ~(A[0] & A[1] & A2_not & E_tmp);
    assign Y[4] = ~(A0_not & A1_not & A[2] & E_tmp);
    assign Y[5] = ~(A[0] & A1_not & A[2] & E_tmp);
    assign Y[6] = ~(A0_not & A[1] & A[2] & E_tmp);
    assign Y[7] = ~(A[0] & A[1] & A[2] & E_tmp);
    
endmodule
