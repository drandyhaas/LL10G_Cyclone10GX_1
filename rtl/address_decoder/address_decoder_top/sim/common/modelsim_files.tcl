source [file join [file dirname [info script]] ./../../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_2_3/sim/common/modelsim_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/address_decoder_top/address_decoder_top_mm_clock_crossing_bridge/sim/common/modelsim_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/address_decoder_top/address_decoder_top_multi_channel/sim/common/modelsim_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/address_decoder_top/address_decoder_top_master/sim/common/modelsim_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/address_decoder_top/address_decoder_top_csr_clk/sim/common/modelsim_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_8_9/sim/common/modelsim_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_6_7/sim/common/modelsim_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_10_11/sim/common/modelsim_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_4_5/sim/common/modelsim_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_0_1/sim/common/modelsim_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/address_decoder_top/address_decoder_top_mac_clk/sim/common/modelsim_files.tcl]

namespace eval address_decoder_top {
  proc get_design_libraries {} {
    set libraries [dict create]
    set libraries [dict merge $libraries [address_decoder_top_traffic_controller_ch_2_3::get_design_libraries]]
    set libraries [dict merge $libraries [address_decoder_top_mm_clock_crossing_bridge::get_design_libraries]]
    set libraries [dict merge $libraries [address_decoder_top_multi_channel::get_design_libraries]]
    set libraries [dict merge $libraries [address_decoder_top_master::get_design_libraries]]
    set libraries [dict merge $libraries [address_decoder_top_csr_clk::get_design_libraries]]
    set libraries [dict merge $libraries [address_decoder_top_traffic_controller_ch_8_9::get_design_libraries]]
    set libraries [dict merge $libraries [address_decoder_top_traffic_controller_ch_6_7::get_design_libraries]]
    set libraries [dict merge $libraries [address_decoder_top_traffic_controller_ch_10_11::get_design_libraries]]
    set libraries [dict merge $libraries [address_decoder_top_traffic_controller_ch_4_5::get_design_libraries]]
    set libraries [dict merge $libraries [address_decoder_top_traffic_controller_ch_0_1::get_design_libraries]]
    set libraries [dict merge $libraries [address_decoder_top_mac_clk::get_design_libraries]]
    dict set libraries altera_merlin_master_translator_192 1
    dict set libraries altera_merlin_slave_translator_191  1
    dict set libraries altera_merlin_master_agent_1921     1
    dict set libraries altera_merlin_slave_agent_1921      1
    dict set libraries altera_avalon_sc_fifo_1931          1
    dict set libraries altera_merlin_router_1921           1
    dict set libraries altera_merlin_demultiplexer_1921    1
    dict set libraries altera_merlin_multiplexer_1922      1
    dict set libraries altera_mm_interconnect_1920         1
    dict set libraries altera_merlin_traffic_limiter_1921  1
    dict set libraries altera_reset_controller_1922        1
    dict set libraries address_decoder_top                 1
    return $libraries
  }
  
  proc get_memory_files {QSYS_SIMDIR} {
    set memory_files [list]
    set memory_files [concat $memory_files [address_decoder_top_traffic_controller_ch_2_3::get_memory_files "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_2_3/sim/"]]
    set memory_files [concat $memory_files [address_decoder_top_mm_clock_crossing_bridge::get_memory_files "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_mm_clock_crossing_bridge/sim/"]]
    set memory_files [concat $memory_files [address_decoder_top_multi_channel::get_memory_files "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_multi_channel/sim/"]]
    set memory_files [concat $memory_files [address_decoder_top_master::get_memory_files "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_master/sim/"]]
    set memory_files [concat $memory_files [address_decoder_top_csr_clk::get_memory_files "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_csr_clk/sim/"]]
    set memory_files [concat $memory_files [address_decoder_top_traffic_controller_ch_8_9::get_memory_files "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_8_9/sim/"]]
    set memory_files [concat $memory_files [address_decoder_top_traffic_controller_ch_6_7::get_memory_files "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_6_7/sim/"]]
    set memory_files [concat $memory_files [address_decoder_top_traffic_controller_ch_10_11::get_memory_files "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_10_11/sim/"]]
    set memory_files [concat $memory_files [address_decoder_top_traffic_controller_ch_4_5::get_memory_files "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_4_5/sim/"]]
    set memory_files [concat $memory_files [address_decoder_top_traffic_controller_ch_0_1::get_memory_files "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_0_1/sim/"]]
    set memory_files [concat $memory_files [address_decoder_top_mac_clk::get_memory_files "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_mac_clk/sim/"]]
    return $memory_files
  }
  
  proc get_common_design_files {USER_DEFINED_COMPILE_OPTIONS USER_DEFINED_VERILOG_COMPILE_OPTIONS USER_DEFINED_VHDL_COMPILE_OPTIONS QSYS_SIMDIR} {
    set design_files [dict create]
    set design_files [dict merge $design_files [address_decoder_top_traffic_controller_ch_2_3::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_2_3/sim/"]]
    set design_files [dict merge $design_files [address_decoder_top_mm_clock_crossing_bridge::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_mm_clock_crossing_bridge/sim/"]]
    set design_files [dict merge $design_files [address_decoder_top_multi_channel::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_multi_channel/sim/"]]
    set design_files [dict merge $design_files [address_decoder_top_master::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_master/sim/"]]
    set design_files [dict merge $design_files [address_decoder_top_csr_clk::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_csr_clk/sim/"]]
    set design_files [dict merge $design_files [address_decoder_top_traffic_controller_ch_8_9::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_8_9/sim/"]]
    set design_files [dict merge $design_files [address_decoder_top_traffic_controller_ch_6_7::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_6_7/sim/"]]
    set design_files [dict merge $design_files [address_decoder_top_traffic_controller_ch_10_11::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_10_11/sim/"]]
    set design_files [dict merge $design_files [address_decoder_top_traffic_controller_ch_4_5::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_4_5/sim/"]]
    set design_files [dict merge $design_files [address_decoder_top_traffic_controller_ch_0_1::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_0_1/sim/"]]
    set design_files [dict merge $design_files [address_decoder_top_mac_clk::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_mac_clk/sim/"]]
    return $design_files
  }
  
  proc get_design_files {USER_DEFINED_COMPILE_OPTIONS USER_DEFINED_VERILOG_COMPILE_OPTIONS USER_DEFINED_VHDL_COMPILE_OPTIONS QSYS_SIMDIR} {
    set design_files [list]
    set design_files [concat $design_files [address_decoder_top_traffic_controller_ch_2_3::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_2_3/sim/"]]
    set design_files [concat $design_files [address_decoder_top_mm_clock_crossing_bridge::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_mm_clock_crossing_bridge/sim/"]]
    set design_files [concat $design_files [address_decoder_top_multi_channel::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_multi_channel/sim/"]]
    set design_files [concat $design_files [address_decoder_top_master::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_master/sim/"]]
    set design_files [concat $design_files [address_decoder_top_csr_clk::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_csr_clk/sim/"]]
    set design_files [concat $design_files [address_decoder_top_traffic_controller_ch_8_9::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_8_9/sim/"]]
    set design_files [concat $design_files [address_decoder_top_traffic_controller_ch_6_7::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_6_7/sim/"]]
    set design_files [concat $design_files [address_decoder_top_traffic_controller_ch_10_11::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_10_11/sim/"]]
    set design_files [concat $design_files [address_decoder_top_traffic_controller_ch_4_5::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_4_5/sim/"]]
    set design_files [concat $design_files [address_decoder_top_traffic_controller_ch_0_1::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_0_1/sim/"]]
    set design_files [concat $design_files [address_decoder_top_mac_clk::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_mac_clk/sim/"]]
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_master_translator_192/sim/address_decoder_top_altera_merlin_master_translator_192_lykd4la.sv"]\"  -work altera_merlin_master_translator_192"              
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_slave_translator_191/sim/address_decoder_top_altera_merlin_slave_translator_191_x56fcki.sv"]\"  -work altera_merlin_slave_translator_191"                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_master_agent_1921/sim/address_decoder_top_altera_merlin_master_agent_1921_2inlndi.sv"]\"  -work altera_merlin_master_agent_1921"                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_slave_agent_1921/sim/address_decoder_top_altera_merlin_slave_agent_1921_b6r3djy.sv"]\"  -work altera_merlin_slave_agent_1921"                             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_slave_agent_1921/sim/altera_merlin_burst_uncompressor.sv"]\"  -work altera_merlin_slave_agent_1921"                                                       
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_avalon_sc_fifo_1931/sim/address_decoder_top_altera_avalon_sc_fifo_1931_fzgstwy.v"]\"  -work altera_avalon_sc_fifo_1931"                                              
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_router_1921/sim/address_decoder_top_altera_merlin_router_1921_ef223yq.sv"]\"  -work altera_merlin_router_1921"                                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_router_1921/sim/address_decoder_top_altera_merlin_router_1921_2jqun3q.sv"]\"  -work altera_merlin_router_1921"                                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_demultiplexer_1921/sim/address_decoder_top_altera_merlin_demultiplexer_1921_wr6dbxi.sv"]\"  -work altera_merlin_demultiplexer_1921"                       
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1922/sim/address_decoder_top_altera_merlin_multiplexer_1922_7b7u3ni.sv"]\"  -work altera_merlin_multiplexer_1922"                             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1922/sim/altera_merlin_arbitrator.sv"]\"  -work altera_merlin_multiplexer_1922"                                                               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_demultiplexer_1921/sim/address_decoder_top_altera_merlin_demultiplexer_1921_rcor4va.sv"]\"  -work altera_merlin_demultiplexer_1921"                       
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1922/sim/address_decoder_top_altera_merlin_multiplexer_1922_ctb2miq.sv"]\"  -work altera_merlin_multiplexer_1922"                             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1922/sim/altera_merlin_arbitrator.sv"]\"  -work altera_merlin_multiplexer_1922"                                                               
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_mm_interconnect_1920/sim/address_decoder_top_altera_mm_interconnect_1920_tgojdoy.v"]\"  -work altera_mm_interconnect_1920"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_router_1921/sim/address_decoder_top_altera_merlin_router_1921_uu3t7ti.sv"]\"  -work altera_merlin_router_1921"                                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_router_1921/sim/address_decoder_top_altera_merlin_router_1921_pysh7oa.sv"]\"  -work altera_merlin_router_1921"                                            
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_1921/sim/address_decoder_top_altera_merlin_traffic_limiter_altera_avalon_sc_fifo_1921_uxwrfrq.v"]\"  -work altera_merlin_traffic_limiter_1921"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_1921/sim/altera_merlin_reorder_memory.sv"]\"  -work altera_merlin_traffic_limiter_1921"                                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_1921/sim/altera_avalon_st_pipeline_base.v"]\"  -work altera_merlin_traffic_limiter_1921"                                                  
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_1921/sim/address_decoder_top_altera_merlin_traffic_limiter_1921_76whh4i.sv"]\"  -work altera_merlin_traffic_limiter_1921"                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_demultiplexer_1921/sim/address_decoder_top_altera_merlin_demultiplexer_1921_olhux2a.sv"]\"  -work altera_merlin_demultiplexer_1921"                       
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1922/sim/address_decoder_top_altera_merlin_multiplexer_1922_2wpxvxy.sv"]\"  -work altera_merlin_multiplexer_1922"                             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1922/sim/altera_merlin_arbitrator.sv"]\"  -work altera_merlin_multiplexer_1922"                                                               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_demultiplexer_1921/sim/address_decoder_top_altera_merlin_demultiplexer_1921_fbkvjkq.sv"]\"  -work altera_merlin_demultiplexer_1921"                       
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1922/sim/address_decoder_top_altera_merlin_multiplexer_1922_ns2uozi.sv"]\"  -work altera_merlin_multiplexer_1922"                             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1922/sim/altera_merlin_arbitrator.sv"]\"  -work altera_merlin_multiplexer_1922"                                                               
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_mm_interconnect_1920/sim/address_decoder_top_altera_mm_interconnect_1920_4grhzia.v"]\"  -work altera_mm_interconnect_1920"                                           
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_reset_controller_1922/sim/altera_reset_controller.v"]\"  -work altera_reset_controller_1922"                                                                         
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_reset_controller_1922/sim/altera_reset_synchronizer.v"]\"  -work altera_reset_controller_1922"                                                                       
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/address_decoder_top.v"]\"  -work address_decoder_top"                                                                                                                          
    return $design_files
  }
  
  proc get_elab_options {SIMULATOR_TOOL_BITNESS} {
    set ELAB_OPTIONS ""
    append ELAB_OPTIONS [address_decoder_top_traffic_controller_ch_2_3::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [address_decoder_top_mm_clock_crossing_bridge::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [address_decoder_top_multi_channel::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [address_decoder_top_master::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [address_decoder_top_csr_clk::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [address_decoder_top_traffic_controller_ch_8_9::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [address_decoder_top_traffic_controller_ch_6_7::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [address_decoder_top_traffic_controller_ch_10_11::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [address_decoder_top_traffic_controller_ch_4_5::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [address_decoder_top_traffic_controller_ch_0_1::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [address_decoder_top_mac_clk::get_elab_options $SIMULATOR_TOOL_BITNESS]
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ELAB_OPTIONS
  }
  
  
  proc get_sim_options {SIMULATOR_TOOL_BITNESS} {
    set SIM_OPTIONS ""
    append SIM_OPTIONS [address_decoder_top_traffic_controller_ch_2_3::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [address_decoder_top_mm_clock_crossing_bridge::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [address_decoder_top_multi_channel::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [address_decoder_top_master::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [address_decoder_top_csr_clk::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [address_decoder_top_traffic_controller_ch_8_9::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [address_decoder_top_traffic_controller_ch_6_7::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [address_decoder_top_traffic_controller_ch_10_11::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [address_decoder_top_traffic_controller_ch_4_5::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [address_decoder_top_traffic_controller_ch_0_1::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [address_decoder_top_mac_clk::get_sim_options $SIMULATOR_TOOL_BITNESS]
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $SIM_OPTIONS
  }
  
  
  proc get_env_variables {SIMULATOR_TOOL_BITNESS} {
    set ENV_VARIABLES [dict create]
    set LD_LIBRARY_PATH [dict create]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [address_decoder_top_traffic_controller_ch_2_3::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [address_decoder_top_mm_clock_crossing_bridge::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [address_decoder_top_multi_channel::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [address_decoder_top_master::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [address_decoder_top_csr_clk::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [address_decoder_top_traffic_controller_ch_8_9::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [address_decoder_top_traffic_controller_ch_6_7::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [address_decoder_top_traffic_controller_ch_10_11::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [address_decoder_top_traffic_controller_ch_4_5::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [address_decoder_top_traffic_controller_ch_0_1::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [address_decoder_top_mac_clk::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    dict set ENV_VARIABLES "LD_LIBRARY_PATH" $LD_LIBRARY_PATH
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ENV_VARIABLES
  }
  
  
  proc normalize_path {FILEPATH} {
      if {[catch { package require fileutil } err]} { 
          return $FILEPATH 
      } 
      set path [fileutil::lexnormalize [file join [pwd] $FILEPATH]]  
      if {[file pathtype $FILEPATH] eq "relative"} { 
          set path [fileutil::relative [pwd] $path] 
      } 
      return $path 
  } 
  proc get_dpi_libraries {QSYS_SIMDIR} {
    set libraries [dict create]
    set libraries [dict merge $libraries [address_decoder_top_traffic_controller_ch_2_3::get_dpi_libraries "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_2_3/sim/"]]
    set libraries [dict merge $libraries [address_decoder_top_mm_clock_crossing_bridge::get_dpi_libraries "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_mm_clock_crossing_bridge/sim/"]]
    set libraries [dict merge $libraries [address_decoder_top_multi_channel::get_dpi_libraries "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_multi_channel/sim/"]]
    set libraries [dict merge $libraries [address_decoder_top_master::get_dpi_libraries "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_master/sim/"]]
    set libraries [dict merge $libraries [address_decoder_top_csr_clk::get_dpi_libraries "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_csr_clk/sim/"]]
    set libraries [dict merge $libraries [address_decoder_top_traffic_controller_ch_8_9::get_dpi_libraries "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_8_9/sim/"]]
    set libraries [dict merge $libraries [address_decoder_top_traffic_controller_ch_6_7::get_dpi_libraries "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_6_7/sim/"]]
    set libraries [dict merge $libraries [address_decoder_top_traffic_controller_ch_10_11::get_dpi_libraries "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_10_11/sim/"]]
    set libraries [dict merge $libraries [address_decoder_top_traffic_controller_ch_4_5::get_dpi_libraries "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_4_5/sim/"]]
    set libraries [dict merge $libraries [address_decoder_top_traffic_controller_ch_0_1::get_dpi_libraries "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_traffic_controller_ch_0_1/sim/"]]
    set libraries [dict merge $libraries [address_decoder_top_mac_clk::get_dpi_libraries "$QSYS_SIMDIR/../../ip/address_decoder_top/address_decoder_top_mac_clk/sim/"]]
    
    return $libraries
  }
  
}
