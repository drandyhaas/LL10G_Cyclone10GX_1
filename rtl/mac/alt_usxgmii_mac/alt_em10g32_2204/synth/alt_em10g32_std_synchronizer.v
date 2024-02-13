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


`timescale 1ns / 1ns

module alt_em10g32_std_synchronizer (
                                clk, 
                                reset_n, 
                                din, 
                                dout
                                );

    // GLOBAL PARAMETER DECLARATION
    parameter depth = 3; // This value must be >= 2 !
    parameter rst_value = 0;

    // INPUT PORT DECLARATION 
    input   clk;
    input   reset_n;    
    input   din;

    // OUTPUT PORT DECLARATION 
    output  dout;

    altera_std_synchronizer_nocut #(
        .depth(depth),
        .rst_value(rst_value)
    ) std_sync_no_cut (
        .clk        (clk),
        .reset_n    (reset_n),
        .din        (din),
        .dout       (dout)
    );
   
endmodule  // alt_em10g32_std_synchronizer
// END OF MODULE
                        
`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "FJh/92saEn+s+1ew5Roc2SMnuPYSAAevj2+Evi0xd/R8Zc0cExBu2zjL7CqzoYzcj5L5L97BFfJYbLs35s7psykuWy+roxh5uwaoneLkZNaS4hs3ry5/jjxxxhyEEAUY4w6DRWTx5z5+Ull5aPL7WFQq83kD3hdhfGXHE7x05cls065ZUgW+fiYJnZPMxBwblqhDgDoXO/UB2RZhWzhO0KspADxn6KF6o0dmBULl0lQOsSyNbSXm+oTDhSS/33QaDrA43+wkqTREVNvaKCOfoZqg0e3mNxdWluZVPAslQS3lBHTs068XNmJzV6g/YsGFNvN2dYZqU2vKKptAiWTdt1M0AJursP4+rGh2jLXpPaNgJ5RHApqxfjOvot7Os8RycBNRPXrQIaMqXGY6wCHlj+sBdcW9Cxa3h3OmAXgH/0hxvWtjc/BRyylyBeoIfAqy5Hh7G8mxxSFhHwmiNVWlgFSu/FOfAx3YeBNKj3Q0UYWf3WG1fDVwEaamNzj27ZVTMtM0XDQ9M0MC3aaQiaPx89S3Z5A/oeQz0ipYGwXmKlmvkRpkNcDlg0OUD+D+LSSqha17i2yM9UK6zqIpLzMWQEJIHdL3ito+fr6GNxKW+vZojFzCHFYvlDTApoe6l+jq07hSOxnIW9nCIuuC1rkBiJWzsolsXw12vxzNBvizWxY/yNI4EQWNgqBVhDrfy4gWNS+Rtnjr/Js8ZrvXqelKmVXztIvwe/7IILOUgEgKqwcYZNGc2ojMBtDA2MhLWVcuVVdG/sSzq+2qWW8xqipxywZG/N+mffitQWLtOiVsnGDuN8wiKi8Zq4fUUfkrTYRj0ATb2z7n6Xo7lWiwTHwbhCa9YCEx+dKCxZefB6WYtz2Br6Z05Cm4T9FtGN7ly1aeToqPec0oLWPk2RL+O7gjWgUnbJxp64fJajHn8T1zHiFym3Op+jbfXITWNtDXVSBw4c3We6KC1l14PrIZ2TUqGdPo90Wsv1JzeNWjafq9Z07rygk5/HcT7dQRaxfnb6zR"
`endif