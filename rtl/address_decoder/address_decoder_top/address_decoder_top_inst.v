	address_decoder_top u0 (
		.csr_clk_clk                             (_connected_to_csr_clk_clk_),                             //   input,   width = 1,                     csr_clk.clk
		.csr_clk_reset_reset_n                   (_connected_to_csr_clk_reset_reset_n_),                   //   input,   width = 1,               csr_clk_reset.reset_n
		.mac_clk_clk                             (_connected_to_mac_clk_clk_),                             //   input,   width = 1,                     mac_clk.clk
		.mac_clk_reset_reset_n                   (_connected_to_mac_clk_reset_reset_n_),                   //   input,   width = 1,               mac_clk_reset.reset_n
		.slave_address                           (_connected_to_slave_address_),                           //   input,  width = 26,                       slave.address
		.slave_waitrequest                       (_connected_to_slave_waitrequest_),                       //  output,   width = 1,                            .waitrequest
		.slave_read                              (_connected_to_slave_read_),                              //   input,   width = 1,                            .read
		.slave_readdata                          (_connected_to_slave_readdata_),                          //  output,  width = 32,                            .readdata
		.slave_readdatavalid                     (_connected_to_slave_readdatavalid_),                     //  output,   width = 1,                            .readdatavalid
		.slave_write                             (_connected_to_slave_write_),                             //   input,   width = 1,                            .write
		.slave_writedata                         (_connected_to_slave_writedata_),                         //   input,  width = 32,                            .writedata
		.multi_channel_address                   (_connected_to_multi_channel_address_),                   //  output,  width = 20,               multi_channel.address
		.multi_channel_write                     (_connected_to_multi_channel_write_),                     //  output,   width = 1,                            .write
		.multi_channel_read                      (_connected_to_multi_channel_read_),                      //  output,   width = 1,                            .read
		.multi_channel_readdata                  (_connected_to_multi_channel_readdata_),                  //   input,  width = 32,                            .readdata
		.multi_channel_writedata                 (_connected_to_multi_channel_writedata_),                 //  output,  width = 32,                            .writedata
		.multi_channel_waitrequest               (_connected_to_multi_channel_waitrequest_),               //   input,   width = 1,                            .waitrequest
		.traffic_controller_ch_0_1_address       (_connected_to_traffic_controller_ch_0_1_address_),       //  output,  width = 14,   traffic_controller_ch_0_1.address
		.traffic_controller_ch_0_1_write         (_connected_to_traffic_controller_ch_0_1_write_),         //  output,   width = 1,                            .write
		.traffic_controller_ch_0_1_read          (_connected_to_traffic_controller_ch_0_1_read_),          //  output,   width = 1,                            .read
		.traffic_controller_ch_0_1_readdata      (_connected_to_traffic_controller_ch_0_1_readdata_),      //   input,  width = 32,                            .readdata
		.traffic_controller_ch_0_1_writedata     (_connected_to_traffic_controller_ch_0_1_writedata_),     //  output,  width = 32,                            .writedata
		.traffic_controller_ch_0_1_waitrequest   (_connected_to_traffic_controller_ch_0_1_waitrequest_),   //   input,   width = 1,                            .waitrequest
		.traffic_controller_ch_10_11_address     (_connected_to_traffic_controller_ch_10_11_address_),     //  output,  width = 14, traffic_controller_ch_10_11.address
		.traffic_controller_ch_10_11_write       (_connected_to_traffic_controller_ch_10_11_write_),       //  output,   width = 1,                            .write
		.traffic_controller_ch_10_11_read        (_connected_to_traffic_controller_ch_10_11_read_),        //  output,   width = 1,                            .read
		.traffic_controller_ch_10_11_readdata    (_connected_to_traffic_controller_ch_10_11_readdata_),    //   input,  width = 32,                            .readdata
		.traffic_controller_ch_10_11_writedata   (_connected_to_traffic_controller_ch_10_11_writedata_),   //  output,  width = 32,                            .writedata
		.traffic_controller_ch_10_11_waitrequest (_connected_to_traffic_controller_ch_10_11_waitrequest_), //   input,   width = 1,                            .waitrequest
		.traffic_controller_ch_2_3_address       (_connected_to_traffic_controller_ch_2_3_address_),       //  output,  width = 14,   traffic_controller_ch_2_3.address
		.traffic_controller_ch_2_3_write         (_connected_to_traffic_controller_ch_2_3_write_),         //  output,   width = 1,                            .write
		.traffic_controller_ch_2_3_read          (_connected_to_traffic_controller_ch_2_3_read_),          //  output,   width = 1,                            .read
		.traffic_controller_ch_2_3_readdata      (_connected_to_traffic_controller_ch_2_3_readdata_),      //   input,  width = 32,                            .readdata
		.traffic_controller_ch_2_3_writedata     (_connected_to_traffic_controller_ch_2_3_writedata_),     //  output,  width = 32,                            .writedata
		.traffic_controller_ch_2_3_waitrequest   (_connected_to_traffic_controller_ch_2_3_waitrequest_),   //   input,   width = 1,                            .waitrequest
		.traffic_controller_ch_4_5_address       (_connected_to_traffic_controller_ch_4_5_address_),       //  output,  width = 14,   traffic_controller_ch_4_5.address
		.traffic_controller_ch_4_5_write         (_connected_to_traffic_controller_ch_4_5_write_),         //  output,   width = 1,                            .write
		.traffic_controller_ch_4_5_read          (_connected_to_traffic_controller_ch_4_5_read_),          //  output,   width = 1,                            .read
		.traffic_controller_ch_4_5_readdata      (_connected_to_traffic_controller_ch_4_5_readdata_),      //   input,  width = 32,                            .readdata
		.traffic_controller_ch_4_5_writedata     (_connected_to_traffic_controller_ch_4_5_writedata_),     //  output,  width = 32,                            .writedata
		.traffic_controller_ch_4_5_waitrequest   (_connected_to_traffic_controller_ch_4_5_waitrequest_),   //   input,   width = 1,                            .waitrequest
		.traffic_controller_ch_6_7_address       (_connected_to_traffic_controller_ch_6_7_address_),       //  output,  width = 14,   traffic_controller_ch_6_7.address
		.traffic_controller_ch_6_7_write         (_connected_to_traffic_controller_ch_6_7_write_),         //  output,   width = 1,                            .write
		.traffic_controller_ch_6_7_read          (_connected_to_traffic_controller_ch_6_7_read_),          //  output,   width = 1,                            .read
		.traffic_controller_ch_6_7_readdata      (_connected_to_traffic_controller_ch_6_7_readdata_),      //   input,  width = 32,                            .readdata
		.traffic_controller_ch_6_7_writedata     (_connected_to_traffic_controller_ch_6_7_writedata_),     //  output,  width = 32,                            .writedata
		.traffic_controller_ch_6_7_waitrequest   (_connected_to_traffic_controller_ch_6_7_waitrequest_),   //   input,   width = 1,                            .waitrequest
		.traffic_controller_ch_8_9_address       (_connected_to_traffic_controller_ch_8_9_address_),       //  output,  width = 14,   traffic_controller_ch_8_9.address
		.traffic_controller_ch_8_9_write         (_connected_to_traffic_controller_ch_8_9_write_),         //  output,   width = 1,                            .write
		.traffic_controller_ch_8_9_read          (_connected_to_traffic_controller_ch_8_9_read_),          //  output,   width = 1,                            .read
		.traffic_controller_ch_8_9_readdata      (_connected_to_traffic_controller_ch_8_9_readdata_),      //   input,  width = 32,                            .readdata
		.traffic_controller_ch_8_9_writedata     (_connected_to_traffic_controller_ch_8_9_writedata_),     //  output,  width = 32,                            .writedata
		.traffic_controller_ch_8_9_waitrequest   (_connected_to_traffic_controller_ch_8_9_waitrequest_)    //   input,   width = 1,                            .waitrequest
	);

