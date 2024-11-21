// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Nov 21 14:52:36 2024
// Host        : DESKTOP-NDA5VSL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/worbb/Desktop/Electronics/LCSE/PIC/PIC.gen/sources_1/ip/fifo/fifo_sim_netlist.v
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
  wire [5:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [5:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "6" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "62" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "61" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "64" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "6" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "64" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "6" *) 
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
        .data_count(NLW_U0_data_count_UNCONNECTED[5:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[5:0]),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[5:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 76880)
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
