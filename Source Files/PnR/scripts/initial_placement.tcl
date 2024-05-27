
###########################################################################
#%%%%%%%%%%%Reading_tluplus%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
###########################################################################
read_parasitic_tech -tlup /home/ICer/logic_project/Tech/saed90nm_1p9m_1t_Cmin.tluplus -layermap /home/ICer/logic_project/Tech/tech2itf.map -name best
read_parasitic_tech -tlup /home/ICer/logic_project/Tech/saed90nm_1p9m_1t_Cmax.tluplus -layermap /home/ICer/logic_project/Tech/tech2itf.map -name worst
set_parasitic_parameters -early_spec best -late_spec worst
###########################################################################
#%%%%%%%%%%%Reading_constraints%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
###########################################################################
source ./Constraints/constrains_placement.tcl
###########################################################################
#%%%%%%%%%%%%%%%%%%%%initial_placement%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
###########################################################################
create_placement -floorplan -congestion
legalize_placement 
set_app_options -name plan.pins.incremental -value false -block [current_block] 
place_pins -self 
report_timing -max_paths 100 -delay_type max -nets -input_pins -transition_time -path_type full_clock_expanded -capacitance > ./report/setup_initial_placement.rpt
report_timing -max_paths 100 -delay_type min -nets -input_pins -transition_time -path_type full_clock_expanded -capacitance > ./report/hold_initial_placement.rpt
save_block -as initial_placement
###########################################################################
###########################################################################
###########################################################################
