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



