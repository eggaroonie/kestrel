`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 10/23/2026 04:10:39 PM
// Design Name: Kestrel 0.1
// Module Name: capture_logic_test_sim
// Project Name:s
// Target Devices: ZU3EG
// Tool Versions:
// Description: Testbench for capture_logic_test. Models an AISC110C streaming
//              80x120 frames in 4 x 8-bit mode, every pixel = 8'b10111001,
//              with frame_cnt_target = 100.
//
// Dependencies: capture_logic_test.v
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//   Sensor timing follows the AISC110C datasheet rev1.0 (section 2.3.2, Figure 3):
//   - CLK_IO is 100 MHz; data changes on its rising edge and is sampled on the next one
//   - 4 pixels per clock on OUT1..OUT4 -> 80 pixels/line = 20 clocks (200 ns) per line
//   - 120 lines per frame sent back to back; DATAVAL stays high for all 2400 clocks
//   - framesync (GPIO1 set to framesync_out): two preamble pulses 200 ns apart with
//     no data, then one pulse on the first beat of every line
//   - frames repeat every 24.96 us (minimum interval for 80x120, Table 2)
//   Not from the datasheet: the startup time after ENABLE (none is given), and the
//   SPI configuration, which is modeled as a delay instead of real SPI transfers.
//   The FIFO is xpm_fifo_axis with the settings of the block design's AXI4-Stream Data FIFO
//   (zusys_axis_data_fifo_0_0), written on the sensor clock and read on a separate pl_clk0.
//   The DMA is a stand-in that takes words from the FIFO.
//////////////////////////////////////////////////////////////////////////////////


module capture_logic_test_sim(

    );
    // ---------------- test settings ----------------
    localparam [7:0] PIXEL        = 8'b10111001;   // every mux output, every beat
    localparam       FRAME_TARGET = 100;

    // ---------------- AISC110C readout timing (80x120, readout_mode 0x0) ----------------
    localparam CLK_PERIOD      = 10;                              // ns, 100 MHz CLK_IO
    localparam BEATS_PER_LINE  = 80 / 4;                          // 4 pixels per clock
    localparam LINES_PER_FRAME = 120;
    localparam BEATS_PER_FRAME = BEATS_PER_LINE * LINES_PER_FRAME; // 2400
    localparam PREAMBLE_PULSES = 2;
    localparam FRAME_PERIOD    = 2496;                            // clocks, 24.96 us
    localparam STARTUP_NS      = 1000;                            // ENABLE -> CLK_IO running (placeholder)

    // ---------------- PS side ----------------
    localparam real PL_CLK_PERIOD = 10.01;                        // ns, pl_clk0: ~100 MHz, slightly off CLK_IO
    localparam      DMA_READY_PCT = 100;                          // % of pl_clk0 cycles the DMA takes a word

    // sensor pins
    reg        sensor_enable = 1'b0;   // ENABLE, driven by the FPGA
    reg        clk_io        = 1'b0;   // CLK_IO
    reg        dataval       = 1'b0;   // DATAVAL
    reg        framesync     = 1'b0;   // GPIO1 configured as framesync_out
    reg  [7:0] out1 = 8'h00, out2 = 8'h00, out3 = 8'h00, out4 = 8'h00;
    reg        clk_running   = 1'b0;
    reg        exposing      = 1'b0;   // START bit set, continuous exposure mode

    // PS / software side (pl_clk0 domain)
    reg        pl_clk0    = 1'b0;
    reg        aresetn    = 1'b0;      // AXI4Lite_CaptureLogic rstn and rst_ps8_0_100M in the BD
    reg        cap_enable = 1'b0;

    // FIFO write side (from the FIFO) and read side (DMA S2MM stand-in)
    wire        tready;
    wire        fifo_tvalid, fifo_tlast;
    wire [31:0] fifo_tdata;
    reg         dma_tready = 1'b1;

    // DUT outputs
    wire        cap_status;
    wire [31:0] frame_cnt;
    wire [31:0] tdata;
    wire [3:0]  tkeep;
    wire        tlast, tvalid, axis_aclk;

    capture_logic_test dut (
        .ctrl             (32'd0),
        .frame_cnt_target (FRAME_TARGET),
        .cap_enable       (cap_enable),
        .clk_in           (clk_io),
        .cap_status       (cap_status),
        .frame_cnt        (frame_cnt),
        .m_axis_tdata     (tdata),
        .m_axis_tkeep     (tkeep),
        .m_axis_tlast     (tlast),
        .m_axis_tvalid    (tvalid),
        .m_axis_aclk      (axis_aclk),
        .m_axis_tready    (tready),
        .m_axis_aresetn   (aresetn),
        .mux_data_valid_o (dataval),
        .gpio             ({3'b000, framesync}),
        .s_mux0_data_o    (out1),
        .s_mux1_data_o    (out2),
        .s_mux2_data_o    (out3),
        .s_mux3_data_o    (out4)
    );

    // CLK_IO only runs once the sensor is enabled and has started up
    always #(CLK_PERIOD/2) if (clk_running) clk_io = ~clk_io;

    // pl_clk0 runs from power-up
    always #(PL_CLK_PERIOD/2) pl_clk0 = ~pl_clk0;

    // The block design's AXI4-Stream Data FIFO (zusys_axis_data_fifo_0_0) is built on xpm_fifo_axis.
    // Vivado doesn't compile IP inside a block design unless the simulation top uses the block design,
    // so this is xpm_fifo_axis with that IP's settings. Keep them in step with the FIFO in zusys.bd.
    xpm_fifo_axis #(
        .CLOCKING_MODE    ("independent_clock"),   // Independent clocks = Yes
        .FIFO_DEPTH       (512),
        .CDC_SYNC_STAGES  (3),
        .TDATA_WIDTH      (32),
        .FIFO_MEMORY_TYPE ("auto"),
        .PACKET_FIFO      ("false"),
        .ECC_MODE         ("no_ecc"),
        .PROG_EMPTY_THRESH(5),
        .PROG_FULL_THRESH (11),
        .USE_ADV_FEATURES ("1000")
    ) fifo (
        .s_aresetn          (aresetn),
        .s_aclk             (axis_aclk),       // capture_logic_test m_axis_aclk = CLK_IO
        .s_axis_tvalid      (tvalid),
        .s_axis_tready      (tready),
        .s_axis_tdata       (tdata),
        .s_axis_tlast       (tlast),
        .s_axis_tkeep       (4'hF),
        .s_axis_tstrb       (4'hF),
        .s_axis_tid         (1'b0),
        .s_axis_tdest       (1'b0),
        .s_axis_tuser       (1'b0),
        .injectsbiterr_axis (1'b0),
        .injectdbiterr_axis (1'b0),
        .m_aclk             (pl_clk0),
        .m_axis_tvalid      (fifo_tvalid),
        .m_axis_tready      (dma_tready),
        .m_axis_tdata       (fifo_tdata),
        .m_axis_tlast       (fifo_tlast),
        .m_axis_tkeep       (),
        .m_axis_tstrb       (),
        .m_axis_tid         (),
        .m_axis_tdest       (),
        .m_axis_tuser       (),
        .almost_full_axis   (),
        .prog_full_axis     (),
        .wr_data_count_axis (),
        .almost_empty_axis  (),
        .prog_empty_axis    (),
        .rd_data_count_axis (),
        .sbiterr_axis       (),
        .dbiterr_axis       ()
    );

    // DMA stand-in: takes a word on DMA_READY_PCT % of pl_clk0 cycles
    always @(posedge pl_clk0) dma_tready <= ({$random} % 100) < DMA_READY_PCT;

    // ---------------- AISC110C model ----------------
    // one clock of sensor output, changed 1 ns after the rising edge
    task sensor_beat(input fs, input dv);
        begin
            @(posedge clk_io); #1;
            framesync = fs;
            dataval   = dv;
            out1 = dv ? PIXEL : 8'h00;
            out2 = dv ? PIXEL : 8'h00;
            out3 = dv ? PIXEL : 8'h00;
            out4 = dv ? PIXEL : 8'h00;
        end
    endtask

    task sensor_frame;
        integer i, line, beat;
        begin
            // guard window: preamble framesync pulses 200 ns apart, no data
            for (i = 0; i < PREAMBLE_PULSES; i = i + 1)
                for (beat = 0; beat < BEATS_PER_LINE; beat = beat + 1)
                    sensor_beat(beat == 0, 1'b0);
            // 120 lines back to back, framesync on the first beat of each line
            for (line = 0; line < LINES_PER_FRAME; line = line + 1)
                for (beat = 0; beat < BEATS_PER_LINE; beat = beat + 1)
                    sensor_beat(beat == 0, 1'b1);
            // idle for the rest of the frame period
            for (i = PREAMBLE_PULSES*BEATS_PER_LINE + BEATS_PER_FRAME; i < FRAME_PERIOD; i = i + 1)
                sensor_beat(1'b0, 1'b0);
        end
    endtask

    integer frames_sent = 0;
    initial begin : sensor_readout
        wait (exposing);
        while (exposing) begin
            sensor_frame;
            frames_sent = frames_sent + 1;
        end
    end

    // ---------------- checkers ----------------
    // into the FIFO (sensor clock): words accepted, and words lost because the FIFO was full
    integer beats_in = 0, beats_dropped = 0;
    always @(posedge clk_io) begin
        if (aresetn && tvalid === 1'b1) begin
            if (tready) beats_in = beats_in + 1;
            else        beats_dropped = beats_dropped + 1;
        end
    end

    // out of the FIFO (pl_clk0): what the DMA would write to DDR
    integer beats_rx = 0, data_errors = 0, tlast_count = 0, first_tlast_beat = 0;
    always @(posedge pl_clk0) begin
        if (fifo_tvalid === 1'b1 && dma_tready) begin
            beats_rx = beats_rx + 1;
            if (fifo_tdata !== {4{PIXEL}}) data_errors = data_errors + 1;
            if (fifo_tlast === 1'b1) begin
                tlast_count = tlast_count + 1;
                if (tlast_count == 1) first_tlast_beat = beats_rx;
            end
        end
    end

    reg warned_x = 1'b0;
    always @(posedge clk_io) begin
        if (aresetn && !warned_x && ((^frame_cnt === 1'bx) || (tvalid === 1'bx) || (cap_status === 1'bx))) begin
            $display("%t  WARNING: X on DUT outputs: cap_status=%b tvalid=%b frame_cnt=%h",
                     $time, cap_status, tvalid, frame_cnt);
            warned_x = 1'b1;
        end
    end

    always @(frame_cnt) $display("%t  frame_cnt = %0d", $time, frame_cnt);

    // ---------------- test sequence ----------------
    initial begin
        $timeformat(-9, 0, " ns", 0);

        // 1. FPGA raises the sensor's ENABLE pin; CLK_IO starts after startup
        #100;
        sensor_enable = 1'b1;
        #STARTUP_NS;
        clk_running = 1'b1;

        // 2. hold the capture logic and FIFO in reset for 16 sensor clocks, then release (from the PS side)
        repeat (16) @(posedge clk_io);
        @(posedge pl_clk0); #1 aresetn = 1'b1;

        // 3. SPI setup (GPIO1 = framesync_out, 80x120, continuous exposure), modeled as a delay
        repeat (20) @(posedge clk_io);

        // 4. handshake: software sets cap_enable and waits for cap_status before starting the sensor
        if (cap_status === 1'b1)
            $display("%t  WARNING: cap_status was already 1 before cap_enable was set", $time);
        #1 cap_enable = 1'b1;
        fork : wait_status
            begin
                wait (cap_status === 1'b1);
                disable wait_status;
            end
            begin
                repeat (100) @(posedge clk_io);
                $display("%t  ERROR: cap_status never went high after cap_enable", $time);
                disable wait_status;
            end
        join

        // 5. START bit = 1: frames start streaming
        $display("%t  sensor started", $time);
        exposing = 1'b1;

        // 6. run until tlast comes out of the FIFO, or until 5 frames past the target
        wait (tlast_count > 0 || frames_sent >= FRAME_TARGET + 5);
        // continuous mode: the sensor keeps streaming; nothing more should reach the FIFO
        repeat (2*FRAME_PERIOD) @(posedge clk_io);
        exposing = 1'b0;                        // START bit = 0: finish the current frame, then stop
        repeat (FRAME_PERIOD + 10) @(posedge clk_io);
        cap_enable = 1'b0;
        repeat (10) @(posedge clk_io);

        $display("--------------------------------------------------");
        $display("frames sent by sensor : %0d", frames_sent);
        $display("frame_cnt at end      : %0d (target %0d)", frame_cnt, FRAME_TARGET);
        $display("words into FIFO       : %0d (expected %0d)", beats_in, FRAME_TARGET*BEATS_PER_FRAME);
        $display("words lost, FIFO full : %0d", beats_dropped);
        $display("words out of FIFO     : %0d (expected %0d)", beats_rx, FRAME_TARGET*BEATS_PER_FRAME);
        $display("data mismatches       : %0d", data_errors);
        $display("tlast pulses          : %0d (expected 1)", tlast_count);
        if (tlast_count > 0)
            $display("first tlast on word   : %0d (expected %0d)", first_tlast_beat, FRAME_TARGET*BEATS_PER_FRAME);
        if (frame_cnt === FRAME_TARGET && beats_in == FRAME_TARGET*BEATS_PER_FRAME && beats_dropped == 0 &&
            beats_rx == FRAME_TARGET*BEATS_PER_FRAME && data_errors == 0 &&
            tlast_count == 1 && first_tlast_beat == FRAME_TARGET*BEATS_PER_FRAME)
            $display("RESULT: PASS");
        else
            $display("RESULT: FAIL");
        $display("--------------------------------------------------");
        $finish;
    end

endmodule
