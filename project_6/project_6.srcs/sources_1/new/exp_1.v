`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/14 12:11:56
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
    input in1,
    input in2,
    output out
    );
    
    
    nand (temp1, in1, in2);
    nand (temp2, in1, temp1);
    nand (temp3, in2, temp1);
    nand (out, temp2, temp3);
    
endmodule
