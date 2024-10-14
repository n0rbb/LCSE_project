// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Oct 14 22:59:11 2024
// Host        : DESKTOP-NDA5VSL running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/worbb/Desktop/Electronics/LCSE/RS232/RS232.sim/sim_1/impl/timing/xsim/TB_nexys_RS232_time_impl.v
// Design      : nexys_RS232
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RS232top
   (LED_OBUF,
    AR,
    \data_count_reg[0] ,
    clk_out1,
    rd_en,
    JA_IBUF,
    BTNC_IBUF,
    StartTX_reg_0,
    D);
  output [11:0]LED_OBUF;
  output [0:0]AR;
  output [0:0]\data_count_reg[0] ;
  input clk_out1;
  input rd_en;
  input [0:0]JA_IBUF;
  input BTNC_IBUF;
  input [1:0]StartTX_reg_0;
  input [7:0]D;

  wire [0:0]AR;
  wire BTNC_IBUF;
  wire [7:0]D;
  wire [7:0]Data;
  wire [7:0]Fifo_in;
  wire Fifo_write;
  wire [0:0]JA_IBUF;
  wire [11:0]LED_OBUF;
  wire LineRD_in;
  wire Start;
  wire [1:0]StartTX_reg_0;
  wire Transmitter_n_0;
  wire Transmitter_n_1;
  wire Valid_out;
  wire clk_out1;
  wire [0:0]\data_count_reg[0] ;
  wire p_1_in;
  wire rd_en;

  FDPE #(
    .INIT(1'b1)) 
    Ack_in_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(p_1_in),
        .PRE(AR),
        .Q(LED_OBUF[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_FF_reg[0] 
       (.C(clk_out1),
        .CE(Transmitter_n_1),
        .CLR(AR),
        .D(D[0]),
        .Q(Data[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_FF_reg[1] 
       (.C(clk_out1),
        .CE(Transmitter_n_1),
        .CLR(AR),
        .D(D[1]),
        .Q(Data[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_FF_reg[2] 
       (.C(clk_out1),
        .CE(Transmitter_n_1),
        .CLR(AR),
        .D(D[2]),
        .Q(Data[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_FF_reg[3] 
       (.C(clk_out1),
        .CE(Transmitter_n_1),
        .CLR(AR),
        .D(D[3]),
        .Q(Data[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_FF_reg[4] 
       (.C(clk_out1),
        .CE(Transmitter_n_1),
        .CLR(AR),
        .D(D[4]),
        .Q(Data[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_FF_reg[5] 
       (.C(clk_out1),
        .CE(Transmitter_n_1),
        .CLR(AR),
        .D(D[5]),
        .Q(Data[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_FF_reg[6] 
       (.C(clk_out1),
        .CE(Transmitter_n_1),
        .CLR(AR),
        .D(D[6]),
        .Q(Data[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_FF_reg[7] 
       (.C(clk_out1),
        .CE(Transmitter_n_1),
        .CLR(AR),
        .D(D[7]),
        .Q(Data[7]));
  (* IMPORTED_FROM = "c:/Users/worbb/Desktop/Electronics/LCSE/RS232/RS232.gen/sources_1/ip/fifo/fifo.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *) 
  fifo Internal_memory
       (.clk(clk_out1),
        .din(Fifo_in),
        .dout(LED_OBUF[7:0]),
        .empty(LED_OBUF[11]),
        .full(LED_OBUF[10]),
        .lopt(StartTX_reg_0[1]),
        .rd_en(rd_en),
        .srst(AR),
        .wr_en(Fifo_write));
  FDPE #(
    .INIT(1'b1)) 
    LineRD_in_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(JA_IBUF),
        .PRE(AR),
        .Q(LineRD_in));
  rrx Receiver
       (.E(Valid_out),
        .\HalfBitCounter_reg[7]_0 (StartTX_reg_0),
        .LineRD_in(LineRD_in),
        .\SW[15] (AR),
        .clk_out1(clk_out1),
        .wr_en(Fifo_write));
  shiftregister Shift
       (.D(LineRD_in),
        .E(Valid_out),
        .Q(Fifo_in),
        .\Qtemp_reg[7]_0 (AR),
        .clk_out1(clk_out1));
  FDRE #(
    .INIT(1'b0)) 
    StartTX_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(Transmitter_n_0),
        .Q(Start),
        .R(1'b0));
  trx Transmitter
       (.BTNC_IBUF(BTNC_IBUF),
        .E(Transmitter_n_1),
        .\FSM_sequential_current_state_reg[0]_0 (Transmitter_n_0),
        .LED_OBUF(LED_OBUF[9]),
        .\Pulse_width_reg[7]_0 (AR),
        .Q(Data),
        .Start(Start),
        .StartTX_reg(StartTX_reg_0),
        .clk_out1(clk_out1),
        .\data_count_reg[0]_0 (\data_count_reg[0] ),
        .p_1_in(p_1_in));
endmodule

module clk_wiz_0
   (clk_out1,
    resetn,
    locked,
    clk_in1);
  output clk_out1;
  input resetn;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire resetn;
  wire NLW_inst_locked_UNCONNECTED;

  clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .locked(NLW_inst_locked_UNCONNECTED),
        .resetn(resetn));
endmodule

module clk_wiz_0_clk_wiz
   (clk_out1,
    resetn,
    locked,
    clk_in1);
  output clk_out1;
  input resetn;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_in1_clk_wiz_0;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire resetn;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_LOCKED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(8.500000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(42.500000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b1),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_clk_wiz_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_mmcm_adv_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(resetn));
endmodule

(* CHECK_LICENSE_TYPE = "fifo,fifo_generator_v13_2_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *) 
module fifo
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    lopt);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input srst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  input lopt;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire lopt;
  wire rd_en;
  wire srst;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_injectdbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_injectsbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_injectdbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_injectsbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_injectdbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_injectsbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_injectdbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_injectsbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_injectdbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_injectsbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_injectdbiterr_UNCONNECTED;
  wire NLW_U0_axis_injectsbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_backup_UNCONNECTED;
  wire NLW_U0_backup_marker_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_injectdbiterr_UNCONNECTED;
  wire NLW_U0_injectsbiterr_UNCONNECTED;
  wire NLW_U0_int_clk_UNCONNECTED;
  wire NLW_U0_m_aclk_UNCONNECTED;
  wire NLW_U0_m_aclk_en_UNCONNECTED;
  wire NLW_U0_m_axi_arready_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awready_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_bvalid_UNCONNECTED;
  wire NLW_U0_m_axi_rlast_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_rvalid_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wready_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tready_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_clk_UNCONNECTED;
  wire NLW_U0_rd_rst_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_rst_UNCONNECTED;
  wire NLW_U0_s_aclk_UNCONNECTED;
  wire NLW_U0_s_aclk_en_UNCONNECTED;
  wire NLW_U0_s_aresetn_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_arvalid_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_awvalid_UNCONNECTED;
  wire NLW_U0_s_axi_bready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rready_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wlast_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axi_wvalid_UNCONNECTED;
  wire NLW_U0_s_axis_tlast_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_s_axis_tvalid_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_sleep_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_clk_UNCONNECTED;
  wire NLW_U0_wr_rst_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_axi_ar_prog_empty_thresh_UNCONNECTED;
  wire [3:0]NLW_U0_axi_ar_prog_full_thresh_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_axi_aw_prog_empty_thresh_UNCONNECTED;
  wire [3:0]NLW_U0_axi_aw_prog_full_thresh_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_axi_b_prog_empty_thresh_UNCONNECTED;
  wire [3:0]NLW_U0_axi_b_prog_full_thresh_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_axi_r_prog_empty_thresh_UNCONNECTED;
  wire [9:0]NLW_U0_axi_r_prog_full_thresh_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_axi_w_prog_empty_thresh_UNCONNECTED;
  wire [9:0]NLW_U0_axi_w_prog_full_thresh_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_axis_prog_empty_thresh_UNCONNECTED;
  wire [9:0]NLW_U0_axis_prog_full_thresh_UNCONNECTED;
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
  wire [0:0]NLW_U0_m_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_ruser_UNCONNECTED;
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
  wire [3:0]NLW_U0_prog_empty_thresh_UNCONNECTED;
  wire [3:0]NLW_U0_prog_empty_thresh_assert_UNCONNECTED;
  wire [3:0]NLW_U0_prog_empty_thresh_negate_UNCONNECTED;
  wire [3:0]NLW_U0_prog_full_thresh_UNCONNECTED;
  wire [3:0]NLW_U0_prog_full_thresh_assert_UNCONNECTED;
  wire [3:0]NLW_U0_prog_full_thresh_negate_UNCONNECTED;
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_s_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_s_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_s_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_s_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_s_axis_tuser_UNCONNECTED;
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
        .axi_ar_injectdbiterr(NLW_U0_axi_ar_injectdbiterr_UNCONNECTED),
        .axi_ar_injectsbiterr(NLW_U0_axi_ar_injectsbiterr_UNCONNECTED),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh(NLW_U0_axi_ar_prog_empty_thresh_UNCONNECTED[3:0]),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh(NLW_U0_axi_ar_prog_full_thresh_UNCONNECTED[3:0]),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(NLW_U0_axi_aw_injectdbiterr_UNCONNECTED),
        .axi_aw_injectsbiterr(NLW_U0_axi_aw_injectsbiterr_UNCONNECTED),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh(NLW_U0_axi_aw_prog_empty_thresh_UNCONNECTED[3:0]),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh(NLW_U0_axi_aw_prog_full_thresh_UNCONNECTED[3:0]),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(NLW_U0_axi_b_injectdbiterr_UNCONNECTED),
        .axi_b_injectsbiterr(NLW_U0_axi_b_injectsbiterr_UNCONNECTED),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh(NLW_U0_axi_b_prog_empty_thresh_UNCONNECTED[3:0]),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh(NLW_U0_axi_b_prog_full_thresh_UNCONNECTED[3:0]),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(NLW_U0_axi_r_injectdbiterr_UNCONNECTED),
        .axi_r_injectsbiterr(NLW_U0_axi_r_injectsbiterr_UNCONNECTED),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh(NLW_U0_axi_r_prog_empty_thresh_UNCONNECTED[9:0]),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh(NLW_U0_axi_r_prog_full_thresh_UNCONNECTED[9:0]),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(NLW_U0_axi_w_injectdbiterr_UNCONNECTED),
        .axi_w_injectsbiterr(NLW_U0_axi_w_injectsbiterr_UNCONNECTED),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh(NLW_U0_axi_w_prog_empty_thresh_UNCONNECTED[9:0]),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh(NLW_U0_axi_w_prog_full_thresh_UNCONNECTED[9:0]),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(NLW_U0_axis_injectdbiterr_UNCONNECTED),
        .axis_injectsbiterr(NLW_U0_axis_injectsbiterr_UNCONNECTED),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh(NLW_U0_axis_prog_empty_thresh_UNCONNECTED[9:0]),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh(NLW_U0_axis_prog_full_thresh_UNCONNECTED[9:0]),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(NLW_U0_backup_UNCONNECTED),
        .backup_marker(NLW_U0_backup_marker_UNCONNECTED),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(NLW_U0_injectdbiterr_UNCONNECTED),
        .injectsbiterr(NLW_U0_injectsbiterr_UNCONNECTED),
        .int_clk(NLW_U0_int_clk_UNCONNECTED),
        .lopt(lopt),
        .m_aclk(NLW_U0_m_aclk_UNCONNECTED),
        .m_aclk_en(NLW_U0_m_aclk_en_UNCONNECTED),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(NLW_U0_m_axi_arready_UNCONNECTED),
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
        .m_axi_awready(NLW_U0_m_axi_awready_UNCONNECTED),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(NLW_U0_m_axi_bid_UNCONNECTED[0]),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp(NLW_U0_m_axi_bresp_UNCONNECTED[1:0]),
        .m_axi_buser(NLW_U0_m_axi_buser_UNCONNECTED[0]),
        .m_axi_bvalid(NLW_U0_m_axi_bvalid_UNCONNECTED),
        .m_axi_rdata(NLW_U0_m_axi_rdata_UNCONNECTED[63:0]),
        .m_axi_rid(NLW_U0_m_axi_rid_UNCONNECTED[0]),
        .m_axi_rlast(NLW_U0_m_axi_rlast_UNCONNECTED),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp(NLW_U0_m_axi_rresp_UNCONNECTED[1:0]),
        .m_axi_ruser(NLW_U0_m_axi_ruser_UNCONNECTED[0]),
        .m_axi_rvalid(NLW_U0_m_axi_rvalid_UNCONNECTED),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(NLW_U0_m_axi_wready_UNCONNECTED),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(NLW_U0_m_axis_tready_UNCONNECTED),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh(NLW_U0_prog_empty_thresh_UNCONNECTED[3:0]),
        .prog_empty_thresh_assert(NLW_U0_prog_empty_thresh_assert_UNCONNECTED[3:0]),
        .prog_empty_thresh_negate(NLW_U0_prog_empty_thresh_negate_UNCONNECTED[3:0]),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh(NLW_U0_prog_full_thresh_UNCONNECTED[3:0]),
        .prog_full_thresh_assert(NLW_U0_prog_full_thresh_assert_UNCONNECTED[3:0]),
        .prog_full_thresh_negate(NLW_U0_prog_full_thresh_negate_UNCONNECTED[3:0]),
        .rd_clk(NLW_U0_rd_clk_UNCONNECTED),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst(NLW_U0_rd_rst_UNCONNECTED),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(NLW_U0_rst_UNCONNECTED),
        .s_aclk(NLW_U0_s_aclk_UNCONNECTED),
        .s_aclk_en(NLW_U0_s_aclk_en_UNCONNECTED),
        .s_aresetn(NLW_U0_s_aresetn_UNCONNECTED),
        .s_axi_araddr(NLW_U0_s_axi_araddr_UNCONNECTED[31:0]),
        .s_axi_arburst(NLW_U0_s_axi_arburst_UNCONNECTED[1:0]),
        .s_axi_arcache(NLW_U0_s_axi_arcache_UNCONNECTED[3:0]),
        .s_axi_arid(NLW_U0_s_axi_arid_UNCONNECTED[0]),
        .s_axi_arlen(NLW_U0_s_axi_arlen_UNCONNECTED[7:0]),
        .s_axi_arlock(NLW_U0_s_axi_arlock_UNCONNECTED[0]),
        .s_axi_arprot(NLW_U0_s_axi_arprot_UNCONNECTED[2:0]),
        .s_axi_arqos(NLW_U0_s_axi_arqos_UNCONNECTED[3:0]),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion(NLW_U0_s_axi_arregion_UNCONNECTED[3:0]),
        .s_axi_arsize(NLW_U0_s_axi_arsize_UNCONNECTED[2:0]),
        .s_axi_aruser(NLW_U0_s_axi_aruser_UNCONNECTED[0]),
        .s_axi_arvalid(NLW_U0_s_axi_arvalid_UNCONNECTED),
        .s_axi_awaddr(NLW_U0_s_axi_awaddr_UNCONNECTED[31:0]),
        .s_axi_awburst(NLW_U0_s_axi_awburst_UNCONNECTED[1:0]),
        .s_axi_awcache(NLW_U0_s_axi_awcache_UNCONNECTED[3:0]),
        .s_axi_awid(NLW_U0_s_axi_awid_UNCONNECTED[0]),
        .s_axi_awlen(NLW_U0_s_axi_awlen_UNCONNECTED[7:0]),
        .s_axi_awlock(NLW_U0_s_axi_awlock_UNCONNECTED[0]),
        .s_axi_awprot(NLW_U0_s_axi_awprot_UNCONNECTED[2:0]),
        .s_axi_awqos(NLW_U0_s_axi_awqos_UNCONNECTED[3:0]),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion(NLW_U0_s_axi_awregion_UNCONNECTED[3:0]),
        .s_axi_awsize(NLW_U0_s_axi_awsize_UNCONNECTED[2:0]),
        .s_axi_awuser(NLW_U0_s_axi_awuser_UNCONNECTED[0]),
        .s_axi_awvalid(NLW_U0_s_axi_awvalid_UNCONNECTED),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(NLW_U0_s_axi_bready_UNCONNECTED),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(NLW_U0_s_axi_rready_UNCONNECTED),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata(NLW_U0_s_axi_wdata_UNCONNECTED[63:0]),
        .s_axi_wid(NLW_U0_s_axi_wid_UNCONNECTED[0]),
        .s_axi_wlast(NLW_U0_s_axi_wlast_UNCONNECTED),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(NLW_U0_s_axi_wstrb_UNCONNECTED[7:0]),
        .s_axi_wuser(NLW_U0_s_axi_wuser_UNCONNECTED[0]),
        .s_axi_wvalid(NLW_U0_s_axi_wvalid_UNCONNECTED),
        .s_axis_tdata(NLW_U0_s_axis_tdata_UNCONNECTED[7:0]),
        .s_axis_tdest(NLW_U0_s_axis_tdest_UNCONNECTED[0]),
        .s_axis_tid(NLW_U0_s_axis_tid_UNCONNECTED[0]),
        .s_axis_tkeep(NLW_U0_s_axis_tkeep_UNCONNECTED[0]),
        .s_axis_tlast(NLW_U0_s_axis_tlast_UNCONNECTED),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(NLW_U0_s_axis_tstrb_UNCONNECTED[0]),
        .s_axis_tuser(NLW_U0_s_axis_tuser_UNCONNECTED[3:0]),
        .s_axis_tvalid(NLW_U0_s_axis_tvalid_UNCONNECTED),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(NLW_U0_sleep_UNCONNECTED),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(NLW_U0_wr_clk_UNCONNECTED),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(NLW_U0_wr_rst_UNCONNECTED),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* ECO_CHECKSUM = "c05f4803" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module nexys_RS232
   (JA,
    CA,
    CB,
    CC,
    CD,
    CE,
    CF,
    CG,
    DP,
    AN,
    BTNC,
    BTNU,
    SW,
    LED,
    CLK100MHZ);
  inout [2:1]JA;
  output CA;
  output CB;
  output CC;
  output CD;
  output CE;
  output CF;
  output CG;
  output DP;
  output [7:0]AN;
  input BTNC;
  input BTNU;
  input [15:0]SW;
  output [15:0]LED;
  input CLK100MHZ;

  wire [7:0]AN;
  wire BTNC;
  wire BTNC_IBUF;
  wire BTNU;
  wire BTNU_IBUF;
  wire CA;
  wire CB;
  wire CC;
  wire CD;
  wire CE;
  wire CF;
  wire CG;
  (* IBUF_LOW_PWR *) wire CLK100MHZ;
  wire DP;
  wire DP_OBUF;
  wire [2:1]JA;
  wire [2:2]JA_IBUF;
  wire [1:1]JA_IBUF__0;
  wire [15:0]LED;
  wire [15:0]LED_OBUF;
  wire [15:0]SW;
  wire [7:0]SW_IBUF;
  wire UUT_n_12;
  wire clk;
  wire [26:0]contador;
  wire contador1;
  wire \contador[0]_i_1_n_0 ;
  wire \contador[10]_i_1_n_0 ;
  wire \contador[11]_i_1_n_0 ;
  wire \contador[12]_i_1_n_0 ;
  wire \contador[13]_i_1_n_0 ;
  wire \contador[14]_i_1_n_0 ;
  wire \contador[15]_i_1_n_0 ;
  wire \contador[16]_i_1_n_0 ;
  wire \contador[17]_i_1_n_0 ;
  wire \contador[18]_i_1_n_0 ;
  wire \contador[19]_i_1_n_0 ;
  wire \contador[1]_i_1_n_0 ;
  wire \contador[20]_i_1_n_0 ;
  wire \contador[21]_i_1_n_0 ;
  wire \contador[22]_i_1_n_0 ;
  wire \contador[23]_i_1_n_0 ;
  wire \contador[24]_i_1_n_0 ;
  wire \contador[25]_i_1_n_0 ;
  wire \contador[26]_i_1_n_0 ;
  wire \contador[26]_i_4_n_0 ;
  wire \contador[26]_i_5_n_0 ;
  wire \contador[26]_i_6_n_0 ;
  wire \contador[26]_i_7_n_0 ;
  wire \contador[2]_i_1_n_0 ;
  wire \contador[3]_i_1_n_0 ;
  wire \contador[4]_i_1_n_0 ;
  wire \contador[5]_i_1_n_0 ;
  wire \contador[6]_i_1_n_0 ;
  wire \contador[7]_i_1_n_0 ;
  wire \contador[8]_i_1_n_0 ;
  wire \contador[9]_i_1_n_0 ;
  wire \contador_reg[12]_i_2_n_0 ;
  wire \contador_reg[12]_i_2_n_4 ;
  wire \contador_reg[12]_i_2_n_5 ;
  wire \contador_reg[12]_i_2_n_6 ;
  wire \contador_reg[12]_i_2_n_7 ;
  wire \contador_reg[16]_i_2_n_0 ;
  wire \contador_reg[16]_i_2_n_4 ;
  wire \contador_reg[16]_i_2_n_5 ;
  wire \contador_reg[16]_i_2_n_6 ;
  wire \contador_reg[16]_i_2_n_7 ;
  wire \contador_reg[20]_i_2_n_0 ;
  wire \contador_reg[20]_i_2_n_4 ;
  wire \contador_reg[20]_i_2_n_5 ;
  wire \contador_reg[20]_i_2_n_6 ;
  wire \contador_reg[20]_i_2_n_7 ;
  wire \contador_reg[24]_i_2_n_0 ;
  wire \contador_reg[24]_i_2_n_4 ;
  wire \contador_reg[24]_i_2_n_5 ;
  wire \contador_reg[24]_i_2_n_6 ;
  wire \contador_reg[24]_i_2_n_7 ;
  wire \contador_reg[26]_i_2_n_6 ;
  wire \contador_reg[26]_i_2_n_7 ;
  wire \contador_reg[4]_i_2_n_0 ;
  wire \contador_reg[4]_i_2_n_4 ;
  wire \contador_reg[4]_i_2_n_5 ;
  wire \contador_reg[4]_i_2_n_6 ;
  wire \contador_reg[4]_i_2_n_7 ;
  wire \contador_reg[8]_i_2_n_0 ;
  wire \contador_reg[8]_i_2_n_4 ;
  wire \contador_reg[8]_i_2_n_5 ;
  wire \contador_reg[8]_i_2_n_6 ;
  wire \contador_reg[8]_i_2_n_7 ;
  wire NLW_clk_20MHz_locked_UNCONNECTED;
  wire [2:0]\NLW_contador_reg[12]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_contador_reg[16]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_contador_reg[20]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_contador_reg[24]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_contador_reg[26]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_contador_reg[26]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_contador_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_contador_reg[8]_i_2_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("TB_nexys_RS232_time_impl.sdf",,,,"tool_control");
end
  OBUF \AN_OBUF[0]_inst 
       (.I(1'b0),
        .O(AN[0]));
  OBUF \AN_OBUF[1]_inst 
       (.I(1'b0),
        .O(AN[1]));
  OBUF \AN_OBUF[2]_inst 
       (.I(1'b0),
        .O(AN[2]));
  OBUF \AN_OBUF[3]_inst 
       (.I(1'b0),
        .O(AN[3]));
  OBUF \AN_OBUF[4]_inst 
       (.I(1'b0),
        .O(AN[4]));
  OBUF \AN_OBUF[5]_inst 
       (.I(1'b0),
        .O(AN[5]));
  OBUF \AN_OBUF[6]_inst 
       (.I(1'b0),
        .O(AN[6]));
  OBUF \AN_OBUF[7]_inst 
       (.I(1'b0),
        .O(AN[7]));
  IBUF BTNC_IBUF_inst
       (.I(BTNC),
        .O(BTNC_IBUF));
  IBUF BTNU_IBUF_inst
       (.I(BTNU),
        .O(BTNU_IBUF));
  OBUF CA_OBUF_inst
       (.I(1'b1),
        .O(CA));
  OBUF CB_OBUF_inst
       (.I(1'b1),
        .O(CB));
  OBUF CC_OBUF_inst
       (.I(1'b1),
        .O(CC));
  OBUF CD_OBUF_inst
       (.I(1'b1),
        .O(CD));
  OBUF CE_OBUF_inst
       (.I(1'b1),
        .O(CE));
  OBUF CF_OBUF_inst
       (.I(1'b1),
        .O(CF));
  OBUF CG_OBUF_inst
       (.I(1'b1),
        .O(CG));
  OBUF DP_OBUF_inst
       (.I(DP_OBUF),
        .O(DP));
  IBUF \JA_IBUF[2]_inst 
       (.I(JA[2]),
        .O(JA_IBUF));
  OBUF \JA_OBUF[1]_inst 
       (.I(JA_IBUF__0),
        .O(JA[1]));
  OBUF \LED_OBUF[0]_inst 
       (.I(LED_OBUF[0]),
        .O(LED[0]));
  OBUF \LED_OBUF[10]_inst 
       (.I(LED_OBUF[10]),
        .O(LED[10]));
  OBUF \LED_OBUF[11]_inst 
       (.I(LED_OBUF[11]),
        .O(LED[11]));
  OBUF \LED_OBUF[12]_inst 
       (.I(LED_OBUF[12]),
        .O(LED[12]));
  OBUF \LED_OBUF[13]_inst 
       (.I(LED_OBUF[13]),
        .O(LED[13]));
  OBUF \LED_OBUF[14]_inst 
       (.I(LED_OBUF[14]),
        .O(LED[14]));
  OBUF \LED_OBUF[15]_inst 
       (.I(LED_OBUF[15]),
        .O(LED[15]));
  OBUF \LED_OBUF[1]_inst 
       (.I(LED_OBUF[1]),
        .O(LED[1]));
  OBUF \LED_OBUF[2]_inst 
       (.I(LED_OBUF[2]),
        .O(LED[2]));
  OBUF \LED_OBUF[3]_inst 
       (.I(LED_OBUF[3]),
        .O(LED[3]));
  OBUF \LED_OBUF[4]_inst 
       (.I(LED_OBUF[4]),
        .O(LED[4]));
  OBUF \LED_OBUF[5]_inst 
       (.I(LED_OBUF[5]),
        .O(LED[5]));
  OBUF \LED_OBUF[6]_inst 
       (.I(LED_OBUF[6]),
        .O(LED[6]));
  OBUF \LED_OBUF[7]_inst 
       (.I(LED_OBUF[7]),
        .O(LED[7]));
  OBUF \LED_OBUF[8]_inst 
       (.I(1'b0),
        .O(LED[8]));
  OBUF \LED_OBUF[9]_inst 
       (.I(1'b0),
        .O(LED[9]));
  IBUF \SW_IBUF[0]_inst 
       (.I(SW[0]),
        .O(SW_IBUF[0]));
  IBUF \SW_IBUF[12]_inst 
       (.I(SW[12]),
        .O(LED_OBUF[12]));
  IBUF \SW_IBUF[15]_inst 
       (.I(SW[15]),
        .O(LED_OBUF[15]));
  IBUF \SW_IBUF[1]_inst 
       (.I(SW[1]),
        .O(SW_IBUF[1]));
  IBUF \SW_IBUF[2]_inst 
       (.I(SW[2]),
        .O(SW_IBUF[2]));
  IBUF \SW_IBUF[3]_inst 
       (.I(SW[3]),
        .O(SW_IBUF[3]));
  IBUF \SW_IBUF[4]_inst 
       (.I(SW[4]),
        .O(SW_IBUF[4]));
  IBUF \SW_IBUF[5]_inst 
       (.I(SW[5]),
        .O(SW_IBUF[5]));
  IBUF \SW_IBUF[6]_inst 
       (.I(SW[6]),
        .O(SW_IBUF[6]));
  IBUF \SW_IBUF[7]_inst 
       (.I(SW[7]),
        .O(SW_IBUF[7]));
  RS232top UUT
       (.AR(UUT_n_12),
        .BTNC_IBUF(BTNC_IBUF),
        .D(SW_IBUF),
        .JA_IBUF(JA_IBUF),
        .LED_OBUF({LED_OBUF[14:13],LED_OBUF[11:10],LED_OBUF[7:0]}),
        .StartTX_reg_0({LED_OBUF[15],LED_OBUF[12]}),
        .clk_out1(clk),
        .\data_count_reg[0] (JA_IBUF__0),
        .rd_en(BTNU_IBUF));
  (* IMPORTED_FROM = "c:/Users/worbb/Desktop/Electronics/LCSE/RS232/RS232.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* syn_black_box = "TRUE" *) 
  clk_wiz_0 clk_20MHz
       (.clk_in1(CLK100MHZ),
        .clk_out1(clk),
        .locked(NLW_clk_20MHz_locked_UNCONNECTED),
        .resetn(LED_OBUF[15]));
  LUT2 #(
    .INIT(4'h1)) 
    \contador[0]_i_1 
       (.I0(contador1),
        .I1(contador[0]),
        .O(\contador[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[10]_i_1 
       (.I0(\contador_reg[12]_i_2_n_6 ),
        .I1(contador1),
        .O(\contador[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[11]_i_1 
       (.I0(\contador_reg[12]_i_2_n_5 ),
        .I1(contador1),
        .O(\contador[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[12]_i_1 
       (.I0(\contador_reg[12]_i_2_n_4 ),
        .I1(contador1),
        .O(\contador[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[13]_i_1 
       (.I0(\contador_reg[16]_i_2_n_7 ),
        .I1(contador1),
        .O(\contador[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[14]_i_1 
       (.I0(\contador_reg[16]_i_2_n_6 ),
        .I1(contador1),
        .O(\contador[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[15]_i_1 
       (.I0(\contador_reg[16]_i_2_n_5 ),
        .I1(contador1),
        .O(\contador[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[16]_i_1 
       (.I0(\contador_reg[16]_i_2_n_4 ),
        .I1(contador1),
        .O(\contador[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[17]_i_1 
       (.I0(\contador_reg[20]_i_2_n_7 ),
        .I1(contador1),
        .O(\contador[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[18]_i_1 
       (.I0(\contador_reg[20]_i_2_n_6 ),
        .I1(contador1),
        .O(\contador[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[19]_i_1 
       (.I0(\contador_reg[20]_i_2_n_5 ),
        .I1(contador1),
        .O(\contador[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[1]_i_1 
       (.I0(\contador_reg[4]_i_2_n_7 ),
        .I1(contador1),
        .O(\contador[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[20]_i_1 
       (.I0(\contador_reg[20]_i_2_n_4 ),
        .I1(contador1),
        .O(\contador[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[21]_i_1 
       (.I0(\contador_reg[24]_i_2_n_7 ),
        .I1(contador1),
        .O(\contador[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[22]_i_1 
       (.I0(\contador_reg[24]_i_2_n_6 ),
        .I1(contador1),
        .O(\contador[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[23]_i_1 
       (.I0(\contador_reg[24]_i_2_n_5 ),
        .I1(contador1),
        .O(\contador[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[24]_i_1 
       (.I0(\contador_reg[24]_i_2_n_4 ),
        .I1(contador1),
        .O(\contador[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[25]_i_1 
       (.I0(\contador_reg[26]_i_2_n_7 ),
        .I1(contador1),
        .O(\contador[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[26]_i_1 
       (.I0(\contador_reg[26]_i_2_n_6 ),
        .I1(contador1),
        .O(\contador[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBA00BA00BA00)) 
    \contador[26]_i_3 
       (.I0(\contador[26]_i_4_n_0 ),
        .I1(\contador[26]_i_5_n_0 ),
        .I2(\contador[26]_i_6_n_0 ),
        .I3(\contador[26]_i_7_n_0 ),
        .I4(contador[25]),
        .I5(contador[26]),
        .O(contador1));
  LUT3 #(
    .INIT(8'hF8)) 
    \contador[26]_i_4 
       (.I0(contador[17]),
        .I1(contador[18]),
        .I2(contador[19]),
        .O(\contador[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \contador[26]_i_5 
       (.I0(contador[11]),
        .I1(contador[12]),
        .I2(contador[10]),
        .I3(contador[9]),
        .I4(contador[8]),
        .I5(contador[16]),
        .O(\contador[26]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \contador[26]_i_6 
       (.I0(contador[13]),
        .I1(contador[18]),
        .I2(contador[15]),
        .I3(contador[14]),
        .O(\contador[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \contador[26]_i_7 
       (.I0(contador[21]),
        .I1(contador[22]),
        .I2(contador[26]),
        .I3(contador[20]),
        .I4(DP_OBUF),
        .I5(contador[23]),
        .O(\contador[26]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[2]_i_1 
       (.I0(\contador_reg[4]_i_2_n_6 ),
        .I1(contador1),
        .O(\contador[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[3]_i_1 
       (.I0(\contador_reg[4]_i_2_n_5 ),
        .I1(contador1),
        .O(\contador[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[4]_i_1 
       (.I0(\contador_reg[4]_i_2_n_4 ),
        .I1(contador1),
        .O(\contador[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[5]_i_1 
       (.I0(\contador_reg[8]_i_2_n_7 ),
        .I1(contador1),
        .O(\contador[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[6]_i_1 
       (.I0(\contador_reg[8]_i_2_n_6 ),
        .I1(contador1),
        .O(\contador[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[7]_i_1 
       (.I0(\contador_reg[8]_i_2_n_5 ),
        .I1(contador1),
        .O(\contador[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[8]_i_1 
       (.I0(\contador_reg[8]_i_2_n_4 ),
        .I1(contador1),
        .O(\contador[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[9]_i_1 
       (.I0(\contador_reg[12]_i_2_n_7 ),
        .I1(contador1),
        .O(\contador[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[0]_i_1_n_0 ),
        .Q(contador[0]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[10]_i_1_n_0 ),
        .Q(contador[10]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[11]_i_1_n_0 ),
        .Q(contador[11]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[12]_i_1_n_0 ),
        .Q(contador[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \contador_reg[12]_i_2 
       (.CI(\contador_reg[8]_i_2_n_0 ),
        .CO({\contador_reg[12]_i_2_n_0 ,\NLW_contador_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_reg[12]_i_2_n_4 ,\contador_reg[12]_i_2_n_5 ,\contador_reg[12]_i_2_n_6 ,\contador_reg[12]_i_2_n_7 }),
        .S(contador[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[13]_i_1_n_0 ),
        .Q(contador[13]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[14]_i_1_n_0 ),
        .Q(contador[14]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[15]_i_1_n_0 ),
        .Q(contador[15]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[16]_i_1_n_0 ),
        .Q(contador[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \contador_reg[16]_i_2 
       (.CI(\contador_reg[12]_i_2_n_0 ),
        .CO({\contador_reg[16]_i_2_n_0 ,\NLW_contador_reg[16]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_reg[16]_i_2_n_4 ,\contador_reg[16]_i_2_n_5 ,\contador_reg[16]_i_2_n_6 ,\contador_reg[16]_i_2_n_7 }),
        .S(contador[16:13]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[17]_i_1_n_0 ),
        .Q(contador[17]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[18]_i_1_n_0 ),
        .Q(contador[18]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[19]_i_1_n_0 ),
        .Q(contador[19]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[1]_i_1_n_0 ),
        .Q(contador[1]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[20]_i_1_n_0 ),
        .Q(contador[20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \contador_reg[20]_i_2 
       (.CI(\contador_reg[16]_i_2_n_0 ),
        .CO({\contador_reg[20]_i_2_n_0 ,\NLW_contador_reg[20]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_reg[20]_i_2_n_4 ,\contador_reg[20]_i_2_n_5 ,\contador_reg[20]_i_2_n_6 ,\contador_reg[20]_i_2_n_7 }),
        .S(contador[20:17]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[21]_i_1_n_0 ),
        .Q(contador[21]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[22]_i_1_n_0 ),
        .Q(contador[22]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[23]_i_1_n_0 ),
        .Q(contador[23]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[24]_i_1_n_0 ),
        .Q(DP_OBUF));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \contador_reg[24]_i_2 
       (.CI(\contador_reg[20]_i_2_n_0 ),
        .CO({\contador_reg[24]_i_2_n_0 ,\NLW_contador_reg[24]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_reg[24]_i_2_n_4 ,\contador_reg[24]_i_2_n_5 ,\contador_reg[24]_i_2_n_6 ,\contador_reg[24]_i_2_n_7 }),
        .S({DP_OBUF,contador[23:21]}));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[25]_i_1_n_0 ),
        .Q(contador[25]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[26]_i_1_n_0 ),
        .Q(contador[26]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \contador_reg[26]_i_2 
       (.CI(\contador_reg[24]_i_2_n_0 ),
        .CO(\NLW_contador_reg[26]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_contador_reg[26]_i_2_O_UNCONNECTED [3:2],\contador_reg[26]_i_2_n_6 ,\contador_reg[26]_i_2_n_7 }),
        .S({1'b0,1'b0,contador[26:25]}));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[2]_i_1_n_0 ),
        .Q(contador[2]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[3]_i_1_n_0 ),
        .Q(contador[3]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[4]_i_1_n_0 ),
        .Q(contador[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \contador_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\contador_reg[4]_i_2_n_0 ,\NLW_contador_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(contador[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_reg[4]_i_2_n_4 ,\contador_reg[4]_i_2_n_5 ,\contador_reg[4]_i_2_n_6 ,\contador_reg[4]_i_2_n_7 }),
        .S(contador[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[5]_i_1_n_0 ),
        .Q(contador[5]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[6]_i_1_n_0 ),
        .Q(contador[6]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[7]_i_1_n_0 ),
        .Q(contador[7]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[8]_i_1_n_0 ),
        .Q(contador[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \contador_reg[8]_i_2 
       (.CI(\contador_reg[4]_i_2_n_0 ),
        .CO({\contador_reg[8]_i_2_n_0 ,\NLW_contador_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_reg[8]_i_2_n_4 ,\contador_reg[8]_i_2_n_5 ,\contador_reg[8]_i_2_n_6 ,\contador_reg[8]_i_2_n_7 }),
        .S(contador[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(UUT_n_12),
        .D(\contador[9]_i_1_n_0 ),
        .Q(contador[9]));
endmodule

module rrx
   (\SW[15] ,
    E,
    wr_en,
    \HalfBitCounter_reg[7]_0 ,
    LineRD_in,
    clk_out1);
  output \SW[15] ;
  output [0:0]E;
  output wr_en;
  input [1:0]\HalfBitCounter_reg[7]_0 ;
  input LineRD_in;
  input clk_out1;

  wire DataCount;
  wire \DataCount[0]_i_1_n_0 ;
  wire \DataCount[1]_i_1_n_0 ;
  wire \DataCount[2]_i_1_n_0 ;
  wire \DataCount[3]_i_2_n_0 ;
  wire \DataCount_reg_n_0_[0] ;
  wire \DataCount_reg_n_0_[1] ;
  wire \DataCount_reg_n_0_[2] ;
  wire \DataCount_reg_n_0_[3] ;
  wire [0:0]E;
  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[0]_i_2_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1_n_0 ;
  wire \FSM_onehot_current_state[1]_i_2_n_0 ;
  wire \FSM_onehot_current_state[2]_i_1_n_0 ;
  wire \FSM_onehot_current_state[2]_i_2_n_0 ;
  wire \FSM_onehot_current_state[2]_i_3_n_0 ;
  wire \FSM_onehot_current_state[2]_i_4_n_0 ;
  wire \FSM_onehot_current_state[3]_i_1_n_0 ;
  wire \FSM_onehot_current_state[3]_i_2_n_0 ;
  wire \FSM_onehot_current_state[3]_i_3_n_0 ;
  wire \FSM_onehot_current_state_reg_n_0_[0] ;
  wire \FSM_onehot_current_state_reg_n_0_[1] ;
  wire \FSM_onehot_current_state_reg_n_0_[2] ;
  wire \FSM_onehot_current_state_reg_n_0_[3] ;
  wire [7:0]HalfBitCounter;
  wire \HalfBitCounter[5]_i_2_n_0 ;
  wire \HalfBitCounter[7]_i_2_n_0 ;
  wire [1:0]\HalfBitCounter_reg[7]_0 ;
  wire \HalfBitCounter_reg_n_0_[0] ;
  wire \HalfBitCounter_reg_n_0_[1] ;
  wire \HalfBitCounter_reg_n_0_[2] ;
  wire \HalfBitCounter_reg_n_0_[3] ;
  wire \HalfBitCounter_reg_n_0_[4] ;
  wire \HalfBitCounter_reg_n_0_[5] ;
  wire \HalfBitCounter_reg_n_0_[6] ;
  wire \HalfBitCounter_reg_n_0_[7] ;
  wire Internal_memory_i_2_n_0;
  wire Internal_memory_i_3_n_0;
  wire Internal_memory_i_4_n_0;
  wire LineRD_in;
  wire \Qtemp[7]_i_2_n_0 ;
  wire \Qtemp[7]_i_3_n_0 ;
  wire \SW[15] ;
  wire [7:0]bitCounter;
  wire \bitCounter[4]_i_2_n_0 ;
  wire \bitCounter[6]_i_2_n_0 ;
  wire \bitCounter[7]_i_2_n_0 ;
  wire \bitCounter_reg_n_0_[0] ;
  wire \bitCounter_reg_n_0_[1] ;
  wire \bitCounter_reg_n_0_[2] ;
  wire \bitCounter_reg_n_0_[3] ;
  wire \bitCounter_reg_n_0_[4] ;
  wire \bitCounter_reg_n_0_[5] ;
  wire \bitCounter_reg_n_0_[6] ;
  wire \bitCounter_reg_n_0_[7] ;
  wire clk_out1;
  wire wr_en;

  LUT2 #(
    .INIT(4'h2)) 
    \DataCount[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(\DataCount_reg_n_0_[0] ),
        .O(\DataCount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \DataCount[1]_i_1 
       (.I0(\DataCount_reg_n_0_[0] ),
        .I1(\DataCount_reg_n_0_[1] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\DataCount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \DataCount[2]_i_1 
       (.I0(\DataCount_reg_n_0_[0] ),
        .I1(\DataCount_reg_n_0_[1] ),
        .I2(\DataCount_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\DataCount[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFEFE)) 
    \DataCount[3]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_current_state[3]_i_3_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(DataCount));
  LUT5 #(
    .INIT(32'h7F000000)) 
    \DataCount[3]_i_2 
       (.I0(\DataCount_reg_n_0_[2] ),
        .I1(\DataCount_reg_n_0_[1] ),
        .I2(\DataCount_reg_n_0_[0] ),
        .I3(\DataCount_reg_n_0_[3] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\DataCount[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \DataCount_reg[0] 
       (.C(clk_out1),
        .CE(DataCount),
        .CLR(\SW[15] ),
        .D(\DataCount[0]_i_1_n_0 ),
        .Q(\DataCount_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \DataCount_reg[1] 
       (.C(clk_out1),
        .CE(DataCount),
        .CLR(\SW[15] ),
        .D(\DataCount[1]_i_1_n_0 ),
        .Q(\DataCount_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \DataCount_reg[2] 
       (.C(clk_out1),
        .CE(DataCount),
        .CLR(\SW[15] ),
        .D(\DataCount[2]_i_1_n_0 ),
        .Q(\DataCount_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \DataCount_reg[3] 
       (.C(clk_out1),
        .CE(DataCount),
        .CLR(\SW[15] ),
        .D(\DataCount[3]_i_2_n_0 ),
        .Q(\DataCount_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'h88F8FFFF88F888F8)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(LineRD_in),
        .I2(\FSM_onehot_current_state[0]_i_2_n_0 ),
        .I3(\FSM_onehot_current_state[2]_i_2_n_0 ),
        .I4(\FSM_onehot_current_state[3]_i_3_n_0 ),
        .I5(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \FSM_onehot_current_state[0]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(LineRD_in),
        .I2(\HalfBitCounter_reg_n_0_[5] ),
        .I3(\HalfBitCounter_reg_n_0_[3] ),
        .I4(\HalfBitCounter_reg_n_0_[0] ),
        .I5(\HalfBitCounter_reg_n_0_[7] ),
        .O(\FSM_onehot_current_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(\FSM_onehot_current_state[1]_i_2_n_0 ),
        .I1(LineRD_in),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \FSM_onehot_current_state[1]_i_2 
       (.I0(\HalfBitCounter_reg_n_0_[7] ),
        .I1(\HalfBitCounter_reg_n_0_[0] ),
        .I2(\HalfBitCounter_reg_n_0_[3] ),
        .I3(\HalfBitCounter_reg_n_0_[5] ),
        .I4(\FSM_onehot_current_state[2]_i_2_n_0 ),
        .I5(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(\FSM_onehot_current_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF04FF04FF040404)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(\FSM_onehot_current_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .I2(\FSM_onehot_current_state[2]_i_4_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I5(\FSM_onehot_current_state[3]_i_3_n_0 ),
        .O(\FSM_onehot_current_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_current_state[2]_i_2 
       (.I0(\HalfBitCounter_reg_n_0_[4] ),
        .I1(\HalfBitCounter_reg_n_0_[6] ),
        .I2(\HalfBitCounter_reg_n_0_[2] ),
        .I3(\HalfBitCounter_reg_n_0_[1] ),
        .O(\FSM_onehot_current_state[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_current_state[2]_i_3 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(LineRD_in),
        .O(\FSM_onehot_current_state[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_current_state[2]_i_4 
       (.I0(\HalfBitCounter_reg_n_0_[7] ),
        .I1(\HalfBitCounter_reg_n_0_[0] ),
        .I2(\HalfBitCounter_reg_n_0_[3] ),
        .I3(\HalfBitCounter_reg_n_0_[5] ),
        .O(\FSM_onehot_current_state[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF022)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_current_state[3]_i_3_n_0 ),
        .O(\FSM_onehot_current_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \FSM_onehot_current_state[3]_i_2 
       (.I0(\DataCount_reg_n_0_[2] ),
        .I1(\DataCount_reg_n_0_[1] ),
        .I2(\DataCount_reg_n_0_[0] ),
        .I3(\DataCount_reg_n_0_[3] ),
        .O(\FSM_onehot_current_state[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_onehot_current_state[3]_i_3 
       (.I0(\bitCounter_reg_n_0_[0] ),
        .I1(\bitCounter_reg_n_0_[4] ),
        .I2(\bitCounter_reg_n_0_[3] ),
        .I3(Internal_memory_i_3_n_0),
        .O(\FSM_onehot_current_state[3]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "startbit:0010,rcvdata:0100,stopbit:1000,idle:0001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .PRE(\SW[15] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "startbit:0010,rcvdata:0100,stopbit:1000,idle:0001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\SW[15] ),
        .D(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "startbit:0010,rcvdata:0100,stopbit:1000,idle:0001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\SW[15] ),
        .D(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "startbit:0010,rcvdata:0100,stopbit:1000,idle:0001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\SW[15] ),
        .D(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[3] ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(\HalfBitCounter_reg[7]_0 [1]),
        .O(\SW[15] ));
  LUT2 #(
    .INIT(4'h2)) 
    \HalfBitCounter[0]_i_1 
       (.I0(\FSM_onehot_current_state[1]_i_2_n_0 ),
        .I1(\HalfBitCounter_reg_n_0_[0] ),
        .O(HalfBitCounter[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \HalfBitCounter[1]_i_1 
       (.I0(\FSM_onehot_current_state[1]_i_2_n_0 ),
        .I1(\HalfBitCounter_reg_n_0_[0] ),
        .I2(\HalfBitCounter_reg_n_0_[1] ),
        .O(HalfBitCounter[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \HalfBitCounter[2]_i_1 
       (.I0(\FSM_onehot_current_state[1]_i_2_n_0 ),
        .I1(\HalfBitCounter_reg_n_0_[1] ),
        .I2(\HalfBitCounter_reg_n_0_[0] ),
        .I3(\HalfBitCounter_reg_n_0_[2] ),
        .O(HalfBitCounter[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \HalfBitCounter[3]_i_1 
       (.I0(\FSM_onehot_current_state[1]_i_2_n_0 ),
        .I1(\HalfBitCounter_reg_n_0_[1] ),
        .I2(\HalfBitCounter_reg_n_0_[2] ),
        .I3(\HalfBitCounter_reg_n_0_[0] ),
        .I4(\HalfBitCounter_reg_n_0_[3] ),
        .O(HalfBitCounter[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \HalfBitCounter[4]_i_1 
       (.I0(\FSM_onehot_current_state[1]_i_2_n_0 ),
        .I1(\HalfBitCounter_reg_n_0_[3] ),
        .I2(\HalfBitCounter_reg_n_0_[0] ),
        .I3(\HalfBitCounter_reg_n_0_[2] ),
        .I4(\HalfBitCounter_reg_n_0_[1] ),
        .I5(\HalfBitCounter_reg_n_0_[4] ),
        .O(HalfBitCounter[4]));
  LUT3 #(
    .INIT(8'h28)) 
    \HalfBitCounter[5]_i_1 
       (.I0(\FSM_onehot_current_state[1]_i_2_n_0 ),
        .I1(\HalfBitCounter[5]_i_2_n_0 ),
        .I2(\HalfBitCounter_reg_n_0_[5] ),
        .O(HalfBitCounter[5]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \HalfBitCounter[5]_i_2 
       (.I0(\HalfBitCounter_reg_n_0_[4] ),
        .I1(\HalfBitCounter_reg_n_0_[3] ),
        .I2(\HalfBitCounter_reg_n_0_[0] ),
        .I3(\HalfBitCounter_reg_n_0_[2] ),
        .I4(\HalfBitCounter_reg_n_0_[1] ),
        .O(\HalfBitCounter[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \HalfBitCounter[6]_i_1 
       (.I0(\HalfBitCounter[7]_i_2_n_0 ),
        .I1(\FSM_onehot_current_state[1]_i_2_n_0 ),
        .I2(\HalfBitCounter_reg_n_0_[6] ),
        .O(HalfBitCounter[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \HalfBitCounter[7]_i_1 
       (.I0(\HalfBitCounter[7]_i_2_n_0 ),
        .I1(\HalfBitCounter_reg_n_0_[6] ),
        .I2(\FSM_onehot_current_state[1]_i_2_n_0 ),
        .I3(\HalfBitCounter_reg_n_0_[7] ),
        .O(HalfBitCounter[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \HalfBitCounter[7]_i_2 
       (.I0(\HalfBitCounter_reg_n_0_[1] ),
        .I1(\HalfBitCounter_reg_n_0_[2] ),
        .I2(\HalfBitCounter_reg_n_0_[0] ),
        .I3(\HalfBitCounter_reg_n_0_[3] ),
        .I4(\HalfBitCounter_reg_n_0_[4] ),
        .I5(\HalfBitCounter_reg_n_0_[5] ),
        .O(\HalfBitCounter[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \HalfBitCounter_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\SW[15] ),
        .D(HalfBitCounter[0]),
        .Q(\HalfBitCounter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \HalfBitCounter_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\SW[15] ),
        .D(HalfBitCounter[1]),
        .Q(\HalfBitCounter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \HalfBitCounter_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\SW[15] ),
        .D(HalfBitCounter[2]),
        .Q(\HalfBitCounter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \HalfBitCounter_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\SW[15] ),
        .D(HalfBitCounter[3]),
        .Q(\HalfBitCounter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \HalfBitCounter_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\SW[15] ),
        .D(HalfBitCounter[4]),
        .Q(\HalfBitCounter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \HalfBitCounter_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\SW[15] ),
        .D(HalfBitCounter[5]),
        .Q(\HalfBitCounter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \HalfBitCounter_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\SW[15] ),
        .D(HalfBitCounter[6]),
        .Q(\HalfBitCounter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \HalfBitCounter_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\SW[15] ),
        .D(HalfBitCounter[7]),
        .Q(\HalfBitCounter_reg_n_0_[7] ));
  LUT5 #(
    .INIT(32'h00002F00)) 
    Internal_memory_i_1
       (.I0(\bitCounter_reg_n_0_[3] ),
        .I1(\bitCounter_reg_n_0_[4] ),
        .I2(\bitCounter_reg_n_0_[5] ),
        .I3(Internal_memory_i_2_n_0),
        .I4(Internal_memory_i_3_n_0),
        .O(wr_en));
  LUT6 #(
    .INIT(64'h0090009000000090)) 
    Internal_memory_i_2
       (.I0(\HalfBitCounter_reg[7]_0 [0]),
        .I1(LineRD_in),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I3(\bitCounter_reg_n_0_[4] ),
        .I4(\bitCounter_reg_n_0_[2] ),
        .I5(Internal_memory_i_4_n_0),
        .O(Internal_memory_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    Internal_memory_i_3
       (.I0(\bitCounter_reg_n_0_[7] ),
        .I1(\bitCounter_reg_n_0_[1] ),
        .I2(\bitCounter_reg_n_0_[2] ),
        .I3(\bitCounter_reg_n_0_[5] ),
        .I4(\bitCounter_reg_n_0_[6] ),
        .O(Internal_memory_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    Internal_memory_i_4
       (.I0(\bitCounter_reg_n_0_[0] ),
        .I1(\bitCounter_reg_n_0_[1] ),
        .O(Internal_memory_i_4_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    \Qtemp[7]_i_1 
       (.I0(\Qtemp[7]_i_2_n_0 ),
        .I1(\FSM_onehot_current_state[3]_i_3_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \Qtemp[7]_i_2 
       (.I0(\Qtemp[7]_i_3_n_0 ),
        .I1(\HalfBitCounter_reg_n_0_[0] ),
        .I2(\HalfBitCounter_reg_n_0_[7] ),
        .I3(LineRD_in),
        .I4(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I5(\HalfBitCounter_reg_n_0_[5] ),
        .O(\Qtemp[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \Qtemp[7]_i_3 
       (.I0(\HalfBitCounter_reg_n_0_[5] ),
        .I1(\HalfBitCounter_reg_n_0_[3] ),
        .I2(\HalfBitCounter_reg_n_0_[1] ),
        .I3(\HalfBitCounter_reg_n_0_[2] ),
        .I4(\HalfBitCounter_reg_n_0_[6] ),
        .I5(\HalfBitCounter_reg_n_0_[4] ),
        .O(\Qtemp[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00A8)) 
    \bitCounter[0]_i_1 
       (.I0(\FSM_onehot_current_state[3]_i_3_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I3(\bitCounter_reg_n_0_[0] ),
        .O(bitCounter[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00E0E000)) 
    \bitCounter[1]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_current_state[3]_i_3_n_0 ),
        .I3(\bitCounter_reg_n_0_[0] ),
        .I4(\bitCounter_reg_n_0_[1] ),
        .O(bitCounter[1]));
  LUT6 #(
    .INIT(64'h7878780000000000)) 
    \bitCounter[2]_i_1 
       (.I0(\bitCounter_reg_n_0_[0] ),
        .I1(\bitCounter_reg_n_0_[1] ),
        .I2(\bitCounter_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_current_state[3]_i_3_n_0 ),
        .O(bitCounter[2]));
  LUT5 #(
    .INIT(32'h00E0E000)) 
    \bitCounter[3]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_current_state[3]_i_3_n_0 ),
        .I3(\bitCounter[4]_i_2_n_0 ),
        .I4(\bitCounter_reg_n_0_[3] ),
        .O(bitCounter[3]));
  LUT6 #(
    .INIT(64'h00E0E0E0E0000000)) 
    \bitCounter[4]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_current_state[3]_i_3_n_0 ),
        .I3(\bitCounter[4]_i_2_n_0 ),
        .I4(\bitCounter_reg_n_0_[3] ),
        .I5(\bitCounter_reg_n_0_[4] ),
        .O(bitCounter[4]));
  LUT3 #(
    .INIT(8'h80)) 
    \bitCounter[4]_i_2 
       (.I0(\bitCounter_reg_n_0_[2] ),
        .I1(\bitCounter_reg_n_0_[1] ),
        .I2(\bitCounter_reg_n_0_[0] ),
        .O(\bitCounter[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00E0E000)) 
    \bitCounter[5]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_current_state[3]_i_3_n_0 ),
        .I3(\bitCounter[6]_i_2_n_0 ),
        .I4(\bitCounter_reg_n_0_[5] ),
        .O(bitCounter[5]));
  LUT6 #(
    .INIT(64'h00E0E0E0E0000000)) 
    \bitCounter[6]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_current_state[3]_i_3_n_0 ),
        .I3(\bitCounter[6]_i_2_n_0 ),
        .I4(\bitCounter_reg_n_0_[5] ),
        .I5(\bitCounter_reg_n_0_[6] ),
        .O(bitCounter[6]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \bitCounter[6]_i_2 
       (.I0(\bitCounter_reg_n_0_[4] ),
        .I1(\bitCounter_reg_n_0_[3] ),
        .I2(\bitCounter_reg_n_0_[2] ),
        .I3(\bitCounter_reg_n_0_[1] ),
        .I4(\bitCounter_reg_n_0_[0] ),
        .O(\bitCounter[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE0E000E00000E000)) 
    \bitCounter[7]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_current_state[3]_i_3_n_0 ),
        .I3(\bitCounter_reg_n_0_[6] ),
        .I4(\bitCounter[7]_i_2_n_0 ),
        .I5(\bitCounter_reg_n_0_[7] ),
        .O(bitCounter[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \bitCounter[7]_i_2 
       (.I0(\bitCounter_reg_n_0_[0] ),
        .I1(\bitCounter_reg_n_0_[1] ),
        .I2(\bitCounter_reg_n_0_[2] ),
        .I3(\bitCounter_reg_n_0_[3] ),
        .I4(\bitCounter_reg_n_0_[4] ),
        .I5(\bitCounter_reg_n_0_[5] ),
        .O(\bitCounter[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \bitCounter_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\SW[15] ),
        .D(bitCounter[0]),
        .Q(\bitCounter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \bitCounter_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\SW[15] ),
        .D(bitCounter[1]),
        .Q(\bitCounter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \bitCounter_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\SW[15] ),
        .D(bitCounter[2]),
        .Q(\bitCounter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \bitCounter_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\SW[15] ),
        .D(bitCounter[3]),
        .Q(\bitCounter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \bitCounter_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\SW[15] ),
        .D(bitCounter[4]),
        .Q(\bitCounter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \bitCounter_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\SW[15] ),
        .D(bitCounter[5]),
        .Q(\bitCounter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \bitCounter_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\SW[15] ),
        .D(bitCounter[6]),
        .Q(\bitCounter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \bitCounter_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\SW[15] ),
        .D(bitCounter[7]),
        .Q(\bitCounter_reg_n_0_[7] ));
endmodule

module shiftregister
   (Q,
    E,
    D,
    clk_out1,
    \Qtemp_reg[7]_0 );
  output [7:0]Q;
  input [0:0]E;
  input [0:0]D;
  input clk_out1;
  input \Qtemp_reg[7]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire \Qtemp_reg[7]_0 ;
  wire clk_out1;

  FDCE #(
    .INIT(1'b0)) 
    \Qtemp_reg[0] 
       (.C(clk_out1),
        .CE(E),
        .CLR(\Qtemp_reg[7]_0 ),
        .D(Q[1]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Qtemp_reg[1] 
       (.C(clk_out1),
        .CE(E),
        .CLR(\Qtemp_reg[7]_0 ),
        .D(Q[2]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Qtemp_reg[2] 
       (.C(clk_out1),
        .CE(E),
        .CLR(\Qtemp_reg[7]_0 ),
        .D(Q[3]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Qtemp_reg[3] 
       (.C(clk_out1),
        .CE(E),
        .CLR(\Qtemp_reg[7]_0 ),
        .D(Q[4]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Qtemp_reg[4] 
       (.C(clk_out1),
        .CE(E),
        .CLR(\Qtemp_reg[7]_0 ),
        .D(Q[5]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Qtemp_reg[5] 
       (.C(clk_out1),
        .CE(E),
        .CLR(\Qtemp_reg[7]_0 ),
        .D(Q[6]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Qtemp_reg[6] 
       (.C(clk_out1),
        .CE(E),
        .CLR(\Qtemp_reg[7]_0 ),
        .D(Q[7]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Qtemp_reg[7] 
       (.C(clk_out1),
        .CE(E),
        .CLR(\Qtemp_reg[7]_0 ),
        .D(D),
        .Q(Q[7]));
endmodule

module trx
   (\FSM_sequential_current_state_reg[0]_0 ,
    E,
    p_1_in,
    LED_OBUF,
    \data_count_reg[0]_0 ,
    BTNC_IBUF,
    StartTX_reg,
    Start,
    Q,
    clk_out1,
    \Pulse_width_reg[7]_0 );
  output \FSM_sequential_current_state_reg[0]_0 ;
  output [0:0]E;
  output p_1_in;
  output [0:0]LED_OBUF;
  output [0:0]\data_count_reg[0]_0 ;
  input BTNC_IBUF;
  input [1:0]StartTX_reg;
  input Start;
  input [7:0]Q;
  input clk_out1;
  input \Pulse_width_reg[7]_0 ;

  wire BTNC_IBUF;
  wire [0:0]E;
  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[1]_i_3_n_0 ;
  wire \FSM_sequential_current_state[1]_i_4_n_0 ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \JA_OBUF[1]_inst_i_2_n_0 ;
  wire \JA_OBUF[1]_inst_i_3_n_0 ;
  wire \JA_OBUF[1]_inst_i_4_n_0 ;
  wire \JA_OBUF[1]_inst_i_5_n_0 ;
  wire [0:0]LED_OBUF;
  wire [7:0]Pulse_width;
  wire \Pulse_width[3]_i_2_n_0 ;
  wire \Pulse_width[4]_i_2_n_0 ;
  wire \Pulse_width[5]_i_2_n_0 ;
  wire \Pulse_width[7]_i_2_n_0 ;
  wire \Pulse_width_reg[7]_0 ;
  wire \Pulse_width_reg_n_0_[0] ;
  wire \Pulse_width_reg_n_0_[1] ;
  wire \Pulse_width_reg_n_0_[2] ;
  wire \Pulse_width_reg_n_0_[3] ;
  wire \Pulse_width_reg_n_0_[4] ;
  wire \Pulse_width_reg_n_0_[5] ;
  wire \Pulse_width_reg_n_0_[6] ;
  wire \Pulse_width_reg_n_0_[7] ;
  wire [7:0]Q;
  wire Start;
  wire [1:0]StartTX_reg;
  wire clk_out1;
  wire [1:0]current_state;
  wire data_count;
  wire \data_count[0]_i_1_n_0 ;
  wire \data_count[1]_i_1_n_0 ;
  wire \data_count[2]_i_1_n_0 ;
  wire \data_count[3]_i_2_n_0 ;
  wire [0:0]\data_count_reg[0]_0 ;
  wire \data_count_reg_n_0_[0] ;
  wire \data_count_reg_n_0_[1] ;
  wire \data_count_reg_n_0_[2] ;
  wire \data_count_reg_n_0_[3] ;
  wire [1:0]next_state;
  wire p_1_in;

  LUT3 #(
    .INIT(8'hEF)) 
    Ack_in_i_1
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(BTNC_IBUF),
        .O(p_1_in));
  LUT3 #(
    .INIT(8'h02)) 
    \Data_FF[7]_i_1 
       (.I0(BTNC_IBUF),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(E));
  (* \PinAttr:I2:HOLD_DETOUR  = "156" *) 
  LUT6 #(
    .INIT(64'hFFFF22220000222E)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(Start),
        .I1(current_state[1]),
        .I2(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I3(\data_count_reg_n_0_[3] ),
        .I4(current_state[0]),
        .I5(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .O(next_state[0]));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(\data_count_reg_n_0_[1] ),
        .I1(\data_count_reg_n_0_[0] ),
        .I2(\data_count_reg_n_0_[2] ),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hC6)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .O(next_state[1]));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \FSM_sequential_current_state[1]_i_3 
       (.I0(\Pulse_width_reg_n_0_[6] ),
        .I1(\Pulse_width_reg_n_0_[7] ),
        .I2(\Pulse_width_reg_n_0_[1] ),
        .I3(\Pulse_width_reg_n_0_[5] ),
        .I4(\FSM_sequential_current_state[1]_i_4_n_0 ),
        .O(\FSM_sequential_current_state[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \FSM_sequential_current_state[1]_i_4 
       (.I0(\Pulse_width_reg_n_0_[3] ),
        .I1(\Pulse_width_reg_n_0_[4] ),
        .I2(\Pulse_width_reg_n_0_[2] ),
        .I3(\Pulse_width_reg_n_0_[0] ),
        .O(\FSM_sequential_current_state[1]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "startbit:01,senddata:10,stopbit:11,idle:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\Pulse_width_reg[7]_0 ),
        .D(next_state[0]),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "startbit:01,senddata:10,stopbit:11,idle:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\Pulse_width_reg[7]_0 ),
        .D(next_state[1]),
        .Q(current_state[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \JA_OBUF[1]_inst_i_1 
       (.I0(\JA_OBUF[1]_inst_i_2_n_0 ),
        .I1(\JA_OBUF[1]_inst_i_3_n_0 ),
        .O(\data_count_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFF4F0FFF0F4F0FF)) 
    \JA_OBUF[1]_inst_i_2 
       (.I0(\data_count_reg_n_0_[0] ),
        .I1(\JA_OBUF[1]_inst_i_4_n_0 ),
        .I2(\JA_OBUF[1]_inst_i_5_n_0 ),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(StartTX_reg[0]),
        .O(\JA_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080C08000)) 
    \JA_OBUF[1]_inst_i_3 
       (.I0(Q[7]),
        .I1(\data_count_reg_n_0_[0] ),
        .I2(\data_count_reg_n_0_[1] ),
        .I3(\data_count_reg_n_0_[2] ),
        .I4(Q[3]),
        .I5(current_state[0]),
        .O(\JA_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \JA_OBUF[1]_inst_i_4 
       (.I0(Q[6]),
        .I1(Q[2]),
        .I2(\data_count_reg_n_0_[1] ),
        .I3(Q[4]),
        .I4(\data_count_reg_n_0_[2] ),
        .I5(Q[0]),
        .O(\JA_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0404040000000400)) 
    \JA_OBUF[1]_inst_i_5 
       (.I0(current_state[0]),
        .I1(\data_count_reg_n_0_[0] ),
        .I2(\data_count_reg_n_0_[1] ),
        .I3(Q[1]),
        .I4(\data_count_reg_n_0_[2] ),
        .I5(Q[5]),
        .O(\JA_OBUF[1]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \LED_OBUF[11]_inst_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .O(LED_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h00A8)) 
    \Pulse_width[0]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\Pulse_width_reg_n_0_[0] ),
        .O(Pulse_width[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00E0E000)) 
    \Pulse_width[1]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I3(\Pulse_width_reg_n_0_[0] ),
        .I4(\Pulse_width_reg_n_0_[1] ),
        .O(Pulse_width[1]));
  LUT6 #(
    .INIT(64'h00E0E0E0E0000000)) 
    \Pulse_width[2]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I3(\Pulse_width_reg_n_0_[0] ),
        .I4(\Pulse_width_reg_n_0_[1] ),
        .I5(\Pulse_width_reg_n_0_[2] ),
        .O(Pulse_width[2]));
  LUT6 #(
    .INIT(64'h0888888880000000)) 
    \Pulse_width[3]_i_1 
       (.I0(\Pulse_width[3]_i_2_n_0 ),
        .I1(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I2(\Pulse_width_reg_n_0_[0] ),
        .I3(\Pulse_width_reg_n_0_[2] ),
        .I4(\Pulse_width_reg_n_0_[1] ),
        .I5(\Pulse_width_reg_n_0_[3] ),
        .O(Pulse_width[3]));
  LUT2 #(
    .INIT(4'hE)) 
    \Pulse_width[3]_i_2 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .O(\Pulse_width[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00E0E0E0E0000000)) 
    \Pulse_width[4]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I3(\Pulse_width[4]_i_2_n_0 ),
        .I4(\Pulse_width_reg_n_0_[3] ),
        .I5(\Pulse_width_reg_n_0_[4] ),
        .O(Pulse_width[4]));
  LUT3 #(
    .INIT(8'h80)) 
    \Pulse_width[4]_i_2 
       (.I0(\Pulse_width_reg_n_0_[1] ),
        .I1(\Pulse_width_reg_n_0_[2] ),
        .I2(\Pulse_width_reg_n_0_[0] ),
        .O(\Pulse_width[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00E0E000)) 
    \Pulse_width[5]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I3(\Pulse_width[5]_i_2_n_0 ),
        .I4(\Pulse_width_reg_n_0_[5] ),
        .O(Pulse_width[5]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \Pulse_width[5]_i_2 
       (.I0(\Pulse_width_reg_n_0_[4] ),
        .I1(\Pulse_width_reg_n_0_[3] ),
        .I2(\Pulse_width_reg_n_0_[1] ),
        .I3(\Pulse_width_reg_n_0_[2] ),
        .I4(\Pulse_width_reg_n_0_[0] ),
        .O(\Pulse_width[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h88804440)) 
    \Pulse_width[6]_i_1 
       (.I0(\Pulse_width[7]_i_2_n_0 ),
        .I1(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(\Pulse_width_reg_n_0_[6] ),
        .O(Pulse_width[6]));
  LUT6 #(
    .INIT(64'hB4B4B40000000000)) 
    \Pulse_width[7]_i_1 
       (.I0(\Pulse_width[7]_i_2_n_0 ),
        .I1(\Pulse_width_reg_n_0_[6] ),
        .I2(\Pulse_width_reg_n_0_[7] ),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .O(Pulse_width[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \Pulse_width[7]_i_2 
       (.I0(\Pulse_width_reg_n_0_[0] ),
        .I1(\Pulse_width_reg_n_0_[2] ),
        .I2(\Pulse_width_reg_n_0_[1] ),
        .I3(\Pulse_width_reg_n_0_[3] ),
        .I4(\Pulse_width_reg_n_0_[4] ),
        .I5(\Pulse_width_reg_n_0_[5] ),
        .O(\Pulse_width[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Pulse_width_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\Pulse_width_reg[7]_0 ),
        .D(Pulse_width[0]),
        .Q(\Pulse_width_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pulse_width_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\Pulse_width_reg[7]_0 ),
        .D(Pulse_width[1]),
        .Q(\Pulse_width_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pulse_width_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\Pulse_width_reg[7]_0 ),
        .D(Pulse_width[2]),
        .Q(\Pulse_width_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pulse_width_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\Pulse_width_reg[7]_0 ),
        .D(Pulse_width[3]),
        .Q(\Pulse_width_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pulse_width_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\Pulse_width_reg[7]_0 ),
        .D(Pulse_width[4]),
        .Q(\Pulse_width_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pulse_width_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\Pulse_width_reg[7]_0 ),
        .D(Pulse_width[5]),
        .Q(\Pulse_width_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pulse_width_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\Pulse_width_reg[7]_0 ),
        .D(Pulse_width[6]),
        .Q(\Pulse_width_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pulse_width_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\Pulse_width_reg[7]_0 ),
        .D(Pulse_width[7]),
        .Q(\Pulse_width_reg_n_0_[7] ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    StartTX_i_1
       (.I0(BTNC_IBUF),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(StartTX_reg[1]),
        .I4(Start),
        .O(\FSM_sequential_current_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000000EF0000)) 
    \data_count[0]_i_1 
       (.I0(\data_count_reg_n_0_[1] ),
        .I1(\data_count_reg_n_0_[2] ),
        .I2(\data_count_reg_n_0_[3] ),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(\data_count_reg_n_0_[0] ),
        .O(\data_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \data_count[1]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(\data_count_reg_n_0_[0] ),
        .I3(\data_count_reg_n_0_[1] ),
        .O(\data_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h02202020)) 
    \data_count[2]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(\data_count_reg_n_0_[2] ),
        .I3(\data_count_reg_n_0_[0] ),
        .I4(\data_count_reg_n_0_[1] ),
        .O(\data_count[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \data_count[3]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .O(data_count));
  LUT6 #(
    .INIT(64'h007E000000800000)) 
    \data_count[3]_i_2 
       (.I0(\data_count_reg_n_0_[1] ),
        .I1(\data_count_reg_n_0_[0] ),
        .I2(\data_count_reg_n_0_[2] ),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(\data_count_reg_n_0_[3] ),
        .O(\data_count[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_count_reg[0] 
       (.C(clk_out1),
        .CE(data_count),
        .CLR(\Pulse_width_reg[7]_0 ),
        .D(\data_count[0]_i_1_n_0 ),
        .Q(\data_count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_count_reg[1] 
       (.C(clk_out1),
        .CE(data_count),
        .CLR(\Pulse_width_reg[7]_0 ),
        .D(\data_count[1]_i_1_n_0 ),
        .Q(\data_count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_count_reg[2] 
       (.C(clk_out1),
        .CE(data_count),
        .CLR(\Pulse_width_reg[7]_0 ),
        .D(\data_count[2]_i_1_n_0 ),
        .Q(\data_count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_count_reg[3] 
       (.C(clk_out1),
        .CE(data_count),
        .CLR(\Pulse_width_reg[7]_0 ),
        .D(\data_count[3]_i_2_n_0 ),
        .Q(\data_count_reg_n_0_[3] ));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48272)
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
