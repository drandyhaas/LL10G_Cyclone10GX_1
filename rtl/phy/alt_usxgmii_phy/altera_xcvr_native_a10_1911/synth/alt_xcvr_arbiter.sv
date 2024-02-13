// (C) 2001-2023 Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files from any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License Subscription 
// Agreement, Intel FPGA IP License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Intel and sold by 
// Intel or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


// Clocked priority encoder with state
//
// On each clock cycle, updates state to show which request is granted.
// Most recent grant holder is always the highest priority.
// If current grant holder is not making a request, while others are, 
// then new grant holder is always the requester with lowest bit number.
// If no requests, current grant holder retains grant state

// $Header$

`timescale 1 ns / 1 ns
//altera message_off 16753
module alt_xcvr_arbiter #(
	parameter width = 2
) (
	input  wire clock,
	input  wire [width-1:0] req,	// req[n] requests for this cycle
	output reg  [width-1:0] grant	// grant[n] means requester n is grantee in this cycle
);

	wire idle;	// idle when no requests
	wire [width-1:0] keep;	// keep[n] means requester n is requesting, and already has the grant
							// Note: current grantee is always highest priority for next grant
	wire [width-1:0] take;	// take[n] means requester n is requesting, and there are no higher-priority requests

	assign keep = req & grant;	// current grantee is always highest priority for next grant
	assign idle = ~| req;		// idle when no requests

	initial begin
		grant = 0;
	end

	// grant next state depends on current grant and take priority
	always @(posedge clock) begin
		grant <= 
// synthesis translate_off
                    (grant === {width{1'bx}})? {width{1'b0}} :
// synthesis translate_on
				keep				// if current grantee is requesting, gets to keep grant
				 | ({width{idle}} & grant)	// if no requests, grant state remains unchanged
				 | take;			// take applies only if current grantee is not requesting
	end

	// 'take' bus encodes priority.  Request with lowest bit number wins when current grantee not requesting
	assign take[0] = req[0]
					 & (~| (keep & ({width{1'b1}} << 1)));	// no 'keep' from lower-priority inputs
	genvar i;
	generate
	for (i=1; i < width; i = i + 1) begin : arb
		assign take[i] = req[i]
						 & (~| (keep & ({width{1'b1}} << (i+1))))	// no 'keep' from lower-priority inputs
						 & (~| (req & {i{1'b1}}));	// no 'req' from higher-priority inputs
	end
	endgenerate
endmodule
`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "DrEViKxYjtzqhP4xJSMIg5w7VpNvm0rbbcUFDa7en3duYJEOTutjVwO0gr1L8sBZaULpPKAIKZdPDlg4qO6zmyRmfWwJ9xOlHkSNDnbXKEueFyBg8Ml2zzREMAajVXmt5rP8C/hHbhyQe1TOjmVsHQBVTa2bq4Eprz+4E5VZfYqNwR8qEIlYyKh/Qum2u5jRcg2o0dlBASxNp83jbkARrTBsT8yEwUCB22kPwzp3VeYxZ/FnHztLJrjXYsfhgAICahK3/S+FC0ZMG/WExMZX28AJObs4If5O+bLM4hC+wyRr/UDzJXMcV/6okAxoXAD5seztIaJDvgwjXv5u/B6dkac6Nyj6Z8hftT+jjLagjvk8ybnfNG++ynfSHcHvfVMHrSfVq0aAfn1OdCRdpW9YEdqbHHRteHlvp2PymrpYUJj1/k8+/CzGf4nH7+RrBF7TaXmuiuahivRsIFTaWGB8NtnFgT8BYxtNsrDwix3I8b+iaWEKMp7ATFETgdq/wNbpckTrxTNzZJJHm0xAQwZgVyLEVkG0d9hDpf42MGJ1Fe3VI8BNIE9O/nF8hYWdrzc4CCvwLPfCuH1orr1qs+dfUhWKptxxiqm89fJLIJr/2ygI6+1DnCmL+leqs+BI1P6M4hA0K5zznDelLpO9juu3zLMiEGqJx5It/l76JA80qtDGefyhGv1UP0NvAIipi+ZKFQl8Go/kuisHw1n+YyQ0OYQSdBGNa0KCWphM3dg9b30rMwI4GYu4lKfMyLWEzkvgS9rLSz+26jtggdyque3Aw+twO2NtH4Ojxyaknb5Rxd518hpD6HDT+Brt9SOgWa4mBo6S8KfgbMFhPGdFCP28dog7e7b9+bi0JButE0xrL7pwqEtiRPM9iLZJD2w9OGoul0fezrL7qlxW8HHX6Tq7SRLtFicjkTjG2YRbm2H7wD+QJqhoh5Byu3u5KVjqnNdPcGV+UtNBe1CwuqSossN00vlbQ/mT1+lsEFJI85Z/WaBHSgsO754aK11dKE35gVe6"
`endif