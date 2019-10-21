`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/30 11:57:26
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
    output out1,
    output out2,
    //output out3,
    output out4,
    output out5,
    output out6,
    output out7
    );
    
    reg[2:0] in;
    initial
    begin
        in = 3'b00;
    end
    always #10
    begin
        in = in + 1;
    end
    exp1 exp1(in[2],in[1], in[0], out1, out2, out4, out5, out6, out7);
    
endmodule
