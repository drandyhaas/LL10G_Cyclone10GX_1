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


// $File: //acds/main/ip/sopc/components/altera_avalon_dc_fifo/altera_dcfifo_synchronizer_bundle.v $
// $Revision: #4 $
// $Date: 2012/01/18 $
// $Author: pscheidt $
//-------------------------------------------------------------------------------

`timescale 1 ns / 1 ns
module alt_em10g32_dcfifo_synchronizer_bundle(
				     clk,
				     reset_n,
				     din,
				     dout
				     );
   parameter WIDTH = 1;
   parameter DEPTH = 3;   
   
   input clk;
   input reset_n;
   input [WIDTH-1:0] din;
   output [WIDTH-1:0] dout;
   
   genvar i;
   
   generate
      for (i=0; i<WIDTH; i=i+1)
	begin : sync
	   alt_em10g32_std_synchronizer #(.depth(DEPTH))
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
`pragma questa_oem_00 "SMMbDnrMdl9oaS6bwRlS4JaavoOENlWa+dQtuOnV3TzGX28HbTh9kZTKR8bbBVQbnGQbdt3o+4BIZrTjdG09kQwOWmazk3Lk9eEiXOds5fIne1MObL2JPDK7mdyjL8ooJ1kolUYWMtsJOzH8oXrVy/xt1JbYGEWCLvf1EEOeHKFT2m1IwT74zmBfVREd8o+Y6TrH6taoy7h846R5itJuJ9wt/U5546BBvYwj+Ai8ax4T8zAnj4JGN+7KL8CKh8uNEgWFKVRGdH2UkqEzdpM5YLad3gVy6+YXk/RxO0oHNrImuvjS23bcYiKn3Ux8Zlk2E8huukh5noXPNVLiZQe2SW5l+enU5DVlUTfXiDRSaqSMxZyM6hpxbrIj5H8yC1vkpxQjJxFYou9KzxcfE126F4AKFDnjERJuHQsy7SNtzHvietNkQAS7uu3qFxXpcwDGXpZYZ56dhsBx0qBZ6MgTDcy1darwK83EtiLa55wzqf4mmkWNlEB3uVFzOVQlCUibO+8vs3XnyAwYurrC6vW6VCEXFD8IUUd/E9UhipiR6nsAWm4JPNIpAsHQ5ciCBDFvAl18IP8Y+e3+m4oCv5SYTVUDXwA/ouuXY4Tk0LNjXFdI5QI5AHuqWdljKfxPZeihZuktlp7RVaXhKEUKDcve68G4xBgejHbup/S5B+8mvrccy5fFjHqwk3zekbOSU+4io3kRVsqFzf0vU+ZOLbfWuLJFZe2NYk13KhnoYr8lNQysrgi7Ek3GOaCtow7QJ1bVcLHb/xvbOdfCSBgKaRFHjGaqFdpvD5mAWd1OvI4gC/RsOPwE1H0LH1X7JAqV6gsSur3Lz3e4/sNOMiyu2KNOHiIuYjz+3azXE2pZNhA7t2YkSDK6z6r298H1zmrlnMikgQxFfLuSsYj+W2GhEniQoLi5DMoFTHCj+4YhsBuk2fU89en0jIJO+j6TnuVZ93mUxCu/81y0RlxkLSlK+e9DNCx2PcxDFEXbQZAb8TltBJhgR47OpurVJa9E9tFdHrOa"
`endif