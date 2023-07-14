`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2023 09:37:46 AM
// Design Name: 
// Module Name: clkdivide
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


module clkdivide(
    input clk,
    input reset,
    output clk_out
    );
    
    reg[20:0] COUNT;
    
    assign clk_out=COUNT[20];
    
    always @(posedge clk)
    begin
    if (reset)
        COUNT =0;
    else
        COUNT = COUNT +1;
    end
    
endmodule
