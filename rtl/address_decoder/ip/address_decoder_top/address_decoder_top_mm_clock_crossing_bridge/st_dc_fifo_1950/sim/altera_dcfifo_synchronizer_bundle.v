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


// $File: //acds/rel/23.4/ip/iconnect/avalon_st/altera_avalon_dc_fifo/altera_dcfifo_synchronizer_bundle.v $
// $Revision: #1 $
// $Date: 2023/10/12 $
// $Author: psgswbuild $
//-------------------------------------------------------------------------------

`timescale 1 ns / 1 ns
module altera_dcfifo_synchronizer_bundle(
                                     clk,
                                     reset_n,
                                     din,
                                     dout
                                     );
   parameter WIDTH = 1;
   parameter DEPTH = 3;   
   parameter retiming_reg_en = 0;

   input clk;
   input reset_n;
   input [WIDTH-1:0] din;
   output [WIDTH-1:0] dout;
   
   genvar i;
   
   generate
      for (i=0; i<WIDTH; i=i+1)
        begin : sync
           altera_std_synchronizer_nocut #(.depth(DEPTH), .retiming_reg_en(retiming_reg_en))
                                   u (
                                      .clk(clk), 
                                      .reset_n(reset_n), 
                                      .din(din[i]), 
                                      .dout(dout[i])
                                      );
        end
   endgenerate
   
endmodule 

`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "Gwt3whRcE3+dmXyqrSB7tq2BawD3oh9aWud7Z4eAN187O43IWvM/KG8cuzSO3rcLdOg/6M8a5bUzV8fSCamrY3rLfHnQy43nef+FViJgCalid4DqTidvdzU87e5ZQ/v7HVm3olDBJc6LsbYrqiDrF0RkIcqQRi4zpc6Rtw0M2aW8FBhW2R9GBM/OcdpnaI+Km4xIFjjLOMKR0kXUH+3JyiE6l+btThmGIC55ugx3xho86RhDOHLV1euRIYGN/woefJMFwiwSCM8ZfCslHGIJ6o9Mdq/jsyX4wjXDp7oFYQ6vj844UEcrIQk1ZEONpe8S1fLNWPt/aha9E30DFhIDngwEkk/Xm3SeT2mGKbEm9pcv5Jcs9CDs10B9IeCKOcjVSmMard9ZEkIDMOYUOrJfSCVw6hLR0ESfP15mdpqBOHTRDRwVDlFizRw/guvxDS+DXWVXPBP2lVfX5VkxUwmZf6JGTkOYcwg/azywX2Y/n1DVT7IdtY3lD7fnyBw7C41Vw/SYysTQMj98BLN0GbF9Rcjd3g+oOMZAX2/jtrWBX+M6jagYX1XOMGM6Qfwuf9Z5nSvLieE5QECuCbVPBIKmSzTsDY8D1Pah8mG/H7cEvwdn6qBFlDhvUZmMcXviRd2GHyF+Aflp1ZS35MhV40qEPLOu33N48pS7Zadb651yBApEGykXM7t1hqzMgj7LNJAAmNoPMSV43CAXmet4DI1GxAMKSkxgAdSvZcshCW1MkWrMdwf9Ywpofd1ZdT7SJikVKanxcAsPNz5Z3mzXU65eUQR+wsszhbAeF322h/jfOzE7Qrtsq9rbwfps8qxm2bCUzCiUv4xgY1YASnEhdczbHfWmsmSYJ08wp8I1YZJmrAvpsxGlnyx2kz2CP/nb04iMSBW14COrOMUjclCZMNP+WA/gSDkA82BLX2UwqEYTSkxqYMxitpKdv8fpmIU7mQbb3HZRMxs7xNa4uc8lT+rdhKagayVxz8RSAJLhMz33AfmO4zIiGpf9bXi82rkQgFfL"
`endif