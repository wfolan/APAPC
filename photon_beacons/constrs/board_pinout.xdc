## Clock Signal
set_property -dict { PACKAGE_PIN AD11 IOSTANDARD LVDS } [get_ports clk_n]
set_property -dict { PACKAGE_PIN AD12 IOSTANDARD LVDS } [get_ports clk_p]
create_clock -period 5.000 -name clk [get_ports clk_p]   ;# 200 MHz sysclk

## Buttons (use center button as active-low reset)
set_property -dict { PACKAGE_PIN R19 IOSTANDARD LVCMOS33 } [get_ports { btn_rst_n }]; # Sch=cpu_resetn (BTNC)

# LEDs (use LD0..LD3)
set_property -dict { PACKAGE_PIN U30 IOSTANDARD LVCMOS33 } [get_ports { led[0] }]; # Sch=led[0]
set_property -dict { PACKAGE_PIN U29 IOSTANDARD LVCMOS33 } [get_ports { led[1] }]; # Sch=led[1]
set_property -dict { PACKAGE_PIN V20 IOSTANDARD LVCMOS33 } [get_ports { led[2] }]; # Sch=led[2]
set_property -dict { PACKAGE_PIN V26 IOSTANDARD LVCMOS33 } [get_ports { led[3] }]; # Sch=led[3]

## Switches (SW0..SW3 on VADJ banks -> 1.2V default; keep LVCMOS12 unless you changed VADJ)
set_property -dict { PACKAGE_PIN G19 IOSTANDARD LVCMOS12 } [get_ports { sw[0] }]; # Sch=sw[0]
set_property -dict { PACKAGE_PIN G25 IOSTANDARD LVCMOS12 } [get_ports { sw[1] }]; # Sch=sw[1]
set_property -dict { PACKAGE_PIN H24 IOSTANDARD LVCMOS12 } [get_ports { sw[2] }]; # Sch=sw[2]
set_property -dict { PACKAGE_PIN K19 IOSTANDARD LVCMOS12 } [get_ports { sw[3] }]; # Sch=sw[3]## Clock Signal
set_property -dict { PACKAGE_PIN AD11 IOSTANDARD LVDS } [get_ports clk_n]
set_property -dict { PACKAGE_PIN AD12 IOSTANDARD LVDS } [get_ports clk_p]
create_clock -period 5.000 -name clk [get_ports clk_p]   ;# 200 MHz sysclk

