# project_photon_beacons.tcl : Build a Vivado project for the photon beacons
# Usage (Vivado Tcl):
#   cd <this folder>
#   vivado -mode batch -source project_photon_beacons.tcl -tclargs xc7z020clg400-1

set part_name [lindex $argv 0]
if {$part_name eq ""} {
    set part_name xc7z020clg400-1
}

create_project photon_beacons ./photon_beacons_vivado -part $part_name -force
set_property board_part {} [current_project]

add_files -fileset sources_1 ./src/photon_beacons.v
add_files -fileset sources_1 ./src/top_photon.v
add_files -fileset constrs_1 ./constrs/board_pinout.xdc

# Set top
set_property top top_photon [current_fileset]

# Optional: run synthesis/implementation from tcl
# launch_runs synth_1 -jobs 4
# wait_on_run synth_1
# launch_runs impl_1 -to_step write_bitstream -jobs 4
# wait_on_run impl_1

puts "Project 'photon_beacons' created with part $part_name."

# For Genesys2, alternatively set top to top_photon_genesys2 and add constrs/genesys2.xdc
## set_property top top_photon_genesys2 [current_fileset]
## add_files -fileset constrs_1 ./constrs/genesys2.xdc

# Vivado 2023 settings
set_property target_language Verilog [current_project]
set_property simulator_language Verilog [current_project]
update_compile_order -fileset sources_1
