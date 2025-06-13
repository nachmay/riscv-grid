
# XM-Sim Command File
# TOOL:	xmsim(64)	24.03-s006
#

set tcl_prompt1 {puts -nonewline "xcelium> "}
set tcl_prompt2 {puts -nonewline "> "}
set vlog_format %h
set vhdl_format %v
set real_precision 6
set display_unit auto
set time_unit module
set heap_garbage_size -200
set heap_garbage_time 0
set assert_report_level note
set assert_stop_level error
set autoscope yes
set assert_1164_warnings yes
set pack_assert_off {}
set severity_pack_assert_off {note warning}
set assert_output_stop_level failed
set tcl_debug_level 0
set relax_path_name 1
set vhdl_vcdmap XX01ZX01X
set intovf_severity_level ERROR
set probe_screen_format 0
set rangecnst_severity_level ERROR
set textio_severity_level ERROR
set vital_timing_checks_on 1
set vlog_code_show_force 0
set assert_count_attempts 1
set tcl_all64 false
set tcl_runerror_exit false
set assert_report_incompletes 0
set show_force 1
set force_reset_by_reinvoke 0
set tcl_relaxed_literal 0
set probe_exclude_patterns {}
set probe_packed_limit 4k
set probe_unpacked_limit 16k
set assert_internal_msg no
set svseed 1
set assert_reporting_mode 0
set vcd_compact_mode 0
set vhdl_forgen_loopindex_enum_pos 0
set xmreplay_dc_debug 0
set tcl_runcmd_interrupt next_command
set tcl_sigval_prefix {#}
database -open -shm -into waves.shm waves -default
probe -create -database waves tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.error_flag tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.fifo_almost_empty tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.fifo_almost_full tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.fifo_empty tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.fifo_full tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.r_clk tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.r_rst_n tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.re tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.read_gnt_dly tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.read_gnt_evt tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.read_inflight tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.w_clk tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.w_rst_n tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.we tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.write_gnt_dly tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.write_gnt_evt tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.write_inflight tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.read_west_if.slave.addr tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.read_west_if.slave.be tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.read_west_if.slave.gnt tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.read_west_if.slave.rdata tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.read_west_if.slave.req tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.read_west_if.slave.rvalid tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.read_west_if.slave.we tb_pulp.i_dut.cluster_domain_i.cluster_i.master_write_if_b[3].slave.addr tb_pulp.i_dut.cluster_domain_i.cluster_i.master_write_if_b[3].slave.be tb_pulp.i_dut.cluster_domain_i.cluster_i.master_write_if_b[3].slave.gnt tb_pulp.i_dut.cluster_domain_i.cluster_i.master_write_if_b[3].slave.rdata tb_pulp.i_dut.cluster_domain_i.cluster_i.master_write_if_b[3].slave.req tb_pulp.i_dut.cluster_domain_i.cluster_i.master_write_if_b[3].slave.rvalid tb_pulp.i_dut.cluster_domain_i.cluster_i.master_write_if_b[3].slave.wdata tb_pulp.i_dut.cluster_domain_i.cluster_i.master_write_if_b[3].slave.we tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.async_fifo_i.fifomem_inst.mem tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.async_fifo_i.fifomem_inst.raddr tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.async_fifo_i.fifomem_inst.rclk tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.async_fifo_i.fifomem_inst.rclken tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.async_fifo_i.fifomem_inst.rdata tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.async_fifo_i.fifomem_inst.rdata_r tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.async_fifo_i.fifomem_inst.waddr tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.async_fifo_i.fifomem_inst.wclk tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.async_fifo_i.fifomem_inst.wclken tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.async_fifo_i.fifomem_inst.wdata tb_pulp.i_dut.cluster_domain_i.cluster_i.CORE[0].core_region_i.fifo_west_i.async_fifo_i.fifomem_inst.wfull

simvision -input /project/tsmc16/users/iday/full_ipr/riscv-grid/regression_tests/ipr_tests/full_empty_mapp_test/build/.simvision/38780_iday__autosave.tcl.svcf
