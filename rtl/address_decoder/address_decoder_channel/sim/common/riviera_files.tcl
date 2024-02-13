source [file join [file dirname [info script]] ./../../../ip/address_decoder_channel/address_decoder_channel_csr_clk/sim/common/riviera_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/address_decoder_channel/address_decoder_channel_xcvr_rcfg/sim/common/riviera_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/address_decoder_channel/address_decoder_channel_mac/sim/common/riviera_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/address_decoder_channel/address_decoder_channel_master/sim/common/riviera_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/address_decoder_channel/address_decoder_channel_phy/sim/common/riviera_files.tcl]

namespace eval address_decoder_channel {
  proc get_design_libraries {} {
    set libraries [dict create]
    set libraries [dict merge $libraries [address_decoder_channel_csr_clk::get_design_libraries]]
    set libraries [dict merge $libraries [address_decoder_channel_xcvr_rcfg::get_design_libraries]]
    set libraries [dict merge $libraries [address_decoder_channel_mac::get_design_libraries]]
    set libraries [dict merge $libraries [address_decoder_channel_master::get_design_libraries]]
    set libraries [dict merge $libraries [address_decoder_channel_phy::get_design_libraries]]
    dict set libraries altera_merlin_master_translator_192 1
    dict set libraries altera_merlin_slave_translator_191  1
    dict set libraries altera_merlin_master_agent_1921     1
    dict set libraries altera_merlin_slave_agent_1921      1
    dict set libraries altera_avalon_sc_fifo_1931          1
    dict set libraries altera_merlin_router_1921           1
    dict set libraries altera_merlin_traffic_limiter_1921  1
    dict set libraries altera_merlin_demultiplexer_1921    1
    dict set libraries altera_merlin_multiplexer_1922      1
    dict set libraries altera_mm_interconnect_1920         1
    dict set libraries altera_reset_controller_1922        1
    dict set libraries address_decoder_channel             1
    return $libraries
  }
  
  proc get_memory_files {QSYS_SIMDIR} {
    set memory_files [list]
    set memory_files [concat $memory_files [address_decoder_channel_csr_clk::get_memory_files "$QSYS_SIMDIR/../../ip/address_decoder_channel/address_decoder_channel_csr_clk/sim/"]]
    set memory_files [concat $memory_files [address_decoder_channel_xcvr_rcfg::get_memory_files "$QSYS_SIMDIR/../../ip/address_decoder_channel/address_decoder_channel_xcvr_rcfg/sim/"]]
    set memory_files [concat $memory_files [address_decoder_channel_mac::get_memory_files "$QSYS_SIMDIR/../../ip/address_decoder_channel/address_decoder_channel_mac/sim/"]]
    set memory_files [concat $memory_files [address_decoder_channel_master::get_memory_files "$QSYS_SIMDIR/../../ip/address_decoder_channel/address_decoder_channel_master/sim/"]]
    set memory_files [concat $memory_files [address_decoder_channel_phy::get_memory_files "$QSYS_SIMDIR/../../ip/address_decoder_channel/address_decoder_channel_phy/sim/"]]
    return $memory_files
  }
  
  proc get_common_design_files {USER_DEFINED_COMPILE_OPTIONS USER_DEFINED_VERILOG_COMPILE_OPTIONS USER_DEFINED_VHDL_COMPILE_OPTIONS QSYS_SIMDIR} {
    set design_files [dict create]
    set design_files [dict merge $design_files [address_decoder_channel_csr_clk::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_channel/address_decoder_channel_csr_clk/sim/"]]
    set design_files [dict merge $design_files [address_decoder_channel_xcvr_rcfg::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_channel/address_decoder_channel_xcvr_rcfg/sim/"]]
    set design_files [dict merge $design_files [address_decoder_channel_mac::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_channel/address_decoder_channel_mac/sim/"]]
    set design_files [dict merge $design_files [address_decoder_channel_master::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_channel/address_decoder_channel_master/sim/"]]
    set design_files [dict merge $design_files [address_decoder_channel_phy::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_channel/address_decoder_channel_phy/sim/"]]
    return $design_files
  }
  
  proc get_design_files {USER_DEFINED_COMPILE_OPTIONS USER_DEFINED_VERILOG_COMPILE_OPTIONS USER_DEFINED_VHDL_COMPILE_OPTIONS QSYS_SIMDIR} {
    set design_files [list]
    set design_files [concat $design_files [address_decoder_channel_csr_clk::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_channel/address_decoder_channel_csr_clk/sim/"]]
    set design_files [concat $design_files [address_decoder_channel_xcvr_rcfg::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_channel/address_decoder_channel_xcvr_rcfg/sim/"]]
    set design_files [concat $design_files [address_decoder_channel_mac::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_channel/address_decoder_channel_mac/sim/"]]
    set design_files [concat $design_files [address_decoder_channel_master::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_channel/address_decoder_channel_master/sim/"]]
    set design_files [concat $design_files [address_decoder_channel_phy::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decoder_channel/address_decoder_channel_phy/sim/"]]
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_master_translator_192/sim/address_decoder_channel_altera_merlin_master_translator_192_lykd4la.sv"]\"  -work altera_merlin_master_translator_192"                       
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_slave_translator_191/sim/address_decoder_channel_altera_merlin_slave_translator_191_x56fcki.sv"]\"  -work altera_merlin_slave_translator_191"                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_master_agent_1921/sim/address_decoder_channel_altera_merlin_master_agent_1921_2inlndi.sv"]\"  -work altera_merlin_master_agent_1921"                                   
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_slave_agent_1921/sim/address_decoder_channel_altera_merlin_slave_agent_1921_b6r3djy.sv"]\"  -work altera_merlin_slave_agent_1921"                                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_slave_agent_1921/sim/altera_merlin_burst_uncompressor.sv"]\"  -work altera_merlin_slave_agent_1921"                                                                    
    lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_avalon_sc_fifo_1931/sim/address_decoder_channel_altera_avalon_sc_fifo_1931_fzgstwy.v"]\"  -work altera_avalon_sc_fifo_1931"                                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_router_1921/sim/address_decoder_channel_altera_merlin_router_1921_6gcyspq.sv"]\"  -work altera_merlin_router_1921"                                                     
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_router_1921/sim/address_decoder_channel_altera_merlin_router_1921_63kec7y.sv"]\"  -work altera_merlin_router_1921"                                                     
    lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_1921/sim/address_decoder_channel_altera_merlin_traffic_limiter_altera_avalon_sc_fifo_1921_uxwrfrq.v"]\"  -work altera_merlin_traffic_limiter_1921"
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_1921/sim/altera_merlin_reorder_memory.sv"]\"  -work altera_merlin_traffic_limiter_1921"                                                                
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_1921/sim/altera_avalon_st_pipeline_base.v"]\"  -work altera_merlin_traffic_limiter_1921"                                                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_1921/sim/address_decoder_channel_altera_merlin_traffic_limiter_1921_76whh4i.sv"]\"  -work altera_merlin_traffic_limiter_1921"                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_demultiplexer_1921/sim/address_decoder_channel_altera_merlin_demultiplexer_1921_kx22g6a.sv"]\"  -work altera_merlin_demultiplexer_1921"                                
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1922/sim/address_decoder_channel_altera_merlin_multiplexer_1922_ewnx3di.sv"]\"  -work altera_merlin_multiplexer_1922"                                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1922/sim/altera_merlin_arbitrator.sv"]\"  -work altera_merlin_multiplexer_1922"                                                                            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_demultiplexer_1921/sim/address_decoder_channel_altera_merlin_demultiplexer_1921_gfo52ay.sv"]\"  -work altera_merlin_demultiplexer_1921"                                
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1922/sim/address_decoder_channel_altera_merlin_multiplexer_1922_logllei.sv"]\"  -work altera_merlin_multiplexer_1922"                                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1922/sim/altera_merlin_arbitrator.sv"]\"  -work altera_merlin_multiplexer_1922"                                                                            
    lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_mm_interconnect_1920/sim/address_decoder_channel_altera_mm_interconnect_1920_gh7ktvq.v"]\"  -work altera_mm_interconnect_1920"                                           
    lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_reset_controller_1922/sim/altera_reset_controller.v"]\"  -work altera_reset_controller_1922"                                                                             
    lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_reset_controller_1922/sim/altera_reset_synchronizer.v"]\"  -work altera_reset_controller_1922"                                                                           
    lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/address_decoder_channel.v"]\"  -work address_decoder_channel"                                                                                                                      
    return $design_files
  }
  
  proc get_elab_options {SIMULATOR_TOOL_BITNESS} {
    set ELAB_OPTIONS ""
    append ELAB_OPTIONS [address_decoder_channel_csr_clk::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [address_decoder_channel_xcvr_rcfg::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [address_decoder_channel_mac::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [address_decoder_channel_master::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [address_decoder_channel_phy::get_elab_options $SIMULATOR_TOOL_BITNESS]
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ELAB_OPTIONS
  }
  
  
  proc get_sim_options {SIMULATOR_TOOL_BITNESS} {
    set SIM_OPTIONS ""
    append SIM_OPTIONS [address_decoder_channel_csr_clk::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [address_decoder_channel_xcvr_rcfg::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [address_decoder_channel_mac::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [address_decoder_channel_master::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [address_decoder_channel_phy::get_sim_options $SIMULATOR_TOOL_BITNESS]
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $SIM_OPTIONS
  }
  
  
  proc get_env_variables {SIMULATOR_TOOL_BITNESS} {
    set ENV_VARIABLES [dict create]
    set LD_LIBRARY_PATH [dict create]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [address_decoder_channel_csr_clk::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [address_decoder_channel_xcvr_rcfg::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [address_decoder_channel_mac::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [address_decoder_channel_master::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [address_decoder_channel_phy::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
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
    set libraries [dict merge $libraries [address_decoder_channel_csr_clk::get_dpi_libraries "$QSYS_SIMDIR/../../ip/address_decoder_channel/address_decoder_channel_csr_clk/sim/"]]
    set libraries [dict merge $libraries [address_decoder_channel_xcvr_rcfg::get_dpi_libraries "$QSYS_SIMDIR/../../ip/address_decoder_channel/address_decoder_channel_xcvr_rcfg/sim/"]]
    set libraries [dict merge $libraries [address_decoder_channel_mac::get_dpi_libraries "$QSYS_SIMDIR/../../ip/address_decoder_channel/address_decoder_channel_mac/sim/"]]
    set libraries [dict merge $libraries [address_decoder_channel_master::get_dpi_libraries "$QSYS_SIMDIR/../../ip/address_decoder_channel/address_decoder_channel_master/sim/"]]
    set libraries [dict merge $libraries [address_decoder_channel_phy::get_dpi_libraries "$QSYS_SIMDIR/../../ip/address_decoder_channel/address_decoder_channel_phy/sim/"]]
    
    return $libraries
  }
  
}
