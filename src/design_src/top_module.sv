`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2024 11:48:54 AM
// Design Name: 
// Module Name: top_module
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


module top_module(
    input btn,
    output [3:0]leds
    );
        localparam integer DEBOUNCE_WAIT = 2_500_000 ;// 25 mSec in 100 MHz clk

    logic clk_100mhz;
    logic rst_n;
    logic btn_pls;
    
    debouncer#(DEBOUNCE_WAIT) debouncer_i(
    .clk(clk_100mhz),
    .rst_n(rst_n),
    .btn(btn),
    .btn_pls_out(btn_pls)
    );
    
    system system_i(
    .clk_100mhz(clk_100mhz),
    .rst_n(rst_n),
    .leds(leds),
    .btn(btn_pls)
    );
endmodule
