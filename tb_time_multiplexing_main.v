`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2023 02:38:56 PM
// Design Name: 
// Module Name: tb_time_multiplexing_main
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


module tb_time_multiplexing_main;

reg clk;
reg reset;
reg [15:0]sw;

wire [3:0]an;
wire [6:0]sseg;

time_multiplexing_main uut(.clk(clk), .reset(reset), .sw(sw), .an(an), .sseg(sseg));

initial
begin

clk = 0;
reset = 1;
sw = 0;

#15;

reset = 0;

sw[0] = 0;  //0

sw[6] = 1; //4

sw[11] = 1; //8

sw[14] = 1; //12
sw[15] = 1;

#40;

sw = 0;
sw[0] = 1;  //1

sw[4]=1;    // 5
sw[6]=1;

sw[8] = 1;  // 9
sw[11] = 1;

sw[12] = 1; //13
sw[14] = 1;
sw[15] = 1;

#40;

sw = 0;
sw[1] = 1;  //2

sw[5] =1;   // 6
sw[6] = 1;

sw[9] = 1;  // 10
sw[11] = 1;

sw[13] = 1; //14
sw[14] = 1;
sw[15] = 1;

#40;

sw = 0;
sw[0] = 1;  // 3
sw[1] = 1;

sw[4] = 1; // 7
sw[5] = 1;
sw[6] = 1;

sw[8] = 1;  //11
sw[9] = 1;
sw[11] = 1;

sw[12] = 1; // 15
sw[13] = 1;
sw[14] = 1;
sw[15] = 1;

#40;
reset = 1;

end

always
#5 clk = ~clk;


endmodule
