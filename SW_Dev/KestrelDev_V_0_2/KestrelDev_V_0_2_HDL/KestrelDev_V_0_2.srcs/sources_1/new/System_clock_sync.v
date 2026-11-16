`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jackson Newman
// 
// Create Date: 10/23/2026 04:46:52 PM
// Design Name: 
// Module Name: System_clock_sync
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


module System_clk_sync(
    input wire  ctrl_clk,       /* pl_clk0 */
    input wire  sensor_clk,
    
    input wire      cap_enable_in,
    input wire [31:0] frame_cnt_target_in,
    output wire        cap_enable_out,
    output wire [31:0] frame_cnt_target_out,
    output wire [31:0] missed_words_out,
    
    input  wire        cap_status_in,
    input  wire [31:0] frame_cnt_in,
    input  wire [31:0] missed_words_in,
    output wire        cap_status_out,
    output wire [31:0] frame_cnt_out
    );

    // register side -> sensor side
    xpm_cdc_single #(.DEST_SYNC_FF(4), .INIT_SYNC_FF(0), .SIM_ASSERT_CHK(0), .SRC_INPUT_REG(1))
    cap_enable_sync_inst (.src_clk(ctrl_clk), .src_in(cap_enable_in), .dest_clk(sensor_clk), .dest_out(cap_enable_out));

    xpm_cdc_array_single #(.DEST_SYNC_FF(4), .INIT_SYNC_FF(0), .SIM_ASSERT_CHK(0), .SRC_INPUT_REG(1), .WIDTH(32))
    frame_cnt_target_sync_inst (.src_clk(ctrl_clk), .src_in(frame_cnt_target_in), .dest_clk(sensor_clk), .dest_out(frame_cnt_target_out));

    // sensor side -> register side
    xpm_cdc_single #(.DEST_SYNC_FF(4), .INIT_SYNC_FF(0), .SIM_ASSERT_CHK(0), .SRC_INPUT_REG(1))
    cap_status_sync_inst (.src_clk(sensor_clk), .src_in(cap_status_in), .dest_clk(ctrl_clk), .dest_out(cap_status_out));

    xpm_cdc_gray #(.DEST_SYNC_FF(4), .INIT_SYNC_FF(0), .REG_OUTPUT(0), .SIM_ASSERT_CHK(0), .SIM_LOSSLESS_GRAY_CHK(0), .WIDTH(32))
    frame_cnt_sync_inst (.src_clk(sensor_clk), .src_in_bin(frame_cnt_in), .dest_clk(ctrl_clk), .dest_out_bin(frame_cnt_out));

    xpm_cdc_gray #(.DEST_SYNC_FF(4), .INIT_SYNC_FF(0), .REG_OUTPUT(0), .SIM_ASSERT_CHK(0), .SIM_LOSSLESS_GRAY_CHK(0), .WIDTH(32))
    missed_words_sync_inst (.src_clk(sensor_clk), .src_in_bin(missed_words_in), .dest_clk(ctrl_clk), .dest_out_bin(missed_words_out));   
    
    
endmodule
