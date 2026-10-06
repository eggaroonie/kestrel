`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jack
// 
// Create Date: 09/30/2026 03:26:26 PM
// Design Name: 
// Module Name: capture_test1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:-3248.833 ns
// 
//////////////////////////////////////////////////////////////////////////////////


module capture_test1 #(
    parameter integer TICK = 2500
    )(
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_RESET rstn" *)
    input  wire        clk,
    input  wire        rstn,
    (* X_INTERFACE_IGNORE = "true" *)
    input wire  cap_enable,
    input wire  [31:0] frame_cnt_target,
    output reg  cap_status,
    output reg [31:0] frame_cnt
    );
    
    reg     en_d;
    reg     [31:0] tick;
    
    always @(posedge clk) begin
        if (!rstn) begin
            en_d       <= 1'b0;
            tick       <= 32'd0;
            cap_status <= 1'b0;
            frame_cnt  <= 32'd0;
        end else begin
            en_d <= cap_enable; // non blocking
            if (cap_enable && !en_d) begin  /*begin capture */
                frame_cnt  <= 32'd0;
                tick       <= 32'd0;
                cap_status <= 1'b1;
            end else if (cap_status) begin
               if (!cap_enable || (frame_cnt_target != 0 && frame_cnt >= frame_cnt_target)) begin
                    cap_status <= 1'b0;
                end else if (tick == TICK-1) begin
                    tick <= 32'b0;
                    frame_cnt <= frame_cnt + 1;
                end else begin
                    tick <= tick + 1;
                end
                
            end
        end        
    end 
    
endmodule