###################################################################

# Created by write_sdc on Mon May 20 01:41:12 2024

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_max_area 0
set_load -pin_load 0.008 [get_ports {wb_dat_o[7]}]
set_load -pin_load 0.008 [get_ports {wb_dat_o[6]}]
set_load -pin_load 0.008 [get_ports {wb_dat_o[5]}]
set_load -pin_load 0.008 [get_ports {wb_dat_o[4]}]
set_load -pin_load 0.008 [get_ports {wb_dat_o[3]}]
set_load -pin_load 0.008 [get_ports {wb_dat_o[2]}]
set_load -pin_load 0.008 [get_ports {wb_dat_o[1]}]
set_load -pin_load 0.008 [get_ports {wb_dat_o[0]}]
set_load -pin_load 0.008 [get_ports wb_ack_o]
set_load -pin_load 0.008 [get_ports wb_inta_o]
set_load -pin_load 0.008 [get_ports scl_pad_o]
set_load -pin_load 0.008 [get_ports scl_padoen_o]
set_load -pin_load 0.008 [get_ports sda_pad_o]
set_load -pin_load 0.008 [get_ports sda_padoen_o]
set_load -min -pin_load 0.008 [get_ports {wb_dat_o[7]}]
set_load -min -pin_load 0.008 [get_ports {wb_dat_o[6]}]
set_load -min -pin_load 0.008 [get_ports {wb_dat_o[5]}]
set_load -min -pin_load 0.008 [get_ports {wb_dat_o[4]}]
set_load -min -pin_load 0.008 [get_ports {wb_dat_o[3]}]
set_load -min -pin_load 0.008 [get_ports {wb_dat_o[2]}]
set_load -min -pin_load 0.008 [get_ports {wb_dat_o[1]}]
set_load -min -pin_load 0.008 [get_ports {wb_dat_o[0]}]
set_load -min -pin_load 0.008 [get_ports wb_ack_o]
set_load -min -pin_load 0.008 [get_ports wb_inta_o]
set_load -min -pin_load 0.008 [get_ports scl_pad_o]
set_load -min -pin_load 0.008 [get_ports scl_padoen_o]
set_load -min -pin_load 0.008 [get_ports sda_pad_o]
set_load -min -pin_load 0.008 [get_ports sda_padoen_o]
create_clock [get_ports wb_clk_i]  -name clk  -period 20  -waveform {0 10}
set_clock_uncertainty 0.3  [get_clocks clk]
set_clock_transition -max -rise 0.2 [get_clocks clk]
set_clock_transition -max -fall 0.2 [get_clocks clk]
set_clock_transition -min -rise 0.2 [get_clocks clk]
set_clock_transition -min -fall 0.2 [get_clocks clk]
set_input_delay -clock clk  2  [get_ports wb_clk_i]
set_input_delay -clock clk  2  [get_ports wb_rst_i]
set_input_delay -clock clk  2  [get_ports arst_i]
set_input_delay -clock clk  2  [get_ports {wb_adr_i[2]}]
set_input_delay -clock clk  2  [get_ports {wb_adr_i[1]}]
set_input_delay -clock clk  2  [get_ports {wb_adr_i[0]}]
set_input_delay -clock clk  2  [get_ports {wb_dat_i[7]}]
set_input_delay -clock clk  2  [get_ports {wb_dat_i[6]}]
set_input_delay -clock clk  2  [get_ports {wb_dat_i[5]}]
set_input_delay -clock clk  2  [get_ports {wb_dat_i[4]}]
set_input_delay -clock clk  2  [get_ports {wb_dat_i[3]}]
set_input_delay -clock clk  2  [get_ports {wb_dat_i[2]}]
set_input_delay -clock clk  2  [get_ports {wb_dat_i[1]}]
set_input_delay -clock clk  2  [get_ports {wb_dat_i[0]}]
set_input_delay -clock clk  2  [get_ports wb_we_i]
set_input_delay -clock clk  2  [get_ports wb_stb_i]
set_input_delay -clock clk  2  [get_ports wb_cyc_i]
set_input_delay -clock clk  2  [get_ports VDD]
set_input_delay -clock clk  2  [get_ports VSS]
set_input_delay -clock clk  2  [get_ports scl_pad_i]
set_input_delay -clock clk  2  [get_ports sda_pad_i]
set_output_delay -clock clk  2  [get_ports {wb_dat_o[7]}]
set_output_delay -clock clk  2  [get_ports {wb_dat_o[6]}]
set_output_delay -clock clk  2  [get_ports {wb_dat_o[5]}]
set_output_delay -clock clk  2  [get_ports {wb_dat_o[4]}]
set_output_delay -clock clk  2  [get_ports {wb_dat_o[3]}]
set_output_delay -clock clk  2  [get_ports {wb_dat_o[2]}]
set_output_delay -clock clk  2  [get_ports {wb_dat_o[1]}]
set_output_delay -clock clk  2  [get_ports {wb_dat_o[0]}]
set_output_delay -clock clk  2  [get_ports wb_ack_o]
set_output_delay -clock clk  2  [get_ports wb_inta_o]
set_output_delay -clock clk  2  [get_ports scl_pad_o]
set_output_delay -clock clk  2  [get_ports scl_padoen_o]
set_output_delay -clock clk  2  [get_ports sda_pad_o]
set_output_delay -clock clk  2  [get_ports sda_padoen_o]
set_input_transition -max 0.2  [get_ports wb_clk_i]
set_input_transition -min 0.2  [get_ports wb_clk_i]
set_input_transition -max 0.2  [get_ports wb_rst_i]
set_input_transition -min 0.2  [get_ports wb_rst_i]
set_input_transition -max 0.2  [get_ports arst_i]
set_input_transition -min 0.2  [get_ports arst_i]
set_input_transition -max 0.2  [get_ports {wb_adr_i[2]}]
set_input_transition -min 0.2  [get_ports {wb_adr_i[2]}]
set_input_transition -max 0.2  [get_ports {wb_adr_i[1]}]
set_input_transition -min 0.2  [get_ports {wb_adr_i[1]}]
set_input_transition -max 0.2  [get_ports {wb_adr_i[0]}]
set_input_transition -min 0.2  [get_ports {wb_adr_i[0]}]
set_input_transition -max 0.2  [get_ports {wb_dat_i[7]}]
set_input_transition -min 0.2  [get_ports {wb_dat_i[7]}]
set_input_transition -max 0.2  [get_ports {wb_dat_i[6]}]
set_input_transition -min 0.2  [get_ports {wb_dat_i[6]}]
set_input_transition -max 0.2  [get_ports {wb_dat_i[5]}]
set_input_transition -min 0.2  [get_ports {wb_dat_i[5]}]
set_input_transition -max 0.2  [get_ports {wb_dat_i[4]}]
set_input_transition -min 0.2  [get_ports {wb_dat_i[4]}]
set_input_transition -max 0.2  [get_ports {wb_dat_i[3]}]
set_input_transition -min 0.2  [get_ports {wb_dat_i[3]}]
set_input_transition -max 0.2  [get_ports {wb_dat_i[2]}]
set_input_transition -min 0.2  [get_ports {wb_dat_i[2]}]
set_input_transition -max 0.2  [get_ports {wb_dat_i[1]}]
set_input_transition -min 0.2  [get_ports {wb_dat_i[1]}]
set_input_transition -max 0.2  [get_ports {wb_dat_i[0]}]
set_input_transition -min 0.2  [get_ports {wb_dat_i[0]}]
set_input_transition -max 0.2  [get_ports wb_we_i]
set_input_transition -min 0.2  [get_ports wb_we_i]
set_input_transition -max 0.2  [get_ports wb_stb_i]
set_input_transition -min 0.2  [get_ports wb_stb_i]
set_input_transition -max 0.2  [get_ports wb_cyc_i]
set_input_transition -min 0.2  [get_ports wb_cyc_i]
set_input_transition -max 0.2  [get_ports scl_pad_i]
set_input_transition -min 0.2  [get_ports scl_pad_i]
set_input_transition -max 0.2  [get_ports sda_pad_i]
set_input_transition -min 0.2  [get_ports sda_pad_i]
set_input_transition -max 0.2  [get_ports VDD]
set_input_transition -min 0.2  [get_ports VDD]
set_input_transition -max 0.2  [get_ports VSS]
set_input_transition -min 0.2  [get_ports VSS]
