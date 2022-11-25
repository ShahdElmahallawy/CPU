`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2022 08:17:56 PM
// Design Name: 
// Module Name: RISCV_pipeline_sim
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


module RISCV_pipeline_sim();
reg clk, rst;
reg [1:0]ledSel;
reg [3:0]ssdSel;
reg SSD_clk;
wire [6:0] leds;
wire [3:0]Anode;
wire [15:0] out_LED;
parameter clk_period=2;
RISCV_pipeline UUT( clk, rst,ledSel,ssdSel, SSD_clk, leds, Anode, out_LED );
always begin
#(clk_period*2) clk=~clk;

end
initial begin
clk=0;
rst=1;
ssdSel=4'b0110;
ledSel=2'b00;
ssdSel=4'b0000;
#(clk_period/2) 
rst=0;
ledSel=2'b00;
ssdSel=4'b0110;
end
endmodule
