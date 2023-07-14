`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2023 10:35:32 AM
// Design Name: 
// Module Name: clk_div_disp
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


module clk_div_disp(
    input clk,
    input reset,
    output slow_clk
    );
    
    reg[25:0] COUNT;
    
    assign slow_clk=COUNT[25];
    
    always @(posedge clk)
    begin
    if (reset)
        COUNT =0;
    else
        COUNT = COUNT +1;
    end
    
endmodule
