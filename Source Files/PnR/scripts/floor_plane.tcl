###########################################################################
#%%%%%%%%%%%pre_floorplan_check %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
###########################################################################
check_design -checks dp_pre_floorplan > ./report/check_pre_floorplan.rpt 
############################################################################
#%%%%%%%%%%%ROuting_direction%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
############################################################################
set_attribute [get_layers M1] routing_direction horizontal
set_attribute [get_layers M2] routing_direction vertical
set_attribute [get_layers M3] routing_direction horizontal
set_attribute [get_layers M4] routing_direction vertical
set_attribute [get_layers M5] routing_direction horizontal
set_attribute [get_layers M6] routing_direction vertical
set_attribute [get_layers M7] routing_direction horizontal
set_attribute [get_layers M8] routing_direction vertical
set_attribute [get_layers M9] routing_direction horizontal

set_ignored_layers -max_routing_layer M9 -min_routing_layer M2
###########################################################################
#%%%%%%%%%%%floor_planing %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
###########################################################################
initialize_floorplan -core_utilization 0.6 -core_offset {15 15}
###########################################################################
#%%%%%%%%%%%%%%%%%%%%%%%create_tracks%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
###########################################################################
create_track -layer M1 -dir Y
create_track -layer M2 -dir X
create_track -layer M3 -dir Y
create_track -layer M4 -dir X
create_track -layer M5 -dir Y
create_track -layer M6 -dir X
create_track -layer M7 -dir Y
create_track -layer M8 -dir X
create_track -layer M9 -dir Y

report_tracks > ./report/tracks.rpt
#remove_tracks -all
save_block -as floorplanning
###########################################################################
###########################################################################
###########################################################################
