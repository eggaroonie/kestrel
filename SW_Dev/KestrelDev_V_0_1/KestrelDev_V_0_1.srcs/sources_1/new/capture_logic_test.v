`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2026 02:08:57 PM
// Design Name: Kestrel 0.1
// Module Name: capture_logic_test
// Project Name: 
// Target Devices: ZU3EG
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
    input wire clk_in, // must be sensor clock
    
    output reg cap_status,
    output reg [31:0] frame_cnt,
    output wire fifo_aresetn,
    output reg  [31:0] missed_words,
    
    output  reg [31:0] m_axis_tdata,
    output  wire [3:0]  m_axis_tkeep,
    output  reg        m_axis_tlast,
    output  reg        m_axis_tvalid,
    output  wire        m_axis_aclk,
    input   wire        m_axis_tready,
    input   wire        m_axis_aresetn,

    
    input   wire        mux_data_valid_o,
    input   wire [3:0]  gpio,
    input wire [7:0] s_mux0_data_o,
    input wire [7:0] s_mux1_data_o,
    input wire [7:0] s_mux2_data_o,
    input wire [7:0] s_mux3_data_o
    );

//    reg [7:0] mux0_data_o;
//    reg [7:0] mux1_data_o;
//    reg [7:0] mux2_data_o;
//    reg [7:0] mux3_data_o;
    reg [31:0] clk_cnt;
    reg [31:0] line_cnt;
    wire [31:0] data_in;
    assign m_axis_aclk = clk_in;
    assign m_axis_tkeep = 4'hF; // Keep all data
    wire frame_sync = gpio[0];
    
    
    //assign m_axci_tlast = cap_status & !capture_enable;
    reg [31:0]  last_line;
    reg [4:0]   word_cnt;
    reg         running;
    reg         last_frame;
    wire rstn_sync;
    assign fifo_arestn = rstn_sync;
    xpm_cdc_async_rst #(
       .DEST_SYNC_FF(4),    // DECIMAL; range: 2-10
       .INIT_SYNC_FF(0),    // DECIMAL; 0=disable simulation init values, 1=enable simulation init values
       .RST_ACTIVE_HIGH(0)  // DECIMAL; 0=active-Low reset, 1=active-High reset
    ) rstn_sync_inst (
       .src_arst   (m_axis_aresetn),    // 1-bit input: Source asynchronous reset signal.
       .dest_clk   (clk_in),            // 1-bit input: Destination clock.
       .dest_arst  (rstn_sync)         // 1-bit output: This registered output synchronizes the src_arst asynchronous reset signal to the destination clock
    );
    
    always @(posedge clk_in) begin
        if (!rstn_sync) begin
            cap_status      <= 0;
            line_cnt        <= 1'b0;
            frame_cnt       <= 32'b0;
            m_axis_tvalid   <= 1'b0;
            m_axis_tlast    <= 1'b0;
            m_axis_tdata    <= 32'd0;
            running         <= 0;
            last_frame      <= 0;
            word_cnt        <= 5'b0;
            missed_words    <= 32'b0;
            
        end else if (running) begin
            if (mux_data_valid_o && frame_sync) begin
                line_cnt <= line_cnt + 1;
                if (line_cnt == 119) begin
                    frame_cnt   <= frame_cnt + 1'b1;
                    line_cnt    <= 0;
                end 
                if (frame_cnt == (frame_cnt_target - 1)) begin
                    last_frame <= 1'b1;
                end
            end

            if (mux_data_valid_o) begin
                if (frame_sync) begin
                    word_cnt <= 5'b0;
                end else begin
                    word_cnt <= word_cnt + 1'b1;
                end
            end

            if (mux_data_valid_o && !frame_sync && word_cnt == 5'd18 && frame_cnt == frame_cnt_target) begin
                m_axis_tlast <= 1'b1;
                running      <= 1'b0;
            end
            if (cap_status && mux_data_valid_o && !m_axis_tready) begin
                missed_words <= missed_words + 1;
            end
            m_axis_tvalid <= cap_status && mux_data_valid_o;
            m_axis_tdata  <= {s_mux0_data_o, s_mux1_data_o,
                            s_mux2_data_o, s_mux3_data_o};

        end else if (cap_enable && !last_frame) begin
            running         <= 1;
            cap_status      <= 1;
            m_axis_tlast    <= 1'b0;
            line_cnt        <= 32'b0;
            frame_cnt       <= 32'b0;
            last_frame      <= 1'b0;
            word_cnt        <= 5'b0;
            missed_words    <= 32'b0;
        end else begin
            running         <= 0;
            cap_status      <= 0;
            line_cnt        <= 1'b0;
            m_axis_tvalid   <= 1'b0;
            m_axis_tlast    <= 1'b0;
            m_axis_tdata    <= 32'd0;
            if (!cap_enable) last_frame <= 1'b0;
            word_cnt        <= 5'b0;
        end
    end


    //     output  wire [31:0] m_axis_tdata,    Our data
    //    output  wire [3:0]  m_axis_tkeep,     not really used but can select which bytes of tdata to stream
    //    output  wire        m_axci_tlast,     Inidicates last packet
    //    input   wire        m_axis_tready     slave (FIFO) is ready
    //    output  reg        m_axis_tvalid,     Master says we are ready to send
endmodule
