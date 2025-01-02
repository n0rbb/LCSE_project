// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Dec  5 11:17:31 2024
// Host        : DESKTOP-NDA5VSL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.gen/sources_1/ip/fifo/fifo_sim_netlist.v
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
