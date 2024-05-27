
###############################################################################
###################CONNECTING_CORE_PADS########################################
###############################################################################
############################Checks########################################
check_route > ./report/check_route.rpt
check_pg_drc > ./report/DRCs.rpt
check_pg_connectivity > ./report/connectivity.rpt
check_pg_missing_vias > ./report/missing_vias.rpt
verify_pg_nets > ./report/verifying_nets.rpt
check_lvs > ./report/LVS.rpt
#route_detail -initial_drc_from_input true -incremental true
#route_eco -open_net_driven true
#optimize_routes
############################################
#set_app_options -name refine_opt.hold.effort -value high
#refine_opt



