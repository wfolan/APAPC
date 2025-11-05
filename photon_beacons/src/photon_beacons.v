// photon_beacons.v : parameterized toggle fabric (legacy divider + exact-rate option)
module photon_beacons #(
    parameter integer TILE_COUNT   = 4,
    parameter integer FF_PER_TILE  = 8192,
    // Legacy divider-width param (kept for backward compatibility)
    parameter integer BLINK_DIV_W  = 27,
    // Exact-rate params (used when BLINK_DIV_W == 0)
    parameter integer CLK_HZ       = 200_000_000,
    parameter integer BLINK_HZ     = 1
)(
    input  wire                   clk,
    input  wire                   rst,          // active high
    input  wire [TILE_COUNT-1:0]  tile_en_sw,
    output wire [TILE_COUNT-1:0]  led_status
);

    // ---- Blink gate (legacy MSB or exact 50% duty) ----
    wire blink_gate;

    generate
      if (BLINK_DIV_W > 0) begin : USE_LEGACY
        reg [BLINK_DIV_W-1:0] divr = {BLINK_DIV_W{1'b0}};
        always @(posedge clk or posedge rst) begin
            if (rst) divr <= {BLINK_DIV_W{1'b0}};
            else     divr <= divr + 1'b1;
        end
        assign blink_gate = divr[BLINK_DIV_W-1];
      end else begin : USE_EXACT
        localparam integer HALF_CYCLES = (CLK_HZ/(2*BLINK_HZ) > 0) ? (CLK_HZ/(2*BLINK_HZ)) : 1;
        localparam integer CNT_W       = (HALF_CYCLES <= 1) ? 1 : $clog2(HALF_CYCLES);
        reg [CNT_W-1:0] cnt = {CNT_W{1'b0}};
        reg gate_r = 1'b0;
        always @(posedge clk or posedge rst) begin
            if (rst) begin
                cnt    <= {CNT_W{1'b0}};
                gate_r <= 1'b0;
            end else if (cnt == HALF_CYCLES-1) begin
                cnt    <= {CNT_W{1'b0}};
                gate_r <= ~gate_r;
            end else begin
                cnt <= cnt + 1'b1;
            end
        end
        assign blink_gate = gate_r;
      end
    endgenerate

    genvar t;
    generate
      for (t = 0; t < TILE_COUNT; t = t + 1) begin : TILE
        wire gate = tile_en_sw[t] & blink_gate;

        // Large toggle bank for emission; discourage optimization
        (* keep = "true", dont_touch = "true", shreg_extract = "no" *)
        reg [FF_PER_TILE-1:0] togglers = {FF_PER_TILE{1'b0}};
        always @(posedge clk or posedge rst) begin
            if (rst)         togglers <= {FF_PER_TILE{1'b0}};
            else if (gate)   togglers <= ~togglers;   // max internal switching
            else             togglers <= togglers;    // hold
        end

        assign led_status[t] = gate;  // shows enable & blink window
      end
    endgenerate
endmodule
