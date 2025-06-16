set ROOT [file normalize [file dirname [info script]]/../..]
# This script was generated automatically by bender.
if [ info exists search_path ] {
    set search_path_initial $search_path
} else {
    set search_path_initial {}
}

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


