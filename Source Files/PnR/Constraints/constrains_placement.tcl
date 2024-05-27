define_name_rules no_case -case_insensitive
change_names -rule no_case -hierarchy
change_names -rule verilog -hierarchy
#change_names -port_name_rules  -hierarchy
set verilogout_no_tri true
set verilogout_equation false
#set_app_option opt.port.eliminate_verilog_assign true
set_app_options -list {opt.port.eliminate_verilog_assign true}


######### Master Clock Definitions ########### 
set CLK_PER 20
set max_uncertainty 0.3
set min_uncertainty 0.3

create_clock -period $CLK_PER -name clk     -waveform "0 10" [get_ports {wb_clk_i}]

set_dont_touch_network [all_clocks]

set_clock_uncertainty -setup $max_uncertainty [all_clocks]
set_clock_uncertainty -hold  $min_uncertainty [all_clocks] 

set_clock_transition 0.2 [all_clocks]



##### set input/output delay/Load on ports ####

set in_factor 0.1
set out_factor 0.1

set in_delay  [expr $in_factor   * $CLK_PER]
set out_delay [expr $out_factor  * $CLK_PER]

#Constrain Input Paths

set_input_delay $in_delay     -clock  clk     [get_ports wb_clk_i]
set_input_delay $in_delay     -clock  clk     [get_ports wb_rst_i] 
set_input_delay $in_delay     -clock  clk     [get_ports arst_i ]  
set_input_delay $in_delay     -clock  clk     [get_ports wb_adr_i]    
set_input_delay $in_delay     -clock  clk     [get_ports wb_dat_i] 
set_input_delay $in_delay     -clock  clk     [get_ports wb_we_i]  
set_input_delay $in_delay     -clock  clk     [get_ports wb_stb_i]
set_input_delay $in_delay     -clock  clk     [get_ports wb_cyc_i] 
set_input_delay $in_delay     -clock  clk     [get_ports VDD]
set_input_delay $in_delay     -clock  clk     [get_ports VSS]
set_input_delay $in_delay     -clock  clk     [get_ports scl_pad_i]
set_input_delay $in_delay     -clock  clk     [get_ports sda_pad_i]

 	


#Constrain Output Paths

set_output_delay $out_delay  -clock  clk  [get_ports wb_dat_o]  
set_output_delay $out_delay  -clock  clk  [get_ports wb_ack_o]    
set_output_delay $out_delay  -clock  clk  [get_ports wb_inta_o]   
set_output_delay $out_delay  -clock  clk  [get_ports scl_pad_o]   
set_output_delay $out_delay  -clock  clk  [get_ports scl_padoen_o]  
set_output_delay $out_delay  -clock  clk  [get_ports sda_pad_o]
set_output_delay $out_delay  -clock  clk  [get_ports sda_padoen_o]  

  
###############      Boundary condition      ##################
#Constrain Output LOAD #
set Min_cap 0.008                  
set Max_cap 0.008

set_load -max $Max_cap [all_outputs]   
set_load -min $Min_cap [all_outputs]

#try transition with 100ps#

set max_trans 0.2 
set min_trans 0.2

set_input_transition -max $max_trans  [remove_from_collection [all_inputs] [get_ports {clk}]]
set_input_transition -min $min_trans  [remove_from_collection [all_inputs] [get_ports {clk}]]

#maximum fanout#
#set_max_fanout 25 $top_module

#set_dont_touch_network []#


set_max_area 0

  


