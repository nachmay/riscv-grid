set ROOT [file normalize [file dirname [info script]]/../..]
# This script was generated automatically by bender.
if [ info exists search_path ] {
    set search_path_initial $search_path
} else {
    set search_path_initial {}
}















set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/include"
lappend search_path "$ROOT/.bender/git/checkouts/udma_core-25b62500cd51a5c6/rtl"
set_db init_hdl_search_path $search_path

read_hdl -sv \
    -define { \
        TARGET_GENUS \
        TARGET_RTL \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/udma_core-25b62500cd51a5c6/rtl/common/io_clk_gen.sv" \
        "$ROOT/.bender/git/checkouts/udma_core-25b62500cd51a5c6/rtl/common/io_event_counter.sv" \
        "$ROOT/.bender/git/checkouts/udma_core-25b62500cd51a5c6/rtl/common/io_generic_fifo.sv" \
        "$ROOT/.bender/git/checkouts/udma_core-25b62500cd51a5c6/rtl/common/io_shiftreg.sv" \
        "$ROOT/.bender/git/checkouts/udma_core-25b62500cd51a5c6/rtl/common/udma_apb_if.sv" \
        "$ROOT/.bender/git/checkouts/udma_core-25b62500cd51a5c6/rtl/common/udma_clk_div_cnt.sv" \
        "$ROOT/.bender/git/checkouts/udma_core-25b62500cd51a5c6/rtl/common/udma_ctrl.sv" \
        "$ROOT/.bender/git/checkouts/udma_core-25b62500cd51a5c6/rtl/common/udma_dc_fifo.sv" \
        "$ROOT/.bender/git/checkouts/udma_core-25b62500cd51a5c6/rtl/core/udma_arbiter.sv" \
        "$ROOT/.bender/git/checkouts/udma_core-25b62500cd51a5c6/rtl/core/udma_ch_addrgen.sv" \
        "$ROOT/.bender/git/checkouts/udma_core-25b62500cd51a5c6/rtl/common/io_tx_fifo.sv" \
        "$ROOT/.bender/git/checkouts/udma_core-25b62500cd51a5c6/rtl/common/io_tx_fifo_dc.sv" \
        "$ROOT/.bender/git/checkouts/udma_core-25b62500cd51a5c6/rtl/common/io_tx_fifo_mark.sv" \
        "$ROOT/.bender/git/checkouts/udma_core-25b62500cd51a5c6/rtl/common/udma_clkgen.sv" \
        "$ROOT/.bender/git/checkouts/udma_core-25b62500cd51a5c6/rtl/core/udma_tx_channels.sv" \
        "$ROOT/.bender/git/checkouts/udma_core-25b62500cd51a5c6/rtl/core/udma_stream_unit.sv" \
        "$ROOT/.bender/git/checkouts/udma_core-25b62500cd51a5c6/rtl/core/udma_rx_channels.sv" \
        "$ROOT/.bender/git/checkouts/udma_core-25b62500cd51a5c6/rtl/core/udma_core.sv" \
    ]


read_hdl -sv \
    -define { \
        TARGET_GENUS \
        TARGET_RTL \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/udma_camera-86b8118519db0f98/rtl/camera_reg_if.sv" \
        "$ROOT/.bender/git/checkouts/udma_camera-86b8118519db0f98/rtl/camera_if.sv" \
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
        "$ROOT/.bender/git/checkouts/udma_external_per-3d0c2cf4ffbe1df6/rtl/udma_external_per_reg_if.sv" \
        "$ROOT/.bender/git/checkouts/udma_external_per-3d0c2cf4ffbe1df6/rtl/udma_traffic_gen_rx.sv" \
        "$ROOT/.bender/git/checkouts/udma_external_per-3d0c2cf4ffbe1df6/rtl/udma_traffic_gen_tx.sv" \
        "$ROOT/.bender/git/checkouts/udma_external_per-3d0c2cf4ffbe1df6/rtl/udma_external_per_top.sv" \
        "$ROOT/.bender/git/checkouts/udma_external_per-3d0c2cf4ffbe1df6/rtl/udma_external_per_wrapper.sv" \
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
        "$ROOT/.bender/git/checkouts/udma_filter-a40516c05ed4bf59/rtl/udma_filter_au.sv" \
        "$ROOT/.bender/git/checkouts/udma_filter-a40516c05ed4bf59/rtl/udma_filter_bincu.sv" \
        "$ROOT/.bender/git/checkouts/udma_filter-a40516c05ed4bf59/rtl/udma_filter_reg_if.sv" \
        "$ROOT/.bender/git/checkouts/udma_filter-a40516c05ed4bf59/rtl/udma_filter_rx_dataout.sv" \
        "$ROOT/.bender/git/checkouts/udma_filter-a40516c05ed4bf59/rtl/udma_filter_tx_datafetch.sv" \
        "$ROOT/.bender/git/checkouts/udma_filter-a40516c05ed4bf59/rtl/udma_filter.sv" \
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
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/cdc_fifo_gray_hyper.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/graycode_hyper.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/clock_diff_out.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/clk_gen_hyper.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/onehot_to_bin_hyper.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/ddr_out.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/hyperbus_delay_line.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/read_clk_rwds.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/hyperbus_phy.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/cmd_addr_gen.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/ddr_in.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/udma_hyper_reg_if_common.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/udma_hyper_reg_if_mulid.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/udma_rxbuffer.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/udma_txbuffer.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/udma_hyper_ctrl.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/udma_hyperbus_mulid.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/hyper_unpack.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/udma_cfg_outbuff.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/hyperbus_mux_generic.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/hyper_twd_trans_spliter.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/hyper_rr_flag_req.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/hyper_arbiter.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/hyper_arb_primitive.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/io_generic_fifo_hyper.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/udma_dc_fifo_hyper.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/dc_token_ring_fifo_din_hyper.v" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/dc_token_ring_fifo_dout_hyper.v" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/dc_token_ring_hyper.v" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/dc_data_buffer_hyper.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/dc_full_detector_hyper.v" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/dc_synchronizer_hyper.v" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/udma_cmd_queue.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/udma_hyper_busy.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/udma_hyper_busy_phy.sv" \
        "$ROOT/.bender/git/checkouts/udma_hyper-0e2eefc5c5ed37ee/udma-hyperbus/src/udma_hyper_top.sv" \
    ]

set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/udma_i2c-86169ce0b4173d19/rtl"
set_db init_hdl_search_path $search_path

read_hdl -sv \
    -define { \
        TARGET_GENUS \
        TARGET_RTL \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/udma_i2c-86169ce0b4173d19/rtl/udma_i2c_bus_ctrl.sv" \
        "$ROOT/.bender/git/checkouts/udma_i2c-86169ce0b4173d19/rtl/udma_i2c_reg_if.sv" \
        "$ROOT/.bender/git/checkouts/udma_i2c-86169ce0b4173d19/rtl/udma_i2c_control.sv" \
        "$ROOT/.bender/git/checkouts/udma_i2c-86169ce0b4173d19/rtl/udma_i2c_top.sv" \
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
        "$ROOT/.bender/git/checkouts/udma_i2s-4c2d946afbfb2209/rtl/cic_comb.sv" \
        "$ROOT/.bender/git/checkouts/udma_i2s-4c2d946afbfb2209/rtl/cic_integrator.sv" \
        "$ROOT/.bender/git/checkouts/udma_i2s-4c2d946afbfb2209/rtl/i2s_clk_gen.sv" \
        "$ROOT/.bender/git/checkouts/udma_i2s-4c2d946afbfb2209/rtl/i2s_rx_channel.sv" \
        "$ROOT/.bender/git/checkouts/udma_i2s-4c2d946afbfb2209/rtl/i2s_tx_channel.sv" \
        "$ROOT/.bender/git/checkouts/udma_i2s-4c2d946afbfb2209/rtl/i2s_ws_gen.sv" \
        "$ROOT/.bender/git/checkouts/udma_i2s-4c2d946afbfb2209/rtl/udma_i2s_reg_if.sv" \
        "$ROOT/.bender/git/checkouts/udma_i2s-4c2d946afbfb2209/rtl/cic_top.sv" \
        "$ROOT/.bender/git/checkouts/udma_i2s-4c2d946afbfb2209/rtl/i2s_clkws_gen.sv" \
        "$ROOT/.bender/git/checkouts/udma_i2s-4c2d946afbfb2209/rtl/pdm_top.sv" \
        "$ROOT/.bender/git/checkouts/udma_i2s-4c2d946afbfb2209/rtl/i2s_txrx.sv" \
        "$ROOT/.bender/git/checkouts/udma_i2s-4c2d946afbfb2209/rtl/udma_i2s_top.sv" \
    ]

set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/include"
lappend search_path "$ROOT/.bender/git/checkouts/udma_qspi-ad1b15dd0651b0f6/rtl"
set_db init_hdl_search_path $search_path

read_hdl -sv \
    -define { \
        TARGET_GENUS \
        TARGET_RTL \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/udma_qspi-ad1b15dd0651b0f6/rtl/udma_spim_ctrl.sv" \
        "$ROOT/.bender/git/checkouts/udma_qspi-ad1b15dd0651b0f6/rtl/udma_spim_reg_if.sv" \
        "$ROOT/.bender/git/checkouts/udma_qspi-ad1b15dd0651b0f6/rtl/udma_spim_txrx.sv" \
        "$ROOT/.bender/git/checkouts/udma_qspi-ad1b15dd0651b0f6/rtl/udma_spim_top.sv" \
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
        "$ROOT/.bender/git/checkouts/udma_sdio-eb03ff2eeab7e6c0/rtl/sdio_crc16.sv" \
        "$ROOT/.bender/git/checkouts/udma_sdio-eb03ff2eeab7e6c0/rtl/sdio_crc7.sv" \
        "$ROOT/.bender/git/checkouts/udma_sdio-eb03ff2eeab7e6c0/rtl/udma_sdio_reg_if.sv" \
        "$ROOT/.bender/git/checkouts/udma_sdio-eb03ff2eeab7e6c0/rtl/sdio_txrx_cmd.sv" \
        "$ROOT/.bender/git/checkouts/udma_sdio-eb03ff2eeab7e6c0/rtl/sdio_txrx_data.sv" \
        "$ROOT/.bender/git/checkouts/udma_sdio-eb03ff2eeab7e6c0/rtl/sdio_txrx.sv" \
        "$ROOT/.bender/git/checkouts/udma_sdio-eb03ff2eeab7e6c0/rtl/udma_sdio_top.sv" \
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
        "$ROOT/.bender/git/checkouts/udma_uart-987a5c3aaae1cf57/rtl/udma_uart_reg_if.sv" \
        "$ROOT/.bender/git/checkouts/udma_uart-987a5c3aaae1cf57/rtl/udma_uart_rx.sv" \
        "$ROOT/.bender/git/checkouts/udma_uart-987a5c3aaae1cf57/rtl/udma_uart_tx.sv" \
        "$ROOT/.bender/git/checkouts/udma_uart-987a5c3aaae1cf57/rtl/udma_uart_top.sv" \
    ]














set search_path $search_path_initial
lappend search_path "$ROOT/.bender/git/checkouts/axi-d42e23417b564294/include"
lappend search_path "$ROOT/.bender/git/checkouts/cluster_interconnect-abcda71a83f4333c/rtl/low_latency_interco"
lappend search_path "$ROOT/.bender/git/checkouts/cluster_interconnect-abcda71a83f4333c/rtl/peripheral_interco"
lappend search_path "$ROOT/.bender/git/checkouts/common_cells-f18d75f6d6d026a5/include"
lappend search_path "$ROOT/.bender/git/checkouts/cv32e40p-0a3884e05ea5a482/rtl/include"
lappend search_path "$ROOT/.bender/git/checkouts/register_interface-1e5f22ae6b2b5b5d/include"
set_db init_hdl_search_path $search_path

read_hdl -sv \
    -define { \
        TARGET_GENUS \
        TARGET_RTL \
        TARGET_SYNTHESIS \
    } \
    [list \
        "$ROOT/.bender/git/checkouts/pulp_soc-c519334bd3ac5582/rtl/udma_subsystem/udma_subsystem.sv" \
    ]

