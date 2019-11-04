`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/04 11:37:29
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
    output [2:0] F
    );
            
    reg [1:0] A;
    reg [1:0] B;
    reg [3:0] AB;
    reg [2:0] I;
        
    initial
    begin
        AB = 4'b0000;
        A = AB[3:2];
        B = AB[1:0];
        I = 3'b001;
    end
    always #20
    begin
        AB = AB + 1;
        A = AB[3:2];
        B = AB[1:0];
    end
    exp_1 exp_1(A, B, I, F);
endmodule
