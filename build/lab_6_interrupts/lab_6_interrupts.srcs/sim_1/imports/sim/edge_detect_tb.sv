`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2024 11:10:12 AM
// Design Name: 
// Module Name: edge_detect_tb
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


module edge_detect_tb(
    );
     logic clk,sig,rst_n;
       logic  f_edge ,r_edge;
       
   edge_detector uut (.clk ,.rst_n,.sig,.f_edge,.r_edge);
       
       initial begin 
        clk  = 0;
        sig = 0;
        f_edge= 0;
        r_edge = 0;
       end
       
       always #5 clk = ~clk;
       
       initial begin 
       #20;
       rst_n = 0;
       assert(uut.delay_reg0 != 0) else $display("ERROR:NOT RESET ");
       #40;
       rst_n = 1;
       #20;
       sig = 1;
       
      #60;
      sig = 0;
      
      #60;
      
      $finish;
       end
endmodule
