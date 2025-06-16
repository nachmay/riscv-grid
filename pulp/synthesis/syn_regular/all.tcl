##############################################################################
# Synthesis Stage Instructions
#
# This file contains a set of commands required to complete the synthesis stage.
# To successfully execute this file, ensure you have the following additional files:
#
# 1. fp.sdc  - Contains the design constraints.
#
# 2. load.tcl - Includes all the necessary design files.
#
##############################################################################


#############################################################################################
# To match this 16nm syn script, search for "Design based" and change according to comments.#
#############################################################################################

##############################################################################
## SETUP
##############################################################################
::legacy::set_attribute common_ui false 

# Check if the /proc/cpuinfo file exists (commonly available on Linux systems)
if {[file exists /proc/cpuinfo]} {
  # Display the CPU model name from the /proc/cpuinfo file
  sh grep "model name" /proc/cpuinfo
  # Display the CPU clock speed (in MHz) from the /proc/cpuinfo file
  sh grep "cpu MHz"    /proc/cpuinfo
}

# Print the hostname of the current system
puts "Hostname : [info hostname]"

##############################################################################
## Preset global variables and attributes
##############################################################################
### This is Design based, specify name of top module
set DESIGN pulp_cluster_modify

# Set synthesis efforts for different stages
set SYN_EFF medium
set MAP_EFF medium
set OPT_EFF medium
set POW_EFF low

# Create unique output directories based on the current date and time
set DATE [clock format [clock seconds] -format "%b%d-%T"] 
set _OUTPUTS_PATH outputs_${DATE}
set _REPORTS_PATH reports_${DATE}
set _LOG_PATH logs_${DATE}

# Check and create log directory if it does not exist
if {![file exists ${_LOG_PATH}]} {
  file mkdir ${_LOG_PATH}
  puts "Creating directory ${_LOG_PATH}"
}

# Check and create outputs directory if it does not exist
if {![file exists ${_OUTPUTS_PATH}]} {
  file mkdir ${_OUTPUTS_PATH}
  puts "Creating directory ${_OUTPUTS_PATH}"
}

# Check and create reports directory if it does not exist
if {![file exists ${_REPORTS_PATH}]} {
  file mkdir ${_REPORTS_PATH}
  puts "Creating directory ${_REPORTS_PATH}"
}

# Set library and HDL search paths
set_attribute init_lib_search_path {. } /  
set_attribute init_hdl_search_path {. ../rtl} / 

# Limit the maximum number of CPUs for parallel processing
set_attribute max_cpus_per_server 4 /

# Default settings for undriven and unconnected signals
set_attribute hdl_unconnected_input_port_value 0
set_attribute hdl_undriven_output_port_value   0
set_attribute hdl_undriven_signal_value        0
set_attribute hdl_unconnected_value            0

# Set synthesizing effort for each synthesis stage
set_attribute syn_generic_effort $SYN_EFF /
set_attribute syn_map_effort $MAP_EFF /
set_attribute syn_opt_effort $OPT_EFF /
set_attribute design_power_effort $POW_EFF /
set_attribute leakage_power_effort $OPT_EFF /

# Set the verbosity level for information messages
set_attribute information_level 9 /
###############################################################
## Library setup
###############################################################

# Define a list of timing libraries, including libraries for both the worst-case (SS) timing and different voltage types
set timing_libs_list {
	/tech/tsmc/16FFC/dig_libs/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tcbn16ffcllbwp16p90_100a/tcbn16ffcllbwp16p90ssgnp0p72v125c.lib
	/tech/tsmc/16FFC/dig_libs/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tcbn16ffcllbwp16p90lvt_100a/tcbn16ffcllbwp16p90lvtssgnp0p72v125c.lib
}; # Here you add the WC (SS) timing libraries, with multiple VTs (Voltage Types)

# Define a list of power libraries, similar to the timing libraries but for power characteristics (BC - Typical or Fast)
set power_libs_list {
	/tech/tsmc/16FFC/dig_libs/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tcbn16ffcllbwp16p90_100a/tcbn16ffcllbwp16p90ssgnp0p72v125c.lib
	/tech/tsmc/16FFC/dig_libs/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tcbn16ffcllbwp16p90lvt_100a/tcbn16ffcllbwp16p90lvtssgnp0p72v125c.lib
}; # Here you add the BC (Typical or Fast) power libraries, with the same VTs as the timing libraries - leakage is much higher at high temperatures

# Define the LEF (Library Exchange Format) files corresponding to the cells found in the timing and power libraries
set lefs_list {
	/tech/tsmc/16FFC/dig_libs/techlef/PRTF_Innovus_16nm_001_Cad_V17_1a/PRTF_Innovus_N16_9M_2Xa1Xd3Xe1Z1U_UTRDL_16.9T_CPODE.17_1a.tlef
	/tech/tsmc/16FFC/dig_libs/TSMCHOME/digital/Back_End/lef/tcbn16ffcllbwp16p90_100a/lef/tcbn16ffcllbwp16p90.lef
	/tech/tsmc/16FFC/dig_libs/TSMCHOME/digital/Back_End/lef/tcbn16ffcllbwp16p90lvt_100a/lef/tcbn16ffcllbwp16p90lvt.lef 
}; # LEF files matching the cells found in both timing and power libraries (same LEF for different corners)

# If both timing and power libraries are available, create timing/power library domains
if {[llength $timing_libs_list] > 0 && [llength $power_libs_list] > 0} {
    eval_common {
        create_library_domain timing
        set_db [vfind / -library_domain timing] .library $timing_libs_list
        create_library_domain power
        set_db [vfind / -library_domain power] .library $power_libs_list
        set_db [vfind / -library_domain timing] .power_library [vfind / -library_domain power] 
        set_db [vfind / -library_domain timing] .default true     }
} elseif {[llength $timing_libs_list] > 0} {
    # If only timing libraries are available, set the timing libraries directly
    set_attribute library $timing_libs_list
} 

# If LEF files are available, set the LEF libraries
if {[llength $lefs_list] > 0} {
    set_attribute lef_library $lefs_list
}

# Define the HDL array naming style to generate <signal>_reg[<bit_width>] format
set_attribute hdl_array_naming_style %s\[%d\] /


## Turn on TNS, affects global and incr opto
#set_attribute tns_opto true / 

## TODO: ratio needs to be higher (close to 1)



##############################################################################
## LOAD
##############################################################################
# This is design-specific: Load all Verilog files and include directories
# 'load.tcl' is expected to contain the necessary file paths and setup for the design
set_dont_use {SDF* SEDF*} 
# Exclude specific cells (e.g., SDF* and SEDF*) from being used during synthesis or optimization.
# This is useful if certain cells are unreliable or incompatible with the design flow.
#set_db hdl_max_memory_address_range 65536

source load.tcl 
# Source the 'load.tcl' script to load all HDL files and configuration settings.

elaborate $DESIGN 
# Perform the elaboration step on the specified design.
# Elaboration converts the HDL code into a technology-independent representation for further processing.

puts "Runtime & Memory after 'read_hdl'" 
# Output a message to track runtime and memory usage after reading and elaborating the HDL.

time_info Elaboration 
# Capture and display the current runtime and memory usage information after elaboration.
# This helps monitor performance and resource consumption.

check_design -unresolved 
# Perform design checks to identify any unresolved references (e.g., missing modules, ports, or signals).
# This ensures all design elements are properly defined before further stages like synthesis.

####################################################################
## Constraints Setup
####################################################################
# This is design-specific: Specify the source clock and clock period (in nanoseconds)
read_sdc ./fp.sdc
# Read the Synopsys Design Constraints (SDC) file.
# The SDC file defines design constraints like clock definitions, input/output delays, and timing exceptions.

puts "The number of exceptions is [llength [find /designs/$DESIGN -exception *]]"
# Print the number of timing exceptions in the design.
# Timing exceptions include false paths, multi-cycle paths, and other constraints that are excluded from standard timing checks.

# set_attribute force_wireload <wireload name> "/designs/$DESIGN" /
# (Commented out by default) Set the wireload model for the design.
# This is typically used in synthesis to estimate interconnect delay based on fan-out.
# Uncomment and replace <wireload name> if you need to manually apply a specific wireload model.

report timing -lint
# Generate a timing report with additional linting checks.
# This helps identify potential timing issues, missing constraints, or inconsistent timing definitions.

###################################################################################
## Define cost groups (clock-clock, clock-output, input-clock, input-output)
###################################################################################
## Uncomment the following line to remove existing cost groups before creating new ones.
## This ensures that you start with a clean slate by deleting any previously defined cost groups.
rm [vfind /designs/* -cost_group *]

# Check if there are any sequential elements (e.g., flip-flops) in the design before defining new cost groups.
if {[llength [all::all_seqs]] > 0} {
  
  # Create cost groups to categorize and manage different types of timing paths:
  define_cost_group -name I2C -design $DESIGN   ;# Input to Clock (I2C) paths
  define_cost_group -name C2O -design $DESIGN   ;# Clock to Output (C2O) paths
  define_cost_group -name C2C -design $DESIGN   ;# Clock to Clock (C2C) paths

  # Associate specific path groups with the defined cost groups for better timing analysis and optimization:
  path_group -from [all::all_seqs] -to [all::all_seqs] -group C2C -name C2C
  # C2C: This defines a Clock-to-Clock path group between sequential elements (for clock-to-clock checks).

  path_group -from [all::all_seqs] -to [all::all_outs] -group C2O -name C2O
  # C2O: This defines a Clock-to-Output path group (for output timing checks).

  path_group -from [all::all_inps] -to [all::all_seqs] -group I2C -name I2C
  # I2C: This defines an Input-to-Clock path group (for input timing checks).
}

# Define a separate cost group for Input to Output (I2O) paths, which exist regardless of sequential elements.
define_cost_group -name I2O -design $DESIGN
path_group -from [all::all_inps] -to [all::all_outs] -group I2O -name I2O
# I2O: This defines an Input-to-Output path group (for combinational paths that bypass sequential elements).

# Iterate through all cost groups and generate detailed timing reports for each group.
foreach cg [find / -cost_group *] {
  report timing -cost_group [list $cg] >> $_REPORTS_PATH/${DESIGN}_pretim.rpt
  # Append timing analysis results for each cost group to the pre-timing report file.
}

##############################################################################
## SYN
##############################################################################
#### To turn off sequential merging on the design 
#### uncomment & use the following attributes.
##set_attribute optimize_merge_flops false /
##set_attribute optimize_merge_latches false /
#### For a particular instance use attribute 'optimize_merge_seqs' to turn off sequential merging.
 
# Set the ratio of leakage power to dynamic power for optimization.
# This value influences how the synthesis tool balances leakage and dynamic power during power optimization.
set opt_leakage_to_dynamic_ratio 0.9

# Perform a timing intent check.
# This verifies the consistency of timing constraints and ensures that the design intent matches the provided constraints.
check_timing_intent

# Enable clock gating to reduce dynamic power consumption.
# Clock gating turns off the clock signal to idle parts of the circuit, reducing unnecessary switching activity.
set enable_clock_gating true

# If clock gating is enabled, configure related attributes for clock gating insertion.
if {$enable_clock_gating} {
    
    # Enable automatic insertion of clock gating logic during synthesis.
    set_db lp_insert_clock_gating true

    # Try enabling early clock gating (if supported by the tool).
    # Early clock gating inserts clock gating logic as soon as possible in the synthesis flow.
    if { [catch {set_db lp_insert_early_clock_gating true} err] } {
        # If the tool does not support early clock gating, print an informational message.
        puts "INFO: This Genus version does not support lp_insert_early_clock_gating"
    }

    # Use discrete clock gating cells instead of integrated or complex clock gating logic.
    # This can provide better optimization and may align with specific technology library requirements.
    set_db lp_insert_discrete_clock_gating_logic true

    # Set the minimum number of flops (registers) required to trigger clock gating insertion.
    # Here, clock gating will only be inserted if three or more flip-flops share the same clock enable condition.
    set_db [vfind /des* -design $DESIGN] .lp_clock_gating_min_flops 3
}


## TODO: check if clock gates need to be defined
# ICGS : {
#      ICGx1_ASAP7_75t_L
#      ICGx2_ASAP7_75t_L
#      ICGx2p67DC_ASAP7_75t_L
#      ICGx3_ASAP7_75t_L
#      ICGx4DC_ASAP7_75t_L
#      ICGx4_ASAP7_75t_L
#      ICGx5_ASAP7_75t_L
#      ICGx5p33DC_ASAP7_75t_L
#      ICGx6p67DC_ASAP7_75t_L
#      ICGx8DC_ASAP7_75t_L
#      ICGx1_ASAP7_75t_R
#      ICGx2_ASAP7_75t_R
#      ICGx2p67DC_ASAP7_75t_R
#      ICGx3_ASAP7_75t_R
#      ICGx4DC_ASAP7_75t_R
#      ICGx4_ASAP7_75t_R
#      ICGx5_ASAP7_75t_R
#      ICGx5p33DC_ASAP7_75t_R
#      ICGx6p67DC_ASAP7_75t_R
#      ICGx8DC_ASAP7_75t_R
#      ICGx1_ASAP7_75t_SL
#      ICGx2_ASAP7_75t_SL
#      ICGx2p67DC_ASAP7_75t_SL
#      ICGx3_ASAP7_75t_SL
#      ICGx4DC_ASAP7_75t_SL
#      ICGx4_ASAP7_75t_SL
#      ICGx5_ASAP7_75t_SL
#      ICGx5p33DC_ASAP7_75t_SL
#      ICGx6p67DC_ASAP7_75t_SL
#      ICGx8DC_ASAP7_75t_SL
# }


####################################################################################################
####################################################################################################
## Synthesizing to generic 
####################################################################################################

# Perform technology-independent (generic) synthesis.
# This step converts the HDL code into a generic gate-level representation
# without mapping it to a specific technology library.
syn_generic

# Print a message to track runtime and memory usage after the 'syn_generic' step.
puts "Runtime & Memory after 'syn_generic'"

# Collect and display runtime and memory usage information for the GENERIC stage.
# This helps monitor resource consumption during the synthesis process.
time_info GENERIC

# Generate a datapath report and save it to the specified reports directory.
# The datapath report provides details on arithmetic and logical operators, 
# which are critical for optimizing performance in data-heavy designs.
report datapath > $_REPORTS_PATH/${DESIGN}_datapath_generic.rpt

# (Optional) Generate detailed synthesis reports and summary tables.
# These can provide additional insights, such as area, timing, and power information.
# Uncomment the following lines if you want these reports.
# generate_reports -outdir $_REPORTS_PATH -tag generic
# summary_table -outdir $_REPORTS_PATH

# Save the current design state to a database (.db) file.
# This checkpoint can be used for later synthesis stages or debugging purposes.
write_db -to_file ${DESIGN}_generic.db


### TODO: option to apply physical syn
####################################################################################################
## Synthesizing to gates
####################################################################################################

# Perform technology mapping.
# This step converts the generic gate-level representation into technology-specific cells
# based on the target standard cell library.
syn_map

# Print a message to track runtime and memory usage after the 'syn_map' step.
puts "Runtime & Memory after 'syn_map'"

# Collect and display runtime and memory usage information for the MAPPED stage.
# Useful for monitoring performance and resource consumption during synthesis.
time_info MAPPED

# Generate a datapath report after mapping and save it to the specified location.
# This report provides information on arithmetic structures (e.g., adders, multipliers)
# and helps analyze how the tool implemented these in the mapped design.
report datapath > $_REPORTS_PATH/${DESIGN}_datapath_map.rpt

# Iterate through all defined cost groups and generate individual timing reports.
# This helps analyze timing for specific path groups like input-to-output (I2O),
# clock-to-output (C2O), clock-to-clock (C2C), etc.
foreach cg [find / -cost_group *] {
  report timing -cost_group [list $cg] > $_REPORTS_PATH/${DESIGN}_[basename $cg]_post_map.rpt
}

# Generate comprehensive synthesis reports for the mapped stage.
# These reports include details on area, timing, and power metrics.
generate_reports -outdir $_REPORTS_PATH -tag map

# Produce a summary table with a concise view of key design metrics.
# This table is useful for quickly assessing design health and optimization quality.
summary_table -outdir $_REPORTS_PATH

# Save the current state of the design in a database (.db) file after technology mapping.
# This checkpoint can be used for further synthesis stages, debugging, or future analysis.
write_db -to_file ${DESIGN}_map.db

# Generate an intermediate netlist in Verilog format for LEC (Logical Equivalence Check).
# This netlist is used to verify the functional equivalence between RTL and the mapped design.
write_hdl -lec > ${_OUTPUTS_PATH}/${DESIGN}_intermediate.v

# Create a script for LEC (Logical Equivalence Check) to compare RTL and the intermediate netlist.
# This ensures that no functionality is lost or changed during the synthesis process.
write_do_lec -revised_design ${_OUTPUTS_PATH}/${DESIGN}_intermediate.v \
             -logfile ${_LOG_PATH}/rtl2intermediate.lec.log > ${_OUTPUTS_PATH}/rtl2intermediate.lec.do



## ungroup -threshold <value>

## Uncomment to remove assigns & insert tiehilo cells during Incremental synthesis
##set_attribute remove_assigns true /
##set_remove_assign_options -buffer_or_inverter <libcell> -design <design|subdesign> 
##set_attribute use_tiehilo_for_const <none|duplicate|unique>  /
#######################################################################################################
## Incremental Synthesis
#######################################################################################################

# Perform incremental optimization on the mapped design.
# This step refines the design to improve timing, area, and power by applying further optimizations.
# It focuses on fixing timing violations (setup/hold), reducing power consumption, and optimizing area.
syn_opt

# Print a message to track runtime and memory usage after 'syn_opt'.
puts "Runtime & Memory after syn_opt"

# Collect and display runtime and memory information for the INCREMENTAL stage.
# This helps in monitoring and analyzing the resource usage during the optimization process.
time_info INCREMENTAL

# Iterate through all defined cost groups and generate updated timing reports.
# This provides a detailed view of how the optimization affected timing within each path group.
# Cost groups typically represent different parts of the design, like input-to-output (I2O),
# clock-to-output (C2O), clock-to-clock (C2C), etc.
foreach cg [find / -cost_group *] {
  report timing -cost_group [list $cg] > $_REPORTS_PATH/${DESIGN}_[basename $cg]_post_incr.rpt
}

# Generate comprehensive reports for the incremental optimization stage.
# These reports provide insights on area, timing, and power metrics after optimization.
generate_reports -outdir $_REPORTS_PATH -tag incremental

# Produce a summary table with key metrics for a quick overview of the optimization results.
# This table makes it easier to evaluate the overall quality of the optimized design.
summary_table -outdir $_REPORTS_PATH

# Save the optimized design state to a database (.db) file after incremental optimization.
# This checkpoint can be used for further analysis, debugging, or as input to later synthesis stages.
write_db -to_file ${DESIGN}_incr.db



######################################################################################################
## write Innovus file set (verilog, SDC, config, etc.)
######################################################################################################

# Generate a Quality of Results (QoR) report and save it to the specified path.
# The QoR report provides a summary of key design metrics, including:
# - Timing (setup/hold violations, slack)
# - Area (cell count, utilization)
# - Power consumption
report qor > $_REPORTS_PATH/${DESIGN}_qor.rpt

# Generate an area report and save it to the specified path.
# This report provides a breakdown of the total design area, including:
# - Instance count
# - Cell types
# - Hierarchical area contributions
report area > $_REPORTS_PATH/${DESIGN}_area.rpt

# Generate a datapath report after incremental optimization and save it to the specified path.
# The datapath report details the implementation of arithmetic and logical components,
# such as adders, multipliers, and shifters, which are critical for performance analysis.
report datapath > $_REPORTS_PATH/${DESIGN}_datapath_incr.rpt

# Generate a messages report and save it to the specified path.
# This report captures tool warnings, errors, and informational messages,
# which can help in debugging and ensuring synthesis correctness.
report messages > $_REPORTS_PATH/${DESIGN}_messages.rpt

# Generate a gates report and save it to the specified path.
# This report provides a detailed list of gate instances and types used in the design.
# It is useful for understanding the composition of the synthesized design at the gate level.
report gates > $_REPORTS_PATH/${DESIGN}_gates.rpt

# Write out the final synthesized design to the specified path using a base filename.
# This outputs the design database in the tool’s native format.
write_design -basename ${_OUTPUTS_PATH}/${DESIGN}_m

# Export the design constraints (SDC) file and save it to the specified path.
# This includes:
# - Clock definitions
# - Input/output constraints
# - Timing exceptions (multicycle paths, false paths)
# The SDC file is required for subsequent design stages like placement, routing, and signoff.
write_sdc > ${_OUTPUTS_PATH}/${DESIGN}_m.sdc


#################################
### write_do_lec
#################################

# Generate a Logical Equivalence Check (LEC) script to compare the intermediate netlist 
# with the final synthesized design. This ensures that no unintended modifications 
# occurred between the intermediate and final stages.
write_do_lec -golden_design ${_OUTPUTS_PATH}/${DESIGN}_intermediate.v \
             -revised_design ${_OUTPUTS_PATH}/${DESIGN}_m.v \
             -logfile ${_LOG_PATH}/intermediate2final.lec.log > ${_OUTPUTS_PATH}/intermediate2final.lec.do

# Generate a Logical Equivalence Check (LEC) script to compare the original RTL 
# with the final mapped and optimized netlist. This ensures functional equivalence 
# is maintained throughout the synthesis process.
write_do_lec -revised_design ${_OUTPUTS_PATH}/${DESIGN}_m.v \
             -logfile ${_LOG_PATH}/rtl2final.lec.log > ${_OUTPUTS_PATH}/rtl2final.lec.do

# Print a message indicating the final runtime and memory usage after synthesis completion.
puts "Final Runtime & Memory."
time_info FINAL

# Print synthesis completion messages for clear visibility in the logs.
puts "============================"
puts "Synthesis Finished ........."
puts "============================"

# Copy the standard output log file to the designated log directory for documentation and debugging purposes.
file copy [get_attribute stdout_log / ] ${_LOG_PATH}/.

# Generate a final gate-level report, which lists all the gates used in the design.
# This helps in analyzing the composition of the synthesized netlist.
report gates

# Generate a final power report, summarizing power consumption at different levels
# (dynamic, leakage, switching). This is useful for evaluating the design's power efficiency.
report power

##quit
