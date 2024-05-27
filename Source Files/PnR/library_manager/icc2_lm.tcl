#%%%%%%%%%%%library_manager%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#icc2_lm_shell | tee ./icc2.log #first create log folder
lappend search_path /home/ICer/logic_project/Tech
lappend search_path /home/ICer/logic_project/LEF
lappend search_path /home/ICer/logic_project/DB

#create_workspace -technology /home/ICer/Asic_pulpino/Technology/tsmcn65_6lmT1.tf -flow normal pulpino
create_workspace -technology /home/ICer/logic_project/Tech/astroTechFile.tf -flow exploration I2C
read_lef [glob /home/ICer/logic_project/LEF/*.lef]
read_db [glob /home/ICer/logic_project/DB/*.db]

group_libs        
check_workspace   
commit_workspace
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

