# create_pblocks.tcl : Example quadrant pblocks (edit coordinates for your device)
# Run after synthesis in the Tcl console, or add to project as a post-synth step.

# NOTE: The slice coordinate ranges below are EXAMPLES. Use 'get_sites' and your
# device view to choose valid ranges for your FPGA. For xc7z020, values like X0..X99/Y0..Y149
# may be appropriate; adjust as needed.

create_pblock TILE0
resize_pblock TILE0 -add {SLICE_X0Y0:SLICE_X49Y74}
add_cells_to_pblock TILE0 [get_cells -hier -filter {NAME =~ *TILE[0]*}]

create_pblock TILE1
resize_pblock TILE1 -add {SLICE_X50Y0:SLICE_X99Y74}
add_cells_to_pblock TILE1 [get_cells -hier -filter {NAME =~ *TILE[1]*}]

create_pblock TILE2
resize_pblock TILE2 -add {SLICE_X0Y75:SLICE_X49Y149}
add_cells_to_pblock TILE2 [get_cells -hier -filter {NAME =~ *TILE[2]*}]

create_pblock TILE3
resize_pblock TILE3 -add {SLICE_X50Y75:SLICE_X99Y149}
add_cells_to_pblock TILE3 [get_cells -hier -filter {NAME =~ *TILE[3]*}]
