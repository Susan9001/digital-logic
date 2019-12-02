`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/02 17:09:54
// Design Name: 
// Module Name: traffic
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


module traffic(
    input clk_3,
    input clr,
    output [5:0] lights
    );
    
    reg [1:0] state;
    reg [4:0] count;
    // 4个种状态
    parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;
    // 3HZ, 则SEC6: 6S, 18个时钟周期; SEC1: 1s, 3个时钟周期
    parameter SEC6 = 5'b10001, SEC1 = 5'b00010;
    
    always @(posedge clk_3 or posedge clr)
    begin
        if (clr == 1) begin
            state <= S0;
            count <= 0;
        end
        else begin
            case (state)
                S0: 
                    if (count < SEC6) begin
                        state <= S0;
                        count <= count + 1;
                    end
                    else begin
                        state <= S1;
                        count <= 0;
                    end
                default
                    state <= S0;
            endcase
        end
    end
    
endmodule









