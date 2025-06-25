#################################################################################
#
# Created by Genus(TM) Synthesis Solution 22.16-s078_1 on Mon Jun 23 11:19:27 UTC 2025
#
#################################################################################

## library_sets
create_library_set -name ls_of_ld_timing \
    -timing { /tech/tsmc/16FFC/dig_libs/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tcbn16ffcllbwp16p90_100a/tcbn16ffcllbwp16p90ssgnp0p72v125c.lib \
              /tech/tsmc/16FFC/dig_libs/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tcbn16ffcllbwp16p90lvt_100a/tcbn16ffcllbwp16p90lvtssgnp0p72v125c.lib }
create_library_set -name ls_of_ld_power \
    -timing { /tech/tsmc/16FFC/dig_libs/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tcbn16ffcllbwp16p90_100a/tcbn16ffcllbwp16p90ssgnp0p72v125c.lib \
              /tech/tsmc/16FFC/dig_libs/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tcbn16ffcllbwp16p90lvt_100a/tcbn16ffcllbwp16p90lvtssgnp0p72v125c.lib }

## timing_condition
create_timing_condition -name tc_of_ld_timing \
    -library_sets { ls_of_ld_timing }
create_timing_condition -name tc_of_ld_power \
    -library_sets { ls_of_ld_power }

## rc_corner
create_rc_corner -name default_emulate_rc_corner \
    -temperature 125.0 \
    -pre_route_res 1.0 \
    -pre_route_cap 1.0 \
    -pre_route_clock_res 0.0 \
    -pre_route_clock_cap 0.0 \
    -post_route_res {1.0 1.0 1.0} \
    -post_route_cap {1.0 1.0 1.0} \
    -post_route_cross_cap {1.0 1.0 1.0} \
    -post_route_clock_res {1.0 1.0 1.0} \
    -post_route_clock_cap {1.0 1.0 1.0} \
    -post_route_clock_cross_cap {1.0 1.0 1.0}

## delay_corner
create_delay_corner -name default_emulate_delay_corner \
    -early_timing_condition { tc_of_ld_timing } \
    -late_timing_condition { tc_of_ld_timing } \
    -early_rc_corner default_emulate_rc_corner \
    -late_rc_corner default_emulate_rc_corner
create_delay_corner -name default_emulate_power_delay_corner \
    -early_timing_condition { tc_of_ld_power } \
    -late_timing_condition { tc_of_ld_power } \
    -early_rc_corner default_emulate_rc_corner \
    -late_rc_corner default_emulate_rc_corner

## constraint_mode
create_constraint_mode -name default_emulate_constraint_mode \
    -sdc_files { outputs_Jun23-10:31:50/udma_subsystem_m.default_emulate_constraint_mode.sdc }

## analysis_view
create_analysis_view -name default_emulate_view \
    -constraint_mode default_emulate_constraint_mode \
    -delay_corner default_emulate_delay_corner
create_analysis_view -name default_emulate_power_view \
    -constraint_mode default_emulate_constraint_mode \
    -delay_corner default_emulate_power_delay_corner

## set_analysis_view
set_analysis_view -setup { default_emulate_view } \
                  -hold { default_emulate_view } \
                  -leakage default_emulate_power_view \
                  -dynamic default_emulate_power_view
