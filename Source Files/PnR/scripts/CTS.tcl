###############################################################################
#%%%%%%%%%%%%%%%%%%%%%%%CTS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
###############################################################################
#####set_lib_cell_purpose -exclude cts [all]######
# CTS

set CTS_CELLS [get_lib_cells "*/NBUFFX2 */NBUFFX4 */NBUFFX8 "]

##################################NDR############################################

set CTS_NDR_MIN_ROUTING_LAYER	"M4"
set CTS_NDR_MAX_ROUTING_LAYER	"M5"
set CTS_LEAF_NDR_MIN_ROUTING_LAYER	"M1"
set CTS_LEAF_NDR_MAX_ROUTING_LAYER	"M5"
set CTS_NDR_RULE_NAME 		"cts_w2_s2_vlg"
#set CTS_LEAF_NDR_RULE_NAME	"cts_w1_s2"
###########################################################################################
create_routing_rule $CTS_NDR_RULE_NAME\
		-default_reference_rule \
		-taper_distance 0.4 \
		-driver_taper_distance 0.4 \
  	 	-widths   {M3 0.16 M4 0.32 M5 0.32} \
  	 	-spacings {M3 0.16 M4 0.32 M5 0.32}
                

set_clock_routing_rules -rules $CTS_NDR_RULE_NAME \
		-min_routing_layer $CTS_NDR_MIN_ROUTING_LAYER \
		-max_routing_layer $CTS_NDR_MAX_ROUTING_LAYER
		
report_routing_rules -verbose

report_clock_routing_rules

#Sink pins will not follows NDRs
set_clock_routing_rules -net_type sink -default_rule -min_routing_layer M1 -max_routing_layer M2

#DRC 
report_ports -verbose [get_ports *clk*]
set_driving_cell -scenarios [all_scenarios] -lib_cell NBUFFX4 [get_ports *clk*]


set_app_options -name time.remove_clock_reconvergence_pessimism -value true
report_clock_settings

#
set_clock_tree_options -target_skew 0.5 -clock [get_clocks *]
set_clock_tree_options -target_latency 0.25  -clock [get_clocks *]
#synthesize_clock_trees
clock_opt > ./report/clock_opt.rpt
report_timing -max_paths 10 -delay_type max -nets -input_pins -transition_time -path_type full_clock_expanded -capacitance > ./report/setup_CTS.rpt
report_timing -max_paths 10 -delay_type min -nets -input_pins -transition_time -path_type full_clock_expanded -capacitance > ./report/hold_CTS.rpt
# clock_opt -from final_opto > ./report/clock_opt.rpt               #optimization
#report_timing -max_paths 100 -delay_type max > ./report/setup_CTS_opt.rpt
#report_timing -max_paths 100 -delay_type min > ./report/hold_CTS_opt.rpt
save_block -as CTS
###############################################################################
###############################################################################
###############################################################################


