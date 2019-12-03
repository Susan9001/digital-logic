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
    output reg [5:0] lights
    );
    
    reg [1:0] state;
    reg [4:0] count;
    // 4��״̬
    parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;
    // 3HZ, ��SEC6: 6S, 18��ʱ������; SEC1: 1s, 3��ʱ������
    parameter SEC6 = 5'b10001, SEC1 = 5'b00010;
    // ��3λ���ϱ������ɫ���ߵ���ÿλ�ֱ�����̻ƺ죩������λ������
    parameter LRR = 6'b001001, LRY = 6'b001010, LRG = 6'b001100,
            LYR = 6'b010001, LYY = 6'b010010, LYG = 6'b010100,
            LGR = 6'b100001, LGY = 6'b100010, LGG = 6'b100100;
    
    // set status
    always @(posedge clk_3 or posedge clr) begin
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
                S1:
                   if (count < SEC1) begin
                       state <= S1;
                       count <= count + 1;
                   end
                   else begin
                       state <= S2;
                       count <= 0;
                   end
               S2:
                   if (count < SEC6) begin
                       state <= S2;
                       count <= count + 1;
                   end
                   else begin
                       state <= S3;
                       count <= 0;
                   end
               S3:
                   if (count < SEC1) begin
                       state <= S3;
                       count <= count + 1;
                   end
                   else begin
                       state <= S0;
                       count <= 0;
                   end
                default:
                    state <= S0;
            endcase
        end
    end
    
    // set lights according to current state
    always @(*) begin
        case(state)
            S0: lights = LGR;
            S1: lights = LYR;
            S2: lights = LRG;
            S3: lights = LRY;
            default: lights = LRR;
        endcase
    end
endmodule









