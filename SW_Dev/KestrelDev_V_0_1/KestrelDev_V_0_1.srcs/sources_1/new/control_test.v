`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2026 03:36:41 PM
// Design Name: 
// Module Name: control_test
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


module control_test(
    input wire [31:0] ctrl,
    input wire  [31:0] frame_cnt_target,
    input wire  cap_enable,
    input wire clk_in,
    output reg cap_status,
    output reg [31:0] frame_cnt,
    
    output  wire [31:0] m_axis_tdata,
    output  wire [3:0]  m_axis_tkeep,
    output  wire        m_axci_tlast,
    output  reg        m_axis_tvalid,
    input   wire        m_axis_tready,
    input   wire        m_axis_aresetn,

    
    input   wire        mux_data_valid_o,
    input   wire [3:0]  gpio,
    input wire [7:0] s_mux0_data_o,
    input wire [7:0] s_mux1_data_o,
    input wire [7:0] s_mux2_data_o,
    input wire [7:0] s_mux3_data_o
    );
    
endmodule
