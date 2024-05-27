################################################################################
#
# Design name:  CTS
#
# Created by icc2 write_sdc on Sun May 19 23:51:55 2024
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: default
# Corner: default
# Scenario: default

# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 16
create_clock -name clk -period 20 -waveform {0 10} [get_ports {wb_clk_i}]
set_propagated_clock [get_clocks {clk}]
set_load -pin_load 0.008 [get_ports {wb_dat_o[7]}]
set_load -pin_load 0.008 [get_ports {wb_dat_o[6]}]
set_load -pin_load 0.008 [get_ports {wb_dat_o[5]}]
set_load -pin_load 0.008 [get_ports {wb_dat_o[4]}]
set_load -pin_load 0.008 [get_ports {wb_dat_o[3]}]
set_load -pin_load 0.008 [get_ports {wb_dat_o[2]}]
set_load -pin_load 0.008 [get_ports {wb_dat_o[1]}]
set_load -pin_load 0.008 [get_ports {wb_dat_o[0]}]
set_load -pin_load 0.008 [get_ports {wb_ack_o}]
set_load -pin_load 0.008 [get_ports {wb_inta_o}]
set_load -pin_load 0.008 [get_ports {scl_pad_o}]
set_load -pin_load 0.008 [get_ports {scl_padoen_o}]
set_load -pin_load 0.008 [get_ports {sda_pad_o}]
set_load -pin_load 0.008 [get_ports {sda_padoen_o}]
# Set latency for io paths.
# -origin user
set_clock_latency -min 0.264905 [get_clocks {clk}]
# -origin user
set_clock_latency -max 0.289634 [get_clocks {clk}]
# Set propagated on clock sources to avoid removing latency for IO paths.
set_propagated_clock  [get_ports {wb_clk_i}]
set_clock_uncertainty 0.3 [get_clocks {clk}]
set_clock_transition 0.2 [get_clocks {clk}]
# /home/ICer/logic_project/PnR/scripts/CTS.tcl, line 39
set_driving_cell -lib_cell NBUFFX4 [get_ports {wb_clk_i}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 77; \
#   /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 78
set_input_transition 0.2 [get_ports {wb_rst_i}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 77; \
#   /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 78
set_input_transition 0.2 [get_ports {arst_i}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 77; \
#   /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 78
set_input_transition 0.2 [get_ports {wb_adr_i[2]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 77; \
#   /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 78
set_input_transition 0.2 [get_ports {wb_adr_i[1]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 77; \
#   /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 78
set_input_transition 0.2 [get_ports {wb_adr_i[0]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 77; \
#   /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 78
set_input_transition 0.2 [get_ports {wb_dat_i[7]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 77; \
#   /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 78
set_input_transition 0.2 [get_ports {wb_dat_i[6]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 77; \
#   /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 78
set_input_transition 0.2 [get_ports {wb_dat_i[5]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 77; \
#   /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 78
set_input_transition 0.2 [get_ports {wb_dat_i[4]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 77; \
#   /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 78
set_input_transition 0.2 [get_ports {wb_dat_i[3]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 77; \
#   /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 78
set_input_transition 0.2 [get_ports {wb_dat_i[2]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 77; \
#   /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 78
set_input_transition 0.2 [get_ports {wb_dat_i[1]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 77; \
#   /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 78
set_input_transition 0.2 [get_ports {wb_dat_i[0]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 77; \
#   /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 78
set_input_transition 0.2 [get_ports {wb_we_i}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 77; \
#   /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 78
set_input_transition 0.2 [get_ports {wb_stb_i}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 77; \
#   /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 78
set_input_transition 0.2 [get_ports {wb_cyc_i}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 77; \
#   /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 78
set_input_transition 0.2 [get_ports {scl_pad_i}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 77; \
#   /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 78
set_input_transition 0.2 [get_ports {sda_pad_i}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 77; \
#   /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 78
set_input_transition 0.2 [get_ports {VDD}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 77; \
#   /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 78
set_input_transition 0.2 [get_ports {VSS}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 37
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {wb_clk_i}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 38
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {wb_rst_i}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 39
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {arst_i}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 40
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {wb_adr_i[2]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 40
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {wb_adr_i[1]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 40
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {wb_adr_i[0]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 41
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {wb_dat_i[7]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 41
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {wb_dat_i[6]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 41
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {wb_dat_i[5]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 41
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {wb_dat_i[4]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 41
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {wb_dat_i[3]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 41
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {wb_dat_i[2]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 41
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {wb_dat_i[1]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 41
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {wb_dat_i[0]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 55
set_output_delay -clock [get_clocks {clk}] 2 [get_ports {wb_dat_o[7]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 55
set_output_delay -clock [get_clocks {clk}] 2 [get_ports {wb_dat_o[6]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 55
set_output_delay -clock [get_clocks {clk}] 2 [get_ports {wb_dat_o[5]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 55
set_output_delay -clock [get_clocks {clk}] 2 [get_ports {wb_dat_o[4]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 55
set_output_delay -clock [get_clocks {clk}] 2 [get_ports {wb_dat_o[3]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 55
set_output_delay -clock [get_clocks {clk}] 2 [get_ports {wb_dat_o[2]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 55
set_output_delay -clock [get_clocks {clk}] 2 [get_ports {wb_dat_o[1]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 55
set_output_delay -clock [get_clocks {clk}] 2 [get_ports {wb_dat_o[0]}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 42
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {wb_we_i}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 43
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {wb_stb_i}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 44
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {wb_cyc_i}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 56
set_output_delay -clock [get_clocks {clk}] 2 [get_ports {wb_ack_o}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 57
set_output_delay -clock [get_clocks {clk}] 2 [get_ports {wb_inta_o}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 47
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {scl_pad_i}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 58
set_output_delay -clock [get_clocks {clk}] 2 [get_ports {scl_pad_o}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 59
set_output_delay -clock [get_clocks {clk}] 2 [get_ports {scl_padoen_o}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 48
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {sda_pad_i}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 60
set_output_delay -clock [get_clocks {clk}] 2 [get_ports {sda_pad_o}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 61
set_output_delay -clock [get_clocks {clk}] 2 [get_ports {sda_padoen_o}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 45
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {VDD}]
# /home/ICer/logic_project/PnR/Constraints/constrains_placement.tcl, line 46
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {VSS}]
