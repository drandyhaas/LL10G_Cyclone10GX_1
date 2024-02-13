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



//  File Name: alt_xcvr_reset_counter
//
//  Description:  
//
//    A simple counter targeted for a reset controller. The parameters specify the clock domain's
//  clock frequency and the desired reset period specified in nanoseconds. The caller may specify
//  the active level of the internal reset flop.
//
//    The async_req input signal is active high. The reset outputs
//  will remain asserted while async_req is asserted and will not deassert
//  until the specified reset period has expired.
//    The sync_req input behaves similar to the async_req but is sampled
//  synchronously with the clock.
//    The "reset_or" input does not reset the counter but directly asserts the reset output flop.
//  The reset outputs will remain asserted so long as "reset_or" is asserted.
//
//  Revision History: 
//
//  Special notes:
//

`timescale 1ns / 1ns

module  alt_xcvr_reset_counter #(
    parameter CLKS_PER_SEC  = 25000000, // Clock frequency in Hz
    parameter RESET_PER_NS  = 1000000,  // Reset period in ns
    parameter RESET_COUNT   = 0,        // Overrides RESET_PER_NS
    parameter ACTIVE_LEVEL  = 1         //
) (
  input         clk,
  input         async_req,  // asynchronous reset request (restart sequence)
  input         sync_req,   // synchronous reset request
  input         reset_or,   // auxilliary reset override (assert only)

  output        reset,      // synchronous reset out
  output        reset_n,    // negation of reset
  output        reset_stat  // reset status (intended for control logic)
);

// Determine unrounded counter limit based on passed frequency
localparam  [63:0] INITIAL_COUNT  = (CLKS_PER_SEC * RESET_PER_NS) / 1000000000;
// Round counter limit up if needed
localparam  [63:0] ROUND_COUNT    = (((INITIAL_COUNT * 1000000000) / CLKS_PER_SEC) < RESET_PER_NS)
                            ? (INITIAL_COUNT + 1) : INITIAL_COUNT;
// Use given counter limit if provided (RESET_COUNT), otherwise use calculated counter limit
localparam  MAX_CNT = (RESET_COUNT == 0) ? ROUND_COUNT - 1 : RESET_COUNT - 1;
localparam  CNT_WIDTH = altera_xcvr_functions::clogb2(MAX_CNT);
// 1 bit wide active level
localparam  LCL_ACTIVE_LEVEL  = (ACTIVE_LEVEL == 0) ? 1'b0 : 1'b1;

// Counter signals
reg [CNT_WIDTH-1:0] count = {CNT_WIDTH{1'b0}};
wire                count_lim;

// Internal reset signals
(* dont_merge *) 
reg   r_reset;      // Reset output register
reg   r_reset_stat; // Reset status register
wire  reset_cond;   // Condition for reset

// Reset counter
//***************************************************************************
//**************************** Reset counter ********************************
assign  count_lim = (count == MAX_CNT);
always @(posedge clk or posedge async_req)
  if(async_req)       count <= {CNT_WIDTH{1'b0}};
  else if(sync_req)   count <= {CNT_WIDTH{1'b0}};
  else if(~count_lim) count <= count + 1'b1;
//************************** End Reset counter ******************************
//***************************************************************************


//***************************************************************************
//********************** Internal reset register ****************************
// The condition for a reset (other than asynchrnous reset) are:
// 1 - Synchronous reset request
// 2 - Timer has not expired.
// 3 - Reset override is asserted
assign  reset_cond  = (sync_req | ~count_lim | reset_or);

// Reset register
always @(posedge clk or posedge async_req)
  if(async_req)     r_reset <= LCL_ACTIVE_LEVEL;
  else              r_reset <= ~(reset_cond ^ LCL_ACTIVE_LEVEL);

// External reset status generation. We create a status of the reset
// output simply so we can allow the actual reset output to drive resets
// with limited fanout to other logic. This status output is intended
// to be used for reset control logic.
assign  reset_stat  = r_reset_stat;
always @(posedge clk or posedge async_req)
  if(async_req)     r_reset_stat  <= 1'b1;
  else              r_reset_stat  <= reset_cond;
//******************** End Internal reset register **************************
//***************************************************************************


//***************************************************************************
//*********************** Reset output generation ***************************
// External reset generation
generate if (ACTIVE_LEVEL == 0) begin : g_active_low_resets
  assign  reset   = ~r_reset;
  assign  reset_n = r_reset;
end else begin : g_active_high_resets
  assign  reset   = r_reset;
  assign  reset_n = ~r_reset;
end
endgenerate
//********************* End Reset output generation *************************
//***************************************************************************

endmodule

`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "2tGVyxZMIw9h5OvjMUznwUYqTrOP39w6fMEy0tmx58wstnXD2SK+nkX9QHF0/85B2nC8OMHvnBA8JbOHsbPAhYmC1Nobd756iZcXMv6ylMYRuB0oi/dG5L7MrkxBO84IuStk5TOL/CgZbHPQrDI1ymkEO49bahXp3C3+dbWZ+6fNmo1B6zlrDwB1aY4Gzxsbu8sn4Pur4CraHkuZz1feQcJL030Bl5lAOmKhLhxSPf3hLPShZPajFPLQ41eazeDb6hUMesZsM6cu1uSNvXh7Eo9wXVYG+CsTXSRQbe8RZ4mmbVEiI4UXTT74UsGzJ6ruIVop1K7pATPGfVbbiOKlk2kubm85gpnuUbcH3Aw9iA3ZD32vrKwTMceRMY1t3fxvjuL7nljcn0j36lUSDC3Re3oognXOGKjUVPqdd7gZJaKiUB2Yy2JYyAXNcEtJskTIbVpYKhvs0ZR0MD2yQwex6mCd2ET5QVpc9+g22m5N2RSX3hTxlbjHzYX0Y8S4pk84piTb0AxueQtFelP6wIP6GdCLETyKVt0F5uVANimN7OYD5tHZkeulirBXG0s9STw73JkCzjo/XGnqxFnzYFtY6Q67qnGKqotm6XSXzqb0A8mthSZF9TuxApTEwEQIMKfefFFBcYqVJCVfMLTDZ2s0uAdG4Mexfs4PRW92qyx1oFwFk1zjfkZkTDZwHb/tQLlEY5axUJae+AjWK0WOOXCS6Ll2nENk/dOwc0Ci2NCpmN1vb2VZvQtAsHo67gtppGUsKIQKMQoJhwTiufQCcZhrSarhUUiCUvCLoVwafsxSsZbAIdzWM2XAYzMhq0mtefdtkU9z1+08ECi3TmeZxPSsAtYHbErT0EHiCJCQrbkDKBN4/jRM+UAAMPhFZegC1npWZ0CmE2dppi9JXXTXIJNVFngMK0V7JQKtQrGe9ecrl5KiEXVuuYHUFVsJJ6smGwabM+dAxatipJ3VzcKcLbPastUipYA0dNcxEy/WzoXUICcrXR5exEDFsf5M2z4YF4bF"
`endif