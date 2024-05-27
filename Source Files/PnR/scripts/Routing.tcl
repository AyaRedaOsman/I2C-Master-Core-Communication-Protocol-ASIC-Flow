###############################################################################
#%%%%%%%%%%%%%%%%%%Routing%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
###############################################################################

#############Auto_Routing#################################
route_auto > ./report/routing_auto.rpt
report_timing -max_paths 50 -delay_type max > ./report/setup_routing_auto.rpt
report_timing -max_paths 50 -delay_type min > ./report/hold_routing_auto.rpt
#############OPT_Routing#################################
route_opt > ./report/routing_opt.rpt
report_timing -max_paths 50 -delay_type max > ./report/setup_routing_opt.rpt
report_timing -max_paths 50 -delay_type min > ./report/hold_routing_opt.rpt
save_block -as routing
###############################################################################
###############################################################################
###############################################################################
