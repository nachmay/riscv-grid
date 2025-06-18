######################################################################

# Created by Genus(TM) Synthesis Solution 22.16-s078_1 on Wed Jun 18 13:22:18 UTC 2025

# This file contains the Genus script for /designs/ipr_cntrl

######################################################################

::legacy::set_attribute -quiet information_level 9 /
::legacy::set_attribute -quiet init_lib_search_path {. } /
::legacy::set_attribute -quiet common_ui false /
::legacy::set_attribute -quiet design_mode_process 32.0 /
::legacy::set_attribute -quiet phys_assume_met_fill 0.0 /
::legacy::set_attribute -quiet map_placed_for_route_early_global false /
::legacy::set_attribute -quiet phys_use_invs_extraction true /
::legacy::set_attribute -quiet phys_route_time_out 120.0 /
::legacy::set_attribute -quiet db_units 2000 /
::legacy::set_attribute -quiet capacitance_per_unit_length_mmmc {} /
::legacy::set_attribute -quiet resistance_per_unit_length_mmmc {} /
::legacy::set_attribute -quiet lp_insert_clock_gating true /
::legacy::set_attribute -quiet runtime_by_stage {{PBS_Generic-Start 0 69 0.0 33.997892} {to_generic 2 71 1 36} {first_condense 0 71 0 36} {PBS_Generic_Opt-Post 3 72 2.924394999999997 36.922287} {{PBS_Generic-Postgen HBO Optimizations} 0 72 0.0 36.922287} {PBS_TechMap-Start 0 72 0.0 37.922287} {{PBS_TechMap-Premap HBO Optimizations} 0 72 0.0 37.922287} {first_condense 1 74 1 39} {reify 0 74 0 40} {global_incr_map 1 75 0 40} {{PBS_Techmap-Global Mapping} 3 75 1.4423080000000041 39.364595} {{PBS_TechMap-Datapath Postmap Operations} 1 76 2.0 41.364595} {{PBS_TechMap-Postmap HBO Optimizations} 0 76 0.0 41.364595} {{PBS_TechMap-Postmap Clock Gating} 0 76 0.0 41.364595} {{PBS_TechMap-Postmap Cleanup} 0 76 -0.0001620000000031041 41.364433} {PBS_Techmap-Post_MBCI 0 76 0.0 41.364433} {incr_opt 0 81 0 45} } /
::legacy::set_attribute -quiet timing_adjust_tns_of_complex_flops false /
::legacy::set_attribute -quiet timing_report_enable_common_header false /
::legacy::set_attribute -quiet tinfo_tstamp_file .rs_iday.tstamp /
::legacy::set_attribute -quiet metric_enable true /
::legacy::set_attribute -quiet max_cpus_per_server 4 /
::legacy::set_attribute -quiet syn_map_effort medium /
::legacy::set_attribute -quiet syn_opt_effort medium /
::legacy::set_attribute -quiet design_power_effort low /
::legacy::set_attribute -quiet use_area_from_lef true /
::legacy::set_attribute -quiet lp_insert_discrete_clock_gating_logic true /
::legacy::set_attribute -quiet phys_use_segment_parasitics true /
::legacy::set_attribute -quiet probabilistic_extraction true /
::legacy::set_attribute -quiet ple_correlation_factors {1.9000 2.0000} /
::legacy::set_attribute -quiet maximum_interval_of_vias inf /
::legacy::set_attribute -quiet layer_aware_buffer true /
::legacy::set_attribute -quiet ple_mode global /
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQND0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQND1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQND2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQNOPTBBD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQNOPTBBD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQNOPTBBD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQOPTBBD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQOPTBBD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQOPTBBD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQOPTBBD8BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCSNQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCSNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCSNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCSNQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFKCNQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFKCNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFKCNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFKCNQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFKCSNQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFKCSNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFKCSNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFKCSNQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFKSNQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFKSNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFKSNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFKSNQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFMQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFMQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFMQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFMQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNCNQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNCNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNCNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNCNQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNCNQND0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNCNQND1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNCNQND2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNCSNQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNCSNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNCSNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNCSNQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNQND0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNQND1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNQND2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNQND4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNSNQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNSNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNSNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNSNQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNSNQND0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNSNQND1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNSNQND2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQND0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQND1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQND2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQND4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQNOPTBBD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQNOPTBBD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQNOPTBBD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQOPTBBD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQOPTBBD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQOPTBBD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQOPTBBD8BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQND0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQND1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQND2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQNOPTBBD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQNOPTBBD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQNOPTBBD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQOPTBBD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQOPTBBD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQOPTBBD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQOPTBBD8BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSYNCNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSYNCNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSYNCSNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSYNCSNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSYNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSYNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSYNSNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSYNSNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SEDFCNQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SEDFCNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SEDFCNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SEDFCNQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SEDFQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SEDFQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SEDFQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SEDFQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQND0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQND1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQND2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQNOPTBBD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQNOPTBBD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQNOPTBBD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQOPTBBD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQOPTBBD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQOPTBBD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQOPTBBD8BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCSNQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCSNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCSNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCSNQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFKCNQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFKCNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFKCNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFKCNQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFKCSNQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFKCSNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFKCSNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFKCSNQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFKSNQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFKSNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFKSNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFKSNQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFMQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFMQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFMQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFMQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNCNQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNCNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNCNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNCNQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNCNQND0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNCNQND1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNCNQND2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNCSNQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNCSNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNCSNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNCSNQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNQND0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNQND1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNQND2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNQND4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNSNQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNSNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNSNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNSNQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNSNQND0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNSNQND1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNSNQND2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQND0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQND1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQND2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQND4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQNOPTBBD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQNOPTBBD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQNOPTBBD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQOPTBBD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQOPTBBD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQOPTBBD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQOPTBBD8BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQND0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQND1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQND2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQNOPTBBD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQNOPTBBD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQNOPTBBD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQOPTBBD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQOPTBBD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQOPTBBD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQOPTBBD8BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSYNCNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSYNCNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSYNCSNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSYNCSNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSYNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSYNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSYNSNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSYNSNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SEDFCNQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SEDFCNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SEDFCNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SEDFCNQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SEDFQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SEDFQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SEDFQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SEDFQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQND0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQND1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQND2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQNOPTBBD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQNOPTBBD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQNOPTBBD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQOPTBBD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQOPTBBD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQOPTBBD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCNQOPTBBD8BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCSNQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCSNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCSNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFCSNQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFKCNQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFKCNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFKCNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFKCNQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFKCSNQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFKCSNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFKCSNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFKCSNQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFKSNQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFKSNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFKSNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFKSNQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFMQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFMQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFMQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFMQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNCNQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNCNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNCNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNCNQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNCNQND0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNCNQND1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNCNQND2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNCSNQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNCSNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNCSNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNCSNQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNQND0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNQND1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNQND2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNQND4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNSNQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNSNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNSNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNSNQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNSNQND0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNSNQND1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFNSNQND2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQND0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQND1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQND2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQND4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQNOPTBBD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQNOPTBBD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQNOPTBBD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQOPTBBD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQOPTBBD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQOPTBBD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFQOPTBBD8BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQND0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQND1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQND2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQNOPTBBD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQNOPTBBD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQNOPTBBD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQOPTBBD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQOPTBBD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQOPTBBD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSNQOPTBBD8BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSYNCNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSYNCNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSYNCSNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSYNCSNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSYNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSYNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSYNSNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SDFSYNSNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SEDFCNQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SEDFCNQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SEDFCNQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SEDFCNQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SEDFQD0BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SEDFQD1BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SEDFQD2BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/libcells/SEDFQD4BWP16P90
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQND0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQND1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQND2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQNOPTBBD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQNOPTBBD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQNOPTBBD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQOPTBBD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQOPTBBD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQOPTBBD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCNQOPTBBD8BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCSNQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCSNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCSNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFCSNQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFKCNQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFKCNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFKCNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFKCNQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFKCSNQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFKCSNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFKCSNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFKCSNQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFKSNQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFKSNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFKSNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFKSNQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFMQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFMQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFMQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFMQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNCNQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNCNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNCNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNCNQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNCNQND0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNCNQND1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNCNQND2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNCSNQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNCSNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNCSNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNCSNQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNQND0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNQND1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNQND2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNQND4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNSNQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNSNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNSNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNSNQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNSNQND0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNSNQND1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFNSNQND2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQND0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQND1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQND2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQND4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQNOPTBBD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQNOPTBBD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQNOPTBBD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQOPTBBD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQOPTBBD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQOPTBBD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFQOPTBBD8BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQND0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQND1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQND2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQNOPTBBD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQNOPTBBD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQNOPTBBD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQOPTBBD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQOPTBBD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQOPTBBD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSNQOPTBBD8BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSYNCNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSYNCNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSYNCSNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSYNCSNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSYNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSYNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSYNSNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SDFSYNSNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SEDFCNQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SEDFCNQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SEDFCNQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SEDFCNQD4BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SEDFQD0BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SEDFQD1BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SEDFQD2BWP16P90LVT
::legacy::set_attribute -quiet avoid true /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/libcells/SEDFQD4BWP16P90LVT
::legacy::set_attribute -quiet wireload_selection /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/wireload_selections/WireAreaForZero /libraries/library_domains/timing
::legacy::set_attribute -quiet tree_type balanced_tree /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/operating_conditions/ssgnp0p72v125c
::legacy::set_attribute -quiet tree_type balanced_tree /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/operating_conditions/_nominal_
::legacy::set_attribute -quiet tree_type balanced_tree /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/operating_conditions/ssgnp0p72v125c
::legacy::set_attribute -quiet tree_type balanced_tree /libraries/library_domains/timing/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/operating_conditions/_nominal_
::legacy::set_attribute -quiet wireload_selection /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/wireload_selections/WireAreaForZero /libraries/library_domains/power
::legacy::set_attribute -quiet tree_type balanced_tree /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/operating_conditions/ssgnp0p72v125c
::legacy::set_attribute -quiet tree_type balanced_tree /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/operating_conditions/_nominal_
::legacy::set_attribute -quiet tree_type balanced_tree /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/operating_conditions/ssgnp0p72v125c
::legacy::set_attribute -quiet tree_type balanced_tree /libraries/library_domains/power/tcbn16ffcllbwp16p90lvtssgnp0p72v125c/operating_conditions/_nominal_
::legacy::set_attr -quiet ui_respects_preserve 0 /
::legacy::set_attribute -quiet library_domain /libraries/library_domains/timing /designs/ipr_cntrl
::legacy::set_attr -quiet ui_respects_preserve true /
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name clk -domain domain_1 -period 2000.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -remove -design /designs/ipr_cntrl /designs/ipr_cntrl/ports_in/w_clk
define_cost_group -design /designs/ipr_cntrl -name C2C
define_cost_group -design /designs/ipr_cntrl -name C2O
define_cost_group -design /designs/ipr_cntrl -name I2C
define_cost_group -design /designs/ipr_cntrl -name I2O
define_cost_group -design /designs/ipr_cntrl -name cg_enable_group_clk
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name create_clock_delay_domain_1_clk_R_0 /designs/ipr_cntrl/ports_in/w_clk
::legacy::set_attribute -quiet clock_network_latency_included true /designs/ipr_cntrl/timing/external_delays/create_clock_delay_domain_1_clk_R_0
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -edge_fall -name create_clock_delay_domain_1_clk_F_0 /designs/ipr_cntrl/ports_in/w_clk
::legacy::set_attribute -quiet clock_network_latency_included true /designs/ipr_cntrl/timing/external_delays/create_clock_delay_domain_1_clk_F_0
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33 /designs/ipr_cntrl/ports_in/w_rst_n
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_1_1 /designs/ipr_cntrl/ports_in/r_clk
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_2_1 /designs/ipr_cntrl/ports_in/r_rst_n
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_3_1 {{/designs/ipr_cntrl/ports_in/rdata[7]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_4_1 {{/designs/ipr_cntrl/ports_in/rdata[6]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_5_1 {{/designs/ipr_cntrl/ports_in/rdata[5]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_6_1 {{/designs/ipr_cntrl/ports_in/rdata[4]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_7_1 {{/designs/ipr_cntrl/ports_in/rdata[3]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_8_1 {{/designs/ipr_cntrl/ports_in/rdata[2]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_9_1 {{/designs/ipr_cntrl/ports_in/rdata[1]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_10_1 {{/designs/ipr_cntrl/ports_in/rdata[0]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_11_1 /designs/ipr_cntrl/ports_in/read_if_req
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_12_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[31]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_13_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[30]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_14_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[29]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_15_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[28]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_16_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[27]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_17_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[26]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_18_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[25]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_19_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[24]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_20_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[23]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_21_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[22]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_22_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[21]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_23_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[20]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_24_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[19]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_25_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[18]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_26_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[17]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_27_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[16]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_28_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[15]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_29_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[14]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_30_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[13]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_31_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[12]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_32_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[11]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_33_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[10]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_34_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[9]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_35_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[8]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_36_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[7]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_37_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[6]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_38_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[5]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_39_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[4]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_40_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[3]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_41_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[2]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_42_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[1]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_43_1 {{/designs/ipr_cntrl/ports_in/read_if_addr[0]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_44_1 {{/designs/ipr_cntrl/ports_in/read_if_be[3]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_45_1 {{/designs/ipr_cntrl/ports_in/read_if_be[2]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_46_1 {{/designs/ipr_cntrl/ports_in/read_if_be[1]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_47_1 {{/designs/ipr_cntrl/ports_in/read_if_be[0]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_48_1 /designs/ipr_cntrl/ports_in/read_if_we
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_49_1 /designs/ipr_cntrl/ports_in/write_if_req
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_50_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[31]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_51_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[30]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_52_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[29]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_53_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[28]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_54_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[27]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_55_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[26]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_56_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[25]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_57_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[24]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_58_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[23]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_59_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[22]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_60_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[21]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_61_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[20]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_62_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[19]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_63_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[18]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_64_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[17]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_65_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[16]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_66_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[15]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_67_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[14]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_68_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[13]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_69_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[12]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_70_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[11]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_71_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[10]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_72_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[9]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_73_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[8]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_74_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[7]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_75_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[6]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_76_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[5]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_77_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[4]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_78_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[3]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_79_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[2]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_80_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[1]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_81_1 {{/designs/ipr_cntrl/ports_in/write_if_addr[0]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_82_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[31]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_83_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[30]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_84_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[29]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_85_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[28]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_86_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[27]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_87_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[26]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_88_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[25]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_89_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[24]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_90_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[23]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_91_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[22]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_92_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[21]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_93_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[20]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_94_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[19]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_95_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[18]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_96_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[17]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_97_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[16]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_98_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[15]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_99_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[14]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_100_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[13]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_101_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[12]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_102_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[11]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_103_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[10]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_104_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[9]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_105_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[8]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_106_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[7]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_107_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[6]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_108_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[5]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_109_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[4]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_110_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[3]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_111_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[2]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_112_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[1]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_113_1 {{/designs/ipr_cntrl/ports_in/write_if_wdata[0]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_114_1 /designs/ipr_cntrl/ports_in/write_if_we
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_115_1 {{/designs/ipr_cntrl/ports_in/write_if_be[3]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_116_1 {{/designs/ipr_cntrl/ports_in/write_if_be[2]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_117_1 {{/designs/ipr_cntrl/ports_in/write_if_be[1]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_33_118_1 {{/designs/ipr_cntrl/ports_in/write_if_be[0]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_325_1 /designs/ipr_cntrl/ports_out/error_flag
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_326_1 /designs/ipr_cntrl/ports_out/we
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_327_1 /designs/ipr_cntrl/ports_out/re
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_328_1 {{/designs/ipr_cntrl/ports_out/wdata[7]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_329_1 {{/designs/ipr_cntrl/ports_out/wdata[6]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_330_1 {{/designs/ipr_cntrl/ports_out/wdata[5]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_331_1 {{/designs/ipr_cntrl/ports_out/wdata[4]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_332_1 {{/designs/ipr_cntrl/ports_out/wdata[3]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_333_1 {{/designs/ipr_cntrl/ports_out/wdata[2]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_334_1 {{/designs/ipr_cntrl/ports_out/wdata[1]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_335_1 {{/designs/ipr_cntrl/ports_out/wdata[0]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_336_1 {{/designs/ipr_cntrl/ports_out/waddr[3]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_337_1 {{/designs/ipr_cntrl/ports_out/waddr[2]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_338_1 {{/designs/ipr_cntrl/ports_out/waddr[1]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_339_1 {{/designs/ipr_cntrl/ports_out/waddr[0]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_340_1 {{/designs/ipr_cntrl/ports_out/raddr[3]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_341_1 {{/designs/ipr_cntrl/ports_out/raddr[2]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_342_1 {{/designs/ipr_cntrl/ports_out/raddr[1]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_343_1 {{/designs/ipr_cntrl/ports_out/raddr[0]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_344_1 /designs/ipr_cntrl/ports_out/fifo_full
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_345_1 /designs/ipr_cntrl/ports_out/read_if_gnt
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_346_1 /designs/ipr_cntrl/ports_out/read_if_rvalid
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_347_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[31]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_348_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[30]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_349_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[29]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_350_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[28]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_351_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[27]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_352_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[26]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_353_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[25]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_354_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[24]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_355_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[23]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_356_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[22]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_357_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[21]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_358_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[20]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_359_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[19]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_360_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[18]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_361_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[17]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_362_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[16]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_363_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[15]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_364_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[14]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_365_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[13]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_366_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[12]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_367_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[11]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_368_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[10]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_369_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[9]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_370_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[8]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_371_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[7]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_372_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[6]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_373_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[5]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_374_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[4]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_375_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[3]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_376_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[2]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_377_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[1]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_378_1 {{/designs/ipr_cntrl/ports_out/read_if_rdata[0]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_379_1 /designs/ipr_cntrl/ports_out/write_if_gnt
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_380_1 /designs/ipr_cntrl/ports_out/write_if_rvalid
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_381_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[31]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_382_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[30]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_383_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[29]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_384_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[28]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_385_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[27]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_386_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[26]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_387_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[25]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_388_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[24]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_389_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[23]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_390_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[22]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_391_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[21]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_392_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[20]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_393_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[19]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_394_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[18]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_395_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[17]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_396_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[16]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_397_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[15]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_398_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[14]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_399_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[13]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_400_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[12]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_401_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[11]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_402_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[10]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_403_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[9]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_404_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[8]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_405_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[7]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_406_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[6]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_407_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[5]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_408_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[4]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_409_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[3]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_410_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[2]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_411_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[1]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock /designs/ipr_cntrl/timing/clock_domains/domain_1/clk -name fp.sdc_line_36_412_1 {{/designs/ipr_cntrl/ports_out/write_if_rdata[0]}}
path_group -paths [specify_paths -lenient -from {{/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[0]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[3]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[1]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[2]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[0]} /designs/ipr_cntrl/instances_seq/write_gnt_dly_reg /designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wfull_reg {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[3]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[2]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[0]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[4]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[1]} /designs/ipr_cntrl/instances_seq/read_gnt_dly_reg /designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rempty_reg {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[1]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[2]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[3]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[4]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[0]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[0]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[4]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[3]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[2]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[1]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[2]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[1]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[4]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[3]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[0]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[3]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[2]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[1]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[0]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[4]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[3]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[2]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[1]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[4]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[2]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[1]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[3]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[0]}} -to {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_hier/RC_CG_HIER_INST0/instances_seq/RC_CGIC_INST {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[0]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[3]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[1]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[2]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[0]} /designs/ipr_cntrl/instances_seq/write_gnt_dly_reg /designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wfull_reg {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[3]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[2]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[0]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[4]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[1]} /designs/ipr_cntrl/instances_seq/read_gnt_dly_reg /designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rempty_reg {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[1]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[2]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[3]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[4]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[0]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[0]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[4]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[3]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[2]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[1]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[2]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[1]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[4]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[3]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[0]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[3]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[2]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[1]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[0]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[4]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[3]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[2]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[1]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[4]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[2]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[1]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[3]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[0]}}]  -name C2C -group /designs/ipr_cntrl/timing/cost_groups/C2C
path_group -paths [specify_paths -lenient -from {{/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[0]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[3]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[1]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[2]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[0]} /designs/ipr_cntrl/instances_seq/write_gnt_dly_reg /designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wfull_reg {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[3]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[2]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[0]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[4]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[1]} /designs/ipr_cntrl/instances_seq/read_gnt_dly_reg /designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rempty_reg {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[1]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[2]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[3]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[4]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[0]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[0]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[4]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[3]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[2]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[1]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[2]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[1]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[4]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[3]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[0]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[3]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[2]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[1]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[0]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[4]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[3]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[2]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[1]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[4]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[2]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[1]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[3]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[0]}} -to {/designs/ipr_cntrl/ports_out/error_flag /designs/ipr_cntrl/ports_out/we /designs/ipr_cntrl/ports_out/re {/designs/ipr_cntrl/ports_out/wdata[7]} {/designs/ipr_cntrl/ports_out/wdata[6]} {/designs/ipr_cntrl/ports_out/wdata[5]} {/designs/ipr_cntrl/ports_out/wdata[4]} {/designs/ipr_cntrl/ports_out/wdata[3]} {/designs/ipr_cntrl/ports_out/wdata[2]} {/designs/ipr_cntrl/ports_out/wdata[1]} {/designs/ipr_cntrl/ports_out/wdata[0]} {/designs/ipr_cntrl/ports_out/waddr[3]} {/designs/ipr_cntrl/ports_out/waddr[2]} {/designs/ipr_cntrl/ports_out/waddr[1]} {/designs/ipr_cntrl/ports_out/waddr[0]} {/designs/ipr_cntrl/ports_out/raddr[3]} {/designs/ipr_cntrl/ports_out/raddr[2]} {/designs/ipr_cntrl/ports_out/raddr[1]} {/designs/ipr_cntrl/ports_out/raddr[0]} /designs/ipr_cntrl/ports_out/fifo_full /designs/ipr_cntrl/ports_out/read_if_gnt /designs/ipr_cntrl/ports_out/read_if_rvalid {/designs/ipr_cntrl/ports_out/read_if_rdata[31]} {/designs/ipr_cntrl/ports_out/read_if_rdata[30]} {/designs/ipr_cntrl/ports_out/read_if_rdata[29]} {/designs/ipr_cntrl/ports_out/read_if_rdata[28]} {/designs/ipr_cntrl/ports_out/read_if_rdata[27]} {/designs/ipr_cntrl/ports_out/read_if_rdata[26]} {/designs/ipr_cntrl/ports_out/read_if_rdata[25]} {/designs/ipr_cntrl/ports_out/read_if_rdata[24]} {/designs/ipr_cntrl/ports_out/read_if_rdata[23]} {/designs/ipr_cntrl/ports_out/read_if_rdata[22]} {/designs/ipr_cntrl/ports_out/read_if_rdata[21]} {/designs/ipr_cntrl/ports_out/read_if_rdata[20]} {/designs/ipr_cntrl/ports_out/read_if_rdata[19]} {/designs/ipr_cntrl/ports_out/read_if_rdata[18]} {/designs/ipr_cntrl/ports_out/read_if_rdata[17]} {/designs/ipr_cntrl/ports_out/read_if_rdata[16]} {/designs/ipr_cntrl/ports_out/read_if_rdata[15]} {/designs/ipr_cntrl/ports_out/read_if_rdata[14]} {/designs/ipr_cntrl/ports_out/read_if_rdata[13]} {/designs/ipr_cntrl/ports_out/read_if_rdata[12]} {/designs/ipr_cntrl/ports_out/read_if_rdata[11]} {/designs/ipr_cntrl/ports_out/read_if_rdata[10]} {/designs/ipr_cntrl/ports_out/read_if_rdata[9]} {/designs/ipr_cntrl/ports_out/read_if_rdata[8]} {/designs/ipr_cntrl/ports_out/read_if_rdata[7]} {/designs/ipr_cntrl/ports_out/read_if_rdata[6]} {/designs/ipr_cntrl/ports_out/read_if_rdata[5]} {/designs/ipr_cntrl/ports_out/read_if_rdata[4]} {/designs/ipr_cntrl/ports_out/read_if_rdata[3]} {/designs/ipr_cntrl/ports_out/read_if_rdata[2]} {/designs/ipr_cntrl/ports_out/read_if_rdata[1]} {/designs/ipr_cntrl/ports_out/read_if_rdata[0]} /designs/ipr_cntrl/ports_out/write_if_gnt /designs/ipr_cntrl/ports_out/write_if_rvalid {/designs/ipr_cntrl/ports_out/write_if_rdata[31]} {/designs/ipr_cntrl/ports_out/write_if_rdata[30]} {/designs/ipr_cntrl/ports_out/write_if_rdata[29]} {/designs/ipr_cntrl/ports_out/write_if_rdata[28]} {/designs/ipr_cntrl/ports_out/write_if_rdata[27]} {/designs/ipr_cntrl/ports_out/write_if_rdata[26]} {/designs/ipr_cntrl/ports_out/write_if_rdata[25]} {/designs/ipr_cntrl/ports_out/write_if_rdata[24]} {/designs/ipr_cntrl/ports_out/write_if_rdata[23]} {/designs/ipr_cntrl/ports_out/write_if_rdata[22]} {/designs/ipr_cntrl/ports_out/write_if_rdata[21]} {/designs/ipr_cntrl/ports_out/write_if_rdata[20]} {/designs/ipr_cntrl/ports_out/write_if_rdata[19]} {/designs/ipr_cntrl/ports_out/write_if_rdata[18]} {/designs/ipr_cntrl/ports_out/write_if_rdata[17]} {/designs/ipr_cntrl/ports_out/write_if_rdata[16]} {/designs/ipr_cntrl/ports_out/write_if_rdata[15]} {/designs/ipr_cntrl/ports_out/write_if_rdata[14]} {/designs/ipr_cntrl/ports_out/write_if_rdata[13]} {/designs/ipr_cntrl/ports_out/write_if_rdata[12]} {/designs/ipr_cntrl/ports_out/write_if_rdata[11]} {/designs/ipr_cntrl/ports_out/write_if_rdata[10]} {/designs/ipr_cntrl/ports_out/write_if_rdata[9]} {/designs/ipr_cntrl/ports_out/write_if_rdata[8]} {/designs/ipr_cntrl/ports_out/write_if_rdata[7]} {/designs/ipr_cntrl/ports_out/write_if_rdata[6]} {/designs/ipr_cntrl/ports_out/write_if_rdata[5]} {/designs/ipr_cntrl/ports_out/write_if_rdata[4]} {/designs/ipr_cntrl/ports_out/write_if_rdata[3]} {/designs/ipr_cntrl/ports_out/write_if_rdata[2]} {/designs/ipr_cntrl/ports_out/write_if_rdata[1]} {/designs/ipr_cntrl/ports_out/write_if_rdata[0]}}]  -name C2O -group /designs/ipr_cntrl/timing/cost_groups/C2O
path_group -paths [specify_paths -lenient -from {/designs/ipr_cntrl/ports_in/w_clk /designs/ipr_cntrl/ports_in/w_rst_n /designs/ipr_cntrl/ports_in/r_clk /designs/ipr_cntrl/ports_in/r_rst_n {/designs/ipr_cntrl/ports_in/rdata[7]} {/designs/ipr_cntrl/ports_in/rdata[6]} {/designs/ipr_cntrl/ports_in/rdata[5]} {/designs/ipr_cntrl/ports_in/rdata[4]} {/designs/ipr_cntrl/ports_in/rdata[3]} {/designs/ipr_cntrl/ports_in/rdata[2]} {/designs/ipr_cntrl/ports_in/rdata[1]} {/designs/ipr_cntrl/ports_in/rdata[0]} /designs/ipr_cntrl/ports_in/read_if_req {/designs/ipr_cntrl/ports_in/read_if_addr[31]} {/designs/ipr_cntrl/ports_in/read_if_addr[30]} {/designs/ipr_cntrl/ports_in/read_if_addr[29]} {/designs/ipr_cntrl/ports_in/read_if_addr[28]} {/designs/ipr_cntrl/ports_in/read_if_addr[27]} {/designs/ipr_cntrl/ports_in/read_if_addr[26]} {/designs/ipr_cntrl/ports_in/read_if_addr[25]} {/designs/ipr_cntrl/ports_in/read_if_addr[24]} {/designs/ipr_cntrl/ports_in/read_if_addr[23]} {/designs/ipr_cntrl/ports_in/read_if_addr[22]} {/designs/ipr_cntrl/ports_in/read_if_addr[21]} {/designs/ipr_cntrl/ports_in/read_if_addr[20]} {/designs/ipr_cntrl/ports_in/read_if_addr[19]} {/designs/ipr_cntrl/ports_in/read_if_addr[18]} {/designs/ipr_cntrl/ports_in/read_if_addr[17]} {/designs/ipr_cntrl/ports_in/read_if_addr[16]} {/designs/ipr_cntrl/ports_in/read_if_addr[15]} {/designs/ipr_cntrl/ports_in/read_if_addr[14]} {/designs/ipr_cntrl/ports_in/read_if_addr[13]} {/designs/ipr_cntrl/ports_in/read_if_addr[12]} {/designs/ipr_cntrl/ports_in/read_if_addr[11]} {/designs/ipr_cntrl/ports_in/read_if_addr[10]} {/designs/ipr_cntrl/ports_in/read_if_addr[9]} {/designs/ipr_cntrl/ports_in/read_if_addr[8]} {/designs/ipr_cntrl/ports_in/read_if_addr[7]} {/designs/ipr_cntrl/ports_in/read_if_addr[6]} {/designs/ipr_cntrl/ports_in/read_if_addr[5]} {/designs/ipr_cntrl/ports_in/read_if_addr[4]} {/designs/ipr_cntrl/ports_in/read_if_addr[3]} {/designs/ipr_cntrl/ports_in/read_if_addr[2]} {/designs/ipr_cntrl/ports_in/read_if_addr[1]} {/designs/ipr_cntrl/ports_in/read_if_addr[0]} {/designs/ipr_cntrl/ports_in/read_if_be[3]} {/designs/ipr_cntrl/ports_in/read_if_be[2]} {/designs/ipr_cntrl/ports_in/read_if_be[1]} {/designs/ipr_cntrl/ports_in/read_if_be[0]} /designs/ipr_cntrl/ports_in/read_if_we /designs/ipr_cntrl/ports_in/write_if_req {/designs/ipr_cntrl/ports_in/write_if_addr[31]} {/designs/ipr_cntrl/ports_in/write_if_addr[30]} {/designs/ipr_cntrl/ports_in/write_if_addr[29]} {/designs/ipr_cntrl/ports_in/write_if_addr[28]} {/designs/ipr_cntrl/ports_in/write_if_addr[27]} {/designs/ipr_cntrl/ports_in/write_if_addr[26]} {/designs/ipr_cntrl/ports_in/write_if_addr[25]} {/designs/ipr_cntrl/ports_in/write_if_addr[24]} {/designs/ipr_cntrl/ports_in/write_if_addr[23]} {/designs/ipr_cntrl/ports_in/write_if_addr[22]} {/designs/ipr_cntrl/ports_in/write_if_addr[21]} {/designs/ipr_cntrl/ports_in/write_if_addr[20]} {/designs/ipr_cntrl/ports_in/write_if_addr[19]} {/designs/ipr_cntrl/ports_in/write_if_addr[18]} {/designs/ipr_cntrl/ports_in/write_if_addr[17]} {/designs/ipr_cntrl/ports_in/write_if_addr[16]} {/designs/ipr_cntrl/ports_in/write_if_addr[15]} {/designs/ipr_cntrl/ports_in/write_if_addr[14]} {/designs/ipr_cntrl/ports_in/write_if_addr[13]} {/designs/ipr_cntrl/ports_in/write_if_addr[12]} {/designs/ipr_cntrl/ports_in/write_if_addr[11]} {/designs/ipr_cntrl/ports_in/write_if_addr[10]} {/designs/ipr_cntrl/ports_in/write_if_addr[9]} {/designs/ipr_cntrl/ports_in/write_if_addr[8]} {/designs/ipr_cntrl/ports_in/write_if_addr[7]} {/designs/ipr_cntrl/ports_in/write_if_addr[6]} {/designs/ipr_cntrl/ports_in/write_if_addr[5]} {/designs/ipr_cntrl/ports_in/write_if_addr[4]} {/designs/ipr_cntrl/ports_in/write_if_addr[3]} {/designs/ipr_cntrl/ports_in/write_if_addr[2]} {/designs/ipr_cntrl/ports_in/write_if_addr[1]} {/designs/ipr_cntrl/ports_in/write_if_addr[0]} {/designs/ipr_cntrl/ports_in/write_if_wdata[31]} {/designs/ipr_cntrl/ports_in/write_if_wdata[30]} {/designs/ipr_cntrl/ports_in/write_if_wdata[29]} {/designs/ipr_cntrl/ports_in/write_if_wdata[28]} {/designs/ipr_cntrl/ports_in/write_if_wdata[27]} {/designs/ipr_cntrl/ports_in/write_if_wdata[26]} {/designs/ipr_cntrl/ports_in/write_if_wdata[25]} {/designs/ipr_cntrl/ports_in/write_if_wdata[24]} {/designs/ipr_cntrl/ports_in/write_if_wdata[23]} {/designs/ipr_cntrl/ports_in/write_if_wdata[22]} {/designs/ipr_cntrl/ports_in/write_if_wdata[21]} {/designs/ipr_cntrl/ports_in/write_if_wdata[20]} {/designs/ipr_cntrl/ports_in/write_if_wdata[19]} {/designs/ipr_cntrl/ports_in/write_if_wdata[18]} {/designs/ipr_cntrl/ports_in/write_if_wdata[17]} {/designs/ipr_cntrl/ports_in/write_if_wdata[16]} {/designs/ipr_cntrl/ports_in/write_if_wdata[15]} {/designs/ipr_cntrl/ports_in/write_if_wdata[14]} {/designs/ipr_cntrl/ports_in/write_if_wdata[13]} {/designs/ipr_cntrl/ports_in/write_if_wdata[12]} {/designs/ipr_cntrl/ports_in/write_if_wdata[11]} {/designs/ipr_cntrl/ports_in/write_if_wdata[10]} {/designs/ipr_cntrl/ports_in/write_if_wdata[9]} {/designs/ipr_cntrl/ports_in/write_if_wdata[8]} {/designs/ipr_cntrl/ports_in/write_if_wdata[7]} {/designs/ipr_cntrl/ports_in/write_if_wdata[6]} {/designs/ipr_cntrl/ports_in/write_if_wdata[5]} {/designs/ipr_cntrl/ports_in/write_if_wdata[4]} {/designs/ipr_cntrl/ports_in/write_if_wdata[3]} {/designs/ipr_cntrl/ports_in/write_if_wdata[2]} {/designs/ipr_cntrl/ports_in/write_if_wdata[1]} {/designs/ipr_cntrl/ports_in/write_if_wdata[0]} /designs/ipr_cntrl/ports_in/write_if_we {/designs/ipr_cntrl/ports_in/write_if_be[3]} {/designs/ipr_cntrl/ports_in/write_if_be[2]} {/designs/ipr_cntrl/ports_in/write_if_be[1]} {/designs/ipr_cntrl/ports_in/write_if_be[0]}} -to {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_hier/RC_CG_HIER_INST0/instances_seq/RC_CGIC_INST {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[0]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[3]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[1]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[2]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[0]} /designs/ipr_cntrl/instances_seq/write_gnt_dly_reg /designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wfull_reg {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[3]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[2]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[0]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[4]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[1]} /designs/ipr_cntrl/instances_seq/read_gnt_dly_reg /designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rempty_reg {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[1]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[2]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[3]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[4]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[0]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[0]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[4]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[3]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[2]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[1]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[2]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[1]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[4]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[3]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[0]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[3]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[2]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[1]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[0]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[4]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[3]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[2]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[1]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[4]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[2]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[1]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[3]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[0]}}]  -name I2C -group /designs/ipr_cntrl/timing/cost_groups/I2C
path_group -paths [specify_paths -lenient -from {/designs/ipr_cntrl/ports_in/w_clk /designs/ipr_cntrl/ports_in/w_rst_n /designs/ipr_cntrl/ports_in/r_clk /designs/ipr_cntrl/ports_in/r_rst_n {/designs/ipr_cntrl/ports_in/rdata[7]} {/designs/ipr_cntrl/ports_in/rdata[6]} {/designs/ipr_cntrl/ports_in/rdata[5]} {/designs/ipr_cntrl/ports_in/rdata[4]} {/designs/ipr_cntrl/ports_in/rdata[3]} {/designs/ipr_cntrl/ports_in/rdata[2]} {/designs/ipr_cntrl/ports_in/rdata[1]} {/designs/ipr_cntrl/ports_in/rdata[0]} /designs/ipr_cntrl/ports_in/read_if_req {/designs/ipr_cntrl/ports_in/read_if_addr[31]} {/designs/ipr_cntrl/ports_in/read_if_addr[30]} {/designs/ipr_cntrl/ports_in/read_if_addr[29]} {/designs/ipr_cntrl/ports_in/read_if_addr[28]} {/designs/ipr_cntrl/ports_in/read_if_addr[27]} {/designs/ipr_cntrl/ports_in/read_if_addr[26]} {/designs/ipr_cntrl/ports_in/read_if_addr[25]} {/designs/ipr_cntrl/ports_in/read_if_addr[24]} {/designs/ipr_cntrl/ports_in/read_if_addr[23]} {/designs/ipr_cntrl/ports_in/read_if_addr[22]} {/designs/ipr_cntrl/ports_in/read_if_addr[21]} {/designs/ipr_cntrl/ports_in/read_if_addr[20]} {/designs/ipr_cntrl/ports_in/read_if_addr[19]} {/designs/ipr_cntrl/ports_in/read_if_addr[18]} {/designs/ipr_cntrl/ports_in/read_if_addr[17]} {/designs/ipr_cntrl/ports_in/read_if_addr[16]} {/designs/ipr_cntrl/ports_in/read_if_addr[15]} {/designs/ipr_cntrl/ports_in/read_if_addr[14]} {/designs/ipr_cntrl/ports_in/read_if_addr[13]} {/designs/ipr_cntrl/ports_in/read_if_addr[12]} {/designs/ipr_cntrl/ports_in/read_if_addr[11]} {/designs/ipr_cntrl/ports_in/read_if_addr[10]} {/designs/ipr_cntrl/ports_in/read_if_addr[9]} {/designs/ipr_cntrl/ports_in/read_if_addr[8]} {/designs/ipr_cntrl/ports_in/read_if_addr[7]} {/designs/ipr_cntrl/ports_in/read_if_addr[6]} {/designs/ipr_cntrl/ports_in/read_if_addr[5]} {/designs/ipr_cntrl/ports_in/read_if_addr[4]} {/designs/ipr_cntrl/ports_in/read_if_addr[3]} {/designs/ipr_cntrl/ports_in/read_if_addr[2]} {/designs/ipr_cntrl/ports_in/read_if_addr[1]} {/designs/ipr_cntrl/ports_in/read_if_addr[0]} {/designs/ipr_cntrl/ports_in/read_if_be[3]} {/designs/ipr_cntrl/ports_in/read_if_be[2]} {/designs/ipr_cntrl/ports_in/read_if_be[1]} {/designs/ipr_cntrl/ports_in/read_if_be[0]} /designs/ipr_cntrl/ports_in/read_if_we /designs/ipr_cntrl/ports_in/write_if_req {/designs/ipr_cntrl/ports_in/write_if_addr[31]} {/designs/ipr_cntrl/ports_in/write_if_addr[30]} {/designs/ipr_cntrl/ports_in/write_if_addr[29]} {/designs/ipr_cntrl/ports_in/write_if_addr[28]} {/designs/ipr_cntrl/ports_in/write_if_addr[27]} {/designs/ipr_cntrl/ports_in/write_if_addr[26]} {/designs/ipr_cntrl/ports_in/write_if_addr[25]} {/designs/ipr_cntrl/ports_in/write_if_addr[24]} {/designs/ipr_cntrl/ports_in/write_if_addr[23]} {/designs/ipr_cntrl/ports_in/write_if_addr[22]} {/designs/ipr_cntrl/ports_in/write_if_addr[21]} {/designs/ipr_cntrl/ports_in/write_if_addr[20]} {/designs/ipr_cntrl/ports_in/write_if_addr[19]} {/designs/ipr_cntrl/ports_in/write_if_addr[18]} {/designs/ipr_cntrl/ports_in/write_if_addr[17]} {/designs/ipr_cntrl/ports_in/write_if_addr[16]} {/designs/ipr_cntrl/ports_in/write_if_addr[15]} {/designs/ipr_cntrl/ports_in/write_if_addr[14]} {/designs/ipr_cntrl/ports_in/write_if_addr[13]} {/designs/ipr_cntrl/ports_in/write_if_addr[12]} {/designs/ipr_cntrl/ports_in/write_if_addr[11]} {/designs/ipr_cntrl/ports_in/write_if_addr[10]} {/designs/ipr_cntrl/ports_in/write_if_addr[9]} {/designs/ipr_cntrl/ports_in/write_if_addr[8]} {/designs/ipr_cntrl/ports_in/write_if_addr[7]} {/designs/ipr_cntrl/ports_in/write_if_addr[6]} {/designs/ipr_cntrl/ports_in/write_if_addr[5]} {/designs/ipr_cntrl/ports_in/write_if_addr[4]} {/designs/ipr_cntrl/ports_in/write_if_addr[3]} {/designs/ipr_cntrl/ports_in/write_if_addr[2]} {/designs/ipr_cntrl/ports_in/write_if_addr[1]} {/designs/ipr_cntrl/ports_in/write_if_addr[0]} {/designs/ipr_cntrl/ports_in/write_if_wdata[31]} {/designs/ipr_cntrl/ports_in/write_if_wdata[30]} {/designs/ipr_cntrl/ports_in/write_if_wdata[29]} {/designs/ipr_cntrl/ports_in/write_if_wdata[28]} {/designs/ipr_cntrl/ports_in/write_if_wdata[27]} {/designs/ipr_cntrl/ports_in/write_if_wdata[26]} {/designs/ipr_cntrl/ports_in/write_if_wdata[25]} {/designs/ipr_cntrl/ports_in/write_if_wdata[24]} {/designs/ipr_cntrl/ports_in/write_if_wdata[23]} {/designs/ipr_cntrl/ports_in/write_if_wdata[22]} {/designs/ipr_cntrl/ports_in/write_if_wdata[21]} {/designs/ipr_cntrl/ports_in/write_if_wdata[20]} {/designs/ipr_cntrl/ports_in/write_if_wdata[19]} {/designs/ipr_cntrl/ports_in/write_if_wdata[18]} {/designs/ipr_cntrl/ports_in/write_if_wdata[17]} {/designs/ipr_cntrl/ports_in/write_if_wdata[16]} {/designs/ipr_cntrl/ports_in/write_if_wdata[15]} {/designs/ipr_cntrl/ports_in/write_if_wdata[14]} {/designs/ipr_cntrl/ports_in/write_if_wdata[13]} {/designs/ipr_cntrl/ports_in/write_if_wdata[12]} {/designs/ipr_cntrl/ports_in/write_if_wdata[11]} {/designs/ipr_cntrl/ports_in/write_if_wdata[10]} {/designs/ipr_cntrl/ports_in/write_if_wdata[9]} {/designs/ipr_cntrl/ports_in/write_if_wdata[8]} {/designs/ipr_cntrl/ports_in/write_if_wdata[7]} {/designs/ipr_cntrl/ports_in/write_if_wdata[6]} {/designs/ipr_cntrl/ports_in/write_if_wdata[5]} {/designs/ipr_cntrl/ports_in/write_if_wdata[4]} {/designs/ipr_cntrl/ports_in/write_if_wdata[3]} {/designs/ipr_cntrl/ports_in/write_if_wdata[2]} {/designs/ipr_cntrl/ports_in/write_if_wdata[1]} {/designs/ipr_cntrl/ports_in/write_if_wdata[0]} /designs/ipr_cntrl/ports_in/write_if_we {/designs/ipr_cntrl/ports_in/write_if_be[3]} {/designs/ipr_cntrl/ports_in/write_if_be[2]} {/designs/ipr_cntrl/ports_in/write_if_be[1]} {/designs/ipr_cntrl/ports_in/write_if_be[0]}} -to {/designs/ipr_cntrl/ports_out/error_flag /designs/ipr_cntrl/ports_out/we /designs/ipr_cntrl/ports_out/re {/designs/ipr_cntrl/ports_out/wdata[7]} {/designs/ipr_cntrl/ports_out/wdata[6]} {/designs/ipr_cntrl/ports_out/wdata[5]} {/designs/ipr_cntrl/ports_out/wdata[4]} {/designs/ipr_cntrl/ports_out/wdata[3]} {/designs/ipr_cntrl/ports_out/wdata[2]} {/designs/ipr_cntrl/ports_out/wdata[1]} {/designs/ipr_cntrl/ports_out/wdata[0]} {/designs/ipr_cntrl/ports_out/waddr[3]} {/designs/ipr_cntrl/ports_out/waddr[2]} {/designs/ipr_cntrl/ports_out/waddr[1]} {/designs/ipr_cntrl/ports_out/waddr[0]} {/designs/ipr_cntrl/ports_out/raddr[3]} {/designs/ipr_cntrl/ports_out/raddr[2]} {/designs/ipr_cntrl/ports_out/raddr[1]} {/designs/ipr_cntrl/ports_out/raddr[0]} /designs/ipr_cntrl/ports_out/fifo_full /designs/ipr_cntrl/ports_out/read_if_gnt /designs/ipr_cntrl/ports_out/read_if_rvalid {/designs/ipr_cntrl/ports_out/read_if_rdata[31]} {/designs/ipr_cntrl/ports_out/read_if_rdata[30]} {/designs/ipr_cntrl/ports_out/read_if_rdata[29]} {/designs/ipr_cntrl/ports_out/read_if_rdata[28]} {/designs/ipr_cntrl/ports_out/read_if_rdata[27]} {/designs/ipr_cntrl/ports_out/read_if_rdata[26]} {/designs/ipr_cntrl/ports_out/read_if_rdata[25]} {/designs/ipr_cntrl/ports_out/read_if_rdata[24]} {/designs/ipr_cntrl/ports_out/read_if_rdata[23]} {/designs/ipr_cntrl/ports_out/read_if_rdata[22]} {/designs/ipr_cntrl/ports_out/read_if_rdata[21]} {/designs/ipr_cntrl/ports_out/read_if_rdata[20]} {/designs/ipr_cntrl/ports_out/read_if_rdata[19]} {/designs/ipr_cntrl/ports_out/read_if_rdata[18]} {/designs/ipr_cntrl/ports_out/read_if_rdata[17]} {/designs/ipr_cntrl/ports_out/read_if_rdata[16]} {/designs/ipr_cntrl/ports_out/read_if_rdata[15]} {/designs/ipr_cntrl/ports_out/read_if_rdata[14]} {/designs/ipr_cntrl/ports_out/read_if_rdata[13]} {/designs/ipr_cntrl/ports_out/read_if_rdata[12]} {/designs/ipr_cntrl/ports_out/read_if_rdata[11]} {/designs/ipr_cntrl/ports_out/read_if_rdata[10]} {/designs/ipr_cntrl/ports_out/read_if_rdata[9]} {/designs/ipr_cntrl/ports_out/read_if_rdata[8]} {/designs/ipr_cntrl/ports_out/read_if_rdata[7]} {/designs/ipr_cntrl/ports_out/read_if_rdata[6]} {/designs/ipr_cntrl/ports_out/read_if_rdata[5]} {/designs/ipr_cntrl/ports_out/read_if_rdata[4]} {/designs/ipr_cntrl/ports_out/read_if_rdata[3]} {/designs/ipr_cntrl/ports_out/read_if_rdata[2]} {/designs/ipr_cntrl/ports_out/read_if_rdata[1]} {/designs/ipr_cntrl/ports_out/read_if_rdata[0]} /designs/ipr_cntrl/ports_out/write_if_gnt /designs/ipr_cntrl/ports_out/write_if_rvalid {/designs/ipr_cntrl/ports_out/write_if_rdata[31]} {/designs/ipr_cntrl/ports_out/write_if_rdata[30]} {/designs/ipr_cntrl/ports_out/write_if_rdata[29]} {/designs/ipr_cntrl/ports_out/write_if_rdata[28]} {/designs/ipr_cntrl/ports_out/write_if_rdata[27]} {/designs/ipr_cntrl/ports_out/write_if_rdata[26]} {/designs/ipr_cntrl/ports_out/write_if_rdata[25]} {/designs/ipr_cntrl/ports_out/write_if_rdata[24]} {/designs/ipr_cntrl/ports_out/write_if_rdata[23]} {/designs/ipr_cntrl/ports_out/write_if_rdata[22]} {/designs/ipr_cntrl/ports_out/write_if_rdata[21]} {/designs/ipr_cntrl/ports_out/write_if_rdata[20]} {/designs/ipr_cntrl/ports_out/write_if_rdata[19]} {/designs/ipr_cntrl/ports_out/write_if_rdata[18]} {/designs/ipr_cntrl/ports_out/write_if_rdata[17]} {/designs/ipr_cntrl/ports_out/write_if_rdata[16]} {/designs/ipr_cntrl/ports_out/write_if_rdata[15]} {/designs/ipr_cntrl/ports_out/write_if_rdata[14]} {/designs/ipr_cntrl/ports_out/write_if_rdata[13]} {/designs/ipr_cntrl/ports_out/write_if_rdata[12]} {/designs/ipr_cntrl/ports_out/write_if_rdata[11]} {/designs/ipr_cntrl/ports_out/write_if_rdata[10]} {/designs/ipr_cntrl/ports_out/write_if_rdata[9]} {/designs/ipr_cntrl/ports_out/write_if_rdata[8]} {/designs/ipr_cntrl/ports_out/write_if_rdata[7]} {/designs/ipr_cntrl/ports_out/write_if_rdata[6]} {/designs/ipr_cntrl/ports_out/write_if_rdata[5]} {/designs/ipr_cntrl/ports_out/write_if_rdata[4]} {/designs/ipr_cntrl/ports_out/write_if_rdata[3]} {/designs/ipr_cntrl/ports_out/write_if_rdata[2]} {/designs/ipr_cntrl/ports_out/write_if_rdata[1]} {/designs/ipr_cntrl/ports_out/write_if_rdata[0]}}]  -name I2O -group /designs/ipr_cntrl/timing/cost_groups/I2O
path_group -paths [specify_paths -through {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_hier/RC_CG_HIER_INST0/pins_in/enable /designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_hier/RC_CG_HIER_INST0/instances_seq/RC_CGIC_INST/pins_in/E}]  -name cg_enable_group_clk -group /designs/ipr_cntrl/timing/cost_groups/cg_enable_group_clk
# BEGIN DFT SECTION
::legacy::set_attribute -quiet dft_scan_style muxed_scan /
::legacy::set_attribute -quiet dft_scanbit_waveform_analysis false /
# END DFT SECTION
::legacy::set_attribute -quiet seq_reason_deleted_internal {{async_fifo_i/winc_r unloaded async_fifo_i/winc_r} {async_fifo_i/rptr_empty_inst/arempty_reg unloaded async_fifo_i/rptr_empty_inst/arempty} {async_fifo_i/wptr_full_inst/awfull_reg unloaded async_fifo_i/wptr_full_inst/awfull} {{async_fifo_i_rptr_empty_inst/rptr_reg[4]} {{merged with async_fifo_i_rptr_empty_inst/rbin_reg[4]}} {async_fifo_i/rptr_empty_inst/rptr[4]} {async_fifo_i/rptr_empty_inst/rbin[4]}} {{async_fifo_i_wptr_full_inst/wptr_reg[4]} {{merged with async_fifo_i_wptr_full_inst/wbin_reg[4]}} {async_fifo_i/wptr_full_inst/wptr[4]} {async_fifo_i/wptr_full_inst/wbin[4]}} {write_inflight_reg {{merged with write_gnt_dly_reg}} write_inflight write_gnt_dly} {read_inflight_reg {{merged with read_gnt_dly_reg}} read_inflight read_gnt_dly}} /designs/ipr_cntrl
::legacy::set_attribute -quiet qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 121} {cell_count 111} {utilization  0.00} {runtime 2 71 1 36} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 148} {cell_count 164} {utilization  0.00} {runtime 0 71 0 36} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 148} {cell_count 164} {utilization  0.00} {runtime 1 74 1 39} }{reify {wns 898} {tns 0} {vep 0} {area 69} {cell_count 81} {utilization  0.00} {runtime 0 74 0 40} }{global_incr_map {wns 784} {tns 0} {vep 0} {area 69} {cell_count 81} {utilization  0.00} {runtime 1 75 0 40} }{incr_opt {wns 214748365} {tns 0} {vep 0} {area 69} {cell_count 81} {utilization  0.00} {runtime 0 82 0 45} }} /designs/ipr_cntrl
::legacy::set_attribute -quiet seq_mbci_coverage 0.0 /designs/ipr_cntrl
::legacy::set_attribute -quiet hdl_user_name ipr_cntrl /designs/ipr_cntrl
::legacy::set_attribute -quiet hdl_filelist {{default -sv {TARGET_GENUS TARGET_RTL TARGET_SYNTHESIS SYNTHESIS} {/project/tsmc16/users/iday/ws/git/riscv-grid/pulp/rtl/ipr_dir/read_write_interface.sv} {} {}} {default -sv {TARGET_GENUS TARGET_RTL TARGET_SYNTHESIS SYNTHESIS} {/project/tsmc16/users/iday/ws/git/riscv-grid/pulp/rtl/ipr_dir/sv_ipr/rtl_syn/rptr_empty.sv /project/tsmc16/users/iday/ws/git/riscv-grid/pulp/rtl/ipr_dir/sv_ipr/rtl_syn/sync_r2w.sv /project/tsmc16/users/iday/ws/git/riscv-grid/pulp/rtl/ipr_dir/sv_ipr/rtl_syn/sync_w2r.sv /project/tsmc16/users/iday/ws/git/riscv-grid/pulp/rtl/ipr_dir/sv_ipr/rtl_syn/wptr_full.sv /project/tsmc16/users/iday/ws/git/riscv-grid/pulp/rtl/ipr_dir/sv_ipr/rtl_syn/async_fifo.sv /project/tsmc16/users/iday/ws/git/riscv-grid/pulp/rtl/ipr_dir/sv_ipr/rtl_syn/ipr_cntrl.sv} {} {}}} /designs/ipr_cntrl
::legacy::set_attribute -quiet seq_reason_deleted {{async_fifo_i/winc_r unloaded} {async_fifo_i/rptr_empty_inst/arempty_reg unloaded} {async_fifo_i/wptr_full_inst/awfull_reg unloaded} {{async_fifo_i_rptr_empty_inst/rptr_reg[4]} {{merged with async_fifo_i_rptr_empty_inst/rbin_reg[4]}}} {{async_fifo_i_wptr_full_inst/wptr_reg[4]} {{merged with async_fifo_i_wptr_full_inst/wbin_reg[4]}}} {write_inflight_reg {{merged with write_gnt_dly_reg}}} {read_inflight_reg {{merged with read_gnt_dly_reg}}}} /designs/ipr_cntrl
::legacy::set_attribute -quiet verification_directory fv/ipr_cntrl /designs/ipr_cntrl
::legacy::set_attribute -quiet arch_filename /project/tsmc16/users/iday/ws/git/riscv-grid/pulp/rtl/ipr_dir/sv_ipr/rtl_syn/ipr_cntrl.sv /designs/ipr_cntrl
::legacy::set_attribute -quiet entity_filename /project/tsmc16/users/iday/ws/git/riscv-grid/pulp/rtl/ipr_dir/sv_ipr/rtl_syn/ipr_cntrl.sv /designs/ipr_cntrl
::legacy::set_attribute -quiet original_name w_clk /designs/ipr_cntrl/ports_in/w_clk
::legacy::set_attribute -quiet original_name w_rst_n /designs/ipr_cntrl/ports_in/w_rst_n
::legacy::set_attribute -quiet original_name r_clk /designs/ipr_cntrl/ports_in/r_clk
::legacy::set_attribute -quiet original_name r_rst_n /designs/ipr_cntrl/ports_in/r_rst_n
::legacy::set_attribute -quiet original_name {rdata[7]} {/designs/ipr_cntrl/ports_in/rdata[7]}
::legacy::set_attribute -quiet original_name {rdata[6]} {/designs/ipr_cntrl/ports_in/rdata[6]}
::legacy::set_attribute -quiet original_name {rdata[5]} {/designs/ipr_cntrl/ports_in/rdata[5]}
::legacy::set_attribute -quiet original_name {rdata[4]} {/designs/ipr_cntrl/ports_in/rdata[4]}
::legacy::set_attribute -quiet original_name {rdata[3]} {/designs/ipr_cntrl/ports_in/rdata[3]}
::legacy::set_attribute -quiet original_name {rdata[2]} {/designs/ipr_cntrl/ports_in/rdata[2]}
::legacy::set_attribute -quiet original_name {rdata[1]} {/designs/ipr_cntrl/ports_in/rdata[1]}
::legacy::set_attribute -quiet original_name {rdata[0]} {/designs/ipr_cntrl/ports_in/rdata[0]}
::legacy::set_attribute -quiet original_name read_if.req /designs/ipr_cntrl/ports_in/read_if_req
::legacy::set_attribute -quiet original_name {read_if.addr[31]} {/designs/ipr_cntrl/ports_in/read_if_addr[31]}
::legacy::set_attribute -quiet original_name {read_if.addr[30]} {/designs/ipr_cntrl/ports_in/read_if_addr[30]}
::legacy::set_attribute -quiet original_name {read_if.addr[29]} {/designs/ipr_cntrl/ports_in/read_if_addr[29]}
::legacy::set_attribute -quiet original_name {read_if.addr[28]} {/designs/ipr_cntrl/ports_in/read_if_addr[28]}
::legacy::set_attribute -quiet original_name {read_if.addr[27]} {/designs/ipr_cntrl/ports_in/read_if_addr[27]}
::legacy::set_attribute -quiet original_name {read_if.addr[26]} {/designs/ipr_cntrl/ports_in/read_if_addr[26]}
::legacy::set_attribute -quiet original_name {read_if.addr[25]} {/designs/ipr_cntrl/ports_in/read_if_addr[25]}
::legacy::set_attribute -quiet original_name {read_if.addr[24]} {/designs/ipr_cntrl/ports_in/read_if_addr[24]}
::legacy::set_attribute -quiet original_name {read_if.addr[23]} {/designs/ipr_cntrl/ports_in/read_if_addr[23]}
::legacy::set_attribute -quiet original_name {read_if.addr[22]} {/designs/ipr_cntrl/ports_in/read_if_addr[22]}
::legacy::set_attribute -quiet original_name {read_if.addr[21]} {/designs/ipr_cntrl/ports_in/read_if_addr[21]}
::legacy::set_attribute -quiet original_name {read_if.addr[20]} {/designs/ipr_cntrl/ports_in/read_if_addr[20]}
::legacy::set_attribute -quiet original_name {read_if.addr[19]} {/designs/ipr_cntrl/ports_in/read_if_addr[19]}
::legacy::set_attribute -quiet original_name {read_if.addr[18]} {/designs/ipr_cntrl/ports_in/read_if_addr[18]}
::legacy::set_attribute -quiet original_name {read_if.addr[17]} {/designs/ipr_cntrl/ports_in/read_if_addr[17]}
::legacy::set_attribute -quiet original_name {read_if.addr[16]} {/designs/ipr_cntrl/ports_in/read_if_addr[16]}
::legacy::set_attribute -quiet original_name {read_if.addr[15]} {/designs/ipr_cntrl/ports_in/read_if_addr[15]}
::legacy::set_attribute -quiet original_name {read_if.addr[14]} {/designs/ipr_cntrl/ports_in/read_if_addr[14]}
::legacy::set_attribute -quiet original_name {read_if.addr[13]} {/designs/ipr_cntrl/ports_in/read_if_addr[13]}
::legacy::set_attribute -quiet original_name {read_if.addr[12]} {/designs/ipr_cntrl/ports_in/read_if_addr[12]}
::legacy::set_attribute -quiet original_name {read_if.addr[11]} {/designs/ipr_cntrl/ports_in/read_if_addr[11]}
::legacy::set_attribute -quiet original_name {read_if.addr[10]} {/designs/ipr_cntrl/ports_in/read_if_addr[10]}
::legacy::set_attribute -quiet original_name {read_if.addr[9]} {/designs/ipr_cntrl/ports_in/read_if_addr[9]}
::legacy::set_attribute -quiet original_name {read_if.addr[8]} {/designs/ipr_cntrl/ports_in/read_if_addr[8]}
::legacy::set_attribute -quiet original_name {read_if.addr[7]} {/designs/ipr_cntrl/ports_in/read_if_addr[7]}
::legacy::set_attribute -quiet original_name {read_if.addr[6]} {/designs/ipr_cntrl/ports_in/read_if_addr[6]}
::legacy::set_attribute -quiet original_name {read_if.addr[5]} {/designs/ipr_cntrl/ports_in/read_if_addr[5]}
::legacy::set_attribute -quiet original_name {read_if.addr[4]} {/designs/ipr_cntrl/ports_in/read_if_addr[4]}
::legacy::set_attribute -quiet original_name {read_if.addr[3]} {/designs/ipr_cntrl/ports_in/read_if_addr[3]}
::legacy::set_attribute -quiet original_name {read_if.addr[2]} {/designs/ipr_cntrl/ports_in/read_if_addr[2]}
::legacy::set_attribute -quiet original_name {read_if.addr[1]} {/designs/ipr_cntrl/ports_in/read_if_addr[1]}
::legacy::set_attribute -quiet original_name {read_if.addr[0]} {/designs/ipr_cntrl/ports_in/read_if_addr[0]}
::legacy::set_attribute -quiet original_name {read_if.be[3]} {/designs/ipr_cntrl/ports_in/read_if_be[3]}
::legacy::set_attribute -quiet original_name {read_if.be[2]} {/designs/ipr_cntrl/ports_in/read_if_be[2]}
::legacy::set_attribute -quiet original_name {read_if.be[1]} {/designs/ipr_cntrl/ports_in/read_if_be[1]}
::legacy::set_attribute -quiet original_name {read_if.be[0]} {/designs/ipr_cntrl/ports_in/read_if_be[0]}
::legacy::set_attribute -quiet original_name read_if.we /designs/ipr_cntrl/ports_in/read_if_we
::legacy::set_attribute -quiet original_name write_if.req /designs/ipr_cntrl/ports_in/write_if_req
::legacy::set_attribute -quiet original_name {write_if.addr[31]} {/designs/ipr_cntrl/ports_in/write_if_addr[31]}
::legacy::set_attribute -quiet original_name {write_if.addr[30]} {/designs/ipr_cntrl/ports_in/write_if_addr[30]}
::legacy::set_attribute -quiet original_name {write_if.addr[29]} {/designs/ipr_cntrl/ports_in/write_if_addr[29]}
::legacy::set_attribute -quiet original_name {write_if.addr[28]} {/designs/ipr_cntrl/ports_in/write_if_addr[28]}
::legacy::set_attribute -quiet original_name {write_if.addr[27]} {/designs/ipr_cntrl/ports_in/write_if_addr[27]}
::legacy::set_attribute -quiet original_name {write_if.addr[26]} {/designs/ipr_cntrl/ports_in/write_if_addr[26]}
::legacy::set_attribute -quiet original_name {write_if.addr[25]} {/designs/ipr_cntrl/ports_in/write_if_addr[25]}
::legacy::set_attribute -quiet original_name {write_if.addr[24]} {/designs/ipr_cntrl/ports_in/write_if_addr[24]}
::legacy::set_attribute -quiet original_name {write_if.addr[23]} {/designs/ipr_cntrl/ports_in/write_if_addr[23]}
::legacy::set_attribute -quiet original_name {write_if.addr[22]} {/designs/ipr_cntrl/ports_in/write_if_addr[22]}
::legacy::set_attribute -quiet original_name {write_if.addr[21]} {/designs/ipr_cntrl/ports_in/write_if_addr[21]}
::legacy::set_attribute -quiet original_name {write_if.addr[20]} {/designs/ipr_cntrl/ports_in/write_if_addr[20]}
::legacy::set_attribute -quiet original_name {write_if.addr[19]} {/designs/ipr_cntrl/ports_in/write_if_addr[19]}
::legacy::set_attribute -quiet original_name {write_if.addr[18]} {/designs/ipr_cntrl/ports_in/write_if_addr[18]}
::legacy::set_attribute -quiet original_name {write_if.addr[17]} {/designs/ipr_cntrl/ports_in/write_if_addr[17]}
::legacy::set_attribute -quiet original_name {write_if.addr[16]} {/designs/ipr_cntrl/ports_in/write_if_addr[16]}
::legacy::set_attribute -quiet original_name {write_if.addr[15]} {/designs/ipr_cntrl/ports_in/write_if_addr[15]}
::legacy::set_attribute -quiet original_name {write_if.addr[14]} {/designs/ipr_cntrl/ports_in/write_if_addr[14]}
::legacy::set_attribute -quiet original_name {write_if.addr[13]} {/designs/ipr_cntrl/ports_in/write_if_addr[13]}
::legacy::set_attribute -quiet original_name {write_if.addr[12]} {/designs/ipr_cntrl/ports_in/write_if_addr[12]}
::legacy::set_attribute -quiet original_name {write_if.addr[11]} {/designs/ipr_cntrl/ports_in/write_if_addr[11]}
::legacy::set_attribute -quiet original_name {write_if.addr[10]} {/designs/ipr_cntrl/ports_in/write_if_addr[10]}
::legacy::set_attribute -quiet original_name {write_if.addr[9]} {/designs/ipr_cntrl/ports_in/write_if_addr[9]}
::legacy::set_attribute -quiet original_name {write_if.addr[8]} {/designs/ipr_cntrl/ports_in/write_if_addr[8]}
::legacy::set_attribute -quiet original_name {write_if.addr[7]} {/designs/ipr_cntrl/ports_in/write_if_addr[7]}
::legacy::set_attribute -quiet original_name {write_if.addr[6]} {/designs/ipr_cntrl/ports_in/write_if_addr[6]}
::legacy::set_attribute -quiet original_name {write_if.addr[5]} {/designs/ipr_cntrl/ports_in/write_if_addr[5]}
::legacy::set_attribute -quiet original_name {write_if.addr[4]} {/designs/ipr_cntrl/ports_in/write_if_addr[4]}
::legacy::set_attribute -quiet original_name {write_if.addr[3]} {/designs/ipr_cntrl/ports_in/write_if_addr[3]}
::legacy::set_attribute -quiet original_name {write_if.addr[2]} {/designs/ipr_cntrl/ports_in/write_if_addr[2]}
::legacy::set_attribute -quiet original_name {write_if.addr[1]} {/designs/ipr_cntrl/ports_in/write_if_addr[1]}
::legacy::set_attribute -quiet original_name {write_if.addr[0]} {/designs/ipr_cntrl/ports_in/write_if_addr[0]}
::legacy::set_attribute -quiet original_name {write_if.wdata[31]} {/designs/ipr_cntrl/ports_in/write_if_wdata[31]}
::legacy::set_attribute -quiet original_name {write_if.wdata[30]} {/designs/ipr_cntrl/ports_in/write_if_wdata[30]}
::legacy::set_attribute -quiet original_name {write_if.wdata[29]} {/designs/ipr_cntrl/ports_in/write_if_wdata[29]}
::legacy::set_attribute -quiet original_name {write_if.wdata[28]} {/designs/ipr_cntrl/ports_in/write_if_wdata[28]}
::legacy::set_attribute -quiet original_name {write_if.wdata[27]} {/designs/ipr_cntrl/ports_in/write_if_wdata[27]}
::legacy::set_attribute -quiet original_name {write_if.wdata[26]} {/designs/ipr_cntrl/ports_in/write_if_wdata[26]}
::legacy::set_attribute -quiet original_name {write_if.wdata[25]} {/designs/ipr_cntrl/ports_in/write_if_wdata[25]}
::legacy::set_attribute -quiet original_name {write_if.wdata[24]} {/designs/ipr_cntrl/ports_in/write_if_wdata[24]}
::legacy::set_attribute -quiet original_name {write_if.wdata[23]} {/designs/ipr_cntrl/ports_in/write_if_wdata[23]}
::legacy::set_attribute -quiet original_name {write_if.wdata[22]} {/designs/ipr_cntrl/ports_in/write_if_wdata[22]}
::legacy::set_attribute -quiet original_name {write_if.wdata[21]} {/designs/ipr_cntrl/ports_in/write_if_wdata[21]}
::legacy::set_attribute -quiet original_name {write_if.wdata[20]} {/designs/ipr_cntrl/ports_in/write_if_wdata[20]}
::legacy::set_attribute -quiet original_name {write_if.wdata[19]} {/designs/ipr_cntrl/ports_in/write_if_wdata[19]}
::legacy::set_attribute -quiet original_name {write_if.wdata[18]} {/designs/ipr_cntrl/ports_in/write_if_wdata[18]}
::legacy::set_attribute -quiet original_name {write_if.wdata[17]} {/designs/ipr_cntrl/ports_in/write_if_wdata[17]}
::legacy::set_attribute -quiet original_name {write_if.wdata[16]} {/designs/ipr_cntrl/ports_in/write_if_wdata[16]}
::legacy::set_attribute -quiet original_name {write_if.wdata[15]} {/designs/ipr_cntrl/ports_in/write_if_wdata[15]}
::legacy::set_attribute -quiet original_name {write_if.wdata[14]} {/designs/ipr_cntrl/ports_in/write_if_wdata[14]}
::legacy::set_attribute -quiet original_name {write_if.wdata[13]} {/designs/ipr_cntrl/ports_in/write_if_wdata[13]}
::legacy::set_attribute -quiet original_name {write_if.wdata[12]} {/designs/ipr_cntrl/ports_in/write_if_wdata[12]}
::legacy::set_attribute -quiet original_name {write_if.wdata[11]} {/designs/ipr_cntrl/ports_in/write_if_wdata[11]}
::legacy::set_attribute -quiet original_name {write_if.wdata[10]} {/designs/ipr_cntrl/ports_in/write_if_wdata[10]}
::legacy::set_attribute -quiet original_name {write_if.wdata[9]} {/designs/ipr_cntrl/ports_in/write_if_wdata[9]}
::legacy::set_attribute -quiet original_name {write_if.wdata[8]} {/designs/ipr_cntrl/ports_in/write_if_wdata[8]}
::legacy::set_attribute -quiet original_name {write_if.wdata[7]} {/designs/ipr_cntrl/ports_in/write_if_wdata[7]}
::legacy::set_attribute -quiet original_name {write_if.wdata[6]} {/designs/ipr_cntrl/ports_in/write_if_wdata[6]}
::legacy::set_attribute -quiet original_name {write_if.wdata[5]} {/designs/ipr_cntrl/ports_in/write_if_wdata[5]}
::legacy::set_attribute -quiet original_name {write_if.wdata[4]} {/designs/ipr_cntrl/ports_in/write_if_wdata[4]}
::legacy::set_attribute -quiet original_name {write_if.wdata[3]} {/designs/ipr_cntrl/ports_in/write_if_wdata[3]}
::legacy::set_attribute -quiet original_name {write_if.wdata[2]} {/designs/ipr_cntrl/ports_in/write_if_wdata[2]}
::legacy::set_attribute -quiet original_name {write_if.wdata[1]} {/designs/ipr_cntrl/ports_in/write_if_wdata[1]}
::legacy::set_attribute -quiet original_name {write_if.wdata[0]} {/designs/ipr_cntrl/ports_in/write_if_wdata[0]}
::legacy::set_attribute -quiet original_name write_if.we /designs/ipr_cntrl/ports_in/write_if_we
::legacy::set_attribute -quiet original_name {write_if.be[3]} {/designs/ipr_cntrl/ports_in/write_if_be[3]}
::legacy::set_attribute -quiet original_name {write_if.be[2]} {/designs/ipr_cntrl/ports_in/write_if_be[2]}
::legacy::set_attribute -quiet original_name {write_if.be[1]} {/designs/ipr_cntrl/ports_in/write_if_be[1]}
::legacy::set_attribute -quiet original_name {write_if.be[0]} {/designs/ipr_cntrl/ports_in/write_if_be[0]}
::legacy::set_attribute -quiet original_name error_flag /designs/ipr_cntrl/ports_out/error_flag
::legacy::set_attribute -quiet original_name we /designs/ipr_cntrl/ports_out/we
::legacy::set_attribute -quiet original_name re /designs/ipr_cntrl/ports_out/re
::legacy::set_attribute -quiet original_name {wdata[7]} {/designs/ipr_cntrl/ports_out/wdata[7]}
::legacy::set_attribute -quiet original_name {wdata[6]} {/designs/ipr_cntrl/ports_out/wdata[6]}
::legacy::set_attribute -quiet original_name {wdata[5]} {/designs/ipr_cntrl/ports_out/wdata[5]}
::legacy::set_attribute -quiet original_name {wdata[4]} {/designs/ipr_cntrl/ports_out/wdata[4]}
::legacy::set_attribute -quiet original_name {wdata[3]} {/designs/ipr_cntrl/ports_out/wdata[3]}
::legacy::set_attribute -quiet original_name {wdata[2]} {/designs/ipr_cntrl/ports_out/wdata[2]}
::legacy::set_attribute -quiet original_name {wdata[1]} {/designs/ipr_cntrl/ports_out/wdata[1]}
::legacy::set_attribute -quiet original_name {wdata[0]} {/designs/ipr_cntrl/ports_out/wdata[0]}
::legacy::set_attribute -quiet original_name {waddr[3]} {/designs/ipr_cntrl/ports_out/waddr[3]}
::legacy::set_attribute -quiet original_name {waddr[2]} {/designs/ipr_cntrl/ports_out/waddr[2]}
::legacy::set_attribute -quiet original_name {waddr[1]} {/designs/ipr_cntrl/ports_out/waddr[1]}
::legacy::set_attribute -quiet original_name {waddr[0]} {/designs/ipr_cntrl/ports_out/waddr[0]}
::legacy::set_attribute -quiet original_name {raddr[3]} {/designs/ipr_cntrl/ports_out/raddr[3]}
::legacy::set_attribute -quiet original_name {raddr[2]} {/designs/ipr_cntrl/ports_out/raddr[2]}
::legacy::set_attribute -quiet original_name {raddr[1]} {/designs/ipr_cntrl/ports_out/raddr[1]}
::legacy::set_attribute -quiet original_name {raddr[0]} {/designs/ipr_cntrl/ports_out/raddr[0]}
::legacy::set_attribute -quiet original_name fifo_full /designs/ipr_cntrl/ports_out/fifo_full
::legacy::set_attribute -quiet original_name read_if.gnt /designs/ipr_cntrl/ports_out/read_if_gnt
::legacy::set_attribute -quiet original_name read_if.rvalid /designs/ipr_cntrl/ports_out/read_if_rvalid
::legacy::set_attribute -quiet original_name {read_if.rdata[31]} {/designs/ipr_cntrl/ports_out/read_if_rdata[31]}
::legacy::set_attribute -quiet original_name {read_if.rdata[30]} {/designs/ipr_cntrl/ports_out/read_if_rdata[30]}
::legacy::set_attribute -quiet original_name {read_if.rdata[29]} {/designs/ipr_cntrl/ports_out/read_if_rdata[29]}
::legacy::set_attribute -quiet original_name {read_if.rdata[28]} {/designs/ipr_cntrl/ports_out/read_if_rdata[28]}
::legacy::set_attribute -quiet original_name {read_if.rdata[27]} {/designs/ipr_cntrl/ports_out/read_if_rdata[27]}
::legacy::set_attribute -quiet original_name {read_if.rdata[26]} {/designs/ipr_cntrl/ports_out/read_if_rdata[26]}
::legacy::set_attribute -quiet original_name {read_if.rdata[25]} {/designs/ipr_cntrl/ports_out/read_if_rdata[25]}
::legacy::set_attribute -quiet original_name {read_if.rdata[24]} {/designs/ipr_cntrl/ports_out/read_if_rdata[24]}
::legacy::set_attribute -quiet original_name {read_if.rdata[23]} {/designs/ipr_cntrl/ports_out/read_if_rdata[23]}
::legacy::set_attribute -quiet original_name {read_if.rdata[22]} {/designs/ipr_cntrl/ports_out/read_if_rdata[22]}
::legacy::set_attribute -quiet original_name {read_if.rdata[21]} {/designs/ipr_cntrl/ports_out/read_if_rdata[21]}
::legacy::set_attribute -quiet original_name {read_if.rdata[20]} {/designs/ipr_cntrl/ports_out/read_if_rdata[20]}
::legacy::set_attribute -quiet original_name {read_if.rdata[19]} {/designs/ipr_cntrl/ports_out/read_if_rdata[19]}
::legacy::set_attribute -quiet original_name {read_if.rdata[18]} {/designs/ipr_cntrl/ports_out/read_if_rdata[18]}
::legacy::set_attribute -quiet original_name {read_if.rdata[17]} {/designs/ipr_cntrl/ports_out/read_if_rdata[17]}
::legacy::set_attribute -quiet original_name {read_if.rdata[16]} {/designs/ipr_cntrl/ports_out/read_if_rdata[16]}
::legacy::set_attribute -quiet original_name {read_if.rdata[15]} {/designs/ipr_cntrl/ports_out/read_if_rdata[15]}
::legacy::set_attribute -quiet original_name {read_if.rdata[14]} {/designs/ipr_cntrl/ports_out/read_if_rdata[14]}
::legacy::set_attribute -quiet original_name {read_if.rdata[13]} {/designs/ipr_cntrl/ports_out/read_if_rdata[13]}
::legacy::set_attribute -quiet original_name {read_if.rdata[12]} {/designs/ipr_cntrl/ports_out/read_if_rdata[12]}
::legacy::set_attribute -quiet original_name {read_if.rdata[11]} {/designs/ipr_cntrl/ports_out/read_if_rdata[11]}
::legacy::set_attribute -quiet original_name {read_if.rdata[10]} {/designs/ipr_cntrl/ports_out/read_if_rdata[10]}
::legacy::set_attribute -quiet original_name {read_if.rdata[9]} {/designs/ipr_cntrl/ports_out/read_if_rdata[9]}
::legacy::set_attribute -quiet original_name {read_if.rdata[8]} {/designs/ipr_cntrl/ports_out/read_if_rdata[8]}
::legacy::set_attribute -quiet original_name {read_if.rdata[7]} {/designs/ipr_cntrl/ports_out/read_if_rdata[7]}
::legacy::set_attribute -quiet original_name {read_if.rdata[6]} {/designs/ipr_cntrl/ports_out/read_if_rdata[6]}
::legacy::set_attribute -quiet original_name {read_if.rdata[5]} {/designs/ipr_cntrl/ports_out/read_if_rdata[5]}
::legacy::set_attribute -quiet original_name {read_if.rdata[4]} {/designs/ipr_cntrl/ports_out/read_if_rdata[4]}
::legacy::set_attribute -quiet original_name {read_if.rdata[3]} {/designs/ipr_cntrl/ports_out/read_if_rdata[3]}
::legacy::set_attribute -quiet original_name {read_if.rdata[2]} {/designs/ipr_cntrl/ports_out/read_if_rdata[2]}
::legacy::set_attribute -quiet original_name {read_if.rdata[1]} {/designs/ipr_cntrl/ports_out/read_if_rdata[1]}
::legacy::set_attribute -quiet original_name {read_if.rdata[0]} {/designs/ipr_cntrl/ports_out/read_if_rdata[0]}
::legacy::set_attribute -quiet original_name write_if.gnt /designs/ipr_cntrl/ports_out/write_if_gnt
::legacy::set_attribute -quiet original_name write_if.rvalid /designs/ipr_cntrl/ports_out/write_if_rvalid
::legacy::set_attribute -quiet original_name {write_if.rdata[31]} {/designs/ipr_cntrl/ports_out/write_if_rdata[31]}
::legacy::set_attribute -quiet original_name {write_if.rdata[30]} {/designs/ipr_cntrl/ports_out/write_if_rdata[30]}
::legacy::set_attribute -quiet original_name {write_if.rdata[29]} {/designs/ipr_cntrl/ports_out/write_if_rdata[29]}
::legacy::set_attribute -quiet original_name {write_if.rdata[28]} {/designs/ipr_cntrl/ports_out/write_if_rdata[28]}
::legacy::set_attribute -quiet original_name {write_if.rdata[27]} {/designs/ipr_cntrl/ports_out/write_if_rdata[27]}
::legacy::set_attribute -quiet original_name {write_if.rdata[26]} {/designs/ipr_cntrl/ports_out/write_if_rdata[26]}
::legacy::set_attribute -quiet original_name {write_if.rdata[25]} {/designs/ipr_cntrl/ports_out/write_if_rdata[25]}
::legacy::set_attribute -quiet original_name {write_if.rdata[24]} {/designs/ipr_cntrl/ports_out/write_if_rdata[24]}
::legacy::set_attribute -quiet original_name {write_if.rdata[23]} {/designs/ipr_cntrl/ports_out/write_if_rdata[23]}
::legacy::set_attribute -quiet original_name {write_if.rdata[22]} {/designs/ipr_cntrl/ports_out/write_if_rdata[22]}
::legacy::set_attribute -quiet original_name {write_if.rdata[21]} {/designs/ipr_cntrl/ports_out/write_if_rdata[21]}
::legacy::set_attribute -quiet original_name {write_if.rdata[20]} {/designs/ipr_cntrl/ports_out/write_if_rdata[20]}
::legacy::set_attribute -quiet original_name {write_if.rdata[19]} {/designs/ipr_cntrl/ports_out/write_if_rdata[19]}
::legacy::set_attribute -quiet original_name {write_if.rdata[18]} {/designs/ipr_cntrl/ports_out/write_if_rdata[18]}
::legacy::set_attribute -quiet original_name {write_if.rdata[17]} {/designs/ipr_cntrl/ports_out/write_if_rdata[17]}
::legacy::set_attribute -quiet original_name {write_if.rdata[16]} {/designs/ipr_cntrl/ports_out/write_if_rdata[16]}
::legacy::set_attribute -quiet original_name {write_if.rdata[15]} {/designs/ipr_cntrl/ports_out/write_if_rdata[15]}
::legacy::set_attribute -quiet original_name {write_if.rdata[14]} {/designs/ipr_cntrl/ports_out/write_if_rdata[14]}
::legacy::set_attribute -quiet original_name {write_if.rdata[13]} {/designs/ipr_cntrl/ports_out/write_if_rdata[13]}
::legacy::set_attribute -quiet original_name {write_if.rdata[12]} {/designs/ipr_cntrl/ports_out/write_if_rdata[12]}
::legacy::set_attribute -quiet original_name {write_if.rdata[11]} {/designs/ipr_cntrl/ports_out/write_if_rdata[11]}
::legacy::set_attribute -quiet original_name {write_if.rdata[10]} {/designs/ipr_cntrl/ports_out/write_if_rdata[10]}
::legacy::set_attribute -quiet original_name {write_if.rdata[9]} {/designs/ipr_cntrl/ports_out/write_if_rdata[9]}
::legacy::set_attribute -quiet original_name {write_if.rdata[8]} {/designs/ipr_cntrl/ports_out/write_if_rdata[8]}
::legacy::set_attribute -quiet original_name {write_if.rdata[7]} {/designs/ipr_cntrl/ports_out/write_if_rdata[7]}
::legacy::set_attribute -quiet original_name {write_if.rdata[6]} {/designs/ipr_cntrl/ports_out/write_if_rdata[6]}
::legacy::set_attribute -quiet original_name {write_if.rdata[5]} {/designs/ipr_cntrl/ports_out/write_if_rdata[5]}
::legacy::set_attribute -quiet original_name {write_if.rdata[4]} {/designs/ipr_cntrl/ports_out/write_if_rdata[4]}
::legacy::set_attribute -quiet original_name {write_if.rdata[3]} {/designs/ipr_cntrl/ports_out/write_if_rdata[3]}
::legacy::set_attribute -quiet original_name {write_if.rdata[2]} {/designs/ipr_cntrl/ports_out/write_if_rdata[2]}
::legacy::set_attribute -quiet original_name {write_if.rdata[1]} {/designs/ipr_cntrl/ports_out/write_if_rdata[1]}
::legacy::set_attribute -quiet original_name {write_if.rdata[0]} {/designs/ipr_cntrl/ports_out/write_if_rdata[0]}
::legacy::set_attribute -quiet hdl_user_name rptr_empty /designs/ipr_cntrl/subdesigns/rptr_empty_ADDRSIZE4
::legacy::set_attribute -quiet hdl_filelist {{default -sv {TARGET_GENUS TARGET_RTL TARGET_SYNTHESIS SYNTHESIS} {/project/tsmc16/users/iday/ws/git/riscv-grid/pulp/rtl/ipr_dir/sv_ipr/rtl_syn/rptr_empty.sv} {} {}}} /designs/ipr_cntrl/subdesigns/rptr_empty_ADDRSIZE4
::legacy::set_attribute -quiet arch_filename /project/tsmc16/users/iday/ws/git/riscv-grid/pulp/rtl/ipr_dir/sv_ipr/rtl_syn/rptr_empty.sv /designs/ipr_cntrl/subdesigns/rptr_empty_ADDRSIZE4
::legacy::set_attribute -quiet entity_filename /project/tsmc16/users/iday/ws/git/riscv-grid/pulp/rtl/ipr_dir/sv_ipr/rtl_syn/rptr_empty.sv /designs/ipr_cntrl/subdesigns/rptr_empty_ADDRSIZE4
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rempty_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rempty_reg
::legacy::set_attribute -quiet original_name async_fifo_i/rptr_empty_inst/rempty /designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rempty_reg
::legacy::set_attribute -quiet single_bit_orig_name async_fifo_i/rptr_empty_inst/rempty /designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rempty_reg
::legacy::set_attribute -quiet original_name async_fifo_i/rptr_empty_inst/rempty/q /designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rempty_reg/pins_out/Q
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[1]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/rptr_empty_inst/rbin[1]}} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/rptr_empty_inst/rbin[1]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[1]}
::legacy::set_attribute -quiet original_name {async_fifo_i/rptr_empty_inst/rbin[1]/q} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[2]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/rptr_empty_inst/rbin[2]}} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/rptr_empty_inst/rbin[2]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[2]}
::legacy::set_attribute -quiet original_name {async_fifo_i/rptr_empty_inst/rbin[2]/q} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[3]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/rptr_empty_inst/rbin[3]}} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/rptr_empty_inst/rbin[3]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[3]}
::legacy::set_attribute -quiet original_name {async_fifo_i/rptr_empty_inst/rbin[3]/q} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[4]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/rptr_empty_inst/rbin[4]}} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[4]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/rptr_empty_inst/rbin[4]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[4]}
::legacy::set_attribute -quiet original_name {async_fifo_i/rptr_empty_inst/rbin[4]/q} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[4]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[0]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/rptr_empty_inst/rbin[0]}} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/rptr_empty_inst/rbin[0]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[0]}
::legacy::set_attribute -quiet original_name {async_fifo_i/rptr_empty_inst/rbin[0]/q} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rbin_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[0]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/rptr_empty_inst/rptr[0]}} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/rptr_empty_inst/rptr[0]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[0]}
::legacy::set_attribute -quiet original_name {async_fifo_i/rptr_empty_inst/rptr[0]/q} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[3]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/rptr_empty_inst/rptr[3]}} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/rptr_empty_inst/rptr[3]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[3]}
::legacy::set_attribute -quiet original_name {async_fifo_i/rptr_empty_inst/rptr[3]/q} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[1]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/rptr_empty_inst/rptr[1]}} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/rptr_empty_inst/rptr[1]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[1]}
::legacy::set_attribute -quiet original_name {async_fifo_i/rptr_empty_inst/rptr[1]/q} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[2]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/rptr_empty_inst/rptr[2]}} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/rptr_empty_inst/rptr[2]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[2]}
::legacy::set_attribute -quiet original_name {async_fifo_i/rptr_empty_inst/rptr[2]/q} {/designs/ipr_cntrl/instances_hier/async_fifo_i_rptr_empty_inst/instances_seq/rptr_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet hdl_user_name wptr_full /designs/ipr_cntrl/subdesigns/wptr_full_ADDRSIZE4
::legacy::set_attribute -quiet hdl_filelist {{default -sv {TARGET_GENUS TARGET_RTL TARGET_SYNTHESIS SYNTHESIS} {/project/tsmc16/users/iday/ws/git/riscv-grid/pulp/rtl/ipr_dir/sv_ipr/rtl_syn/wptr_full.sv} {} {}}} /designs/ipr_cntrl/subdesigns/wptr_full_ADDRSIZE4
::legacy::set_attribute -quiet arch_filename /project/tsmc16/users/iday/ws/git/riscv-grid/pulp/rtl/ipr_dir/sv_ipr/rtl_syn/wptr_full.sv /designs/ipr_cntrl/subdesigns/wptr_full_ADDRSIZE4
::legacy::set_attribute -quiet entity_filename /project/tsmc16/users/iday/ws/git/riscv-grid/pulp/rtl/ipr_dir/sv_ipr/rtl_syn/wptr_full.sv /designs/ipr_cntrl/subdesigns/wptr_full_ADDRSIZE4
::legacy::set_attribute -quiet logical_hier false /designs/ipr_cntrl/subdesigns/RC_CG_MOD
::legacy::set_attribute -quiet boundary_opto strict_no /designs/ipr_cntrl/subdesigns/RC_CG_MOD
::legacy::set_attribute -quiet gint_phase_inversion false /designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_hier/RC_CG_HIER_INST0/instances_seq/RC_CGIC_INST
::legacy::set_attribute -quiet is_genus_clock_gate true /designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_hier/RC_CG_HIER_INST0/instances_seq/RC_CGIC_INST
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[3]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/wptr_full_inst/wptr[3]}} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/wptr_full_inst/wptr[3]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[3]}
::legacy::set_attribute -quiet original_name {async_fifo_i/wptr_full_inst/wptr[3]/q} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[2]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/wptr_full_inst/wptr[2]}} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/wptr_full_inst/wptr[2]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[2]}
::legacy::set_attribute -quiet original_name {async_fifo_i/wptr_full_inst/wptr[2]/q} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[1]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/wptr_full_inst/wptr[1]}} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/wptr_full_inst/wptr[1]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[1]}
::legacy::set_attribute -quiet original_name {async_fifo_i/wptr_full_inst/wptr[1]/q} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[0]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/wptr_full_inst/wptr[0]}} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/wptr_full_inst/wptr[0]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[0]}
::legacy::set_attribute -quiet original_name {async_fifo_i/wptr_full_inst/wptr[0]/q} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wptr_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wfull_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wfull_reg
::legacy::set_attribute -quiet original_name async_fifo_i/wptr_full_inst/wfull /designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wfull_reg
::legacy::set_attribute -quiet single_bit_orig_name async_fifo_i/wptr_full_inst/wfull /designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wfull_reg
::legacy::set_attribute -quiet original_name async_fifo_i/wptr_full_inst/wfull/q /designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wfull_reg/pins_out/Q
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[3]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/wptr_full_inst/wbin[3]}} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/wptr_full_inst/wbin[3]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[3]}
::legacy::set_attribute -quiet original_name {async_fifo_i/wptr_full_inst/wbin[3]/q} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[2]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/wptr_full_inst/wbin[2]}} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/wptr_full_inst/wbin[2]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[2]}
::legacy::set_attribute -quiet original_name {async_fifo_i/wptr_full_inst/wbin[2]/q} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[0]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/wptr_full_inst/wbin[0]}} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/wptr_full_inst/wbin[0]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[0]}
::legacy::set_attribute -quiet original_name {async_fifo_i/wptr_full_inst/wbin[0]/q} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[4]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/wptr_full_inst/wbin[4]}} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[4]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/wptr_full_inst/wbin[4]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[4]}
::legacy::set_attribute -quiet original_name {async_fifo_i/wptr_full_inst/wbin[4]/q} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[4]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[1]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/wptr_full_inst/wbin[1]}} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/wptr_full_inst/wbin[1]} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[1]}
::legacy::set_attribute -quiet original_name {async_fifo_i/wptr_full_inst/wbin[1]/q} {/designs/ipr_cntrl/instances_hier/async_fifo_i_wptr_full_inst/instances_seq/wbin_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[4]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/sync_r2w_inst/wq2_rptr[4]}} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[4]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/sync_r2w_inst/wq2_rptr[4]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[4]}
::legacy::set_attribute -quiet original_name {async_fifo_i/sync_r2w_inst/wq2_rptr[4]/q} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[4]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[3]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/sync_r2w_inst/wq2_rptr[3]}} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/sync_r2w_inst/wq2_rptr[3]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[3]}
::legacy::set_attribute -quiet original_name {async_fifo_i/sync_r2w_inst/wq2_rptr[3]/q} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[2]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/sync_r2w_inst/wq2_rptr[2]}} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/sync_r2w_inst/wq2_rptr[2]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[2]}
::legacy::set_attribute -quiet original_name {async_fifo_i/sync_r2w_inst/wq2_rptr[2]/q} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[1]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/sync_r2w_inst/wq2_rptr[1]}} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/sync_r2w_inst/wq2_rptr[1]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[1]}
::legacy::set_attribute -quiet original_name {async_fifo_i/sync_r2w_inst/wq2_rptr[1]/q} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[4]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/sync_r2w_inst/wq1_rptr[4]}} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[4]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/sync_r2w_inst/wq1_rptr[4]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[4]}
::legacy::set_attribute -quiet original_name {async_fifo_i/sync_r2w_inst/wq1_rptr[4]/q} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[4]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[2]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/sync_r2w_inst/wq1_rptr[2]}} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/sync_r2w_inst/wq1_rptr[2]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[2]}
::legacy::set_attribute -quiet original_name {async_fifo_i/sync_r2w_inst/wq1_rptr[2]/q} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[1]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/sync_r2w_inst/wq1_rptr[1]}} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/sync_r2w_inst/wq1_rptr[1]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[1]}
::legacy::set_attribute -quiet original_name {async_fifo_i/sync_r2w_inst/wq1_rptr[1]/q} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[3]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/sync_r2w_inst/wq1_rptr[3]}} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/sync_r2w_inst/wq1_rptr[3]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[3]}
::legacy::set_attribute -quiet original_name {async_fifo_i/sync_r2w_inst/wq1_rptr[3]/q} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[0]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/sync_r2w_inst/wq2_rptr[0]}} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/sync_r2w_inst/wq2_rptr[0]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[0]}
::legacy::set_attribute -quiet original_name {async_fifo_i/sync_r2w_inst/wq2_rptr[0]/q} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq2_rptr_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[0]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/sync_w2r_inst/rq2_wptr[0]}} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/sync_w2r_inst/rq2_wptr[0]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[0]}
::legacy::set_attribute -quiet original_name {async_fifo_i/sync_w2r_inst/rq2_wptr[0]/q} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[4]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/sync_w2r_inst/rq2_wptr[4]}} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[4]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/sync_w2r_inst/rq2_wptr[4]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[4]}
::legacy::set_attribute -quiet original_name {async_fifo_i/sync_w2r_inst/rq2_wptr[4]/q} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[4]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[3]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/sync_w2r_inst/rq2_wptr[3]}} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/sync_w2r_inst/rq2_wptr[3]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[3]}
::legacy::set_attribute -quiet original_name {async_fifo_i/sync_w2r_inst/rq2_wptr[3]/q} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[2]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/sync_w2r_inst/rq2_wptr[2]}} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/sync_w2r_inst/rq2_wptr[2]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[2]}
::legacy::set_attribute -quiet original_name {async_fifo_i/sync_w2r_inst/rq2_wptr[2]/q} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[1]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/sync_w2r_inst/rq2_wptr[1]}} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/sync_w2r_inst/rq2_wptr[1]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[1]}
::legacy::set_attribute -quiet original_name {async_fifo_i/sync_w2r_inst/rq2_wptr[1]/q} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq2_wptr_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[2]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/sync_w2r_inst/rq1_wptr[2]}} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/sync_w2r_inst/rq1_wptr[2]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[2]}
::legacy::set_attribute -quiet original_name {async_fifo_i/sync_w2r_inst/rq1_wptr[2]/q} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[1]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/sync_w2r_inst/rq1_wptr[1]}} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/sync_w2r_inst/rq1_wptr[1]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[1]}
::legacy::set_attribute -quiet original_name {async_fifo_i/sync_w2r_inst/rq1_wptr[1]/q} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[4]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/sync_w2r_inst/rq1_wptr[4]}} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[4]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/sync_w2r_inst/rq1_wptr[4]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[4]}
::legacy::set_attribute -quiet original_name {async_fifo_i/sync_w2r_inst/rq1_wptr[4]/q} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[4]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[3]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/sync_w2r_inst/rq1_wptr[3]}} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/sync_w2r_inst/rq1_wptr[3]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[3]}
::legacy::set_attribute -quiet original_name {async_fifo_i/sync_w2r_inst/rq1_wptr[3]/q} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[0]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/sync_w2r_inst/rq1_wptr[0]}} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/sync_w2r_inst/rq1_wptr[0]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[0]}
::legacy::set_attribute -quiet original_name {async_fifo_i/sync_w2r_inst/rq1_wptr[0]/q} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_w2r_inst_rq1_wptr_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[0]}
::legacy::set_attribute -quiet original_name {{async_fifo_i/sync_r2w_inst/wq1_rptr[0]}} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {async_fifo_i/sync_r2w_inst/wq1_rptr[0]} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[0]}
::legacy::set_attribute -quiet original_name {async_fifo_i/sync_r2w_inst/wq1_rptr[0]/q} {/designs/ipr_cntrl/instances_seq/async_fifo_i_sync_r2w_inst_wq1_rptr_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/ipr_cntrl/instances_seq/write_gnt_dly_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/ipr_cntrl/instances_seq/write_gnt_dly_reg
::legacy::set_attribute -quiet original_name write_gnt_dly /designs/ipr_cntrl/instances_seq/write_gnt_dly_reg
::legacy::set_attribute -quiet single_bit_orig_name write_gnt_dly /designs/ipr_cntrl/instances_seq/write_gnt_dly_reg
::legacy::set_attribute -quiet original_name write_gnt_dly/q /designs/ipr_cntrl/instances_seq/write_gnt_dly_reg/pins_out/Q
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/ipr_cntrl/instances_seq/read_gnt_dly_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/ipr_cntrl/instances_seq/read_gnt_dly_reg
::legacy::set_attribute -quiet original_name read_gnt_dly /designs/ipr_cntrl/instances_seq/read_gnt_dly_reg
::legacy::set_attribute -quiet single_bit_orig_name read_gnt_dly /designs/ipr_cntrl/instances_seq/read_gnt_dly_reg
::legacy::set_attribute -quiet original_name read_gnt_dly/q /designs/ipr_cntrl/instances_seq/read_gnt_dly_reg/pins_out/Q
# BEGIN PMBIST SECTION
# END PMBIST SECTION
# BEGIN PHYSICAL ANNOTATION SECTION
# END PHYSICAL ANNOTATION SECTION
# BEGIN GLO TBR TABLE
set_db -quiet design:ipr_cntrl .set_boundary_change_new {start restore}
set_db -quiet design:ipr_cntrl .set_boundary_change_new {finish restore}
# END GLO TBR TABLE
#############################################################
#####   FLOW WRITE   ########################################
##
## Written by Genus(TM) Synthesis Solution version 22.16-s078_1
## flowkit v22.15-s003_1
## Written on 13:22:20 18-Jun 2025
#############################################################
#####   Flow Definitions   ##################################

#############################################################
#####   Step Definitions   ##################################


#############################################################
#####   Attribute Definitions   #############################

if {[is_attribute flow_edit_end_steps -obj_type root]} {set_flowkit_db flow_edit_end_steps {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_flowkit_db flow_edit_start_steps {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_flowkit_db flow_footer_tcl {}}
if {[is_attribute flow_header_tcl -obj_type root]} {set_flowkit_db flow_header_tcl {}}
if {[is_attribute flow_metadata -obj_type root]} {set_flowkit_db flow_metadata {}}
if {[is_attribute flow_setup_config -obj_type root]} {set_flowkit_db flow_setup_config {HUDDLE {!!map {}}}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_flowkit_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_flowkit_db flow_step_check_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_flowkit_db flow_step_end_tcl {}}
if {[is_attribute flow_step_order -obj_type root]} {set_flowkit_db flow_step_order {}}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_flowkit_db flow_summary_tcl {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_flowkit_db flow_template_feature_definition {}}
if {[is_attribute flow_template_type -obj_type root]} {set_flowkit_db flow_template_type {}}
if {[is_attribute flow_template_tools -obj_type root]} {set_flowkit_db flow_template_tools {}}
if {[is_attribute flow_template_version -obj_type root]} {set_flowkit_db flow_template_version {}}
if {[is_attribute flow_user_templates -obj_type root]} {set_flowkit_db flow_user_templates {}}


#############################################################
#####   Flow History   ######################################

if {[is_attribute flow_user_templates -obj_type root]} {set_flowkit_db flow_user_templates {}}
if {[is_attribute flow_plugin_steps -obj_type root]} {set_flowkit_db flow_plugin_steps {}}
if {[is_attribute flow_template_type -obj_type root]} {set_flowkit_db flow_template_type {}}
if {[is_attribute flow_template_tools -obj_type root]} {set_flowkit_db flow_template_tools {}}
if {[is_attribute flow_template_version -obj_type root]} {set_flowkit_db flow_template_version {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_flowkit_db flow_template_feature_definition {}}
if {[is_attribute flow_remark -obj_type root]} {set_flowkit_db flow_remark {}}
if {[is_attribute flow_features -obj_type root]} {set_flowkit_db flow_features {}}
if {[is_attribute flow_feature_values -obj_type root]} {set_flowkit_db flow_feature_values {}}
if {[is_attribute flow_write_db_args -obj_type root]} {set_flowkit_db flow_write_db_args {}}
if {[is_attribute flow_write_db_sdc -obj_type root]} {set_flowkit_db flow_write_db_sdc true}
if {[is_attribute flow_write_db_common -obj_type root]} {set_flowkit_db flow_write_db_common false}
if {[is_attribute flow_post_db_overwrite -obj_type root]} {set_flowkit_db flow_post_db_overwrite {}}
if {[is_attribute flow_step_order -obj_type root]} {set_flowkit_db flow_step_order {}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_flowkit_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_flowkit_db flow_step_end_tcl {}}
if {[is_attribute flow_step_last -obj_type root]} {set_flowkit_db flow_step_last {}}
if {[is_attribute flow_step_current -obj_type root]} {set_flowkit_db flow_step_current {}}
if {[is_attribute flow_step_canonical_current -obj_type root]} {set_flowkit_db flow_step_canonical_current {}}
if {[is_attribute flow_step_next -obj_type root]} {set_flowkit_db flow_step_next {}}
if {[is_attribute flow_working_directory -obj_type root]} {set_flowkit_db flow_working_directory .}
if {[is_attribute flow_branch -obj_type root]} {set_flowkit_db flow_branch {}}
if {[is_attribute flow_caller_data -obj_type root]} {set_flowkit_db flow_caller_data {}}
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {set_flowkit_db flow_metrics_snapshot_uuid {}}
if {[is_attribute flow_starting_db -obj_type root]} {set_flowkit_db flow_starting_db {}}
if {[is_attribute flow_db_directory -obj_type root]} {set_flowkit_db flow_db_directory dbs}
if {[is_attribute flow_report_directory -obj_type root]} {set_flowkit_db flow_report_directory reports}
if {[is_attribute flow_log_directory -obj_type root]} {set_flowkit_db flow_log_directory logs}
if {[is_attribute flow_mail_to -obj_type root]} {set_flowkit_db flow_mail_to {}}
if {[is_attribute flow_exit_when_done -obj_type root]} {set_flowkit_db flow_exit_when_done false}
if {[is_attribute flow_mail_on_error -obj_type root]} {set_flowkit_db flow_mail_on_error false}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_flowkit_db flow_summary_tcl {}}
if {[is_attribute flow_history -obj_type root]} {set_flowkit_db flow_history {}}
if {[is_attribute flow_step_last_status -obj_type root]} {set_flowkit_db flow_step_last_status not_run}
if {[is_attribute flow_step_last_msg -obj_type root]} {set_flowkit_db flow_step_last_msg {}}
if {[is_attribute flow_run_tag -obj_type root]} {set_flowkit_db flow_run_tag {}}
if {[is_attribute flow_current_cache -obj_type root]} {set_flowkit_db flow_current_cache {}}
if {[is_attribute flow_step_order_cache -obj_type root]} {set_flowkit_db flow_step_order_cache {}}
if {[is_attribute flow_step_results_cache -obj_type root]} {set_flowkit_db flow_step_results_cache {}}
if {[is_attribute flow_metadata -obj_type root]} {set_flowkit_db flow_metadata {}}
if {[is_attribute flow_execute_in_global -obj_type root]} {set_flowkit_db flow_execute_in_global true}
if {[is_attribute flow_overwrite_db -obj_type root]} {set_flowkit_db flow_overwrite_db false}
if {[is_attribute flow_print_run_information -obj_type root]} {set_flowkit_db flow_print_run_information false}
if {[is_attribute flow_verbose -obj_type root]} {set_flowkit_db flow_verbose true}
if {[is_attribute flow_print_run_information_full -obj_type root]} {set_flowkit_db flow_print_run_information_full false}
if {[is_attribute flow_header_tcl -obj_type root]} {set_flowkit_db flow_header_tcl {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_flowkit_db flow_footer_tcl {}}
if {[is_attribute flow_init_header_tcl -obj_type root]} {set_flowkit_db flow_init_header_tcl {}}
if {[is_attribute flow_init_footer_tcl -obj_type root]} {set_flowkit_db flow_init_footer_tcl {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_flowkit_db flow_edit_start_steps {}}
if {[is_attribute flow_edit_end_steps -obj_type root]} {set_flowkit_db flow_edit_end_steps {}}
if {[is_attribute flow_step_last_number -obj_type root]} {set_flowkit_db flow_step_last_number 0}
if {[is_attribute flow_autoload_applets -obj_type root]} {set_flowkit_db flow_autoload_applets false}
if {[is_attribute flow_autoload_dir -obj_type root]} {set_flowkit_db flow_autoload_dir error}
if {[is_attribute flow_skip_auto_db_save -obj_type root]} {set_flowkit_db flow_skip_auto_db_save true}
if {[is_attribute flow_skip_auto_generate_metrics -obj_type root]} {set_flowkit_db flow_skip_auto_generate_metrics false}
if {[is_attribute flow_top -obj_type root]} {set_flowkit_db flow_top {}}
if {[is_attribute flow_hier_path -obj_type root]} {set_flowkit_db flow_hier_path {}}
if {[is_attribute flow_schedule -obj_type root]} {set_flowkit_db flow_schedule {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_flowkit_db flow_step_check_tcl {}}
if {[is_attribute flow_script -obj_type root]} {set_flowkit_db flow_script {}}
if {[is_attribute flow_yaml_script -obj_type root]} {set_flowkit_db flow_yaml_script {}}
if {[is_attribute flow_cla_enabled_features -obj_type root]} {set_flowkit_db flow_cla_enabled_features {}}
if {[is_attribute flow_cla_inject_tcl -obj_type root]} {set_flowkit_db flow_cla_inject_tcl {}}
if {[is_attribute flow_error_message -obj_type root]} {set_flowkit_db flow_error_message {}}
if {[is_attribute flow_error_errorinfo -obj_type root]} {set_flowkit_db flow_error_errorinfo {}}
if {[is_attribute flow_exclude_time_for_init_flow -obj_type root]} {set_flowkit_db flow_exclude_time_for_init_flow false}
if {[is_attribute flow_error_write_db -obj_type root]} {set_flowkit_db flow_error_write_db true}
if {[is_attribute flow_advanced_metric_isolation -obj_type root]} {set_flowkit_db flow_advanced_metric_isolation flow}
if {[is_attribute flow_yaml_root -obj_type root]} {set_flowkit_db flow_yaml_root {}}
if {[is_attribute flow_yaml_root_dir -obj_type root]} {set_flowkit_db flow_yaml_root_dir {}}
if {[is_attribute flow_setup_config -obj_type root]} {set_flowkit_db flow_setup_config {HUDDLE {!!map {}}}}

#############################################################
#####   User Defined Attributes   ###########################

