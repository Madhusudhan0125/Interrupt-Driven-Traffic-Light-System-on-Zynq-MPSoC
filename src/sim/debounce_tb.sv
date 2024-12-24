`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2024 11:10:12 AM
// Design Name: 
// Module Name: debounce_tb
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


module debounce_tb(

    );
     logic clk,rst_n,btn;
      logic btn_out;
      
      initial begin
        clk  = 0; 
        btn = 0;
       end
       debouncer#(.delay(8)) dut (.clk(clk) , .rst_n(rst_n),.btn(btn),.btn_out(btn_out));
       always #5 clk =~clk ;
      
       
       initial begin
        #20;
       rst_n = 0;
       assert(dut.counter == 0) else $display("ERROR:NOT RESET ");
       #40;
       rst_n = 1;
       #40;
       btn = 1;
       #130;
       btn = 0;
        #70;
        btn = 1;
       #115;
       btn = 0;
       
       #1000;     
      
      $finish;
       end
       
       
       
endmodule
