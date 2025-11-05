## 200 MHz differential LVDS system clock (Bank 33)
## From Genesys 2 reference: oscillator on AD12/AD11 (MRCC) -> LVDS_25
set_property PACKAGE_PIN AD12 [get_ports clk_p]
set_property PACKAGE_PIN AD11 [get_ports clk_n]
set_property IOSTANDARD LVDS_25 [get_ports {clk_p clk_n}]
create_clock -name sysclk200 -period 5.000 [get_ports clk_p]

## Pushbutton reset (active-low) - on a VADJ bank: use LVCMOS12
## (Pick the specific PACKAGE_PIN from the Genesys-2-Master.xdc and map to btn_rst_n)
set_property PACKAGE_PIN <BTN_RST_PIN> [get_ports btn_rst_n]
set_property IOSTANDARD LVCMOS12       [get_ports btn_rst_n]
set_property PULLUP true               [get_ports btn_rst_n]

## Slide switches SW0..SW3 - VADJ bank (LVCMOS12). Use any 4 of the 8 SW pins.
set_property PACKAGE_PIN <SW0_PIN> [get_ports {sw[0]}]
set_property PACKAGE_PIN <SW1_PIN> [get_ports {sw[1]}]
set_property PACKAGE_PIN <SW2_PIN> [get_ports {sw[2]}]
set_property PACKAGE_PIN <SW3_PIN> [get_ports {sw[3]}]
set_property IOSTANDARD LVCMOS12   [get_ports {sw[*]}]

## User LEDs LD0..LD3 - VADJ bank (LVCMOS12). Use any 4 of the 8 LED pins.
set_property PACKAGE_PIN <LED0_PIN> [get_ports {led[0]}]
set_property PACKAGE_PIN <LED1_PIN> [get_ports {led[1]}]
set_property PACKAGE_PIN <LED2_PIN> [get_ports {led[2]}]
set_property PACKAGE_PIN <LED3_PIN> [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS12    [get_ports {led[*]}]