module alt_usxgmii_mac (
		input  wire        csr_read,                        //                        csr.read
		input  wire        csr_write,                       //                           .write
		input  wire [31:0] csr_writedata,                   //                           .writedata
		output wire [31:0] csr_readdata,                    //                           .readdata
		output wire        csr_waitrequest,                 //                           .waitrequest
		input  wire [9:0]  csr_address,                     //                           .address
		input  wire        tx_312_5_clk,                    //               tx_312_5_clk.clk
		input  wire        tx_156_25_clk,                   //              tx_156_25_clk.clk
		input  wire        rx_312_5_clk,                    //               rx_312_5_clk.clk
		input  wire        rx_156_25_clk,                   //              rx_156_25_clk.clk
		input  wire        csr_clk,                         //                    csr_clk.clk
		input  wire        csr_rst_n,                       //                  csr_rst_n.reset_n
		input  wire        tx_rst_n,                        //                   tx_rst_n.reset_n
		input  wire        rx_rst_n,                        //                   rx_rst_n.reset_n
		output wire        xgmii_tx_valid,                  //             xgmii_tx_valid.out
		input  wire        xgmii_rx_valid,                  //             xgmii_rx_valid.in
		input  wire [2:0]  speed_sel,                       //                  speed_sel.export
		input  wire        avalon_st_tx_startofpacket,      //               avalon_st_tx.startofpacket
		input  wire        avalon_st_tx_endofpacket,        //                           .endofpacket
		input  wire        avalon_st_tx_valid,              //                           .valid
		input  wire [63:0] avalon_st_tx_data,               //                           .data
		input  wire [2:0]  avalon_st_tx_empty,              //                           .empty
		input  wire        avalon_st_tx_error,              //                           .error
		output wire        avalon_st_tx_ready,              //                           .ready
		input  wire [1:0]  avalon_st_pause_data,            //            avalon_st_pause.data
		output wire [31:0] xgmii_tx_data,                   //              xgmii_tx_data.export
		output wire [3:0]  xgmii_tx_control,                //           xgmii_tx_control.export
		output wire        avalon_st_txstatus_valid,        //         avalon_st_txstatus.valid
		output wire [39:0] avalon_st_txstatus_data,         //                           .data
		output wire [6:0]  avalon_st_txstatus_error,        //                           .error
		input  wire [31:0] xgmii_rx_data,                   //              xgmii_rx_data.export
		input  wire [3:0]  xgmii_rx_control,                //           xgmii_rx_control.export
		output wire [1:0]  link_fault_status_xgmii_rx_data, // link_fault_status_xgmii_rx.data
		output wire [63:0] avalon_st_rx_data,               //               avalon_st_rx.data
		output wire        avalon_st_rx_startofpacket,      //                           .startofpacket
		output wire        avalon_st_rx_valid,              //                           .valid
		output wire [2:0]  avalon_st_rx_empty,              //                           .empty
		output wire [5:0]  avalon_st_rx_error,              //                           .error
		input  wire        avalon_st_rx_ready,              //                           .ready
		output wire        avalon_st_rx_endofpacket,        //                           .endofpacket
		output wire        avalon_st_rxstatus_valid,        //         avalon_st_rxstatus.valid
		output wire [39:0] avalon_st_rxstatus_data,         //                           .data
		output wire [6:0]  avalon_st_rxstatus_error         //                           .error
	);
endmodule

