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


// Module: alt_xcvr_resync
//
// Description:
//  A general purpose resynchronization module.
//  
//  Parameters:
//    SYNC_CHAIN_LENGTH
//      - Specifies the length of the synchronizer chain for metastability
//        retiming.
//    WIDTH
//      - Specifies the number of bits you want to synchronize. Controls the width of the
//        d and q ports.
//    SLOW_CLOCK - USE WITH CAUTION. 
//      - Leaving this setting at its default will create a standard resynch circuit that
//        merely passes the input data through a chain of flip-flops. This setting assumes
//        that the input data has a pulse width longer than one clock cycle sufficient to
//        satisfy setup and hold requirements on at least one clock edge.
//      - By setting this to 1 (USE CAUTION) you are creating an asynchronous
//        circuit that will capture the input data regardless of the pulse width and 
//        its relationship to the clock. However it is more difficult to apply static
//        timing constraints as it ties the data input to the clock input of the flop.
//        This implementation assumes the data rate is slow enough
//    INIT_VALUE
//      - Specifies the initial values of the synchronization registers.
//
// Apply embedded false path timing constraint
(* altera_attribute  = "-name SDC_STATEMENT \"set regs [get_registers -nowarn *alt_xcvr_resync*sync_r[0]]; if {[llength [query_collection -report -all $regs]] > 0} {set_false_path -to $regs}\"" *)

`timescale 1ps/1ps 

module alt_xcvr_resync #(
    parameter SYNC_CHAIN_LENGTH = 2,  // Number of flip-flops for retiming. Must be >1
    parameter WIDTH             = 1,  // Number of bits to resync
    parameter SLOW_CLOCK        = 0,  // See description above
    parameter INIT_VALUE        = 0
  ) (
  input   wire              clk,
  input   wire              reset,
  input   wire  [WIDTH-1:0] d,
  output  wire  [WIDTH-1:0] q
  );

localparam  INT_LEN       = (SYNC_CHAIN_LENGTH > 1) ? SYNC_CHAIN_LENGTH : 2;
localparam  [INT_LEN-1:0] L_INIT_VALUE = (INIT_VALUE == 1) ? {INT_LEN{1'b1}} : {INT_LEN{1'b0}};

genvar ig;

// Generate a synchronizer chain for each bit
generate for(ig=0;ig<WIDTH;ig=ig+1) begin : resync_chains
    wire                d_in;   // Input to sychronization chain.
    (* altera_attribute  = "disable_da_rule=D103" *)
    reg   [INT_LEN-1:0] sync_r = L_INIT_VALUE;

    assign  q[ig]   = sync_r[INT_LEN-1]; // Output signal

    always @(posedge clk or posedge reset)
      if(reset)
        sync_r  <= L_INIT_VALUE;
      else
        sync_r  <= {sync_r[INT_LEN-2:0],d_in};

    // Generate asynchronous capture circuit if specified.
    if(SLOW_CLOCK == 0) begin
      assign  d_in = d[ig];
    end else begin
      wire  d_clk;
      reg   d_r = L_INIT_VALUE[0];
      wire  clr_n;

      assign  d_clk = d[ig];
      assign  d_in  = d_r;
      assign  clr_n = ~q[ig] | d_clk; // Clear when output is logic 1 and input is logic 0

      // Asynchronously latch the input signal.
      always @(posedge d_clk or negedge clr_n)
        if(!clr_n)      d_r <= 1'b0;
        else if(d_clk)  d_r <= 1'b1;
    end // SLOW_CLOCK
  end // for loop
endgenerate

endmodule
`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "DrEViKxYjtzqhP4xJSMIg5w7VpNvm0rbbcUFDa7en3duYJEOTutjVwO0gr1L8sBZaULpPKAIKZdPDlg4qO6zmyRmfWwJ9xOlHkSNDnbXKEueFyBg8Ml2zzREMAajVXmt5rP8C/hHbhyQe1TOjmVsHQBVTa2bq4Eprz+4E5VZfYqNwR8qEIlYyKh/Qum2u5jRcg2o0dlBASxNp83jbkARrTBsT8yEwUCB22kPwzp3VeagRL9IkK+4qhWHNk/jXA6QKDPee+1YxCmEdvjgPdw679206TpAiLNtzVy19gXcwouh4/tmfWdqnNooJkT7QyOUCWK+6u/kJyoc2+nA0OxEmXK+u1dsXfxM8Na807+UMj4BjzVYdFPjBk6KX8aUll8PBs/5gu7JKUSWNO2q1W9AxXMJ9nZFFbNY36UaKRyOkyYx27rqz6gEOwJqL+W+FVJSyjmsKOURBGHVknEA/rRNq8YF/J+mt3u6Z9Tp/hqDQ9fR+nb7lCPwtKV4hhiLcFZ2ljb/afpKFrFeN0jZrjVHhGZAGgat+q6vDHpz/OQw4ZOq1b0IE6/V8esQSbBKIw5XtWwmb+w0GZg0IHfnW4V+vrTdQkbvaHh6JMhmWuzFVD+oMGLcaPbTMikp+9ML/X2x6dEsntr90THtSb6Fckdr7tAlvd1mcExOJySNjcah1KnZ9zHHA0Tkg5ooFyfZCGKpGpOn7+utuOn+o9zyOCOjTrByDyNEi8jCI4h5CuOwmRRrXaT+uyz9vhbm9a+F0sARLQAyJ3LMNt2KdabCuZSS3RIv3ntPhnllNNng+NyxZWvWhmbmzIEDCsaddBPZ45mUodXttoVubCbLRLUZC747atKuAbSxAO1IBflV0Qlg42mDqBZxQpSfWjad+Yr+22S69X5Es53EyCBtEjpCU+yGwyobel0rg5PaU/CsKkosyqBtvqg67++Mh5womGwstdFz1Wi8VVRos7+pgQRcQHN/CT+A10amZhUpW0ou6/2GaItJNTS5Blkj3hUBrKKIBF5M"
`endif