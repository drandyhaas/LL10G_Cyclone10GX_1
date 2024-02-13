// address_decoder_multi_channel_channel_1.v

// Generated using ACDS version 23.4 79

`timescale 1 ps / 1 ps
module address_decoder_multi_channel_channel_1 #(
		parameter AV_ADDRESS_W                   = 16,
		parameter AV_DATA_W                      = 32,
		parameter UAV_DATA_W                     = 32,
		parameter AV_BURSTCOUNT_W                = 1,
		parameter AV_BYTEENABLE_W                = 4,
		parameter UAV_BYTEENABLE_W               = 4,
		parameter UAV_ADDRESS_W                  = 16,
		parameter UAV_BURSTCOUNT_W               = 3,
		parameter AV_READLATENCY                 = 0,
		parameter USE_READDATAVALID              = 0,
		parameter USE_WAITREQUEST                = 1,
		parameter USE_UAV_CLKEN                  = 0,
		parameter USE_READRESPONSE               = 0,
		parameter USE_WRITERESPONSE              = 0,
		parameter AV_SYMBOLS_PER_WORD            = 4,
		parameter AV_ADDRESS_SYMBOLS             = 1,
		parameter AV_BURSTCOUNT_SYMBOLS          = 1,
		parameter AV_CONSTANT_BURST_BEHAVIOR     = 0,
		parameter UAV_CONSTANT_BURST_BEHAVIOR    = 0,
		parameter AV_REQUIRE_UNALIGNED_ADDRESSES = 0,
		parameter CHIPSELECT_THROUGH_READLATENCY = 0,
		parameter AV_READ_WAIT_CYCLES            = 0,
		parameter AV_WRITE_WAIT_CYCLES           = 0,
		parameter AV_SETUP_WAIT_CYCLES           = 0,
		parameter AV_DATA_HOLD_CYCLES            = 0,
		parameter WAITREQUEST_ALLOWANCE          = 0,
		parameter SYNC_RESET                     = 0
	) (
		input  wire        clk,               //                      clk.clk
		input  wire        reset,             //                    reset.reset
		input  wire [15:0] uav_address,       // avalon_universal_slave_0.address
		input  wire [2:0]  uav_burstcount,    //                         .burstcount
		input  wire        uav_read,          //                         .read
		input  wire        uav_write,         //                         .write
		output wire        uav_waitrequest,   //                         .waitrequest
		output wire        uav_readdatavalid, //                         .readdatavalid
		input  wire [3:0]  uav_byteenable,    //                         .byteenable
		output wire [31:0] uav_readdata,      //                         .readdata
		input  wire [31:0] uav_writedata,     //                         .writedata
		input  wire        uav_lock,          //                         .lock
		input  wire        uav_debugaccess,   //                         .debugaccess
		output wire [15:0] av_address,        //      avalon_anti_slave_0.address
		output wire        av_write,          //                         .write
		output wire        av_read,           //                         .read
		input  wire [31:0] av_readdata,       //                         .readdata
		output wire [31:0] av_writedata,      //                         .writedata
		input  wire        av_waitrequest     //                         .waitrequest
	);

	address_decoder_multi_channel_channel_1_altera_merlin_slave_translator_191_x56fcki #(
		.AV_ADDRESS_W                   (AV_ADDRESS_W),
		.AV_DATA_W                      (AV_DATA_W),
		.UAV_DATA_W                     (UAV_DATA_W),
		.AV_BURSTCOUNT_W                (AV_BURSTCOUNT_W),
		.AV_BYTEENABLE_W                (AV_BYTEENABLE_W),
		.UAV_BYTEENABLE_W               (UAV_BYTEENABLE_W),
		.UAV_ADDRESS_W                  (UAV_ADDRESS_W),
		.UAV_BURSTCOUNT_W               (UAV_BURSTCOUNT_W),
		.AV_READLATENCY                 (AV_READLATENCY),
		.USE_READDATAVALID              (USE_READDATAVALID),
		.USE_WAITREQUEST                (USE_WAITREQUEST),
		.USE_UAV_CLKEN                  (USE_UAV_CLKEN),
		.USE_READRESPONSE               (USE_READRESPONSE),
		.USE_WRITERESPONSE              (USE_WRITERESPONSE),
		.AV_SYMBOLS_PER_WORD            (AV_SYMBOLS_PER_WORD),
		.AV_ADDRESS_SYMBOLS             (AV_ADDRESS_SYMBOLS),
		.AV_BURSTCOUNT_SYMBOLS          (AV_BURSTCOUNT_SYMBOLS),
		.AV_CONSTANT_BURST_BEHAVIOR     (AV_CONSTANT_BURST_BEHAVIOR),
		.UAV_CONSTANT_BURST_BEHAVIOR    (UAV_CONSTANT_BURST_BEHAVIOR),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (AV_REQUIRE_UNALIGNED_ADDRESSES),
		.CHIPSELECT_THROUGH_READLATENCY (CHIPSELECT_THROUGH_READLATENCY),
		.AV_READ_WAIT_CYCLES            (AV_READ_WAIT_CYCLES),
		.AV_WRITE_WAIT_CYCLES           (AV_WRITE_WAIT_CYCLES),
		.AV_SETUP_WAIT_CYCLES           (AV_SETUP_WAIT_CYCLES),
		.AV_DATA_HOLD_CYCLES            (AV_DATA_HOLD_CYCLES),
		.WAITREQUEST_ALLOWANCE          (WAITREQUEST_ALLOWANCE),
		.SYNC_RESET                     (SYNC_RESET)
	) channel_1 (
		.clk                    (clk),               //   input,   width = 1,                      clk.clk
		.reset                  (reset),             //   input,   width = 1,                    reset.reset
		.uav_address            (uav_address),       //   input,  width = 16, avalon_universal_slave_0.address
		.uav_burstcount         (uav_burstcount),    //   input,   width = 3,                         .burstcount
		.uav_read               (uav_read),          //   input,   width = 1,                         .read
		.uav_write              (uav_write),         //   input,   width = 1,                         .write
		.uav_waitrequest        (uav_waitrequest),   //  output,   width = 1,                         .waitrequest
		.uav_readdatavalid      (uav_readdatavalid), //  output,   width = 1,                         .readdatavalid
		.uav_byteenable         (uav_byteenable),    //   input,   width = 4,                         .byteenable
		.uav_readdata           (uav_readdata),      //  output,  width = 32,                         .readdata
		.uav_writedata          (uav_writedata),     //   input,  width = 32,                         .writedata
		.uav_lock               (uav_lock),          //   input,   width = 1,                         .lock
		.uav_debugaccess        (uav_debugaccess),   //   input,   width = 1,                         .debugaccess
		.av_address             (av_address),        //  output,  width = 16,      avalon_anti_slave_0.address
		.av_write               (av_write),          //  output,   width = 1,                         .write
		.av_read                (av_read),           //  output,   width = 1,                         .read
		.av_readdata            (av_readdata),       //   input,  width = 32,                         .readdata
		.av_writedata           (av_writedata),      //  output,  width = 32,                         .writedata
		.av_waitrequest         (av_waitrequest),    //   input,   width = 1,                         .waitrequest
		.av_begintransfer       (),                  // (terminated),                                       
		.av_beginbursttransfer  (),                  // (terminated),                                       
		.av_burstcount          (),                  // (terminated),                                       
		.av_byteenable          (),                  // (terminated),                                       
		.av_readdatavalid       (1'b0),              // (terminated),                                       
		.av_writebyteenable     (),                  // (terminated),                                       
		.av_lock                (),                  // (terminated),                                       
		.av_chipselect          (),                  // (terminated),                                       
		.av_clken               (),                  // (terminated),                                       
		.uav_clken              (1'b0),              // (terminated),                                       
		.av_debugaccess         (),                  // (terminated),                                       
		.av_outputenable        (),                  // (terminated),                                       
		.uav_response           (),                  // (terminated),                                       
		.av_response            (2'b00),             // (terminated),                                       
		.uav_writeresponsevalid (),                  // (terminated),                                       
		.av_writeresponsevalid  (1'b0)               // (terminated),                                       
	);

endmodule
