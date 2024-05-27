###########################################################################
#%%%%%%%%%%%%%%%%%cell_placemet%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
###########################################################################
set_app_options -name opt.timing.effort -value high
check_hier_design -stage pre_placement > ./report/check_pre_placement.rpt 
set_app_options  -name place.coarse.continue_on_missing_scandef -value true
place_opt > ./report/place_opt.rpt
check_legality -verbos > ./report/legality.rpt
report_congestion > ./report/congestion.rpt
report_placement > ./report/report_placement.rpt
report_timing -max_paths 100 -delay_type max > ./report/setup_placement.rpt
report_timing -max_paths 100 -delay_type min > ./report/hold_placement.rpt
save_block -as cells_placement
###########################################################################
###########################################################################
###########################################################################

