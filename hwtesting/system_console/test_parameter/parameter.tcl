# (C) 2001-2018 Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions and other 
# software and tools, and its AMPP partner logic functions, and any output 
# files from any of the foregoing (including device programming or simulation 
# files), and any associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License Subscription 
# Agreement, Intel FPGA IP License Agreement, or other applicable 
# license agreement, including, without limitation, that your use is for the 
# sole purpose of programming logic devices manufactured by Intel and sold by 
# Intel or its authorized distributors.  Please refer to the applicable 
# agreement for further details.


# System
set NUM_CHANNELS                2

# MAC
set MAC_SRC_ADDRESS             F0F1F2F3F4F5
set MAC_DST_ADDRESS             90E2BA37CAB6

set MAX_FRAME_LENGTH            1518
#set MAX_FRAME_LENGTH            65100

# Traffic Controller
set PACKET_TYPE                 FIXED
#set PACKET_TYPE                 RANDOM
set PACKET_SIZE                 1512
#set PACKET_SIZE                 65000
set BURST_TYPE                  FIXED
#set BURST_TYPE                  RANDOM
set BURST_ITERATION             1
