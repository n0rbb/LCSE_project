// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Oct 13 16:02:11 2024
// Host        : DESKTOP-NDA5VSL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/worbb/Desktop/Electronics/LCSE/RS232/RS232.gen/sources_1/ip/fifo/fifo_sim_netlist.v
// Design      : fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo,fifo_generator_v13_2_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module fifo
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
  fifo_generator_v13_2_10 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 70272)
`pragma protect data_block
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
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
