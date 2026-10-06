`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2026 03:52:30 PM
// Design Name: 
// Module Name: p2_blink_ps
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


module p2_blink_ps (
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 p2_clk CLK" *)
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 100000000" *)
    input wire p2_clk,
    output wire ex_io5,
    output wire dir4,
    output wire [2:0] dir_unused,
    output wire blink_to_ps
    );
    reg [26:0] cnt = 27'd0;
    always @(posedge p2_clk) cnt <= cnt + 1'b1;
    
    wire blink = cnt[26];   // toggles every 0.67s at 100 MHz
    
    assign ex_io5      = blink;
    assign blink_to_ps = blink;
    assign dir4        = 1'b1;
    assign dir_unused  = 3'b000;
endmodule
