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


module capture_logic (
    input wire [31:0]   ctrl, 
    input wire [31:0]   frame_cnt_target,
    input wire          cap_enable,
    input wire          clk_in,   // must be sensor clock
    input wire          ctrl_clk, //pl_clk0
    
    output wire         cap_status,
    output wire [31:0]  frame_cnt,
    output wire         fifo_aresetn,
    output wire [31:0]  missed_words,
    
    output  reg [31:0]  m_axis_tdata,
    output  wire [3:0]  m_axis_tkeep,
    output  reg         m_axis_tlast,
    output  reg         m_axis_tvalid,
    output  wire        m_axis_aclk,
    input   wire        m_axis_tready,
    input   wire        m_axis_aresetn,

    
    input   wire        mux_data_valid_o,
    input   wire [3:0]  gpio,
    input wire [7:0]    s_mux0_data_o,
    input wire [7:0]    s_mux1_data_o,
    input wire [7:0]    s_mux2_data_o,
    input wire [7:0]    s_mux3_data_o
    );

    reg  [31:0] clk_cnt;
    wire [31:0] data_in;
    assign m_axis_aclk = clk_in;
    assign m_axis_tkeep = 4'hF; // Keep all data

    // Frames are counted from DATAVAL (mux_data_valid_o): the sensor holds it high for a
    // whole frame and drops it between frames. The framesync GPIO (gpio[0]) is a ~5 ns
    // pulse that the FPGA can't sample reliably, so it isn't used.
    localparam [11:0] WORDS_PER_FRAME = 12'd2400;   // 80x120 pixels / 4 pixels per word (4x8-bit readout)
    reg  [11:0] word_cnt;                           // word within the current frame, 0 .. WORDS_PER_FRAME-1
    reg         dv_prev;                            // DATAVAL on the previous clock
    reg         synced;                             // seen a frame start since arming
    wire        dv_rise   = mux_data_valid_o && !dv_prev;
    wire        take      = mux_data_valid_o && (synced || dv_rise);   // skip a frame already in progress when armed
    wire        last_word = (word_cnt == WORDS_PER_FRAME - 1'b1);

    always @(posedge clk_in) dv_prev <= mux_data_valid_o;

    //assign m_axci_tlast = cap_status & !capture_enable;
    reg [31:0]  last_line;
    reg         running;
    reg         last_frame;
    wire rstn_sync;
    assign fifo_aresetn = rstn_sync;
    xpm_cdc_async_rst #(
       .DEST_SYNC_FF(4),    // DECIMAL; range: 2-10
       .INIT_SYNC_FF(0),    // DECIMAL; 0=disable simulation init values, 1=enable simulation init values
       .RST_ACTIVE_HIGH(0)  // DECIMAL; 0=active-Low reset, 1=active-High reset
    ) rstn_sync_inst (
       .src_arst   (m_axis_aresetn),    // 1-bit input: Source asynchronous reset signal.
       .dest_clk   (clk_in),            // 1-bit input: Destination clock.
       .dest_arst  (rstn_sync)         // 1-bit output: This registered output synchronizes the src_arst asynchronous reset signal to the destination clock
    );
    
    reg         cap_status_r;
    reg  [31:0] frame_cnt_r;
    reg  [31:0] missed_words_r;
    reg  [31:0] frame_cnt_target_r;
    wire        cap_enable_sync;
    wire [31:0] frame_cnt_target_sync;

    System_clk_sync clk_sync_inst (
        .ctrl_clk             (ctrl_clk),
        .sensor_clk           (clk_in),
        .cap_enable_in        (cap_enable),
        .frame_cnt_target_in  (frame_cnt_target),
        .cap_enable_out       (cap_enable_sync),
        .frame_cnt_target_out (frame_cnt_target_sync),
        .cap_status_in        (cap_status_r),
        .frame_cnt_in         (frame_cnt_r),
        .missed_words_in      (missed_words_r),
        .cap_status_out       (cap_status),
        .frame_cnt_out        (frame_cnt),
        .missed_words_out     (missed_words)
    );

    always @(posedge clk_in) begin
        if (!rstn_sync) begin
            cap_status_r      <= 0;
            frame_cnt_r       <= 32'b0;
            m_axis_tvalid   <= 1'b0;
            m_axis_tlast    <= 1'b0;
            m_axis_tdata    <= 32'd0;
            running         <= 0;
            last_frame      <= 0;
            word_cnt        <= 12'd0;
            synced          <= 1'b0;
            missed_words_r    <= 32'b0;

        end else if (running) begin
            if (dv_rise) synced <= 1'b1;

            if (take) begin
                if (last_word) begin
                    word_cnt    <= 12'd0;
                    frame_cnt_r <= frame_cnt_r + 1'b1;
                    if (frame_cnt_r == frame_cnt_target_sync - 1'b1) begin
                        m_axis_tlast <= 1'b1;   // goes out with this word, the last of the last frame
                        running      <= 1'b0;
                        last_frame   <= 1'b1;   // don't re-arm until cap_enable drops
                    end
                end else begin
                    word_cnt <= word_cnt + 1'b1;
                end
            end

            // The beat on the bus is lost if the FIFO isn't ready (no backpressure to the sensor)
            if (m_axis_tvalid && !m_axis_tready) begin
                missed_words_r <= missed_words_r + 1;
            end
            m_axis_tvalid <= take;
            m_axis_tdata  <= { s_mux3_data_o,
                               s_mux2_data_o,
                               s_mux1_data_o,
                               s_mux0_data_o};

        end else if (cap_enable_sync && !last_frame) begin
            running         <= 1;
            cap_status_r      <= 1;
            m_axis_tlast    <= 1'b0;
            frame_cnt_r       <= 32'b0;
            last_frame      <= 1'b0;
            word_cnt        <= 12'd0;
            synced          <= 1'b0;
            missed_words_r    <= 32'b0;
        end else begin
            running         <= 0;
            cap_status_r      <= 0;
            m_axis_tvalid   <= 1'b0;
            m_axis_tlast    <= 1'b0;
            m_axis_tdata    <= 32'd0;
            if (!cap_enable_sync) last_frame <= 1'b0;
            word_cnt        <= 12'd0;
        end
    end


    //     output  wire [31:0] m_axis_tdata,    Our data
    //    output  wire [3:0]  m_axis_tkeep,     not really used but can select which bytes of tdata to stream
    //    output  wire        m_axci_tlast,     Inidicates last packet
    //    input   wire        m_axis_tready     slave (FIFO) is ready
    //    output  reg        m_axis_tvalid,     Master says we are ready to send
endmodule