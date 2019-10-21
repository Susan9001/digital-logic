`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/21 12:58:48
// Design Name: 
// Module Name: sim_1
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


module sim_1(
    output C_out,
    output [2:0] S
    );
    reg [5:0] in;
    reg [2:0] A;
    reg [2:0] B;
    reg inc;
    
    initial
    begin
        in = 6'b000000;
        assign A = in[5:3];
        assign B = in[2:0];        
        assign inc = 0;
    end
    always #10
    begin
        in = in + 1;
        inc = inc ^ 1;
    end
    exp_1 exp_1(A, B, inc, C_out, S);
endmodule
