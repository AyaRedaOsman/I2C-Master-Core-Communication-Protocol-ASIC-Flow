############################################################################
#%%%%%%%%%%%%%%%%%%%%%%%%%%%create_log%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
############################################################################
#icc2_shell -f ./scripts/Design_setup.tcl | tee syn.log
gui_start
############################################################################
#%%%%%%%%%%%design_Setup%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
############################################################################
lappend search_path /home/ICer/logic_project/PnR/library_manager
lappend search_path /home/ICer/logic_project/LEF
lappend search_path /home/ICer/logic_project/Tech
lappend search_path /home/ICer/logic_project/GDS
lappend search_path /home/ICer/logic_project/LIB
lappend search_path /home/ICer/logic_project/syn/syn_results
lappend search_path /home/ICer/logic_project/syn/syn_scripts
############################################################################
#%%%%%%%%%%%%Create_libs%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
############################################################################
create_lib -technology astroTechFile.tf -ref_libs "saed90nm_typ.ndm" I2C
set_ref_libs -add library_manager/I2C_physical_only.ndm
read_verilog netlist.v
link_block -force
get_libs
############################################################################
############################################################################
############################################################################
