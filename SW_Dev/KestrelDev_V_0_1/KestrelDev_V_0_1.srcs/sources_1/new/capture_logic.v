`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 11:13:24 AM
// Design Name: 
// Module Name: capture_logic
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


module capture_logic(
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_RESET rstn" *)
    (* X_INTERFACE_IGNORE = "true" *)
    input wire [31:0] ctrl,
    input wire  [31:0] frame_cnt_target,
    input wire  cap_enable,
    input wire clk_in,
    output reg cap_status,
    output reg [31:0] frame_cnt
    );
    
    
endmodule
