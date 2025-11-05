## Genesys 2 placeholder constraints for photon beacons (USE WITH MASTER XDC)
## Use the Digilent Genesys-2-Master.xdc and *uncomment* the relevant nets for the
## 200 MHz differential oscillator, buttons, switches, and LEDs, mapping them to these ports.

## Differential 200 MHz oscillator -> sysclk_p/n (LVDS)
## Example (from Master XDC):
## set_property PACKAGE_PIN AD12 [get_ports sysclk_p]
## set_property PACKAGE_PIN AD11 [get_ports sysclk_n]
## set_property IOSTANDARD LVDS_25 [get_ports {sysclk_p sysclk_n}]
## set_property DIFF_TERM TRUE [get_ports {sysclk_p sysclk_n}]
## create_clock -name sysclk200 -period 5.000 [get_ports sysclk_p]

## Reset button (active-low), e.g., BTNC/BTNU; map to btn_rst_n
## set_property PACKAGE_PIN <BTN_PIN> [get_ports btn_rst_n]
## set_property IOSTANDARD LVCMOS25 [get_ports btn_rst_n]
## set_property PULLUP true [get_ports btn_rst_n]

## Switches SW0..SW3 -> sw[3:0]
## set_property PACKAGE_PIN <SW0_PIN> [get_ports {sw[0]}]
## set_property PACKAGE_PIN <SW1_PIN> [get_ports {sw[1]}]
## set_property PACKAGE_PIN <SW2_PIN> [get_ports {sw[2]}]
## set_property PACKAGE_PIN <SW3_PIN> [get_ports {sw[3]}]
## set_property IOSTANDARD LVCMOS25 [get_ports sw[*]]

## LEDs LD0..LD3 -> led[3:0]
## set_property PACKAGE_PIN <LD0_PIN> [get_ports {led[0]}]
## set_property PACKAGE_PIN <LD1_PIN> [get_ports {led[1]}]
## set_property PACKAGE_PIN <LD2_PIN> [get_ports {led[2]}]
## set_property PACKAGE_PIN <LD3_PIN> [get_ports {led[3]}]
## set_property IOSTANDARD LVCMOS25 [get_ports led[*]]
