############################################################################
###############################Final_Writing################################
############################################################################
set DESIGN_NAME I2C_top
############################################################################
###################### Netlist after physical synthesis#####################
write_verilog  ./output/${DESIGN_NAME}_for_pt_v.v
#################################SDC_OUT####################################
write_sdc -output ./output/${DESIGN_NAME}.out.sdc
################################# SPEF_OUT##################################
write_parasitics -format SPEF -output ./output/${DESIGN_NAME}.out.spef
##########GDS_OUT

set GDS_MAP_FILE /home/ICer/logic_project/GDS/saed90nm.gdsout.map

set STD_CELL_GDS /home/ICer/logic_project/GDS/saed90nm.gds

write_gds \
-view design \
-lib_cell_view frame \
-output_pin all \
-fill include \
-exclude_empty_block \
-long_names \
-layer_map "$GDS_MAP_FILE" \
-keep_data_type \
-merge_files "$STD_CELL_GDS" \
./output/${DESIGN_NAME}.gds

############################################################################
save_block -as final
############################################################################
############################################################################
