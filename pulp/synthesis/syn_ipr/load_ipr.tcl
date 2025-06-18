set ROOT [file normalize [file dirname [info script]]/../..]
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
        "$ROOT/rtl/ipr_dir/sv_ipr/rtl_syn/rptr_empty.sv" \
        "$ROOT/rtl/ipr_dir/sv_ipr/rtl_syn/sync_ptr.sv" \
        "$ROOT/rtl/ipr_dir/sv_ipr/rtl_syn/sync_r2w.sv" \
        "$ROOT/rtl/ipr_dir/sv_ipr/rtl_syn/sync_w2r.sv" \
        "$ROOT/rtl/ipr_dir/sv_ipr/rtl_syn/wptr_full.sv" \
        "$ROOT/rtl/ipr_dir/sv_ipr/rtl_syn/async_fifo.sv" \
        "$ROOT/rtl/ipr_dir/sv_ipr/rtl_syn/ipr_cntrl.sv" \
    ]


