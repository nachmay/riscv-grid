############## Defining Clocks ##############

# Define the primary clock (clk_i) for the top module 'riscv_core'
set clock_period 2
create_clock \
      -name clk \
      -period $clock_period \
      [get_ports w_clk]

# Define the generated clocks coming from the 'cluster_clock_gating' module

# Generated clock for the CG_WE_GLOBAL instance
# create_generated_clock \
      -name clk_global \
      -source [get_pins riscv_register_file_latch/CG_WE_GLOBAL/clk_i] \
      [get_pins riscv_register_file_latch/CG_WE_GLOBAL/clk_o]

# Generated clock for the CG_Inst instance
# create_generated_clock \
      -name clk_inst \
      -source [get_pins riscv_register_file_latch/CG_Inst/clk_i] \
      [get_pins riscv_register_file_latch/CG_Inst/clk_o]

# Generated clock for the core_clock_gate_i instance
# create_generated_clock \
      -name clk_core_gate \
      -source [get_pins riscv_core/core_clock_gate_i/clk_i] \
      [get_pins riscv_core/core_clock_gate_i/clk_o]

############## Input and Output Delays ##############

# Input delays relative to the primary clock
set_input_delay -clock clk 0.5 [get_ports *]  ;# Adjust delay based on design specs

# Output delays relative to the primary clock
set_output_delay -clock clk 0.5 [get_ports *]

############## External Driver and Load ##############

# Specify external load for primary outputs (if applicable)
# set_load 0.1 [get_ports *]  ;# Adjust load value based on system-level constraints

############## Handling Reset and Test Mode ##############

# Define reset and test enable signals
#set_case_analysis 1 [get_ports rst_ni]    ;# Reset active low
#set_case_analysis 0 [get_ports test_en_i] ;# Test mode disabled

############## Timing Exceptions ##############

# Set false paths for non-timing critical paths
#set_false_path -from [get_ports test_en_i]
#set_false_path -to [get_ports clock_en_i]


