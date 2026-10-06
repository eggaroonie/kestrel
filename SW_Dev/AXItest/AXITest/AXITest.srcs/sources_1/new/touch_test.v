`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2026 02:13:56 PM
// Design Name: 
// Module Name: touch_test
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


module touch_test (
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_RESET rstn" *)
    input  wire        clk,
    input  wire        rstn,
    (* X_INTERFACE_IGNORE = "true" *)
    input wire       data_ready,
    input wire  [1:0] touch,
    output reg  [31:0] touch_cnt,
    output reg      touch_received
);
    always @(posedge clk) begin
        if (!rstn) begin
            touch_cnt <= 32'b0;
            touch_received <= 1'b0;
            
        end else if (data_ready && !touch_received) begin
            touch_received <= 1'b1;
        end else if (!data_ready && touch_received) begin
            touch_cnt <= touch_cnt + touch;
            touch_received  <= 1'b0;
        end
    end
endmodule
