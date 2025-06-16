set ROOT [file normalize [file dirname [info script]]/..]
# This script was generated automatically by bender.
if [ info exists search_path ] {
    set search_path_initial $search_path
} else {
    set search_path_initial {}
}


set search_path $search_path_initial
set_db init_hdl_search_path $search_path

read_hdl -sv \
    -define { \
        TARGET_GENUS \
        TARGET_RTL \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/rtl/ipr_dir/read_write_interface.sv" \
        "$ROOT/rtl/ipr_dir/ipr_region.sv" \
        "$ROOT/rtl/ipr_dir/ipr_fifo.sv" \
    ]

set search_path $search_path_initial
set_db init_hdl_search_path $search_path

read_hdl -sv \
    -define { \
        TARGET_GENUS \
        TARGET_RTL \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/tech_cells_generic-6a4b27e0e56cbcda/src/rtl/tc_sram.sv" \
    ]
set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/include"
set_db init_hdl_search_path $search_path

read_hdl -sv \
    -define { \
        TARGET_GENUS \
        TARGET_RTL \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/binary_to_gray.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/cb_filter_pkg.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/cc_onehot.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/cf_math_pkg.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/clk_int_div.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/delta_counter.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/ecc_pkg.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/edge_propagator_tx.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/exp_backoff.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/fifo_v3.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/gray_to_binary.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/isochronous_4phase_handshake.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/isochronous_spill_register.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/lfsr.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/lfsr_16bit.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/lfsr_8bit.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/mv_filter.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/onehot_to_bin.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/plru_tree.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/popcount.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/rr_arb_tree.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/rstgen_bypass.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/serial_deglitch.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/shift_reg.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/spill_register_flushable.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/stream_demux.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/stream_filter.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/stream_fork.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/stream_intf.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/stream_join.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/stream_mux.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/sub_per_hash.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/sync.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/sync_wedge.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/unread.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/cdc_reset_ctrlr_pkg.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/cdc_2phase.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/cdc_4phase.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/addr_decode.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/cb_filter.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/cdc_fifo_2phase.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/counter.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/ecc_decode.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/ecc_encode.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/edge_detect.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/lzc.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/max_counter.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/rstgen.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/spill_register.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/stream_delay.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/stream_fifo.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/stream_fork_dynamic.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/cdc_reset_ctrlr.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/cdc_fifo_gray.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/fall_through_register.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/id_queue.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/stream_to_mem.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/stream_arbiter_flushable.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/stream_register.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/stream_xbar.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/cdc_fifo_gray_clearable.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/cdc_2phase_clearable.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/stream_arbiter.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/stream_omega_net.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/deprecated/clock_divider_counter.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/deprecated/find_first_one.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/deprecated/generic_LFSR_8bit.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/deprecated/generic_fifo.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/deprecated/prioarbiter.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/deprecated/pulp_sync.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/deprecated/pulp_sync_wedge.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/deprecated/rrarbiter.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/deprecated/clock_divider.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/deprecated/fifo_v2.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/deprecated/fifo_v1.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/edge_propagator_ack.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/edge_propagator.sv" \
        "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/src/edge_propagator_rx.sv" \
    ]


set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/include"
set_db init_hdl_search_path $search_path

read_hdl -sv \
    -define { \
        TARGET_GENUS \
        TARGET_RTL \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/fpnew-3f06cec0e0e04d73/src/fpnew_pkg.sv" \
        "$ROOT/.bender/git/checkouts/fpnew-3f06cec0e0e04d73/src/fpnew_cast_multi.sv" \
        "$ROOT/.bender/git/checkouts/fpnew-3f06cec0e0e04d73/src/fpnew_classifier.sv" \
        "$ROOT/.bender/git/checkouts/fpnew-3f06cec0e0e04d73/src/fpnew_divsqrt_multi.sv" \
        "$ROOT/.bender/git/checkouts/fpnew-3f06cec0e0e04d73/src/fpnew_fma.sv" \
        "$ROOT/.bender/git/checkouts/fpnew-3f06cec0e0e04d73/src/fpnew_fma_multi.sv" \
        "$ROOT/.bender/git/checkouts/fpnew-3f06cec0e0e04d73/src/fpnew_noncomp.sv" \
        "$ROOT/.bender/git/checkouts/fpnew-3f06cec0e0e04d73/src/fpnew_opgroup_block.sv" \
        "$ROOT/.bender/git/checkouts/fpnew-3f06cec0e0e04d73/src/fpnew_opgroup_fmt_slice.sv" \
        "$ROOT/.bender/git/checkouts/fpnew-3f06cec0e0e04d73/src/fpnew_opgroup_multifmt_slice.sv" \
        "$ROOT/.bender/git/checkouts/fpnew-3f06cec0e0e04d73/src/fpnew_rounding.sv" \
        "$ROOT/.bender/git/checkouts/fpnew-3f06cec0e0e04d73/src/fpnew_top.sv" \
    ]


set search_path $search_path_initial
set_db init_hdl_search_path $search_path

read_hdl -sv \
    -define { \
        TARGET_GENUS \
        TARGET_RTL \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/rtl/ibex_register_file_latch.sv" \
    ]

set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/rtl"
lappend search_path "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/vendor/lowrisc_ip/ip/prim/rtl"
set_db init_hdl_search_path $search_path

read_hdl -sv \
    -define { \
        RVFI=true \
        TARGET_GENUS \
        TARGET_RTL \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/rtl/ibex_pkg.sv" \
        "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/rtl/ibex_register_file_ff.sv" \
        "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/vendor/lowrisc_ip/ip/prim/rtl/prim_assert.sv" \
        "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/rtl/ibex_alu.sv" \
        "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/rtl/ibex_compressed_decoder.sv" \
        "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/rtl/ibex_controller.sv" \
        "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/rtl/ibex_counter.sv" \
        "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/rtl/ibex_csr.sv" \
        "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/rtl/ibex_decoder.sv" \
        "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/rtl/ibex_fetch_fifo.sv" \
        "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/rtl/ibex_load_store_unit.sv" \
        "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/rtl/ibex_multdiv_fast.sv" \
        "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/rtl/ibex_multdiv_slow.sv" \
        "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/rtl/ibex_pmp.sv" \
        "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/rtl/ibex_tracer_pkg.sv" \
        "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/rtl/ibex_wb_stage.sv" \
        "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/rtl/ibex_cs_registers.sv" \
        "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/rtl/ibex_ex_block.sv" \
        "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/rtl/ibex_id_stage.sv" \
        "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/rtl/ibex_prefetch_buffer.sv" \
        "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/rtl/ibex_if_stage.sv" \
        "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/rtl/ibex_core.sv" \
        "$ROOT/.bender/git/checkouts/ibex-71db63ed1d9e7444/rtl/ibex_core_tracing.sv" \
    ]





set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/include"
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/include"
set_db init_hdl_search_path $search_path

read_hdl -sv \
    -define { \
        TARGET_GENUS \
        TARGET_RTL \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_pkg.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_intf.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_atop_filter.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_burst_splitter.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_cdc_dst.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_cdc_src.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_cut.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_delayer.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_demux.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_dw_downsizer.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_dw_upsizer.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_id_prepend.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_isolate.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_join.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_lite_demux.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_lite_join.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_lite_mailbox.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_lite_mux.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_lite_regs.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_lite_to_apb.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_lite_to_axi.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_modify_address.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_mux.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_serializer.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_cdc.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_err_slv.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_dw_converter.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_multicut.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_to_axi_lite.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_lite_xbar.sv" \
        "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/src/axi_xbar.sv" \
    ]















set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/include"
set_db init_hdl_search_path $search_path

read_hdl -sv \
    -define { \
        TARGET_GENUS \
        TARGET_RTL \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/include/apu_core_package.sv" \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/include/riscv_defines.sv" \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/include/riscv_tracer_defines.sv" \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/riscv_alu.sv" \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/riscv_alu_basic.sv" \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/riscv_alu_div.sv" \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/riscv_compressed_decoder.sv" \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/riscv_controller.sv" \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/riscv_cs_registers.sv" \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/riscv_decoder.sv" \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/riscv_int_controller.sv" \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/riscv_ex_stage.sv" \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/riscv_hwloop_controller.sv" \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/riscv_hwloop_regs.sv" \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/register_file_test_wrap.sv" \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/riscv_id_stage.sv" \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/riscv_if_stage.sv" \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/riscv_load_store_unit.sv" \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/riscv_mult.sv" \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/riscv_prefetch_buffer.sv" \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/riscv_prefetch_L0_buffer.sv" \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/riscv_core.sv" \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/riscv_apu_disp.sv" \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/riscv_fetch_fifo.sv" \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/riscv_L0_buffer.sv" \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/riscv_pmp.sv" \
    ]

set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/include"
set_db init_hdl_search_path $search_path

read_hdl -sv \
    -define { \
        TARGET_GENUS \
        TARGET_RTL \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/riscv_register_file_latch.sv" \
]


set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/include"
lappend search_path "$ROOT/.bender/git/checkouts/cluster_interconnect-abcda71a83f4333c/rtl/low_latency_interco"
lappend search_path "$ROOT/.bender/git/checkouts/cluster_interconnect-abcda71a83f4333c/rtl/peripheral_interco"
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/include"
lappend search_path "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/include"
lappend search_path "$ROOT/rtl/includes"
set_db init_hdl_search_path $search_path

#added line 1318 yossida

read_hdl -sv \
    -define { \
        TARGET_GENUS \
        TARGET_RTL \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/pulp_cluster-48721e3ce381c984/rtl/periph_demux.sv" \
        "$ROOT/.bender/git/checkouts/pulp_cluster-48721e3ce381c984/rtl/core_demux.sv" \
    ]

set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/include"
lappend search_path "$ROOT/.bender/git/checkouts/cluster_interconnect-abcda71a83f4333c/rtl/low_latency_interco"
lappend search_path "$ROOT/.bender/git/checkouts/cluster_interconnect-abcda71a83f4333c/rtl/peripheral_interco"
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/include"
lappend search_path "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/include"
lappend search_path "$ROOT/rtl/includes"
lappend search_path "$ROOT/rtl/ipr_dir"
set_db init_hdl_search_path $search_path

read_hdl -sv \
    -define { \
        TRACE_EXECUTION \
        TARGET_GENUS \
        TARGET_RTL \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/pulp_cluster-48721e3ce381c984/rtl/core_region_ipr.sv" \
    ]


set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/include"
lappend search_path "$ROOT/.bender/git/checkouts/cluster_interconnect-abcda71a83f4333c/rtl/low_latency_interco"
lappend search_path "$ROOT/.bender/git/checkouts/cluster_interconnect-abcda71a83f4333c/rtl/peripheral_interco"
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/include"
lappend search_path "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/include"
lappend search_path "$ROOT/.bender/git/checkouts/register_interface-1e5f22ae6b2b5b5d/include"
lappend search_path "$ROOT/rtl/includes"

set_db init_hdl_search_path $search_path

read_hdl -sv \
    -define { \
        TARGET_GENUS \
        TARGET_RTL \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/pulp_soc-c519334bd3ac5582/rtl/components/pulp_interfaces.sv" \
    ]


set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/hwpe-stream-2efec61d39f03cd2/rtl"
set_db init_hdl_search_path $search_path

read_hdl -sv \
    -define { \
        TARGET_GENUS \
        TARGET_RTL \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/hwpe-stream-2efec61d39f03cd2/rtl/hwpe_stream_package.sv" \
           ]











set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/cluster_interconnect-abcda71a83f4333c/rtl/low_latency_interco"
lappend search_path "$ROOT/.bender/git/checkouts/cluster_interconnect-abcda71a83f4333c/rtl/peripheral_interco"
lappend search_path "$ROOT/.bender/git/checkouts/hci-fdec9f801a620ca3/rtl"
set_db init_hdl_search_path $search_path

read_hdl -sv \
    -define { \
        TARGET_GENUS \
        TARGET_RTL \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/hci-fdec9f801a620ca3/rtl/common/hci_package.sv" \
        "$ROOT/.bender/git/checkouts/hci-fdec9f801a620ca3/rtl/common/hci_interfaces.sv" \
        "$ROOT/.bender/git/checkouts/hci-fdec9f801a620ca3/rtl/interco/hci_shallow_interconnect.sv" \
        "$ROOT/.bender/git/checkouts/hci-fdec9f801a620ca3/rtl/hci_interconnect.sv" \
    ]
set search_path $search_path_initial


set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/include"
lappend search_path "$ROOT/.bender/git/checkouts/cluster_interconnect-abcda71a83f4333c/rtl/low_latency_interco"
lappend search_path "$ROOT/.bender/git/checkouts/cluster_interconnect-abcda71a83f4333c/rtl/peripheral_interco"
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/include"
lappend search_path "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/include"
lappend search_path "$ROOT/rtl/includes"
set_db init_hdl_search_path $search_path

#added line 1318 yossida

read_hdl -sv \
    -define { \
        TARGET_GENUS \
        TARGET_RTL \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/pulp_cluster-48721e3ce381c984/packages/pulp_cluster_package.sv" \
        "$ROOT/.bender/git/checkouts/pulp_cluster-48721e3ce381c984/rtl/periph_demux.sv" \
        "$ROOT/.bender/git/checkouts/pulp_cluster-48721e3ce381c984/rtl/tcdm_banks_wrap.sv" \
        "$ROOT/.bender/git/checkouts/pulp_cluster-48721e3ce381c984/rtl/xbar_pe_wrap.sv" \
        "$ROOT/.bender/git/checkouts/pulp_cluster-48721e3ce381c984/rtl/cluster_interconnect_wrap.sv" \
        "$ROOT/.bender/git/checkouts/pulp_cluster-48721e3ce381c984/rtl/core_demux.sv" \
    ]


set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/include"
lappend search_path "$ROOT/.bender/git/checkouts/cluster_interconnect-abcda71a83f4333c/rtl/low_latency_interco"
lappend search_path "$ROOT/.bender/git/checkouts/cluster_interconnect-abcda71a83f4333c/rtl/peripheral_interco"
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/include"
lappend search_path "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/include"
lappend search_path "$ROOT/rtl/includes"
set_db init_hdl_search_path $search_path

read_hdl -sv \
    -define { \
        TARGET_GENUS \
        TARGET_RTL \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/pulp_cluster-48721e3ce381c984/rtl/pulp_cluster_modify.sv" \
    ]



