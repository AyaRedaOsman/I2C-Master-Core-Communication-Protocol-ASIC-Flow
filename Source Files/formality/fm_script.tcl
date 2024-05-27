

set synopsys_auto_setup true

# Formality Setup File


set_svf "/home/ICer/logic_project/syn/default.svf"

#################        Adding search path              ##################

set Tech  "/home/ICer/logic_project/DB/saed90nm_typ.db"


########################################################################
lappend search_path /home/vlsi/logic_project/RTL
lappend search_path /home/vlsi/logic_project/Formallity

########################  Read Reference Design Files ######################## 
read_sverilog -container Ref    i2c_master_bit_ctrl.v
read_sverilog -container Ref    i2c_master_byte_ctrl.v
read_sverilog -container Ref    i2c_master_defines.v
read_sverilog -container Ref    i2c_master_top.v
read_sverilog -container Ref    timescale.v
######################## Read Reference technology libs ######################## 

read_db -container Ref [list $Tech]

######################## set the top Reference Design ######################## 

set_reference_design i2c_master_top
set_top i2c_master_top

####################### Read Implementation tech libs ######################## 

read_db -container Imp [list $Tech]

#################### Read Implementation Design Files ######################## 

read_verilog -container Imp -netlist "/home/vlsi/logic_project/syn/syn_results/netlist.v"

####################  set the top Implementation Design ######################

set_implementation_design i2c_master_top
set_top i2c_master_top

######################## matching Compare points #############################

match

################################### verify ################################### 

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

############################### Reporting ####################################
report_passing_points > "passing_points.rpt"
report_failing_points > "failing_points.rpt"
report_aborted_points > "aborted_points.rpt"
report_unverified_points > "unverified_points.rpt"


start_gui
