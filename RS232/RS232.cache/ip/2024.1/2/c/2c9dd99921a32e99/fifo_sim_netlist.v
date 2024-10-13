// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Oct 13 16:02:10 2024
// Host        : DESKTOP-NDA5VSL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_sim_netlist.v
// Design      : fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo,fifo_generator_v13_2_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input srst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "14" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "13" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_10 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 70976)
`pragma protect data_block
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
qjS/hJt0CPFBQ4I=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
