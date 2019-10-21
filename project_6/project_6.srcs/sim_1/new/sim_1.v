`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/14 12:22:02
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
    output out
    );
    reg[1:0] in;
    initial
    begin
        in = 3'b00;
    end
    always #10
    begin
        in = in + 1;
    end
    exp_1 exp_1(in[1], in[0], out);
endmodule
