// address_decoder_channel_altera_merlin_traffic_limiter_altera_avalon_sc_fifo_1921_uxwrfrq.v

// Generated using ACDS version 23.4 79

`timescale 1 ps / 1 ps
module address_decoder_channel_altera_merlin_traffic_limiter_altera_avalon_sc_fifo_1921_uxwrfrq #(
		parameter SYMBOLS_PER_BEAT    = 1,
		parameter BITS_PER_SYMBOL     = 3,
		parameter FIFO_DEPTH          = 2,
		parameter CHANNEL_WIDTH       = 0,
		parameter ERROR_WIDTH         = 0,
		parameter USE_PACKETS         = 0,
		parameter USE_FILL_LEVEL      = 0,
		parameter EMPTY_LATENCY       = 1,
		parameter USE_MEMORY_BLOCKS   = 0,
		parameter USE_STORE_FORWARD   = 0,
		parameter USE_ALMOST_FULL_IF  = 0,
		parameter USE_ALMOST_EMPTY_IF = 0,
		parameter EMPTY_WIDTH         = 1,
		parameter SYNC_RESET          = 0
	) (
		input  wire       clk,       //       clk.clk
		input  wire       reset,     // clk_reset.reset
		input  wire [2:0] in_data,   //        in.data
		input  wire       in_valid,  //          .valid
		output wire       in_ready,  //          .ready
		output wire [2:0] out_data,  //       out.data
		output wire       out_valid, //          .valid
		input  wire       out_ready  //          .ready
	);

	generate
		// If any of the display statements (or deliberately broken
		// instantiations) within this generate block triggers then this module
		// has been instantiated this module with a set of parameters different
		// from those it was generated for.  This will usually result in a
		// non-functioning system.
		if (EMPTY_WIDTH != 1)
		begin
		// synthesis translate_off
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
		// synthesis translate_on
			instantiated_with_wrong_parameters_error_see_comment_above
					empty_width_check ( .error(1'b1) );
		end
		if (SYNC_RESET != 0)
		begin
		// synthesis translate_off
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
		// synthesis translate_on
			instantiated_with_wrong_parameters_error_see_comment_above
					sync_reset_check ( .error(1'b1) );
		end
	endgenerate

	address_decoder_channel_altera_avalon_sc_fifo_1931_fzgstwy #(
		.SYMBOLS_PER_BEAT    (SYMBOLS_PER_BEAT),
		.BITS_PER_SYMBOL     (BITS_PER_SYMBOL),
		.FIFO_DEPTH          (FIFO_DEPTH),
		.CHANNEL_WIDTH       (CHANNEL_WIDTH),
		.ERROR_WIDTH         (ERROR_WIDTH),
		.USE_PACKETS         (USE_PACKETS),
		.USE_FILL_LEVEL      (USE_FILL_LEVEL),
		.EMPTY_LATENCY       (EMPTY_LATENCY),
		.USE_MEMORY_BLOCKS   (USE_MEMORY_BLOCKS),
		.USE_STORE_FORWARD   (USE_STORE_FORWARD),
		.USE_ALMOST_FULL_IF  (USE_ALMOST_FULL_IF),
		.USE_ALMOST_EMPTY_IF (USE_ALMOST_EMPTY_IF),
		.EMPTY_WIDTH         (1),
		.SYNC_RESET          (0)
	) my_altera_avalon_sc_fifo_dest_id_fifo (
		.clk               (clk),                                  //   input,  width = 1,       clk.clk
		.reset             (reset),                                //   input,  width = 1, clk_reset.reset
		.in_data           (in_data),                              //   input,  width = 3,        in.data
		.in_valid          (in_valid),                             //   input,  width = 1,          .valid
		.in_ready          (in_ready),                             //  output,  width = 1,          .ready
		.out_data          (out_data),                             //  output,  width = 3,       out.data
		.out_valid         (out_valid),                            //  output,  width = 1,          .valid
		.out_ready         (out_ready),                            //   input,  width = 1,          .ready
		.csr_address       (2'b00),                                // (terminated),                       
		.csr_read          (1'b0),                                 // (terminated),                       
		.csr_write         (1'b0),                                 // (terminated),                       
		.csr_readdata      (),                                     // (terminated),                       
		.csr_writedata     (32'b00000000000000000000000000000000), // (terminated),                       
		.almost_full_data  (),                                     // (terminated),                       
		.almost_empty_data (),                                     // (terminated),                       
		.in_startofpacket  (1'b0),                                 // (terminated),                       
		.in_endofpacket    (1'b0),                                 // (terminated),                       
		.out_startofpacket (),                                     // (terminated),                       
		.out_endofpacket   (),                                     // (terminated),                       
		.in_empty          (1'b0),                                 // (terminated),                       
		.out_empty         (),                                     // (terminated),                       
		.in_error          (1'b0),                                 // (terminated),                       
		.out_error         (),                                     // (terminated),                       
		.in_channel        (1'b0),                                 // (terminated),                       
		.out_channel       ()                                      // (terminated),                       
	);

endmodule
