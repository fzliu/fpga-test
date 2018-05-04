`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/21 09:53:44
// Design Name: 
// Module Name: testLED
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


module Fibonacci_tb;

reg             clk;
reg             reset;
reg             clk_reset;

wire    [ 7:0]  out;

always #5 clk = ~clk;

initial begin
  clk_reset = 0;
  reset = 0;
  clk = 0;
  #20 clk_reset = ~clk_reset;
  #40 clk_reset = ~clk_reset;
  #20 reset = ~reset;
  #1000 reset = ~reset;
end

Fibonacci #(
  .DECIMATION(20'd20)) FibonacciT(
  .clk_reset(clk_reset),
  .reset(reset),
  .clk(clk),
  .out(out)
);
endmodule