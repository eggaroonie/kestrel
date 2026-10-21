`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2026 02:08:57 PM
// Design Name: 
// Module Name: capture_logic_test
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


module capture_logic_test(
    input wire [31:0] ctrl,
    input wire  [31:0] frame_cnt_target,
    input wire  cap_enable,
    input wire clk_in,
    output reg cap_status,
    output reg [31:0] frame_cnt,
    
    output  wire [31:0] m_axis_tdata,
    output  wire [3:0]  m_axis_tkeep,
    output  wire        m_axci_tlast,
    input   wire        m_axis_tready,
    output  reg        m_axis_tvalid,
    
    input   wire        mux_data_valid_o,
    input   wire [3:0]  gpio,
    input wire [7:0] mux0_data_o,
    input wire [7:0] mux1_data_o,
    input wire [7:0] mux2_data_o,
    input wire [7:0] mux3_data_o
    );
//    reg [7:0] mux0_data_o;
//    reg [7:0] mux1_data_o;
//    reg [7:0] mux2_data_o;
//    reg [7:0] mux3_data_o;
    reg [31:0] clk_cnt;
    reg [7:0] line_cnt;
    wire [31:0] data_in;
    assign data_in = {mux0_data_o, mux1_data_o, mux2_data_o, mux3_data_o};
    assign m_axis_tdata = data_in;

    assign capture_enable = ctrl[2];
    assign frame_sync = gpio[0];
    
    always @(posedge clk_in) begin
        
        if (capture_enable) begin
            frame_cnt <=0;
            if (mux_data_valid_o) begin
                clk_cnt = clk_cnt + 1;
                if (frame_sync) line_cnt = line_cnt +1;
                m_axis_tvalid <= 1'b1;
                
            end
        end
     end
     
     always @(negedge m_axis_tready) begin
        m_axis_tvalid = 1'b0;
     end
     
        
            
        
     
     always @(posedge clk_in) begin
        if (capture_enable) begin
            
        
     end
            
end
    
endmodule
