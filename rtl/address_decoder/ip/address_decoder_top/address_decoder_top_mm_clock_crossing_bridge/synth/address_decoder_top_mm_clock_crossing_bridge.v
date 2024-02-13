// address_decoder_top_mm_clock_crossing_bridge.v

// Generated using ACDS version 23.4 79

`timescale 1 ps / 1 ps
module address_decoder_top_mm_clock_crossing_bridge #(
		parameter DATA_WIDTH          = 32,
		parameter SYMBOL_WIDTH        = 8,
		parameter HDL_ADDR_WIDTH      = 17,
		parameter BURSTCOUNT_WIDTH    = 1,
		parameter COMMAND_FIFO_DEPTH  = 4,
		parameter RESPONSE_FIFO_DEPTH = 4,
		parameter MASTER_SYNC_DEPTH   = 3,
		parameter SLAVE_SYNC_DEPTH    = 3,
		parameter SYNC_RESET          = 0
	) (
		input  wire                        m0_clk,           //   m0_clk.clk
		input  wire                        m0_reset,         // m0_reset.reset
		input  wire                        s0_clk,           //   s0_clk.clk
		input  wire                        s0_reset,         // s0_reset.reset
		output wire                        s0_waitrequest,   //       s0.waitrequest
		output wire [DATA_WIDTH-1:0]       s0_readdata,      //         .readdata
		output wire                        s0_readdatavalid, //         .readdatavalid
		input  wire [BURSTCOUNT_WIDTH-1:0] s0_burstcount,    //         .burstcount
		input  wire [DATA_WIDTH-1:0]       s0_writedata,     //         .writedata
		input  wire [HDL_ADDR_WIDTH-1:0]   s0_address,       //         .address
		input  wire                        s0_write,         //         .write
		input  wire                        s0_read,          //         .read
		input  wire [3:0]                  s0_byteenable,    //         .byteenable
		input  wire                        s0_debugaccess,   //         .debugaccess
		input  wire                        m0_waitrequest,   //       m0.waitrequest
		input  wire [DATA_WIDTH-1:0]       m0_readdata,      //         .readdata
		input  wire                        m0_readdatavalid, //         .readdatavalid
		output wire [BURSTCOUNT_WIDTH-1:0] m0_burstcount,    //         .burstcount
		output wire [DATA_WIDTH-1:0]       m0_writedata,     //         .writedata
		output wire [HDL_ADDR_WIDTH-1:0]   m0_address,       //         .address
		output wire                        m0_write,         //         .write
		output wire                        m0_read,          //         .read
		output wire [3:0]                  m0_byteenable,    //         .byteenable
		output wire                        m0_debugaccess    //         .debugaccess
	);

	address_decoder_top_mm_clock_crossing_bridge_mm_ccb_1921_lcsq4ni #(
		.DATA_WIDTH          (DATA_WIDTH),
		.SYMBOL_WIDTH        (SYMBOL_WIDTH),
		.HDL_ADDR_WIDTH      (HDL_ADDR_WIDTH),
		.BURSTCOUNT_WIDTH    (BURSTCOUNT_WIDTH),
		.COMMAND_FIFO_DEPTH  (COMMAND_FIFO_DEPTH),
		.RESPONSE_FIFO_DEPTH (RESPONSE_FIFO_DEPTH),
		.MASTER_SYNC_DEPTH   (MASTER_SYNC_DEPTH),
		.SLAVE_SYNC_DEPTH    (SLAVE_SYNC_DEPTH),
		.SYNC_RESET          (SYNC_RESET)
	) mm_clock_crossing_bridge (
		.m0_clk           (m0_clk),           //   input,                 width = 1,   m0_clk.clk
		.m0_reset         (m0_reset),         //   input,                 width = 1, m0_reset.reset
		.s0_clk           (s0_clk),           //   input,                 width = 1,   s0_clk.clk
		.s0_reset         (s0_reset),         //   input,                 width = 1, s0_reset.reset
		.s0_waitrequest   (s0_waitrequest),   //  output,                 width = 1,       s0.waitrequest
		.s0_readdata      (s0_readdata),      //  output,        width = DATA_WIDTH,         .readdata
		.s0_readdatavalid (s0_readdatavalid), //  output,                 width = 1,         .readdatavalid
		.s0_burstcount    (s0_burstcount),    //   input,  width = BURSTCOUNT_WIDTH,         .burstcount
		.s0_writedata     (s0_writedata),     //   input,        width = DATA_WIDTH,         .writedata
		.s0_address       (s0_address),       //   input,    width = HDL_ADDR_WIDTH,         .address
		.s0_write         (s0_write),         //   input,                 width = 1,         .write
		.s0_read          (s0_read),          //   input,                 width = 1,         .read
		.s0_byteenable    (s0_byteenable),    //   input,                 width = 4,         .byteenable
		.s0_debugaccess   (s0_debugaccess),   //   input,                 width = 1,         .debugaccess
		.m0_waitrequest   (m0_waitrequest),   //   input,                 width = 1,       m0.waitrequest
		.m0_readdata      (m0_readdata),      //   input,        width = DATA_WIDTH,         .readdata
		.m0_readdatavalid (m0_readdatavalid), //   input,                 width = 1,         .readdatavalid
		.m0_burstcount    (m0_burstcount),    //  output,  width = BURSTCOUNT_WIDTH,         .burstcount
		.m0_writedata     (m0_writedata),     //  output,        width = DATA_WIDTH,         .writedata
		.m0_address       (m0_address),       //  output,    width = HDL_ADDR_WIDTH,         .address
		.m0_write         (m0_write),         //  output,                 width = 1,         .write
		.m0_read          (m0_read),          //  output,                 width = 1,         .read
		.m0_byteenable    (m0_byteenable),    //  output,                 width = 4,         .byteenable
		.m0_debugaccess   (m0_debugaccess)    //  output,                 width = 1,         .debugaccess
	);

endmodule
