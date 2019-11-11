`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/11 13:14:02
// Design Name: 
// Module Name: sim_11
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


module sim_11(
    output [6:0] out_num,
    output [3:0] out_chip
    );
      
    reg [3:0] in_num;
    reg [3:0] in_chip;
    
    initial
    begin
        in_chip = 4'b1010;
        in_num = 4'b0000;
    end
    always #20
    begin
        in_num = in_num + 1;
    end
    exp_11 exp_11(in_num, in_chip, out_num, out_chip);
endmodule


