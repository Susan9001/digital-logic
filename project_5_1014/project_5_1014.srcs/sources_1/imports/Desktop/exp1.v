`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/30 11:28:50
// Design Name: 
// Module Name: exp-1
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


module exp1(
    input in1,
    input in2,
    input in3,
    output out1,
    output out2,
    //output out3,
    output out4,
    output out5,
    output out6,
    output out7
    );
    and funcAnd(out1, in1, in2, in3);
    or funcOr(out2, in1, in2, in3);

    xor funcXor(out4, in1, in2, in3);
    nand funcNand(out5, in1, in2, in3);
    nor funcNor(out6, in1, in2, in3);
    xnor funcXnor(out7, in1, in2, in3);
    
endmodule
