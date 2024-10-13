// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Oct 13 12:39:18 2024
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
DeYdB04T3ps1pz0=
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
