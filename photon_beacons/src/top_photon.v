// top_photon.v : Genesys 2 top - uses 200 MHz differential LVDS SYSCLK (AD12/AD11)

module top_photon
(
    // Differential 200 MHz clock from board oscillator (Bank 33)
    input  wire clk_p,              // XDC -> AD12
    input  wire clk_n,              // XDC -> AD11

    input  wire        btn_rst_n,   // active-low pushbutton (center)
    input  wire [3:0]  sw,          // 4 slide switches (SW0..SW3)
    output wire [3:0]  led          // 4 user LEDs (LD0..LD3)
);

    // Convert LVDS clock to single-ended fabric clock
    wire clk_200;
    IBUFDS #(
        .DIFF_TERM("TRUE"),
        .IBUF_LOW_PWR("FALSE")
    ) i_clk_ibufds (
        .I (clk_p),
        .IB(clk_n),
        .O (clk_200)
    );

    // Fabric reset (active high)
    wire rst = ~btn_rst_n;

    photon_beacons #(
        .TILE_COUNT (4),
        .FF_PER_TILE(8192),
        .BLINK_DIV_W(27)           // legacy MSB divider (~1-1.5 Hz at 200 MHz)
        // or exact-rate: .BLINK_DIV_W(0), .CLK_HZ(200_000_000), .BLINK_HZ(1)
    ) u_beacons (
        .clk        (clk_200),
        .rst        (rst),
        .tile_en_sw (sw),
        .led_status (led)
    );
endmodule
