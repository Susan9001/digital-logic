`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/04 11:28:52
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
    input [1:0] A,
    input [1:0] B,
    input [2:0] I, // I[2]: A>B; I[1]: A<B; I[0]: A==B
    output [2:0] F // F[2]: A>B; F[1]: A<B; F[0]: A==B
    );
    
    // A > B
    assign F[2] = ((A[1] > B[1]) || (A[1] == B[1] && A[0] > B[0]) || (A[1] == B[1] && A[0] == B[0] && I[2] > 0));
    // A < B
    assign F[1] = ((A[1] < B[1]) || (A[1] == B[1] && A[0] < B[0]) || (A[1] == B[1] && A[0] == B[0] && I[1] > 0));
    // A == B
    assign F[0] = (A[1] == B[1] && A[0] == B[0] && I[0] > 0);
    
endmodule


