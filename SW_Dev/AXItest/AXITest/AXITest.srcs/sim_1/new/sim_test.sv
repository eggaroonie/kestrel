`timescale 1ns / 1ps

module tb_capture_test1;

    // Signals the testbench drives are reg; signals the DUT drives are wire
    reg         clk              = 0;
    reg         rstn             = 0;
    reg         cap_enable       = 0;
    reg  [31:0] frame_cnt_target = 0;
    wire        cap_status;
    wire [31:0] frame_cnt;

    // Device under test, with a short TICK 
    capture_test1 #(.TICK(10)) TEST(
        .clk(clk),
        .rstn(rstn),
        .cap_enable(cap_enable),
        .frame_cnt_target(frame_cnt_target),
        .cap_status(cap_status),
        .frame_cnt(frame_cnt)
    );

    // always wait #5 ns then flip that clock signal so we get a rising edge
    // 100MHz
    initial clk = 0;
    always #5 clk = ~clk;
    initial begin
        // repeat at clock posedge (5) times
        // just wait for 5 clock edges
        // if you want more use begin and end
        repeat (5) @(posedge clk);
        rstn <= 1;

        // ---- Test 1: capture exactly 5 frames ----
        repeat (2) @(posedge clk);
        frame_cnt_target <= 10;
        cap_enable       <= 1;
        
        wait (cap_status == 1);   // capture started
        wait (cap_status == 0);   // capture finished on its own
        $display("Test 1: frame_cnt = %0d (expected 10)", frame_cnt);
        
        // ---- Test 2: target 0 = run until enable is cleared ----
        cap_enable <= 0;
        repeat (5) @(posedge clk);
        frame_cnt_target <= 0;
        cap_enable       <= 1;

        repeat (100) @(posedge clk);   // let about 9 frames go by
        cap_enable <= 0;
        wait (cap_status == 0);
        $display("Test 2: stopped at frame_cnt = %0d (expected about 9)", frame_cnt);

        repeat (10) @(posedge clk);
        $finish;
    end

endmodule