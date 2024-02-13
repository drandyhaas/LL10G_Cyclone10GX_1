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


module alt_xcvr_pll_embedded_debug #(
  parameter dbg_capability_reg_enable   = 0,
  parameter dbg_user_identifier         = 0,
  parameter dbg_stat_soft_logic_enable  = 0,
  parameter dbg_ctrl_soft_logic_enable  = 0,
  parameter en_master_cgb               = 0
) (
  // avmm signals
  input         avmm_clk,
  input         avmm_reset,
  input  [8:0]  avmm_address,
  input  [7:0]  avmm_writedata,
  input         avmm_write,
  input         avmm_read,
  output [7:0]  avmm_readdata,
  output        avmm_waitrequest,

  // input signals from the core
  input         in_pll_powerdown,
  input         in_pll_locked,
  input         in_pll_cal_busy,
  input         in_avmm_busy,

  // output signals to the ip
  output        out_pll_powerdown
);

wire        prbs_done_sync;
wire        csr_prbs_snapshot;
wire        csr_prbs_count_en;
wire        csr_prbs_reset;
wire [47:0] prbs_err_count;
wire [47:0] prbs_bit_count;

alt_xcvr_pll_avmm_csr #(
  .dbg_capability_reg_enable   ( dbg_capability_reg_enable ),
  .dbg_user_identifier         ( dbg_user_identifier ),
  .dbg_stat_soft_logic_enable  ( dbg_stat_soft_logic_enable ),
  .dbg_ctrl_soft_logic_enable  ( dbg_ctrl_soft_logic_enable ),
  .en_master_cgb               ( en_master_cgb)
) embedded_debug_soft_csr (
  // avmm signals
  .avmm_clk                            (avmm_clk),
  .avmm_reset                          (avmm_reset),
  .avmm_address                        (avmm_address),
  .avmm_writedata                      (avmm_writedata),
  .avmm_write                          (avmm_write),
  .avmm_read                           (avmm_read),
  .avmm_readdata                       (avmm_readdata),
  .avmm_waitrequest                    (avmm_waitrequest),

  // input status signals from the channel
  .pll_powerdown                       (in_pll_powerdown),
  .pll_locked                          (in_pll_locked),
  .pll_cal_busy                        (in_pll_cal_busy),
  .avmm_busy                           (in_avmm_busy),

  // output control signals
  .csr_pll_powerdown                   (out_pll_powerdown)
);

endmodule
`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "ZCs+52HNmv7JxZwiTjf2MarrP/6s5+GMMeVNBgHmlFk8kA5+3C1CMZ/Rdl0jFreT2FsLH0CzN799DuR3pC98S/dCKaEszy50+yM8RYMlo/2rGIeZTlMiI6Sy1fetFN7LknfaKoGjtWLqDAU18+sdF8KEoSMFTy6tHcGfuhmJtWBHaG9RxbVSrYkZBTOymRlKVEHea3vzMvSPgOVRc6UrqsiiWHg/8AoPp3s5ICPhdfAW2HkN6a0r5wSL5yKGj3YpxKzlgwgZGswgefzlFwVap2IC9ZzEDTmrGSLAwpSwnoHzcaNE0uj/tuqosYj4tAllZS1FbpMsl3CotKmshVUw57Yol05U6wkVwfS8TzYkYFxMiEa8lhCrBb+ImCt0Uq0Vh3514uTsYvbh9m+EtufX9Iwnow38oQEbgEnteg5nMlN1CgxZljSBuj9RAEU8piU5u1EYIPKXfqiKVE89YINnBLaoDCJE0L3h4Hqt5wyucMTQIh4j0zMlvD3ENCAXHNWm6YZ0td2c534an66M4ewoD1bYC2NVEJqduHK782VdebXVepLkkyvk4PT0nEFwNKdhIgqqyVuoZIa9CwnkyB9JIol8GzUzo5bHAwq1SDk1zXNg8B6vREapOetQPbRulo/QkUE5t/hg8d1y0RUWbvVmYFnDro8/FEz/RaRAik9n1YpjHeo9MpfoXuxm1yhK4tGfSWCrCT4rfKxiB76nWs8QXCquwDqZuRlwB0thmWZDGRbiOBUmYdrYSTalx44qvcHwwmEKZwm1ndEz+TZWfUDJryi6F3Lse9i5UZBkE/MWVIn5NQgxkHR0/X30SRBvxeYFQn8BPT1nl/YpUgJHETp2SZXd+0FE5knLZGXAGT3mItoJikXD+bc1J0DL67pXbbEDT9/lbXA2bmGdeuR9997Bd2sKQXEbYYd4ilf+ZqZYUDCH9zU9PaxLO5j/I0bTWSjRoX5w/OgYVopcrmJFTDyI5ptFvS3UOSYzTITRFYQUtptFSOHt12XyBgOMsVVa8UPk"
`endif