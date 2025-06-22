# ####################################################################

#  Created by Genus(TM) Synthesis Solution 22.16-s078_1 on Sun Jun 22 18:27:32 UTC 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design ipr

create_clock -name "clk" -period 2.0 -waveform {0.0 1.0} [get_ports w_clk]
group_path -name C2C -from [list \
  [get_cells async_fifo_i_wptr_full_inst/wfull_reg]  \
  [get_cells {async_fifo_i_wptr_full_inst/wbin_reg[1]}]  \
  [get_cells {async_fifo_i_wptr_full_inst/wbin_reg[2]}]  \
  [get_cells {async_fifo_i_wptr_full_inst/wbin_reg[0]}]  \
  [get_cells {async_fifo_i_wptr_full_inst/wbin_reg[3]}]  \
  [get_cells read_gnt_dly_reg]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq1_rptr_reg[0]}]  \
  [get_cells write_gnt_dly_reg]  \
  [get_cells async_fifo_i_rptr_empty_inst/rempty_reg]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rbin_reg[2]}]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rbin_reg[0]}]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rbin_reg[3]}]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rbin_reg[1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][7]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq2_wptr_reg[3]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq2_wptr_reg[2]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq2_wptr_reg[1]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq2_wptr_reg[0]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq1_wptr_reg[2]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq1_wptr_reg[0]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq1_wptr_reg[1]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq1_wptr_reg[3]}]  \
  [get_cells {async_fifo_i_wptr_full_inst/wptr_reg[2]}]  \
  [get_cells {async_fifo_i_wptr_full_inst/wptr_reg[1]}]  \
  [get_cells {async_fifo_i_wptr_full_inst/wptr_reg[0]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq2_rptr_reg[3]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq2_rptr_reg[2]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq2_rptr_reg[1]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq1_rptr_reg[2]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq1_rptr_reg[1]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq2_rptr_reg[0]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq1_rptr_reg[3]}]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rptr_reg[2]}]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rptr_reg[1]}]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rptr_reg[0]}] ] -to [list \
  [get_cells async_fifo_i_fifomem_inst/RC_CG_HIER_INST0/RC_CGIC_INST]  \
  [get_cells async_fifo_i_fifomem_inst/RC_CG_HIER_INST1/RC_CGIC_INST]  \
  [get_cells async_fifo_i_fifomem_inst/RC_CG_HIER_INST2/RC_CGIC_INST]  \
  [get_cells async_fifo_i_fifomem_inst/RC_CG_HIER_INST3/RC_CGIC_INST]  \
  [get_cells async_fifo_i_fifomem_inst/RC_CG_HIER_INST4/RC_CGIC_INST]  \
  [get_cells async_fifo_i_fifomem_inst/RC_CG_HIER_INST5/RC_CGIC_INST]  \
  [get_cells async_fifo_i_fifomem_inst/RC_CG_HIER_INST6/RC_CGIC_INST]  \
  [get_cells async_fifo_i_fifomem_inst/RC_CG_HIER_INST7/RC_CGIC_INST]  \
  [get_cells async_fifo_i_rptr_empty_inst/RC_CG_HIER_INST8/RC_CGIC_INST]  \
  [get_cells async_fifo_i_wptr_full_inst/RC_CG_HIER_INST9/RC_CGIC_INST]  \
  [get_cells async_fifo_i_wptr_full_inst/wfull_reg]  \
  [get_cells {async_fifo_i_wptr_full_inst/wbin_reg[1]}]  \
  [get_cells {async_fifo_i_wptr_full_inst/wbin_reg[2]}]  \
  [get_cells {async_fifo_i_wptr_full_inst/wbin_reg[0]}]  \
  [get_cells {async_fifo_i_wptr_full_inst/wbin_reg[3]}]  \
  [get_cells read_gnt_dly_reg]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq1_rptr_reg[0]}]  \
  [get_cells write_gnt_dly_reg]  \
  [get_cells async_fifo_i_rptr_empty_inst/rempty_reg]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rbin_reg[2]}]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rbin_reg[0]}]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rbin_reg[3]}]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rbin_reg[1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][7]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq2_wptr_reg[3]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq2_wptr_reg[2]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq2_wptr_reg[1]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq2_wptr_reg[0]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq1_wptr_reg[2]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq1_wptr_reg[0]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq1_wptr_reg[1]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq1_wptr_reg[3]}]  \
  [get_cells {async_fifo_i_wptr_full_inst/wptr_reg[2]}]  \
  [get_cells {async_fifo_i_wptr_full_inst/wptr_reg[1]}]  \
  [get_cells {async_fifo_i_wptr_full_inst/wptr_reg[0]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq2_rptr_reg[3]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq2_rptr_reg[2]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq2_rptr_reg[1]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq1_rptr_reg[2]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq1_rptr_reg[1]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq2_rptr_reg[0]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq1_rptr_reg[3]}]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rptr_reg[2]}]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rptr_reg[1]}]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rptr_reg[0]}] ]
group_path -name C2O -from [list \
  [get_cells async_fifo_i_wptr_full_inst/wfull_reg]  \
  [get_cells {async_fifo_i_wptr_full_inst/wbin_reg[1]}]  \
  [get_cells {async_fifo_i_wptr_full_inst/wbin_reg[2]}]  \
  [get_cells {async_fifo_i_wptr_full_inst/wbin_reg[0]}]  \
  [get_cells {async_fifo_i_wptr_full_inst/wbin_reg[3]}]  \
  [get_cells read_gnt_dly_reg]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq1_rptr_reg[0]}]  \
  [get_cells write_gnt_dly_reg]  \
  [get_cells async_fifo_i_rptr_empty_inst/rempty_reg]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rbin_reg[2]}]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rbin_reg[0]}]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rbin_reg[3]}]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rbin_reg[1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][7]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq2_wptr_reg[3]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq2_wptr_reg[2]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq2_wptr_reg[1]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq2_wptr_reg[0]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq1_wptr_reg[2]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq1_wptr_reg[0]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq1_wptr_reg[1]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq1_wptr_reg[3]}]  \
  [get_cells {async_fifo_i_wptr_full_inst/wptr_reg[2]}]  \
  [get_cells {async_fifo_i_wptr_full_inst/wptr_reg[1]}]  \
  [get_cells {async_fifo_i_wptr_full_inst/wptr_reg[0]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq2_rptr_reg[3]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq2_rptr_reg[2]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq2_rptr_reg[1]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq1_rptr_reg[2]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq1_rptr_reg[1]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq2_rptr_reg[0]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq1_rptr_reg[3]}]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rptr_reg[2]}]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rptr_reg[1]}]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rptr_reg[0]}] ] -to [list \
  [get_ports error_flag]  \
  [get_ports read_if_gnt]  \
  [get_ports read_if_rvalid]  \
  [get_ports {read_if_rdata[31]}]  \
  [get_ports {read_if_rdata[30]}]  \
  [get_ports {read_if_rdata[29]}]  \
  [get_ports {read_if_rdata[28]}]  \
  [get_ports {read_if_rdata[27]}]  \
  [get_ports {read_if_rdata[26]}]  \
  [get_ports {read_if_rdata[25]}]  \
  [get_ports {read_if_rdata[24]}]  \
  [get_ports {read_if_rdata[23]}]  \
  [get_ports {read_if_rdata[22]}]  \
  [get_ports {read_if_rdata[21]}]  \
  [get_ports {read_if_rdata[20]}]  \
  [get_ports {read_if_rdata[19]}]  \
  [get_ports {read_if_rdata[18]}]  \
  [get_ports {read_if_rdata[17]}]  \
  [get_ports {read_if_rdata[16]}]  \
  [get_ports {read_if_rdata[15]}]  \
  [get_ports {read_if_rdata[14]}]  \
  [get_ports {read_if_rdata[13]}]  \
  [get_ports {read_if_rdata[12]}]  \
  [get_ports {read_if_rdata[11]}]  \
  [get_ports {read_if_rdata[10]}]  \
  [get_ports {read_if_rdata[9]}]  \
  [get_ports {read_if_rdata[8]}]  \
  [get_ports {read_if_rdata[7]}]  \
  [get_ports {read_if_rdata[6]}]  \
  [get_ports {read_if_rdata[5]}]  \
  [get_ports {read_if_rdata[4]}]  \
  [get_ports {read_if_rdata[3]}]  \
  [get_ports {read_if_rdata[2]}]  \
  [get_ports {read_if_rdata[1]}]  \
  [get_ports {read_if_rdata[0]}]  \
  [get_ports write_if_gnt]  \
  [get_ports write_if_rvalid]  \
  [get_ports {write_if_rdata[31]}]  \
  [get_ports {write_if_rdata[30]}]  \
  [get_ports {write_if_rdata[29]}]  \
  [get_ports {write_if_rdata[28]}]  \
  [get_ports {write_if_rdata[27]}]  \
  [get_ports {write_if_rdata[26]}]  \
  [get_ports {write_if_rdata[25]}]  \
  [get_ports {write_if_rdata[24]}]  \
  [get_ports {write_if_rdata[23]}]  \
  [get_ports {write_if_rdata[22]}]  \
  [get_ports {write_if_rdata[21]}]  \
  [get_ports {write_if_rdata[20]}]  \
  [get_ports {write_if_rdata[19]}]  \
  [get_ports {write_if_rdata[18]}]  \
  [get_ports {write_if_rdata[17]}]  \
  [get_ports {write_if_rdata[16]}]  \
  [get_ports {write_if_rdata[15]}]  \
  [get_ports {write_if_rdata[14]}]  \
  [get_ports {write_if_rdata[13]}]  \
  [get_ports {write_if_rdata[12]}]  \
  [get_ports {write_if_rdata[11]}]  \
  [get_ports {write_if_rdata[10]}]  \
  [get_ports {write_if_rdata[9]}]  \
  [get_ports {write_if_rdata[8]}]  \
  [get_ports {write_if_rdata[7]}]  \
  [get_ports {write_if_rdata[6]}]  \
  [get_ports {write_if_rdata[5]}]  \
  [get_ports {write_if_rdata[4]}]  \
  [get_ports {write_if_rdata[3]}]  \
  [get_ports {write_if_rdata[2]}]  \
  [get_ports {write_if_rdata[1]}]  \
  [get_ports {write_if_rdata[0]}] ]
group_path -name I2C -from [list \
  [get_ports w_clk]  \
  [get_ports w_rst_n]  \
  [get_ports r_clk]  \
  [get_ports r_rst_n]  \
  [get_ports read_if_req]  \
  [get_ports {read_if_addr[31]}]  \
  [get_ports {read_if_addr[30]}]  \
  [get_ports {read_if_addr[29]}]  \
  [get_ports {read_if_addr[28]}]  \
  [get_ports {read_if_addr[27]}]  \
  [get_ports {read_if_addr[26]}]  \
  [get_ports {read_if_addr[25]}]  \
  [get_ports {read_if_addr[24]}]  \
  [get_ports {read_if_addr[23]}]  \
  [get_ports {read_if_addr[22]}]  \
  [get_ports {read_if_addr[21]}]  \
  [get_ports {read_if_addr[20]}]  \
  [get_ports {read_if_addr[19]}]  \
  [get_ports {read_if_addr[18]}]  \
  [get_ports {read_if_addr[17]}]  \
  [get_ports {read_if_addr[16]}]  \
  [get_ports {read_if_addr[15]}]  \
  [get_ports {read_if_addr[14]}]  \
  [get_ports {read_if_addr[13]}]  \
  [get_ports {read_if_addr[12]}]  \
  [get_ports {read_if_addr[11]}]  \
  [get_ports {read_if_addr[10]}]  \
  [get_ports {read_if_addr[9]}]  \
  [get_ports {read_if_addr[8]}]  \
  [get_ports {read_if_addr[7]}]  \
  [get_ports {read_if_addr[6]}]  \
  [get_ports {read_if_addr[5]}]  \
  [get_ports {read_if_addr[4]}]  \
  [get_ports {read_if_addr[3]}]  \
  [get_ports {read_if_addr[2]}]  \
  [get_ports {read_if_addr[1]}]  \
  [get_ports {read_if_addr[0]}]  \
  [get_ports {read_if_be[3]}]  \
  [get_ports {read_if_be[2]}]  \
  [get_ports {read_if_be[1]}]  \
  [get_ports {read_if_be[0]}]  \
  [get_ports read_if_we]  \
  [get_ports write_if_req]  \
  [get_ports {write_if_addr[31]}]  \
  [get_ports {write_if_addr[30]}]  \
  [get_ports {write_if_addr[29]}]  \
  [get_ports {write_if_addr[28]}]  \
  [get_ports {write_if_addr[27]}]  \
  [get_ports {write_if_addr[26]}]  \
  [get_ports {write_if_addr[25]}]  \
  [get_ports {write_if_addr[24]}]  \
  [get_ports {write_if_addr[23]}]  \
  [get_ports {write_if_addr[22]}]  \
  [get_ports {write_if_addr[21]}]  \
  [get_ports {write_if_addr[20]}]  \
  [get_ports {write_if_addr[19]}]  \
  [get_ports {write_if_addr[18]}]  \
  [get_ports {write_if_addr[17]}]  \
  [get_ports {write_if_addr[16]}]  \
  [get_ports {write_if_addr[15]}]  \
  [get_ports {write_if_addr[14]}]  \
  [get_ports {write_if_addr[13]}]  \
  [get_ports {write_if_addr[12]}]  \
  [get_ports {write_if_addr[11]}]  \
  [get_ports {write_if_addr[10]}]  \
  [get_ports {write_if_addr[9]}]  \
  [get_ports {write_if_addr[8]}]  \
  [get_ports {write_if_addr[7]}]  \
  [get_ports {write_if_addr[6]}]  \
  [get_ports {write_if_addr[5]}]  \
  [get_ports {write_if_addr[4]}]  \
  [get_ports {write_if_addr[3]}]  \
  [get_ports {write_if_addr[2]}]  \
  [get_ports {write_if_addr[1]}]  \
  [get_ports {write_if_addr[0]}]  \
  [get_ports {write_if_wdata[31]}]  \
  [get_ports {write_if_wdata[30]}]  \
  [get_ports {write_if_wdata[29]}]  \
  [get_ports {write_if_wdata[28]}]  \
  [get_ports {write_if_wdata[27]}]  \
  [get_ports {write_if_wdata[26]}]  \
  [get_ports {write_if_wdata[25]}]  \
  [get_ports {write_if_wdata[24]}]  \
  [get_ports {write_if_wdata[23]}]  \
  [get_ports {write_if_wdata[22]}]  \
  [get_ports {write_if_wdata[21]}]  \
  [get_ports {write_if_wdata[20]}]  \
  [get_ports {write_if_wdata[19]}]  \
  [get_ports {write_if_wdata[18]}]  \
  [get_ports {write_if_wdata[17]}]  \
  [get_ports {write_if_wdata[16]}]  \
  [get_ports {write_if_wdata[15]}]  \
  [get_ports {write_if_wdata[14]}]  \
  [get_ports {write_if_wdata[13]}]  \
  [get_ports {write_if_wdata[12]}]  \
  [get_ports {write_if_wdata[11]}]  \
  [get_ports {write_if_wdata[10]}]  \
  [get_ports {write_if_wdata[9]}]  \
  [get_ports {write_if_wdata[8]}]  \
  [get_ports {write_if_wdata[7]}]  \
  [get_ports {write_if_wdata[6]}]  \
  [get_ports {write_if_wdata[5]}]  \
  [get_ports {write_if_wdata[4]}]  \
  [get_ports {write_if_wdata[3]}]  \
  [get_ports {write_if_wdata[2]}]  \
  [get_ports {write_if_wdata[1]}]  \
  [get_ports {write_if_wdata[0]}]  \
  [get_ports write_if_we]  \
  [get_ports {write_if_be[3]}]  \
  [get_ports {write_if_be[2]}]  \
  [get_ports {write_if_be[1]}]  \
  [get_ports {write_if_be[0]}] ] -to [list \
  [get_cells async_fifo_i_fifomem_inst/RC_CG_HIER_INST0/RC_CGIC_INST]  \
  [get_cells async_fifo_i_fifomem_inst/RC_CG_HIER_INST1/RC_CGIC_INST]  \
  [get_cells async_fifo_i_fifomem_inst/RC_CG_HIER_INST2/RC_CGIC_INST]  \
  [get_cells async_fifo_i_fifomem_inst/RC_CG_HIER_INST3/RC_CGIC_INST]  \
  [get_cells async_fifo_i_fifomem_inst/RC_CG_HIER_INST4/RC_CGIC_INST]  \
  [get_cells async_fifo_i_fifomem_inst/RC_CG_HIER_INST5/RC_CGIC_INST]  \
  [get_cells async_fifo_i_fifomem_inst/RC_CG_HIER_INST6/RC_CGIC_INST]  \
  [get_cells async_fifo_i_fifomem_inst/RC_CG_HIER_INST7/RC_CGIC_INST]  \
  [get_cells async_fifo_i_rptr_empty_inst/RC_CG_HIER_INST8/RC_CGIC_INST]  \
  [get_cells async_fifo_i_wptr_full_inst/RC_CG_HIER_INST9/RC_CGIC_INST]  \
  [get_cells async_fifo_i_wptr_full_inst/wfull_reg]  \
  [get_cells {async_fifo_i_wptr_full_inst/wbin_reg[1]}]  \
  [get_cells {async_fifo_i_wptr_full_inst/wbin_reg[2]}]  \
  [get_cells {async_fifo_i_wptr_full_inst/wbin_reg[0]}]  \
  [get_cells {async_fifo_i_wptr_full_inst/wbin_reg[3]}]  \
  [get_cells read_gnt_dly_reg]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq1_rptr_reg[0]}]  \
  [get_cells write_gnt_dly_reg]  \
  [get_cells async_fifo_i_rptr_empty_inst/rempty_reg]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rbin_reg[2]}]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rbin_reg[0]}]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rbin_reg[3]}]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rbin_reg[1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[0][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[1][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[2][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[3][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[4][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[5][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[6][7]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][0]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][1]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][2]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][3]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][4]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][5]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][6]}]  \
  [get_cells {async_fifo_i_fifomem_inst/mem_reg[7][7]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq2_wptr_reg[3]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq2_wptr_reg[2]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq2_wptr_reg[1]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq2_wptr_reg[0]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq1_wptr_reg[2]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq1_wptr_reg[0]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq1_wptr_reg[1]}]  \
  [get_cells {async_fifo_i_sync_w2r_inst_rq1_wptr_reg[3]}]  \
  [get_cells {async_fifo_i_wptr_full_inst/wptr_reg[2]}]  \
  [get_cells {async_fifo_i_wptr_full_inst/wptr_reg[1]}]  \
  [get_cells {async_fifo_i_wptr_full_inst/wptr_reg[0]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq2_rptr_reg[3]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq2_rptr_reg[2]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq2_rptr_reg[1]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq1_rptr_reg[2]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq1_rptr_reg[1]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq2_rptr_reg[0]}]  \
  [get_cells {async_fifo_i_sync_r2w_inst_wq1_rptr_reg[3]}]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rptr_reg[2]}]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rptr_reg[1]}]  \
  [get_cells {async_fifo_i_rptr_empty_inst/rptr_reg[0]}] ]
group_path -name I2O -from [list \
  [get_ports w_clk]  \
  [get_ports w_rst_n]  \
  [get_ports r_clk]  \
  [get_ports r_rst_n]  \
  [get_ports read_if_req]  \
  [get_ports {read_if_addr[31]}]  \
  [get_ports {read_if_addr[30]}]  \
  [get_ports {read_if_addr[29]}]  \
  [get_ports {read_if_addr[28]}]  \
  [get_ports {read_if_addr[27]}]  \
  [get_ports {read_if_addr[26]}]  \
  [get_ports {read_if_addr[25]}]  \
  [get_ports {read_if_addr[24]}]  \
  [get_ports {read_if_addr[23]}]  \
  [get_ports {read_if_addr[22]}]  \
  [get_ports {read_if_addr[21]}]  \
  [get_ports {read_if_addr[20]}]  \
  [get_ports {read_if_addr[19]}]  \
  [get_ports {read_if_addr[18]}]  \
  [get_ports {read_if_addr[17]}]  \
  [get_ports {read_if_addr[16]}]  \
  [get_ports {read_if_addr[15]}]  \
  [get_ports {read_if_addr[14]}]  \
  [get_ports {read_if_addr[13]}]  \
  [get_ports {read_if_addr[12]}]  \
  [get_ports {read_if_addr[11]}]  \
  [get_ports {read_if_addr[10]}]  \
  [get_ports {read_if_addr[9]}]  \
  [get_ports {read_if_addr[8]}]  \
  [get_ports {read_if_addr[7]}]  \
  [get_ports {read_if_addr[6]}]  \
  [get_ports {read_if_addr[5]}]  \
  [get_ports {read_if_addr[4]}]  \
  [get_ports {read_if_addr[3]}]  \
  [get_ports {read_if_addr[2]}]  \
  [get_ports {read_if_addr[1]}]  \
  [get_ports {read_if_addr[0]}]  \
  [get_ports {read_if_be[3]}]  \
  [get_ports {read_if_be[2]}]  \
  [get_ports {read_if_be[1]}]  \
  [get_ports {read_if_be[0]}]  \
  [get_ports read_if_we]  \
  [get_ports write_if_req]  \
  [get_ports {write_if_addr[31]}]  \
  [get_ports {write_if_addr[30]}]  \
  [get_ports {write_if_addr[29]}]  \
  [get_ports {write_if_addr[28]}]  \
  [get_ports {write_if_addr[27]}]  \
  [get_ports {write_if_addr[26]}]  \
  [get_ports {write_if_addr[25]}]  \
  [get_ports {write_if_addr[24]}]  \
  [get_ports {write_if_addr[23]}]  \
  [get_ports {write_if_addr[22]}]  \
  [get_ports {write_if_addr[21]}]  \
  [get_ports {write_if_addr[20]}]  \
  [get_ports {write_if_addr[19]}]  \
  [get_ports {write_if_addr[18]}]  \
  [get_ports {write_if_addr[17]}]  \
  [get_ports {write_if_addr[16]}]  \
  [get_ports {write_if_addr[15]}]  \
  [get_ports {write_if_addr[14]}]  \
  [get_ports {write_if_addr[13]}]  \
  [get_ports {write_if_addr[12]}]  \
  [get_ports {write_if_addr[11]}]  \
  [get_ports {write_if_addr[10]}]  \
  [get_ports {write_if_addr[9]}]  \
  [get_ports {write_if_addr[8]}]  \
  [get_ports {write_if_addr[7]}]  \
  [get_ports {write_if_addr[6]}]  \
  [get_ports {write_if_addr[5]}]  \
  [get_ports {write_if_addr[4]}]  \
  [get_ports {write_if_addr[3]}]  \
  [get_ports {write_if_addr[2]}]  \
  [get_ports {write_if_addr[1]}]  \
  [get_ports {write_if_addr[0]}]  \
  [get_ports {write_if_wdata[31]}]  \
  [get_ports {write_if_wdata[30]}]  \
  [get_ports {write_if_wdata[29]}]  \
  [get_ports {write_if_wdata[28]}]  \
  [get_ports {write_if_wdata[27]}]  \
  [get_ports {write_if_wdata[26]}]  \
  [get_ports {write_if_wdata[25]}]  \
  [get_ports {write_if_wdata[24]}]  \
  [get_ports {write_if_wdata[23]}]  \
  [get_ports {write_if_wdata[22]}]  \
  [get_ports {write_if_wdata[21]}]  \
  [get_ports {write_if_wdata[20]}]  \
  [get_ports {write_if_wdata[19]}]  \
  [get_ports {write_if_wdata[18]}]  \
  [get_ports {write_if_wdata[17]}]  \
  [get_ports {write_if_wdata[16]}]  \
  [get_ports {write_if_wdata[15]}]  \
  [get_ports {write_if_wdata[14]}]  \
  [get_ports {write_if_wdata[13]}]  \
  [get_ports {write_if_wdata[12]}]  \
  [get_ports {write_if_wdata[11]}]  \
  [get_ports {write_if_wdata[10]}]  \
  [get_ports {write_if_wdata[9]}]  \
  [get_ports {write_if_wdata[8]}]  \
  [get_ports {write_if_wdata[7]}]  \
  [get_ports {write_if_wdata[6]}]  \
  [get_ports {write_if_wdata[5]}]  \
  [get_ports {write_if_wdata[4]}]  \
  [get_ports {write_if_wdata[3]}]  \
  [get_ports {write_if_wdata[2]}]  \
  [get_ports {write_if_wdata[1]}]  \
  [get_ports {write_if_wdata[0]}]  \
  [get_ports write_if_we]  \
  [get_ports {write_if_be[3]}]  \
  [get_ports {write_if_be[2]}]  \
  [get_ports {write_if_be[1]}]  \
  [get_ports {write_if_be[0]}] ] -to [list \
  [get_ports error_flag]  \
  [get_ports read_if_gnt]  \
  [get_ports read_if_rvalid]  \
  [get_ports {read_if_rdata[31]}]  \
  [get_ports {read_if_rdata[30]}]  \
  [get_ports {read_if_rdata[29]}]  \
  [get_ports {read_if_rdata[28]}]  \
  [get_ports {read_if_rdata[27]}]  \
  [get_ports {read_if_rdata[26]}]  \
  [get_ports {read_if_rdata[25]}]  \
  [get_ports {read_if_rdata[24]}]  \
  [get_ports {read_if_rdata[23]}]  \
  [get_ports {read_if_rdata[22]}]  \
  [get_ports {read_if_rdata[21]}]  \
  [get_ports {read_if_rdata[20]}]  \
  [get_ports {read_if_rdata[19]}]  \
  [get_ports {read_if_rdata[18]}]  \
  [get_ports {read_if_rdata[17]}]  \
  [get_ports {read_if_rdata[16]}]  \
  [get_ports {read_if_rdata[15]}]  \
  [get_ports {read_if_rdata[14]}]  \
  [get_ports {read_if_rdata[13]}]  \
  [get_ports {read_if_rdata[12]}]  \
  [get_ports {read_if_rdata[11]}]  \
  [get_ports {read_if_rdata[10]}]  \
  [get_ports {read_if_rdata[9]}]  \
  [get_ports {read_if_rdata[8]}]  \
  [get_ports {read_if_rdata[7]}]  \
  [get_ports {read_if_rdata[6]}]  \
  [get_ports {read_if_rdata[5]}]  \
  [get_ports {read_if_rdata[4]}]  \
  [get_ports {read_if_rdata[3]}]  \
  [get_ports {read_if_rdata[2]}]  \
  [get_ports {read_if_rdata[1]}]  \
  [get_ports {read_if_rdata[0]}]  \
  [get_ports write_if_gnt]  \
  [get_ports write_if_rvalid]  \
  [get_ports {write_if_rdata[31]}]  \
  [get_ports {write_if_rdata[30]}]  \
  [get_ports {write_if_rdata[29]}]  \
  [get_ports {write_if_rdata[28]}]  \
  [get_ports {write_if_rdata[27]}]  \
  [get_ports {write_if_rdata[26]}]  \
  [get_ports {write_if_rdata[25]}]  \
  [get_ports {write_if_rdata[24]}]  \
  [get_ports {write_if_rdata[23]}]  \
  [get_ports {write_if_rdata[22]}]  \
  [get_ports {write_if_rdata[21]}]  \
  [get_ports {write_if_rdata[20]}]  \
  [get_ports {write_if_rdata[19]}]  \
  [get_ports {write_if_rdata[18]}]  \
  [get_ports {write_if_rdata[17]}]  \
  [get_ports {write_if_rdata[16]}]  \
  [get_ports {write_if_rdata[15]}]  \
  [get_ports {write_if_rdata[14]}]  \
  [get_ports {write_if_rdata[13]}]  \
  [get_ports {write_if_rdata[12]}]  \
  [get_ports {write_if_rdata[11]}]  \
  [get_ports {write_if_rdata[10]}]  \
  [get_ports {write_if_rdata[9]}]  \
  [get_ports {write_if_rdata[8]}]  \
  [get_ports {write_if_rdata[7]}]  \
  [get_ports {write_if_rdata[6]}]  \
  [get_ports {write_if_rdata[5]}]  \
  [get_ports {write_if_rdata[4]}]  \
  [get_ports {write_if_rdata[3]}]  \
  [get_ports {write_if_rdata[2]}]  \
  [get_ports {write_if_rdata[1]}]  \
  [get_ports {write_if_rdata[0]}] ]
group_path -name cg_enable_group_clk -through [list \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST0/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST0/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST1/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST1/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST2/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST2/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST3/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST3/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST4/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST4/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST5/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST5/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST6/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST6/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST7/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST7/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST0/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST0/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST1/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST1/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST2/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST2/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST3/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST3/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST4/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST4/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST5/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST5/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST6/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST6/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST7/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST7/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_wptr_full_inst/RC_CG_HIER_INST9/enable]  \
  [get_pins async_fifo_i_wptr_full_inst/RC_CG_HIER_INST9/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST0/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST0/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST1/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST1/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST2/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST2/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST3/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST3/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST4/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST4/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST5/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST5/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST6/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST6/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST7/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST7/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_wptr_full_inst/RC_CG_HIER_INST9/enable]  \
  [get_pins async_fifo_i_wptr_full_inst/RC_CG_HIER_INST9/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST0/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST0/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST1/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST1/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST2/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST2/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST3/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST3/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST4/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST4/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST5/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST5/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST6/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST6/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST7/enable]  \
  [get_pins async_fifo_i_fifomem_inst/RC_CG_HIER_INST7/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_wptr_full_inst/RC_CG_HIER_INST9/enable]  \
  [get_pins async_fifo_i_wptr_full_inst/RC_CG_HIER_INST9/RC_CGIC_INST/E] ]
group_path -name cg_enable_group_default -through [list \
  [get_pins async_fifo_i_rptr_empty_inst/RC_CG_HIER_INST8/enable]  \
  [get_pins async_fifo_i_rptr_empty_inst/RC_CG_HIER_INST8/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_rptr_empty_inst/RC_CG_HIER_INST8/enable]  \
  [get_pins async_fifo_i_rptr_empty_inst/RC_CG_HIER_INST8/RC_CGIC_INST/E]  \
  [get_pins async_fifo_i_rptr_empty_inst/RC_CG_HIER_INST8/enable]  \
  [get_pins async_fifo_i_rptr_empty_inst/RC_CG_HIER_INST8/RC_CGIC_INST/E] ]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports w_rst_n]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports r_clk]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports r_rst_n]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports read_if_req]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[31]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[30]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[29]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[28]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[27]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[26]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[25]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[24]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[23]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[22]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[21]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[20]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[19]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[18]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[17]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[16]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[15]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[14]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[13]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[12]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[11]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[10]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[9]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[8]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[7]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[6]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[5]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[4]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[3]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[2]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[1]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_addr[0]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_be[3]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_be[2]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_be[1]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_be[0]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports read_if_we]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports write_if_req]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[31]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[30]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[29]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[28]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[27]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[26]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[25]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[24]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[23]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[22]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[21]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[20]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[19]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[18]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[17]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[16]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[15]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[14]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[13]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[12]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[11]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[10]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[9]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[8]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[7]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[6]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[5]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[4]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[3]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[2]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[1]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_addr[0]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[31]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[30]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[29]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[28]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[27]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[26]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[25]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[24]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[23]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[22]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[21]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[20]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[19]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[18]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[17]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[16]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[15]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[14]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[13]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[12]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[11]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[10]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[9]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[8]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[7]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[6]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[5]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[4]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[3]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[2]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[1]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_wdata[0]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports write_if_we]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_be[3]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_be[2]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_be[1]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_be[0]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports error_flag]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports read_if_gnt]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports read_if_rvalid]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[31]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[30]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[29]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[28]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[27]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[26]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[25]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[24]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[23]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[22]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[21]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[20]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[19]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[18]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[17]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[16]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[15]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[14]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[13]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[12]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[11]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[10]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[9]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[8]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[7]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[6]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[5]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[4]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[3]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[2]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[1]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {read_if_rdata[0]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports write_if_gnt]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports write_if_rvalid]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[31]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[30]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[29]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[28]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[27]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[26]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[25]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[24]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[23]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[22]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[21]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[20]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[19]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[18]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[17]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[16]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[15]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[14]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[13]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[12]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[11]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[10]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[9]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[8]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[7]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[6]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[5]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[4]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[3]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[2]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[1]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.5 [get_ports {write_if_rdata[0]}]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFCNQD0BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFCNQD1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFCNQD2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFCNQD4BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFCNQND0BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFCNQND1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFCNQND2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFCNQNOPTBBD1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFCNQNOPTBBD2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFCNQNOPTBBD4BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFCNQOPTBBD1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFCNQOPTBBD2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFCNQOPTBBD4BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFCNQOPTBBD8BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFCSNQD0BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFCSNQD1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFCSNQD2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFCSNQD4BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFKCNQD0BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFKCNQD1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFKCNQD2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFKCNQD4BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFKCSNQD0BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFKCSNQD1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFKCSNQD2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFKCSNQD4BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFKSNQD0BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFKSNQD1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFKSNQD2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFKSNQD4BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFMQD0BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFMQD1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFMQD2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFMQD4BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNCNQD0BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNCNQD1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNCNQD2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNCNQD4BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNCNQND0BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNCNQND1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNCNQND2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNCSNQD0BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNCSNQD1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNCSNQD2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNCSNQD4BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNQD0BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNQD1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNQD2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNQD4BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNQND0BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNQND1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNQND2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNQND4BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNSNQD0BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNSNQD1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNSNQD2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNSNQD4BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNSNQND0BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNSNQND1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFNSNQND2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFQD0BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFQD1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFQD2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFQD4BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFQND0BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFQND1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFQND2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFQND4BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFQNOPTBBD1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFQNOPTBBD2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFQNOPTBBD4BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFQOPTBBD1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFQOPTBBD2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFQOPTBBD4BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFQOPTBBD8BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFSNQD0BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFSNQD1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFSNQD2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFSNQD4BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFSNQND0BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFSNQND1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFSNQND2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFSNQNOPTBBD1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFSNQNOPTBBD2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFSNQNOPTBBD4BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFSNQOPTBBD1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFSNQOPTBBD2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFSNQOPTBBD4BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFSNQOPTBBD8BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFSYNCNQD1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFSYNCNQD2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFSYNCSNQD1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFSYNCSNQD2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFSYNQD1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFSYNQD2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFSYNSNQD1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SDFSYNSNQD2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SEDFCNQD0BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SEDFCNQD1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SEDFCNQD2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SEDFCNQD4BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SEDFQD0BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SEDFQD1BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SEDFQD2BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90ssgnp0p72v125c/SEDFQD4BWP16P90]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFCNQD0BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFCNQD1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFCNQD2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFCNQD4BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFCNQND0BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFCNQND1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFCNQND2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFCNQNOPTBBD1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFCNQNOPTBBD2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFCNQNOPTBBD4BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFCNQOPTBBD1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFCNQOPTBBD2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFCNQOPTBBD4BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFCNQOPTBBD8BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFCSNQD0BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFCSNQD1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFCSNQD2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFCSNQD4BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFKCNQD0BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFKCNQD1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFKCNQD2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFKCNQD4BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFKCSNQD0BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFKCSNQD1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFKCSNQD2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFKCSNQD4BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFKSNQD0BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFKSNQD1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFKSNQD2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFKSNQD4BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFMQD0BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFMQD1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFMQD2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFMQD4BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNCNQD0BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNCNQD1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNCNQD2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNCNQD4BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNCNQND0BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNCNQND1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNCNQND2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNCSNQD0BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNCSNQD1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNCSNQD2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNCSNQD4BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNQD0BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNQD1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNQD2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNQD4BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNQND0BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNQND1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNQND2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNQND4BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNSNQD0BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNSNQD1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNSNQD2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNSNQD4BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNSNQND0BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNSNQND1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFNSNQND2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFQD0BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFQD1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFQD2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFQD4BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFQND0BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFQND1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFQND2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFQND4BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFQNOPTBBD1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFQNOPTBBD2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFQNOPTBBD4BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFQOPTBBD1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFQOPTBBD2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFQOPTBBD4BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFQOPTBBD8BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFSNQD0BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFSNQD1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFSNQD2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFSNQD4BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFSNQND0BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFSNQND1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFSNQND2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFSNQNOPTBBD1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFSNQNOPTBBD2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFSNQNOPTBBD4BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFSNQOPTBBD1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFSNQOPTBBD2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFSNQOPTBBD4BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFSNQOPTBBD8BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFSYNCNQD1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFSYNCNQD2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFSYNCSNQD1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFSYNCSNQD2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFSYNQD1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFSYNQD2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFSYNSNQD1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SDFSYNSNQD2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SEDFCNQD0BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SEDFCNQD1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SEDFCNQD2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SEDFCNQD4BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SEDFQD0BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SEDFQD1BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SEDFQD2BWP16P90LVT]
set_dont_use true [get_lib_cells tcbn16ffcllbwp16p90lvtssgnp0p72v125c/SEDFQD4BWP16P90LVT]
