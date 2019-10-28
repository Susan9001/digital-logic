`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/28 12:16:20
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
    output [7:0] Y
    );
        
    reg [2:0] G;
    reg [2:0] A;
    
    initial
    begin
        assign A = 3'b000;    
        assign G = 3'b001;
    end
    always #20
    begin
        assign A = A + 1;
    end
    exp_1 exp_1(G, A, Y);
endmodule
