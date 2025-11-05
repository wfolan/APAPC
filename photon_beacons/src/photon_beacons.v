// photon_beacons.v : parameterized toggle-fabric tiles with blink gating
module photon_beacons #
(
    parameter integer TILE_COUNT   = 4,
    parameter integer FF_PER_TILE  = 8192,
    parameter integer BLINK_DIV_W  = 27   // choose wide enough for ~1 Hz from 100-200 MHz
)
(
    input  wire                     clk,
    input  wire                     rst,   // active high
    input  wire [TILE_COUNT-1:0]    tile_en_sw,
    output wire [TILE_COUNT-1:0]    led_status
);

    // Slow blink gate
    reg [BLINK_DIV_W-1:0] divr = {BLINK_DIV_W{1'b0}};
    always @(posedge clk or posedge rst) begin
        if (rst) divr <= {BLINK_DIV_W{1'b0}};
        else     divr <= divr + 1'b1;
    end
    wire blink_gate = divr[BLINK_DIV_W-1];

    genvar t;
    generate
        for (t = 0; t < TILE_COUNT; t = t + 1) begin : TILE
            wire gate = tile_en_sw[t] & blink_gate;

            // Big toggle register bank
            (* keep = "true" *) reg [FF_PER_TILE-1:0] togglers = {FF_PER_TILE{1'b0}};
            always @(posedge clk or posedge rst) begin
                if (rst)         togglers <= {FF_PER_TILE{1'b0}};
                else if (gate)   togglers <= ~togglers; // maximal switching
                else             togglers <= togglers;  // hold (dark)
            end

            assign led_status[t] = gate;
        end
    endgenerate

endmodule
