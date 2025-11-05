// top_photon_genesys2.v : Genesys 2 variant using differential 200 MHz clock (LVDS)
module top_photon_genesys2
(
    input  wire sysclk_p,    // 200 MHz LVDS oscillator P (Bank 33 MRCC)
    input  wire sysclk_n,    // 200 MHz LVDS oscillator N (Bank 33 MRCC)
    input  wire btn_rst_n,   // active-low pushbutton
    input  wire [3:0] sw,    // use SW0..SW3 for tile enables
    output wire [3:0] led    // use LD0..LD3 for status
);
    wire rst = ~btn_rst_n;

    // Differential buffer to single-ended global clock
    wire clk_200;
    IBUFDS #(.DIFF_TERM("TRUE"), .IOSTANDARD("LVDS_25"))
    i_ibufds_sysclk (.I(sysclk_p), .IB(sysclk_n), .O(clk_200));

    // Optionally insert an MMCM to derive desired core clk (100-400 MHz). For now, use 200 MHz directly.
    wire clk = clk_200;

    photon_beacons #(
        .TILE_COUNT(4),
        .FF_PER_TILE(8192),
        .BLINK_DIV_W(27)
    ) u_beacons (
        .clk(clk),
        .rst(rst),
        .tile_en_sw(sw[3:0]),
        .led_status(led[3:0])
    );
endmodule
