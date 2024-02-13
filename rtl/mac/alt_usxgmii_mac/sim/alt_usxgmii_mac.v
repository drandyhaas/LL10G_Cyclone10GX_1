// alt_usxgmii_mac.v

// Generated using ACDS version 23.4 79

`timescale 1 ps / 1 ps
module alt_usxgmii_mac (
		input  wire        csr_read,                        //                        csr.read
		input  wire        csr_write,                       //                           .write
		input  wire [31:0] csr_writedata,                   //                           .writedata
		output wire [31:0] csr_readdata,                    //                           .readdata
		output wire        csr_waitrequest,                 //                           .waitrequest
		input  wire [9:0]  csr_address,                     //                           .address
		input  wire        tx_312_5_clk,                    //               tx_312_5_clk.clk
		input  wire        tx_156_25_clk,                   //              tx_156_25_clk.clk
		input  wire        rx_312_5_clk,                    //               rx_312_5_clk.clk
		input  wire        rx_156_25_clk,                   //              rx_156_25_clk.clk
		input  wire        csr_clk,                         //                    csr_clk.clk
		input  wire        csr_rst_n,                       //                  csr_rst_n.reset_n
		input  wire        tx_rst_n,                        //                   tx_rst_n.reset_n
		input  wire        rx_rst_n,                        //                   rx_rst_n.reset_n
		output wire        xgmii_tx_valid,                  //             xgmii_tx_valid.out
		input  wire        xgmii_rx_valid,                  //             xgmii_rx_valid.in
		input  wire [2:0]  speed_sel,                       //                  speed_sel.export
		input  wire        avalon_st_tx_startofpacket,      //               avalon_st_tx.startofpacket
		input  wire        avalon_st_tx_endofpacket,        //                           .endofpacket
		input  wire        avalon_st_tx_valid,              //                           .valid
		input  wire [63:0] avalon_st_tx_data,               //                           .data
		input  wire [2:0]  avalon_st_tx_empty,              //                           .empty
		input  wire        avalon_st_tx_error,              //                           .error
		output wire        avalon_st_tx_ready,              //                           .ready
		input  wire [1:0]  avalon_st_pause_data,            //            avalon_st_pause.data
		output wire [31:0] xgmii_tx_data,                   //              xgmii_tx_data.export
		output wire [3:0]  xgmii_tx_control,                //           xgmii_tx_control.export
		output wire        avalon_st_txstatus_valid,        //         avalon_st_txstatus.valid
		output wire [39:0] avalon_st_txstatus_data,         //                           .data
		output wire [6:0]  avalon_st_txstatus_error,        //                           .error
		input  wire [31:0] xgmii_rx_data,                   //              xgmii_rx_data.export
		input  wire [3:0]  xgmii_rx_control,                //           xgmii_rx_control.export
		output wire [1:0]  link_fault_status_xgmii_rx_data, // link_fault_status_xgmii_rx.data
		output wire [63:0] avalon_st_rx_data,               //               avalon_st_rx.data
		output wire        avalon_st_rx_startofpacket,      //                           .startofpacket
		output wire        avalon_st_rx_valid,              //                           .valid
		output wire [2:0]  avalon_st_rx_empty,              //                           .empty
		output wire [5:0]  avalon_st_rx_error,              //                           .error
		input  wire        avalon_st_rx_ready,              //                           .ready
		output wire        avalon_st_rx_endofpacket,        //                           .endofpacket
		output wire        avalon_st_rxstatus_valid,        //         avalon_st_rxstatus.valid
		output wire [39:0] avalon_st_rxstatus_data,         //                           .data
		output wire [6:0]  avalon_st_rxstatus_error         //                           .error
	);

	alt_em10g32 #(
		.DEVICE_FAMILY             ("Cyclone 10 GX"),
		.INSERT_ST_ADAPTOR         (1),
		.INSERT_CSR_ADAPTOR        (0),
		.INSERT_XGMII_ADAPTOR      (0),
		.USE_ASYNC_ADAPTOR         (0),
		.DATAPATH_OPTION           (3),
		.ENABLE_SUPP_ADDR          (1),
		.ENABLE_PFC                (0),
		.PFC_PRIORITY_NUMBER       (8),
		.INSTANTIATE_STATISTICS    (1),
		.REGISTER_BASED_STATISTICS (0),
		.PREAMBLE_PASSTHROUGH      (0),
		.ENABLE_TIMESTAMPING       (0),
		.ENABLE_PTP_1STEP          (0),
		.ENABLE_ASYMMETRY          (0),
		.ENABLE_P2P                (0),
		.TSTAMP_FP_WIDTH           (4),
		.TIME_OF_DAY_FORMAT        (2),
		.ENABLE_1G10G_MAC          (5),
		.ENABLE_MEM_ECC            (0),
		.ENABLE_UNIDIRECTIONAL     (0),
		.ENABLE_10GBASER_REG_MODE  (0),
		.ENABLE_TXRX_DATAPATH      (1)
	) alt_em10g32_0 (
		.csr_read                                       (csr_read),                                                                                             //   input,   width = 1,                        csr.read
		.csr_write                                      (csr_write),                                                                                            //   input,   width = 1,                           .write
		.csr_writedata                                  (csr_writedata),                                                                                        //   input,  width = 32,                           .writedata
		.csr_readdata                                   (csr_readdata),                                                                                         //  output,  width = 32,                           .readdata
		.csr_waitrequest                                (csr_waitrequest),                                                                                      //  output,   width = 1,                           .waitrequest
		.csr_address                                    (csr_address),                                                                                          //   input,  width = 10,                           .address
		.tx_312_5_clk                                   (tx_312_5_clk),                                                                                         //   input,   width = 1,               tx_312_5_clk.clk
		.tx_156_25_clk                                  (tx_156_25_clk),                                                                                        //   input,   width = 1,              tx_156_25_clk.clk
		.rx_312_5_clk                                   (rx_312_5_clk),                                                                                         //   input,   width = 1,               rx_312_5_clk.clk
		.rx_156_25_clk                                  (rx_156_25_clk),                                                                                        //   input,   width = 1,              rx_156_25_clk.clk
		.csr_clk                                        (csr_clk),                                                                                              //   input,   width = 1,                    csr_clk.clk
		.csr_rst_n                                      (csr_rst_n),                                                                                            //   input,   width = 1,                  csr_rst_n.reset_n
		.tx_rst_n                                       (tx_rst_n),                                                                                             //   input,   width = 1,                   tx_rst_n.reset_n
		.rx_rst_n                                       (rx_rst_n),                                                                                             //   input,   width = 1,                   rx_rst_n.reset_n
		.xgmii_tx_valid                                 (xgmii_tx_valid),                                                                                       //  output,   width = 1,             xgmii_tx_valid.out
		.xgmii_rx_valid                                 (xgmii_rx_valid),                                                                                       //   input,   width = 1,             xgmii_rx_valid.in
		.speed_sel                                      (speed_sel),                                                                                            //   input,   width = 3,                  speed_sel.export
		.avalon_st_tx_startofpacket                     (avalon_st_tx_startofpacket),                                                                           //   input,   width = 1,               avalon_st_tx.startofpacket
		.avalon_st_tx_endofpacket                       (avalon_st_tx_endofpacket),                                                                             //   input,   width = 1,                           .endofpacket
		.avalon_st_tx_valid                             (avalon_st_tx_valid),                                                                                   //   input,   width = 1,                           .valid
		.avalon_st_tx_data                              (avalon_st_tx_data),                                                                                    //   input,  width = 64,                           .data
		.avalon_st_tx_empty                             (avalon_st_tx_empty),                                                                                   //   input,   width = 3,                           .empty
		.avalon_st_tx_error                             (avalon_st_tx_error),                                                                                   //   input,   width = 1,                           .error
		.avalon_st_tx_ready                             (avalon_st_tx_ready),                                                                                   //  output,   width = 1,                           .ready
		.avalon_st_pause_data                           (avalon_st_pause_data),                                                                                 //   input,   width = 2,            avalon_st_pause.data
		.xgmii_tx_data                                  (xgmii_tx_data),                                                                                        //  output,  width = 32,              xgmii_tx_data.export
		.xgmii_tx_control                               (xgmii_tx_control),                                                                                     //  output,   width = 4,           xgmii_tx_control.export
		.avalon_st_txstatus_valid                       (avalon_st_txstatus_valid),                                                                             //  output,   width = 1,         avalon_st_txstatus.valid
		.avalon_st_txstatus_data                        (avalon_st_txstatus_data),                                                                              //  output,  width = 40,                           .data
		.avalon_st_txstatus_error                       (avalon_st_txstatus_error),                                                                             //  output,   width = 7,                           .error
		.xgmii_rx_data                                  (xgmii_rx_data),                                                                                        //   input,  width = 32,              xgmii_rx_data.export
		.xgmii_rx_control                               (xgmii_rx_control),                                                                                     //   input,   width = 4,           xgmii_rx_control.export
		.link_fault_status_xgmii_rx_data                (link_fault_status_xgmii_rx_data),                                                                      //  output,   width = 2, link_fault_status_xgmii_rx.data
		.avalon_st_rx_data                              (avalon_st_rx_data),                                                                                    //  output,  width = 64,               avalon_st_rx.data
		.avalon_st_rx_startofpacket                     (avalon_st_rx_startofpacket),                                                                           //  output,   width = 1,                           .startofpacket
		.avalon_st_rx_valid                             (avalon_st_rx_valid),                                                                                   //  output,   width = 1,                           .valid
		.avalon_st_rx_empty                             (avalon_st_rx_empty),                                                                                   //  output,   width = 3,                           .empty
		.avalon_st_rx_error                             (avalon_st_rx_error),                                                                                   //  output,   width = 6,                           .error
		.avalon_st_rx_ready                             (avalon_st_rx_ready),                                                                                   //   input,   width = 1,                           .ready
		.avalon_st_rx_endofpacket                       (avalon_st_rx_endofpacket),                                                                             //  output,   width = 1,                           .endofpacket
		.avalon_st_rxstatus_valid                       (avalon_st_rxstatus_valid),                                                                             //  output,   width = 1,         avalon_st_rxstatus.valid
		.avalon_st_rxstatus_data                        (avalon_st_rxstatus_data),                                                                              //  output,  width = 40,                           .data
		.avalon_st_rxstatus_error                       (avalon_st_rxstatus_error),                                                                             //  output,   width = 7,                           .error
		.avalon_st_tx_pfc_gen_data                      (16'b0000000000000000),                                                                                 // (terminated),                                         
		.xgmii_tx                                       (),                                                                                                     // (terminated),                                         
		.avalon_st_tx_pfc_status_valid                  (),                                                                                                     // (terminated),                                         
		.avalon_st_tx_pfc_status_data                   (),                                                                                                     // (terminated),                                         
		.xgmii_rx                                       (72'b000000000000000000000000000000000000000000000000000000000000000000000000),                         // (terminated),                                         
		.avalon_st_rx_pfc_status_valid                  (),                                                                                                     // (terminated),                                         
		.avalon_st_rx_pfc_status_data                   (),                                                                                                     // (terminated),                                         
		.avalon_st_rx_pfc_pause_data                    (),                                                                                                     // (terminated),                                         
		.tx_path_delay_10g_data                         (24'b000000000000000000000000),                                                                         // (terminated),                                         
		.tx_time_of_day_96b_10g_data                    (96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000), // (terminated),                                         
		.tx_time_of_day_64b_10g_data                    (64'b0000000000000000000000000000000000000000000000000000000000000000),                                 // (terminated),                                         
		.rx_path_delay_10g_data                         (24'b000000000000000000000000),                                                                         // (terminated),                                         
		.rx_time_of_day_96b_10g_data                    (96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000), // (terminated),                                         
		.rx_time_of_day_64b_10g_data                    (64'b0000000000000000000000000000000000000000000000000000000000000000),                                 // (terminated),                                         
		.tx_egress_timestamp_96b_valid                  (),                                                                                                     // (terminated),                                         
		.tx_egress_timestamp_96b_data                   (),                                                                                                     // (terminated),                                         
		.tx_egress_timestamp_96b_fingerprint            (),                                                                                                     // (terminated),                                         
		.tx_egress_timestamp_64b_valid                  (),                                                                                                     // (terminated),                                         
		.tx_egress_timestamp_64b_data                   (),                                                                                                     // (terminated),                                         
		.tx_egress_timestamp_64b_fingerprint            (),                                                                                                     // (terminated),                                         
		.rx_ingress_timestamp_96b_valid                 (),                                                                                                     // (terminated),                                         
		.rx_ingress_timestamp_96b_data                  (),                                                                                                     // (terminated),                                         
		.rx_ingress_timestamp_64b_valid                 (),                                                                                                     // (terminated),                                         
		.rx_ingress_timestamp_64b_data                  (),                                                                                                     // (terminated),                                         
		.tx_egress_timestamp_request_valid              (1'b0),                                                                                                 // (terminated),                                         
		.tx_egress_timestamp_request_fingerprint        (4'b0000),                                                                                              // (terminated),                                         
		.latency_measure_sampling_clk                   (1'b0),                                                                                                 // (terminated),                                         
		.unidirectional_en                              (),                                                                                                     // (terminated),                                         
		.unidirectional_remote_fault_dis                (),                                                                                                     // (terminated),                                         
		.unidirectional_force_remote_fault              (),                                                                                                     // (terminated),                                         
		.rx_xcvr_clk                                    (1'b0),                                                                                                 // (terminated),                                         
		.tx_xcvr_clk                                    (1'b0),                                                                                                 // (terminated),                                         
		.link_fault_status_xgmii_tx_data                (2'b00),                                                                                                // (terminated),                                         
		.gmii_tx_clk                                    (1'b0),                                                                                                 // (terminated),                                         
		.gmii_tx_d                                      (),                                                                                                     // (terminated),                                         
		.gmii_tx_en                                     (),                                                                                                     // (terminated),                                         
		.gmii_tx_err                                    (),                                                                                                     // (terminated),                                         
		.tx_clkena_half_rate                            (1'b0),                                                                                                 // (terminated),                                         
		.gmii16b_tx_clk                                 (1'b0),                                                                                                 // (terminated),                                         
		.gmii16b_tx_d                                   (),                                                                                                     // (terminated),                                         
		.gmii16b_tx_en                                  (),                                                                                                     // (terminated),                                         
		.gmii16b_tx_err                                 (),                                                                                                     // (terminated),                                         
		.mii_tx_d                                       (),                                                                                                     // (terminated),                                         
		.mii_tx_en                                      (),                                                                                                     // (terminated),                                         
		.mii_tx_err                                     (),                                                                                                     // (terminated),                                         
		.avalon_st_tx_pause_length_valid                (1'b0),                                                                                                 // (terminated),                                         
		.avalon_st_tx_pause_length_data                 (16'b0000000000000000),                                                                                 // (terminated),                                         
		.gmii_rx_clk                                    (1'b0),                                                                                                 // (terminated),                                         
		.gmii_rx_d                                      (8'b00000000),                                                                                          // (terminated),                                         
		.gmii_rx_dv                                     (1'b0),                                                                                                 // (terminated),                                         
		.gmii_rx_err                                    (1'b0),                                                                                                 // (terminated),                                         
		.rx_clkena                                      (1'b0),                                                                                                 // (terminated),                                         
		.rx_clkena_half_rate                            (1'b0),                                                                                                 // (terminated),                                         
		.gmii16b_rx_clk                                 (1'b0),                                                                                                 // (terminated),                                         
		.gmii16b_rx_d                                   (16'b0000000000000000),                                                                                 // (terminated),                                         
		.gmii16b_rx_dv                                  (2'b00),                                                                                                // (terminated),                                         
		.gmii16b_rx_err                                 (2'b00),                                                                                                // (terminated),                                         
		.mii_rx_d                                       (4'b0000),                                                                                              // (terminated),                                         
		.mii_rx_dv                                      (1'b0),                                                                                                 // (terminated),                                         
		.mii_rx_err                                     (1'b0),                                                                                                 // (terminated),                                         
		.avalon_st_rx_pause_length_valid                (),                                                                                                     // (terminated),                                         
		.avalon_st_rx_pause_length_data                 (),                                                                                                     // (terminated),                                         
		.tx_clkena                                      (1'b0),                                                                                                 // (terminated),                                         
		.tx_path_delay_1g_data                          (22'b0000000000000000000000),                                                                           // (terminated),                                         
		.tx_time_of_day_96b_1g_data                     (96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000), // (terminated),                                         
		.tx_time_of_day_64b_1g_data                     (64'b0000000000000000000000000000000000000000000000000000000000000000),                                 // (terminated),                                         
		.rx_path_delay_1g_data                          (22'b0000000000000000000000),                                                                           // (terminated),                                         
		.rx_time_of_day_96b_1g_data                     (96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000), // (terminated),                                         
		.rx_time_of_day_64b_1g_data                     (64'b0000000000000000000000000000000000000000000000000000000000000000),                                 // (terminated),                                         
		.tx_etstamp_ins_ctrl_timestamp_insert           (1'b0),                                                                                                 // (terminated),                                         
		.tx_etstamp_ins_ctrl_timestamp_format           (1'b0),                                                                                                 // (terminated),                                         
		.tx_etstamp_ins_ctrl_residence_time_update      (1'b0),                                                                                                 // (terminated),                                         
		.tx_etstamp_ins_ctrl_ingress_timestamp_96b      (96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000), // (terminated),                                         
		.tx_etstamp_ins_ctrl_ingress_timestamp_64b      (64'b0000000000000000000000000000000000000000000000000000000000000000),                                 // (terminated),                                         
		.tx_etstamp_ins_ctrl_residence_time_calc_format (1'b0),                                                                                                 // (terminated),                                         
		.tx_etstamp_ins_ctrl_checksum_zero              (1'b0),                                                                                                 // (terminated),                                         
		.tx_etstamp_ins_ctrl_checksum_correct           (1'b0),                                                                                                 // (terminated),                                         
		.tx_etstamp_ins_ctrl_offset_timestamp           (16'b0000000000000000),                                                                                 // (terminated),                                         
		.tx_etstamp_ins_ctrl_offset_correction_field    (16'b0000000000000000),                                                                                 // (terminated),                                         
		.tx_etstamp_ins_ctrl_offset_checksum_field      (16'b0000000000000000),                                                                                 // (terminated),                                         
		.tx_etstamp_ins_ctrl_offset_checksum_correction (16'b0000000000000000),                                                                                 // (terminated),                                         
		.tx_egress_asymmetry_update                     (1'b0),                                                                                                 // (terminated),                                         
		.tx_egress_p2p_update                           (1'b0),                                                                                                 // (terminated),                                         
		.tx_egress_p2p_val                              (46'b0000000000000000000000000000000000000000000000),                                                   // (terminated),                                         
		.rx_ingress_p2p_val_valid                       (),                                                                                                     // (terminated),                                         
		.rx_ingress_p2p_val                             (),                                                                                                     // (terminated),                                         
		.ecc_err_det_corr                               (),                                                                                                     // (terminated),                                         
		.ecc_err_det_uncorr                             ()                                                                                                      // (terminated),                                         
	);

endmodule
