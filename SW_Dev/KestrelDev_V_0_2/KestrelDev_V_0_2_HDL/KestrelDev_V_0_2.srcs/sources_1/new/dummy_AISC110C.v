`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer: Claude
//
// Create Date: 10/28/2026 11:31:04 AM
// Design Name: Kestrel 0.1
// Module Name: dummy_AISC110C
// Project Name:
// Target Devices: ZU3EG
// Tool Versions:
// Description: Synthesizable stand-in for the AISC110C, to drive capture_logic_test
//              in the block design while there is no sensor. Streams 80x120 frames
//              in 4 x 8-bit mode with the same timing as the sensor model in
//              capture_logic_test_sim. Every pixel is dummy_data (set from software).
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//      Each cycle is 10ns.
//      Frame sync preamble is 2 pulses( rising edge) every 200ns so every 100 cycles
//      then the next
//      pulse is the start of a line
//   clk_in should be pl_clk0 (100 MHz, same as the sensor's CLK_IO). clk_out is clk_in
//   passed through, and goes to capture_logic_test clk_in like CLK_IO would.
//   Frame timing (AISC110C datasheet rev1.0, section 2.3.2, Figure 3):
//   - 4 pixels per clock -> 80 pixels/line = 20 clocks per line
//   - two preamble framesync pulses 20 clocks apart with no data
//   - 120 lines back to back, DATAVAL high for all 2400 clocks, framesync on the
//     first beat of every line
//   - idle for the rest of the 2496 clock (24.96 us) frame period
//   cap_enable stands in for the START bit: frames start from the beginning when it
//   goes high and repeat while it stays high (continuous exposure). Unlike the real
//   sensor, it stops right away when cap_enable goes low instead of finishing the
//   frame, so the next capture always starts on a frame boundary.
//////////////////////////////////////////////////////////////////////////////////


module dummy_AISC110C(
    input wire clk_in,
    input wire cap_enable,
    input wire rstn,
    input wire [31:0] dummy_data,
    output reg [3:0] gpio,              // gpio[0] = framesync_out
    output reg mux_data_valid_o,        // DATAVAL
    output reg [7:0] m_mux0_data_o,     // OUT1
    output reg [7:0] m_mux1_data_o,     // OUT2
    output reg [7:0] m_mux2_data_o,     // OUT3
    output reg [7:0] m_mux3_data_o,     // OUT4
    output wire clk_out                 // CLK_IO
    );
    localparam WORDS_PER_LINE  = 80 / 4;                                            // 4 pixels per clock
    localparam LINES_PER_FRAME = 120;
    localparam PREAMBLE_PULSES = 2;
    localparam FRAME_PERIOD    = 2496;                                              // clocks, 24.96 us
    localparam DATA_START      = PREAMBLE_PULSES * WORDS_PER_LINE;                  // 40
    localparam DATA_END        = DATA_START + LINES_PER_FRAME * WORDS_PER_LINE;     // 2440
    
    assign clk_out = clk_in;
    reg        running;
    reg [11:0] clk_cnt;     // clock within the frame, 0 .. FRAME_PERIOD-1
    reg [4:0]  word_cnt;    // beat within the line, 0 .. BEATS_PER_LINE-1

    wire data_beat = (clk_cnt >= DATA_START) && (clk_cnt < DATA_END);
    
    always @(posedge clk_in) begin
        if (!rstn) begin
            running             <= 1'b0;
            clk_cnt             <= 12'd0;
            word_cnt            <= 5'd0;
            gpio                <= 4'b0;
            mux_data_valid_o    <= 1'b0;
            m_mux0_data_o       <= 8'd0;
            m_mux1_data_o       <= 8'd0;
            m_mux2_data_o       <= 8'd0;
            m_mux3_data_o       <= 8'd0;

        end else if (running && cap_enable) begin
            // framesync on the first beat of every line, preamble included
            gpio                <= {3'b000, (word_cnt == 5'd0) && (clk_cnt < DATA_END)};
            mux_data_valid_o    <= data_beat;
            m_mux0_data_o       <= data_beat ? dummy_data[7:0]   : 8'd0;
            m_mux1_data_o       <= data_beat ? dummy_data[15:8]  : 8'd0;
            m_mux2_data_o       <= data_beat ? dummy_data[23:16] : 8'd0;
            m_mux3_data_o       <= data_beat ? dummy_data[31:24] : 8'd0;

            if (clk_cnt == FRAME_PERIOD - 1) begin
                clk_cnt     <= 12'd0;
                word_cnt    <= 5'd0;
            end else begin
                clk_cnt     <= clk_cnt + 1'b1;
                word_cnt    <= (word_cnt == WORDS_PER_LINE - 1) ? 5'd0 : word_cnt + 1'b1;
            end

        end else begin
            // idle; start from the top of a frame on the next clock if cap_enable is high
            running             <= cap_enable;
            clk_cnt             <= 12'd0;
            word_cnt            <= 5'd0;
            gpio                <= 4'b0;
            mux_data_valid_o    <= 1'b0;
            m_mux0_data_o       <= 8'd0;
            m_mux1_data_o       <= 8'd0;
            m_mux2_data_o       <= 8'd0;
            m_mux3_data_o       <= 8'd0;
        end
    end
endmodule
