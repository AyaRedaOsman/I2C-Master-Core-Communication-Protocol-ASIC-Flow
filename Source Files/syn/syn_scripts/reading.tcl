######################## Reading RTL Files #################################

puts "#             Reading RTL Files           #"

analyze -library work -format sverilog  i2c_master_bit_ctrl.v
analyze -library work -format sverilog  i2c_master_byte_ctrl.v
analyze -library work -format sverilog  i2c_master_defines.v
analyze -library work -format sverilog  i2c_master_top.v
analyze -library work -format sverilog  timescale.v