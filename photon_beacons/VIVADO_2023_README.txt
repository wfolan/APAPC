Vivado 2023 quickstart (tested with 2023.2)

Command-line:
  vivado -mode batch -source project_photon_beacons.tcl -tclargs xc7k325tffg900-2
  vivado -mode batch -source project_hummingbird_mvp.tcl -tclargs xc7k325tffg900-2

Then open the created project in GUI:
  - Set Top to the *Genesys2* variant (top_photon_genesys2 or top_hb_gemm_genesys2)
  - Add constrs/genesys2.xdc and the official Digilent Genesys-2 Master XDC
  - Uncomment the LVDS 200 MHz clock, button, switches, and LEDs in the Master XDC
  - Run Synthesis/Implementation/Bitstream

Notes:
  - Scripts set target_language and simulator_language to Verilog for 2023.x.
  - No IP cores are used, so no catalog/version lock is needed.
