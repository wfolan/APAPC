// top_photon.v : board top wrapper with simple IO (clk, btn/rst, 4 switches, 4 LEDs)
module top_photon
(
// On-board differential 200 MHz oscillator (pins AD12/AD11 per master XDC)
    input  wire clk_p,              // connect to AD12 in XDC
    input  wire clk_n,              // connect to AD11 in XDC

    input  wire        btn_rst_n,   // active-low pushbutton reset (use LVCMOS12)
    input  wire [3:0]  sw,          // 4 slide switches (use LVCMOS12)
    output wire [3:0]  led          // 4 user LEDs (use LVCMOS12)
);

    // Convert differential LVDS clock to single-ended fabric clock
    wire clk_200MHz;
    IBUFDS #(
        .DIFF_TERM("TRUE"),
        .IBUF_LOW_PWR("FALSE")
    ) i_clk_ibufds (
        .I (clk_p),
        .IB(clk_n),
        .O (clk_200MHz)
    );

    // Optional: clock divide if you want ~100 MHz instead of 200 MHz
    // For now just pass it through.
    wire clk = clk_200MHz;

    // Active-high reset for fabric
    wire rst = ~btn_rst_n;

    photon_beacons #(
        .TILE_COUNT (4),
        .FF_PER_TILE(8192),
        .BLINK_DIV_W(27)    // wide enough for ~1 Hz blink from 100-200 MHz
    ) u_beacons (
        .clk        (clk),
        .rst        (rst),
        .tile_en_sw (sw[3:0]),
        .led_status (led[3:0])
    );

endmodule