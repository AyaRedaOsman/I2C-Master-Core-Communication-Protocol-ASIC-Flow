# Prime Time Setup
# Change the directories acc. to your project loaction

set Design_name I2C_top

set target_library /home/ICer/logic_project/DB/saed90nm_typ.db

set link_path "* $target_library"

set Netlist_files  /home/ICer/logic_project/PnR/output/I2C_top_for_pt_v.v
set SPEF_files /home/ICer/logic_project/PnR/output/I2C_top.out.spef.spef_scenario
set constrains_file /home/ICer/logic_project/PnR/output/I2C_top.out.sdc


