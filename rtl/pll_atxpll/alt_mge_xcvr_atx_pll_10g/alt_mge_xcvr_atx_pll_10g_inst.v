	alt_mge_xcvr_atx_pll_10g u0 (
		.pll_powerdown   (_connected_to_pll_powerdown_),   //   input,  width = 1,   pll_powerdown.pll_powerdown
		.pll_refclk0     (_connected_to_pll_refclk0_),     //   input,  width = 1,     pll_refclk0.clk
		.tx_serial_clk   (_connected_to_tx_serial_clk_),   //  output,  width = 1,   tx_serial_clk.clk
		.pll_locked      (_connected_to_pll_locked_),      //  output,  width = 1,      pll_locked.pll_locked
		.pll_cal_busy    (_connected_to_pll_cal_busy_),    //  output,  width = 1,    pll_cal_busy.pll_cal_busy
		.mcgb_rst        (_connected_to_mcgb_rst_),        //   input,  width = 1,        mcgb_rst.mcgb_rst
		.mcgb_serial_clk (_connected_to_mcgb_serial_clk_)  //  output,  width = 1, mcgb_serial_clk.clk
	);

