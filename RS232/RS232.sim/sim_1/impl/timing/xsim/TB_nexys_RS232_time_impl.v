// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Oct 13 17:52:49 2024
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
    \FSM_sequential_current_state_reg[1] ,
    clk_out1,
    rd_en,
    JA_IBUF,
    BTNC_IBUF,
    StartTX_reg_0,
    D);
  output [11:0]LED_OBUF;
  output [0:0]AR;
  output [0:0]\FSM_sequential_current_state_reg[1] ;
  input clk_out1;
  input rd_en;
  input [0:0]JA_IBUF;
  input BTNC_IBUF;
  input [0:0]StartTX_reg_0;
  input [7:0]D;

  wire [0:0]AR;
  wire BTNC_IBUF;
  wire [7:0]D;
  wire [7:0]Data;
  wire [0:0]\FSM_sequential_current_state_reg[1] ;
  wire [7:0]Fifo_in;
  wire Fifo_write;
  wire [0:0]JA_IBUF;
  wire [11:0]LED_OBUF;
  wire LineRD_in;
  wire Start;
  wire [0:0]StartTX_reg_0;
  wire Transmitter_n_0;
  wire Transmitter_n_4;
  wire Valid_out;
  wire clk_out1;
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
        .CE(Transmitter_n_4),
        .CLR(AR),
        .D(D[0]),
        .Q(Data[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_FF_reg[1] 
       (.C(clk_out1),
        .CE(Transmitter_n_4),
        .CLR(AR),
        .D(D[1]),
        .Q(Data[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_FF_reg[2] 
       (.C(clk_out1),
        .CE(Transmitter_n_4),
        .CLR(AR),
        .D(D[2]),
        .Q(Data[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_FF_reg[3] 
       (.C(clk_out1),
        .CE(Transmitter_n_4),
        .CLR(AR),
        .D(D[3]),
        .Q(Data[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_FF_reg[4] 
       (.C(clk_out1),
        .CE(Transmitter_n_4),
        .CLR(AR),
        .D(D[4]),
        .Q(Data[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_FF_reg[5] 
       (.C(clk_out1),
        .CE(Transmitter_n_4),
        .CLR(AR),
        .D(D[5]),
        .Q(Data[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_FF_reg[6] 
       (.C(clk_out1),
        .CE(Transmitter_n_4),
        .CLR(AR),
        .D(D[6]),
        .Q(Data[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_FF_reg[7] 
       (.C(clk_out1),
        .CE(Transmitter_n_4),
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
        .lopt(StartTX_reg_0),
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
        .E(Transmitter_n_4),
        .\FSM_sequential_current_state_reg[0]_0 (Transmitter_n_0),
        .\FSM_sequential_current_state_reg[1]_0 (\FSM_sequential_current_state_reg[1] ),
        .LED_OBUF(LED_OBUF[9]),
        .\Pulse_width_reg[7]_0 (AR),
        .Q(Data),
        .Start(Start),
        .StartTX_reg(StartTX_reg_0),
        .clk_out1(clk_out1),
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

(* ECO_CHECKSUM = "b8466eed" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
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
       (.I(1'b0),
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
        .\FSM_sequential_current_state_reg[1] (JA_IBUF__0),
        .JA_IBUF(JA_IBUF),
        .LED_OBUF({LED_OBUF[14:13],LED_OBUF[11:10],LED_OBUF[7:0]}),
        .StartTX_reg_0(LED_OBUF[15]),
        .clk_out1(clk),
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
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[10]_i_1 
       (.I0(\contador_reg[12]_i_2_n_6 ),
        .I1(contador1),
        .O(\contador[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[11]_i_1 
       (.I0(\contador_reg[12]_i_2_n_5 ),
        .I1(contador1),
        .O(\contador[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[12]_i_1 
       (.I0(\contador_reg[12]_i_2_n_4 ),
        .I1(contador1),
        .O(\contador[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[13]_i_1 
       (.I0(\contador_reg[16]_i_2_n_7 ),
        .I1(contador1),
        .O(\contador[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[14]_i_1 
       (.I0(\contador_reg[16]_i_2_n_6 ),
        .I1(contador1),
        .O(\contador[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[15]_i_1 
       (.I0(\contador_reg[16]_i_2_n_5 ),
        .I1(contador1),
        .O(\contador[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[16]_i_1 
       (.I0(\contador_reg[16]_i_2_n_4 ),
        .I1(contador1),
        .O(\contador[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[17]_i_1 
       (.I0(\contador_reg[20]_i_2_n_7 ),
        .I1(contador1),
        .O(\contador[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[18]_i_1 
       (.I0(\contador_reg[20]_i_2_n_6 ),
        .I1(contador1),
        .O(\contador[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[19]_i_1 
       (.I0(\contador_reg[20]_i_2_n_5 ),
        .I1(contador1),
        .O(\contador[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[1]_i_1 
       (.I0(\contador_reg[4]_i_2_n_7 ),
        .I1(contador1),
        .O(\contador[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[20]_i_1 
       (.I0(\contador_reg[20]_i_2_n_4 ),
        .I1(contador1),
        .O(\contador[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[21]_i_1 
       (.I0(\contador_reg[24]_i_2_n_7 ),
        .I1(contador1),
        .O(\contador[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[22]_i_1 
       (.I0(\contador_reg[24]_i_2_n_6 ),
        .I1(contador1),
        .O(\contador[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[23]_i_1 
       (.I0(\contador_reg[24]_i_2_n_5 ),
        .I1(contador1),
        .O(\contador[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[24]_i_1 
       (.I0(\contador_reg[24]_i_2_n_4 ),
        .I1(contador1),
        .O(\contador[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[25]_i_1 
       (.I0(\contador_reg[26]_i_2_n_7 ),
        .I1(contador1),
        .O(\contador[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[2]_i_1 
       (.I0(\contador_reg[4]_i_2_n_6 ),
        .I1(contador1),
        .O(\contador[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[3]_i_1 
       (.I0(\contador_reg[4]_i_2_n_5 ),
        .I1(contador1),
        .O(\contador[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[4]_i_1 
       (.I0(\contador_reg[4]_i_2_n_4 ),
        .I1(contador1),
        .O(\contador[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[5]_i_1 
       (.I0(\contador_reg[8]_i_2_n_7 ),
        .I1(contador1),
        .O(\contador[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[6]_i_1 
       (.I0(\contador_reg[8]_i_2_n_6 ),
        .I1(contador1),
        .O(\contador[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[7]_i_1 
       (.I0(\contador_reg[8]_i_2_n_5 ),
        .I1(contador1),
        .O(\contador[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contador[8]_i_1 
       (.I0(\contador_reg[8]_i_2_n_4 ),
        .I1(contador1),
        .O(\contador[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
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
    wr_en,
    E,
    \HalfBitCounter_reg[7]_0 ,
    clk_out1,
    LineRD_in);
  output \SW[15] ;
  output wr_en;
  output [0:0]E;
  input [0:0]\HalfBitCounter_reg[7]_0 ;
  input clk_out1;
  input LineRD_in;

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
  wire \FSM_onehot_current_state[3]_i_4_n_0 ;
  wire \FSM_onehot_current_state_reg_n_0_[0] ;
  wire \FSM_onehot_current_state_reg_n_0_[1] ;
  wire \FSM_onehot_current_state_reg_n_0_[2] ;
  wire \FSM_onehot_current_state_reg_n_0_[3] ;
  wire [7:0]HalfBitCounter;
  wire \HalfBitCounter[5]_i_2_n_0 ;
  wire \HalfBitCounter[7]_i_2_n_0 ;
  wire [0:0]\HalfBitCounter_reg[7]_0 ;
  wire \HalfBitCounter_reg_n_0_[0] ;
  wire \HalfBitCounter_reg_n_0_[1] ;
  wire \HalfBitCounter_reg_n_0_[2] ;
  wire \HalfBitCounter_reg_n_0_[3] ;
  wire \HalfBitCounter_reg_n_0_[4] ;
  wire \HalfBitCounter_reg_n_0_[5] ;
  wire \HalfBitCounter_reg_n_0_[6] ;
  wire \HalfBitCounter_reg_n_0_[7] ;
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \DataCount[1]_i_1 
       (.I0(\DataCount_reg_n_0_[0] ),
        .I1(\DataCount_reg_n_0_[1] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\DataCount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(\FSM_onehot_current_state[1]_i_2_n_0 ),
        .I1(LineRD_in),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "167" *) 
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
    .INIT(16'hF044)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
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
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \FSM_onehot_current_state[3]_i_3 
       (.I0(\bitCounter_reg_n_0_[1] ),
        .I1(\bitCounter_reg_n_0_[2] ),
        .I2(\bitCounter_reg_n_0_[7] ),
        .I3(\bitCounter_reg_n_0_[0] ),
        .I4(\FSM_onehot_current_state[3]_i_4_n_0 ),
        .O(\FSM_onehot_current_state[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_onehot_current_state[3]_i_4 
       (.I0(\bitCounter_reg_n_0_[5] ),
        .I1(\bitCounter_reg_n_0_[6] ),
        .I2(\bitCounter_reg_n_0_[3] ),
        .I3(\bitCounter_reg_n_0_[4] ),
        .O(\FSM_onehot_current_state[3]_i_4_n_0 ));
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
       (.I0(\HalfBitCounter_reg[7]_0 ),
        .O(\SW[15] ));
  LUT2 #(
    .INIT(4'h2)) 
    \HalfBitCounter[0]_i_1 
       (.I0(\FSM_onehot_current_state[1]_i_2_n_0 ),
        .I1(\HalfBitCounter_reg_n_0_[0] ),
        .O(HalfBitCounter[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \HalfBitCounter[1]_i_1 
       (.I0(\FSM_onehot_current_state[1]_i_2_n_0 ),
        .I1(\HalfBitCounter_reg_n_0_[0] ),
        .I2(\HalfBitCounter_reg_n_0_[1] ),
        .O(HalfBitCounter[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \HalfBitCounter[2]_i_1 
       (.I0(\FSM_onehot_current_state[1]_i_2_n_0 ),
        .I1(\HalfBitCounter_reg_n_0_[1] ),
        .I2(\HalfBitCounter_reg_n_0_[0] ),
        .I3(\HalfBitCounter_reg_n_0_[2] ),
        .O(HalfBitCounter[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \HalfBitCounter[6]_i_1 
       (.I0(\HalfBitCounter[7]_i_2_n_0 ),
        .I1(\FSM_onehot_current_state[1]_i_2_n_0 ),
        .I2(\HalfBitCounter_reg_n_0_[6] ),
        .O(HalfBitCounter[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
  LUT3 #(
    .INIT(8'h08)) 
    Internal_memory_i_1
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(LineRD_in),
        .I2(\FSM_onehot_current_state[3]_i_3_n_0 ),
        .O(wr_en));
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00A8)) 
    \bitCounter[0]_i_1 
       (.I0(\FSM_onehot_current_state[3]_i_3_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I3(\bitCounter_reg_n_0_[0] ),
        .O(bitCounter[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
    .INIT(64'hB0B0B00040404000)) 
    \bitCounter[7]_i_1 
       (.I0(\bitCounter[7]_i_2_n_0 ),
        .I1(\bitCounter_reg_n_0_[6] ),
        .I2(\FSM_onehot_current_state[3]_i_3_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[3] ),
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
    LED_OBUF,
    \FSM_sequential_current_state_reg[1]_0 ,
    p_1_in,
    E,
    BTNC_IBUF,
    StartTX_reg,
    Start,
    clk_out1,
    \Pulse_width_reg[7]_0 ,
    Q);
  output \FSM_sequential_current_state_reg[0]_0 ;
  output [0:0]LED_OBUF;
  output [0:0]\FSM_sequential_current_state_reg[1]_0 ;
  output p_1_in;
  output [0:0]E;
  input BTNC_IBUF;
  input [0:0]StartTX_reg;
  input Start;
  input clk_out1;
  input \Pulse_width_reg[7]_0 ;
  input [7:0]Q;

  wire BTNC_IBUF;
  wire [0:0]E;
  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[1]_i_3_n_0 ;
  wire \FSM_sequential_current_state[1]_i_4_n_0 ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire [0:0]\FSM_sequential_current_state_reg[1]_0 ;
  wire \JA_OBUF[1]_inst_i_2_n_0 ;
  wire \JA_OBUF[1]_inst_i_3_n_0 ;
  wire [0:0]LED_OBUF;
  wire [5:1]Pulse_width;
  wire \Pulse_width[0]_i_1_n_0 ;
  wire \Pulse_width[4]_i_1_n_0 ;
  wire \Pulse_width[5]_i_2_n_0 ;
  wire \Pulse_width[6]_i_1_n_0 ;
  wire \Pulse_width[7]_i_1_n_0 ;
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
  wire [0:0]StartTX_reg;
  wire clk_out1;
  wire [1:0]current_state;
  wire data_count;
  wire \data_count[0]_i_1_n_0 ;
  wire \data_count[1]_i_1_n_0 ;
  wire \data_count[2]_i_1_n_0 ;
  wire \data_count[3]_i_2_n_0 ;
  wire \data_count_reg_n_0_[0] ;
  wire \data_count_reg_n_0_[1] ;
  wire \data_count_reg_n_0_[2] ;
  wire \data_count_reg_n_0_[3] ;
  wire [1:0]next_state;
  wire p_1_in;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
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
  LUT6 #(
    .INIT(64'h002200F0FF00FFF0)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I1(\data_count_reg_n_0_[3] ),
        .I2(Start),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .O(next_state[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(\data_count_reg_n_0_[2] ),
        .I1(\data_count_reg_n_0_[1] ),
        .I2(\data_count_reg_n_0_[0] ),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(current_state[1]),
        .I1(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I2(current_state[0]),
        .O(next_state[1]));
  LUT5 #(
    .INIT(32'h00000080)) 
    \FSM_sequential_current_state[1]_i_3 
       (.I0(\Pulse_width_reg_n_0_[3] ),
        .I1(\Pulse_width_reg_n_0_[7] ),
        .I2(\Pulse_width_reg_n_0_[5] ),
        .I3(\Pulse_width_reg_n_0_[1] ),
        .I4(\FSM_sequential_current_state[1]_i_4_n_0 ),
        .O(\FSM_sequential_current_state[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FSM_sequential_current_state[1]_i_4 
       (.I0(\Pulse_width_reg_n_0_[6] ),
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
  LUT5 #(
    .INIT(32'hBBB999B9)) 
    \JA_OBUF[1]_inst_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(\JA_OBUF[1]_inst_i_2_n_0 ),
        .I3(\data_count_reg_n_0_[2] ),
        .I4(\JA_OBUF[1]_inst_i_3_n_0 ),
        .O(\FSM_sequential_current_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \JA_OBUF[1]_inst_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\data_count_reg_n_0_[1] ),
        .I3(Q[1]),
        .I4(\data_count_reg_n_0_[0] ),
        .I5(Q[0]),
        .O(\JA_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \JA_OBUF[1]_inst_i_3 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\data_count_reg_n_0_[1] ),
        .I3(Q[5]),
        .I4(\data_count_reg_n_0_[0] ),
        .I5(Q[4]),
        .O(\JA_OBUF[1]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \LED_OBUF[11]_inst_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .O(LED_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \Pulse_width[0]_i_1 
       (.I0(\Pulse_width_reg_n_0_[0] ),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(\Pulse_width[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00545400)) 
    \Pulse_width[1]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(\Pulse_width_reg_n_0_[1] ),
        .I4(\Pulse_width_reg_n_0_[0] ),
        .O(Pulse_width[1]));
  LUT6 #(
    .INIT(64'h0054545454000000)) 
    \Pulse_width[2]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(\Pulse_width_reg_n_0_[0] ),
        .I4(\Pulse_width_reg_n_0_[1] ),
        .I5(\Pulse_width_reg_n_0_[2] ),
        .O(Pulse_width[2]));
  LUT6 #(
    .INIT(64'h0111111110000000)) 
    \Pulse_width[3]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I1(LED_OBUF),
        .I2(\Pulse_width_reg_n_0_[1] ),
        .I3(\Pulse_width_reg_n_0_[0] ),
        .I4(\Pulse_width_reg_n_0_[2] ),
        .I5(\Pulse_width_reg_n_0_[3] ),
        .O(Pulse_width[3]));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \Pulse_width[4]_i_1 
       (.I0(LED_OBUF),
        .I1(\Pulse_width_reg_n_0_[2] ),
        .I2(\Pulse_width_reg_n_0_[0] ),
        .I3(\Pulse_width_reg_n_0_[1] ),
        .I4(\Pulse_width_reg_n_0_[3] ),
        .I5(\Pulse_width_reg_n_0_[4] ),
        .O(\Pulse_width[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h0E00000E)) 
    \Pulse_width[5]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I3(\Pulse_width[5]_i_2_n_0 ),
        .I4(\Pulse_width_reg_n_0_[5] ),
        .O(Pulse_width[5]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \Pulse_width[5]_i_2 
       (.I0(\Pulse_width_reg_n_0_[3] ),
        .I1(\Pulse_width_reg_n_0_[1] ),
        .I2(\Pulse_width_reg_n_0_[0] ),
        .I3(\Pulse_width_reg_n_0_[2] ),
        .I4(\Pulse_width_reg_n_0_[4] ),
        .O(\Pulse_width[5]_i_2_n_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "200" *) 
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \Pulse_width[6]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(\Pulse_width[7]_i_2_n_0 ),
        .I3(\Pulse_width_reg_n_0_[6] ),
        .O(\Pulse_width[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00D200D200D20000)) 
    \Pulse_width[7]_i_1 
       (.I0(\Pulse_width_reg_n_0_[6] ),
        .I1(\Pulse_width[7]_i_2_n_0 ),
        .I2(\Pulse_width_reg_n_0_[7] ),
        .I3(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(\Pulse_width[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \Pulse_width[7]_i_2 
       (.I0(\Pulse_width_reg_n_0_[4] ),
        .I1(\Pulse_width_reg_n_0_[2] ),
        .I2(\Pulse_width_reg_n_0_[0] ),
        .I3(\Pulse_width_reg_n_0_[1] ),
        .I4(\Pulse_width_reg_n_0_[3] ),
        .I5(\Pulse_width_reg_n_0_[5] ),
        .O(\Pulse_width[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Pulse_width_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\Pulse_width_reg[7]_0 ),
        .D(\Pulse_width[0]_i_1_n_0 ),
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
        .D(\Pulse_width[4]_i_1_n_0 ),
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
        .D(\Pulse_width[6]_i_1_n_0 ),
        .Q(\Pulse_width_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pulse_width_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\Pulse_width_reg[7]_0 ),
        .D(\Pulse_width[7]_i_1_n_0 ),
        .Q(\Pulse_width_reg_n_0_[7] ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    StartTX_i_1
       (.I0(BTNC_IBUF),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(StartTX_reg),
        .I4(Start),
        .O(\FSM_sequential_current_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000332300000000)) 
    \data_count[0]_i_1 
       (.I0(\data_count_reg_n_0_[1] ),
        .I1(\data_count_reg_n_0_[0] ),
        .I2(\data_count_reg_n_0_[3] ),
        .I3(\data_count_reg_n_0_[2] ),
        .I4(current_state[0]),
        .I5(current_state[1]),
        .O(\data_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \data_count[1]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(\data_count_reg_n_0_[1] ),
        .I3(\data_count_reg_n_0_[0] ),
        .O(\data_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h04444000)) 
    \data_count[2]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(\data_count_reg_n_0_[0] ),
        .I3(\data_count_reg_n_0_[1] ),
        .I4(\data_count_reg_n_0_[2] ),
        .O(\data_count[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \data_count[3]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .O(data_count));
  LUT6 #(
    .INIT(64'h000078E000000000)) 
    \data_count[3]_i_2 
       (.I0(\data_count_reg_n_0_[1] ),
        .I1(\data_count_reg_n_0_[0] ),
        .I2(\data_count_reg_n_0_[3] ),
        .I3(\data_count_reg_n_0_[2] ),
        .I4(current_state[0]),
        .I5(current_state[1]),
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
