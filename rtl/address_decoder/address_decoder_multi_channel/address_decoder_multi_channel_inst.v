	address_decoder_multi_channel u0 (
		.channel_0_address      (_connected_to_channel_0_address_),      //  output,  width = 16,     channel_0.address
		.channel_0_write        (_connected_to_channel_0_write_),        //  output,   width = 1,              .write
		.channel_0_read         (_connected_to_channel_0_read_),         //  output,   width = 1,              .read
		.channel_0_readdata     (_connected_to_channel_0_readdata_),     //   input,  width = 32,              .readdata
		.channel_0_writedata    (_connected_to_channel_0_writedata_),    //  output,  width = 32,              .writedata
		.channel_0_waitrequest  (_connected_to_channel_0_waitrequest_),  //   input,   width = 1,              .waitrequest
		.channel_1_address      (_connected_to_channel_1_address_),      //  output,  width = 16,     channel_1.address
		.channel_1_write        (_connected_to_channel_1_write_),        //  output,   width = 1,              .write
		.channel_1_read         (_connected_to_channel_1_read_),         //  output,   width = 1,              .read
		.channel_1_readdata     (_connected_to_channel_1_readdata_),     //   input,  width = 32,              .readdata
		.channel_1_writedata    (_connected_to_channel_1_writedata_),    //  output,  width = 32,              .writedata
		.channel_1_waitrequest  (_connected_to_channel_1_waitrequest_),  //   input,   width = 1,              .waitrequest
		.channel_10_address     (_connected_to_channel_10_address_),     //  output,  width = 16,    channel_10.address
		.channel_10_write       (_connected_to_channel_10_write_),       //  output,   width = 1,              .write
		.channel_10_read        (_connected_to_channel_10_read_),        //  output,   width = 1,              .read
		.channel_10_readdata    (_connected_to_channel_10_readdata_),    //   input,  width = 32,              .readdata
		.channel_10_writedata   (_connected_to_channel_10_writedata_),   //  output,  width = 32,              .writedata
		.channel_10_waitrequest (_connected_to_channel_10_waitrequest_), //   input,   width = 1,              .waitrequest
		.channel_11_address     (_connected_to_channel_11_address_),     //  output,  width = 16,    channel_11.address
		.channel_11_write       (_connected_to_channel_11_write_),       //  output,   width = 1,              .write
		.channel_11_read        (_connected_to_channel_11_read_),        //  output,   width = 1,              .read
		.channel_11_readdata    (_connected_to_channel_11_readdata_),    //   input,  width = 32,              .readdata
		.channel_11_writedata   (_connected_to_channel_11_writedata_),   //  output,  width = 32,              .writedata
		.channel_11_waitrequest (_connected_to_channel_11_waitrequest_), //   input,   width = 1,              .waitrequest
		.channel_2_address      (_connected_to_channel_2_address_),      //  output,  width = 16,     channel_2.address
		.channel_2_write        (_connected_to_channel_2_write_),        //  output,   width = 1,              .write
		.channel_2_read         (_connected_to_channel_2_read_),         //  output,   width = 1,              .read
		.channel_2_readdata     (_connected_to_channel_2_readdata_),     //   input,  width = 32,              .readdata
		.channel_2_writedata    (_connected_to_channel_2_writedata_),    //  output,  width = 32,              .writedata
		.channel_2_waitrequest  (_connected_to_channel_2_waitrequest_),  //   input,   width = 1,              .waitrequest
		.channel_3_address      (_connected_to_channel_3_address_),      //  output,  width = 16,     channel_3.address
		.channel_3_write        (_connected_to_channel_3_write_),        //  output,   width = 1,              .write
		.channel_3_read         (_connected_to_channel_3_read_),         //  output,   width = 1,              .read
		.channel_3_readdata     (_connected_to_channel_3_readdata_),     //   input,  width = 32,              .readdata
		.channel_3_writedata    (_connected_to_channel_3_writedata_),    //  output,  width = 32,              .writedata
		.channel_3_waitrequest  (_connected_to_channel_3_waitrequest_),  //   input,   width = 1,              .waitrequest
		.channel_4_address      (_connected_to_channel_4_address_),      //  output,  width = 16,     channel_4.address
		.channel_4_write        (_connected_to_channel_4_write_),        //  output,   width = 1,              .write
		.channel_4_read         (_connected_to_channel_4_read_),         //  output,   width = 1,              .read
		.channel_4_readdata     (_connected_to_channel_4_readdata_),     //   input,  width = 32,              .readdata
		.channel_4_writedata    (_connected_to_channel_4_writedata_),    //  output,  width = 32,              .writedata
		.channel_4_waitrequest  (_connected_to_channel_4_waitrequest_),  //   input,   width = 1,              .waitrequest
		.channel_5_address      (_connected_to_channel_5_address_),      //  output,  width = 16,     channel_5.address
		.channel_5_write        (_connected_to_channel_5_write_),        //  output,   width = 1,              .write
		.channel_5_read         (_connected_to_channel_5_read_),         //  output,   width = 1,              .read
		.channel_5_readdata     (_connected_to_channel_5_readdata_),     //   input,  width = 32,              .readdata
		.channel_5_writedata    (_connected_to_channel_5_writedata_),    //  output,  width = 32,              .writedata
		.channel_5_waitrequest  (_connected_to_channel_5_waitrequest_),  //   input,   width = 1,              .waitrequest
		.channel_6_address      (_connected_to_channel_6_address_),      //  output,  width = 16,     channel_6.address
		.channel_6_write        (_connected_to_channel_6_write_),        //  output,   width = 1,              .write
		.channel_6_read         (_connected_to_channel_6_read_),         //  output,   width = 1,              .read
		.channel_6_readdata     (_connected_to_channel_6_readdata_),     //   input,  width = 32,              .readdata
		.channel_6_writedata    (_connected_to_channel_6_writedata_),    //  output,  width = 32,              .writedata
		.channel_6_waitrequest  (_connected_to_channel_6_waitrequest_),  //   input,   width = 1,              .waitrequest
		.channel_7_address      (_connected_to_channel_7_address_),      //  output,  width = 16,     channel_7.address
		.channel_7_write        (_connected_to_channel_7_write_),        //  output,   width = 1,              .write
		.channel_7_read         (_connected_to_channel_7_read_),         //  output,   width = 1,              .read
		.channel_7_readdata     (_connected_to_channel_7_readdata_),     //   input,  width = 32,              .readdata
		.channel_7_writedata    (_connected_to_channel_7_writedata_),    //  output,  width = 32,              .writedata
		.channel_7_waitrequest  (_connected_to_channel_7_waitrequest_),  //   input,   width = 1,              .waitrequest
		.channel_8_address      (_connected_to_channel_8_address_),      //  output,  width = 16,     channel_8.address
		.channel_8_write        (_connected_to_channel_8_write_),        //  output,   width = 1,              .write
		.channel_8_read         (_connected_to_channel_8_read_),         //  output,   width = 1,              .read
		.channel_8_readdata     (_connected_to_channel_8_readdata_),     //   input,  width = 32,              .readdata
		.channel_8_writedata    (_connected_to_channel_8_writedata_),    //  output,  width = 32,              .writedata
		.channel_8_waitrequest  (_connected_to_channel_8_waitrequest_),  //   input,   width = 1,              .waitrequest
		.channel_9_address      (_connected_to_channel_9_address_),      //  output,  width = 16,     channel_9.address
		.channel_9_write        (_connected_to_channel_9_write_),        //  output,   width = 1,              .write
		.channel_9_read         (_connected_to_channel_9_read_),         //  output,   width = 1,              .read
		.channel_9_readdata     (_connected_to_channel_9_readdata_),     //   input,  width = 32,              .readdata
		.channel_9_writedata    (_connected_to_channel_9_writedata_),    //  output,  width = 32,              .writedata
		.channel_9_waitrequest  (_connected_to_channel_9_waitrequest_),  //   input,   width = 1,              .waitrequest
		.csr_clk_clk            (_connected_to_csr_clk_clk_),            //   input,   width = 1,       csr_clk.clk
		.csr_clk_reset_reset_n  (_connected_to_csr_clk_reset_reset_n_),  //   input,   width = 1, csr_clk_reset.reset_n
		.slave_address          (_connected_to_slave_address_),          //   input,  width = 20,         slave.address
		.slave_waitrequest      (_connected_to_slave_waitrequest_),      //  output,   width = 1,              .waitrequest
		.slave_read             (_connected_to_slave_read_),             //   input,   width = 1,              .read
		.slave_readdata         (_connected_to_slave_readdata_),         //  output,  width = 32,              .readdata
		.slave_write            (_connected_to_slave_write_),            //   input,   width = 1,              .write
		.slave_writedata        (_connected_to_slave_writedata_)         //   input,  width = 32,              .writedata
	);

