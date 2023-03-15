// alt_mge_core_pll.v

// Generated using ACDS version 18.1 222

`timescale 1 ps / 1 ps
module alt_mge_core_pll (
		input  wire  pll_refclk0,   //   pll_refclk0.clk
		input  wire  pll_powerdown, // pll_powerdown.pll_powerdown
		output wire  pll_locked,    //    pll_locked.pll_locked
		output wire  outclk0,       //       outclk0.clk
		output wire  outclk1,       //       outclk1.clk
		output wire  outclk2,       //       outclk2.clk
		output wire  outclk3,       //       outclk3.clk
		output wire  pll_cal_busy   //  pll_cal_busy.pll_cal_busy
	);

	altera_xcvr_fpll_a10 #(
		.enable_pll_reconfig                                                          (0),
		.rcfg_jtag_enable                                                             (0),
		.rcfg_separate_avmm_busy                                                      (0),
		.dbg_embedded_debug_enable                                                    (0),
		.dbg_capability_reg_enable                                                    (0),
		.dbg_user_identifier                                                          (0),
		.dbg_stat_soft_logic_enable                                                   (0),
		.dbg_ctrl_soft_logic_enable                                                   (0),
		.cmu_fpll_silicon_rev                                                         ("20nm1"),
		.cmu_fpll_is_otn                                                              ("false"),
		.cmu_fpll_is_sdi                                                              ("false"),
		.cmu_fpll_f_max_vco                                                           ("14150000000"),
		.cmu_fpll_f_min_vco                                                           ("6000000000"),
		.cmu_fpll_feedback                                                            ("normal"),
		.cmu_fpll_fpll_cas_out_enable                                                 ("fpll_cas_out_disable"),
		.cmu_fpll_fpll_hclk_out_enable                                                ("fpll_hclk_out_disable"),
		.cmu_fpll_fpll_iqtxrxclk_out_enable                                           ("fpll_iqtxrxclk_out_disable"),
		.cmu_fpll_l_counter                                                           (1),
		.cmu_fpll_m_counter                                                           (64),
		.cmu_fpll_n_counter                                                           (11),
		.cmu_fpll_out_freq_hz                                                         ("0 hz"),
		.cmu_fpll_out_freq                                                            ("000000000000000000000000000000000000"),
		.cmu_fpll_pll_vco_freq_band_0                                                 ("pll_freq_band0"),
		.cmu_fpll_pll_vco_freq_band_1                                                 ("pll_freq_band0_1"),
		.cmu_fpll_primary_use                                                         ("core"),
		.cmu_fpll_prot_mode                                                           ("basic_tx"),
		.cmu_fpll_reference_clock_frequency_scratch                                   ("0 hz"),
		.cmu_fpll_side                                                                ("side_unknown"),
		.cmu_fpll_top_or_bottom                                                       ("tb_unknown"),
		.cmu_fpll_vco_freq_hz                                                         ("7500000000"),
		.cmu_fpll_vco_freq                                                            ("000110111111000010001110101100000000"),
		.cmu_fpll_pll_bw_mode                                                         ("low_bw"),
		.cmu_fpll_datarate                                                            ("0 Mbps"),
		.cmu_fpll_pll_cmu_rstn_value                                                  ("true"),
		.cmu_fpll_pll_lpf_rstn_value                                                  ("lpf_normal"),
		.cmu_fpll_pll_ppm_clk0_src                                                    ("ppm_clk0_vss"),
		.cmu_fpll_pll_ppm_clk1_src                                                    ("ppm_clk1_vss"),
		.cmu_fpll_pll_rstn_override                                                   ("false"),
		.cmu_fpll_pll_op_mode                                                         ("false"),
		.cmu_fpll_pll_optimal                                                         ("true"),
		.cmu_fpll_is_pa_core                                                          ("false"),
		.cmu_fpll_pll_powerdown_mode                                                  ("false"),
		.cmu_fpll_pll_sup_mode                                                        ("user_mode"),
		.cmu_fpll_pll_c0_pllcout_enable                                               ("true"),
		.cmu_fpll_pll_c_counter_0                                                     (12),
		.cmu_fpll_pll_c_counter_0_min_tco_enable                                      ("true"),
		.cmu_fpll_pll_c_counter_0_in_src                                              ("m_cnt_in_src_ph_mux_clk"),
		.cmu_fpll_pll_c_counter_0_ph_mux_prst                                         (0),
		.cmu_fpll_pll_c_counter_0_prst                                                (1),
		.cmu_fpll_pll_c_counter_0_coarse_dly                                          ("0 ps"),
		.cmu_fpll_pll_c_counter_0_fine_dly                                            ("0 ps"),
		.cmu_fpll_pll_c1_pllcout_enable                                               ("true"),
		.cmu_fpll_pll_c_counter_1                                                     (6),
		.cmu_fpll_pll_c_counter_1_min_tco_enable                                      ("true"),
		.cmu_fpll_pll_c_counter_1_in_src                                              ("m_cnt_in_src_ph_mux_clk"),
		.cmu_fpll_pll_c_counter_1_ph_mux_prst                                         (0),
		.cmu_fpll_pll_c_counter_1_prst                                                (1),
		.cmu_fpll_pll_c_counter_1_coarse_dly                                          ("0 ps"),
		.cmu_fpll_pll_c_counter_1_fine_dly                                            ("0 ps"),
		.cmu_fpll_pll_c2_pllcout_enable                                               ("true"),
		.cmu_fpll_pll_c_counter_2                                                     (6),
		.cmu_fpll_pll_c_counter_2_min_tco_enable                                      ("true"),
		.cmu_fpll_pll_c_counter_2_in_src                                              ("m_cnt_in_src_ph_mux_clk"),
		.cmu_fpll_pll_c_counter_2_ph_mux_prst                                         (0),
		.cmu_fpll_pll_c_counter_2_prst                                                (1),
		.cmu_fpll_pll_c_counter_2_coarse_dly                                          ("0 ps"),
		.cmu_fpll_pll_c_counter_2_fine_dly                                            ("0 ps"),
		.cmu_fpll_pll_c3_pllcout_enable                                               ("true"),
		.cmu_fpll_pll_c_counter_3                                                     (4),
		.cmu_fpll_pll_c_counter_3_min_tco_enable                                      ("true"),
		.cmu_fpll_pll_c_counter_3_in_src                                              ("m_cnt_in_src_ph_mux_clk"),
		.cmu_fpll_pll_c_counter_3_ph_mux_prst                                         (0),
		.cmu_fpll_pll_c_counter_3_prst                                                (1),
		.cmu_fpll_pll_c_counter_3_coarse_dly                                          ("0 ps"),
		.cmu_fpll_pll_c_counter_3_fine_dly                                            ("0 ps"),
		.cmu_fpll_pll_atb                                                             ("atb_selectdisable"),
		.cmu_fpll_pll_fbclk_mux_1                                                     ("pll_fbclk_mux_1_glb"),
		.cmu_fpll_pll_fbclk_mux_2                                                     ("pll_fbclk_mux_2_m_cnt"),
		.cmu_fpll_pll_iqclk_mux_sel                                                   ("power_down"),
		.cmu_fpll_pll_cp_compensation                                                 ("true"),
		.cmu_fpll_pll_cp_current_setting                                              ("cp_current_setting22"),
		.cmu_fpll_pll_cp_testmode                                                     ("cp_normal"),
		.cmu_fpll_pll_cp_lf_3rd_pole_freq                                             ("lf_3rd_pole_setting0"),
		.cmu_fpll_pll_lf_cbig                                                         ("lf_cbig_setting4"),
		.cmu_fpll_pll_cp_lf_order                                                     ("lf_2nd_order"),
		.cmu_fpll_pll_lf_resistance                                                   ("lf_res_setting1"),
		.cmu_fpll_pll_lf_ripplecap                                                    ("lf_no_ripple"),
		.cmu_fpll_pll_vco_ph0_en                                                      ("true"),
		.cmu_fpll_pll_vco_ph0_value                                                   ("pll_vco_ph0_vss"),
		.cmu_fpll_pll_vco_ph1_en                                                      ("true"),
		.cmu_fpll_pll_vco_ph1_value                                                   ("pll_vco_ph1_vss"),
		.cmu_fpll_pll_vco_ph2_en                                                      ("true"),
		.cmu_fpll_pll_vco_ph2_value                                                   ("pll_vco_ph2_vss"),
		.cmu_fpll_pll_vco_ph3_en                                                      ("true"),
		.cmu_fpll_pll_vco_ph3_value                                                   ("pll_vco_ph3_vss"),
		.cmu_fpll_pll_dsm_mode                                                        ("dsm_mode_integer"),
		.cmu_fpll_pll_dsm_out_sel                                                     ("pll_dsm_disable"),
		.cmu_fpll_pll_dsm_ecn_bypass                                                  ("false"),
		.cmu_fpll_pll_dsm_ecn_test_en                                                 ("false"),
		.cmu_fpll_pll_dsm_fractional_division                                         ("1"),
		.cmu_fpll_pll_dsm_fractional_value_ready                                      ("pll_k_ready"),
		.cmu_fpll_pll_l_counter_bypass                                                ("false"),
		.cmu_fpll_pll_l_counter                                                       (1),
		.cmu_fpll_pll_l_counter_enable                                                ("false"),
		.cmu_fpll_pll_lock_fltr_cfg                                                   (25),
		.cmu_fpll_pll_lock_fltr_test                                                  ("pll_lock_fltr_nrm"),
		.cmu_fpll_pll_unlock_fltr_cfg                                                 (2),
		.cmu_fpll_pll_m_counter                                                       (64),
		.cmu_fpll_pll_m_counter_min_tco_enable                                        ("false"),
		.cmu_fpll_pll_m_counter_in_src                                                ("m_cnt_in_src_ph_mux_clk"),
		.cmu_fpll_pll_n_counter                                                       (11),
		.cmu_fpll_pll_tclk_mux_en                                                     ("false"),
		.cmu_fpll_pll_tclk_sel                                                        ("pll_tclk_m_src"),
		.cmu_fpll_pll_dprio_base_addr                                                 (256),
		.cmu_fpll_pll_dprio_broadcast_en                                              ("false"),
		.cmu_fpll_pll_dprio_cvp_inter_sel                                             ("false"),
		.cmu_fpll_pll_dprio_force_inter_sel                                           ("false"),
		.cmu_fpll_pll_dprio_power_iso_en                                              ("false"),
		.cmu_fpll_pll_dprio_status_select                                             ("dprio_normal_status"),
		.cmu_fpll_pll_extra_csr                                                       (0),
		.cmu_fpll_pll_nreset_invert                                                   ("false"),
		.cmu_fpll_pll_ctrl_override_setting                                           ("true"),
		.cmu_fpll_pll_enable                                                          ("true"),
		.cmu_fpll_pll_test_enable                                                     ("false"),
		.cmu_fpll_pll_ctrl_plniotri_override                                          ("false"),
		.cmu_fpll_pll_vccr_pd_en                                                      ("true"),
		.cmu_fpll_bw_sel                                                              ("low"),
		.cmu_fpll_compensation_mode                                                   ("direct"),
		.cmu_fpll_duty_cycle_0                                                        (50),
		.cmu_fpll_duty_cycle_1                                                        (50),
		.cmu_fpll_duty_cycle_2                                                        (50),
		.cmu_fpll_duty_cycle_3                                                        (50),
		.cmu_fpll_hssi_output_clock_frequency                                         ("0 ps"),
		.cmu_fpll_is_cascaded_pll                                                     ("false"),
		.cmu_fpll_output_clock_frequency_0                                            ("156.25 MHz"),
		.cmu_fpll_output_clock_frequency_1                                            ("312.5 MHz"),
		.cmu_fpll_output_clock_frequency_2                                            ("312.5 MHz"),
		.cmu_fpll_output_clock_frequency_3                                            ("468.75 MHz"),
		.cmu_fpll_phase_shift_0                                                       ("0.0 ps"),
		.cmu_fpll_phase_shift_1                                                       ("0.0 ps"),
		.cmu_fpll_phase_shift_2                                                       ("0.0 ps"),
		.cmu_fpll_phase_shift_3                                                       ("0.0 ps"),
		.cmu_fpll_reference_clock_frequency                                           ("644.53125 MHz"),
		.cmu_fpll_vco_frequency                                                       ("7500.0 MHz"),
		.cmu_fpll_cgb_div                                                             (1),
		.cmu_fpll_pma_width                                                           (64),
		.cmu_fpll_f_out_c3_hz                                                         ("0 hz"),
		.cmu_fpll_f_out_c1_hz                                                         ("0 hz"),
		.cmu_fpll_f_out_c0_hz                                                         ("0 hz"),
		.cmu_fpll_f_out_c2_hz                                                         ("0 hz"),
		.cmu_fpll_f_out_c3                                                            ("000000011011111100001000111010110000"),
		.cmu_fpll_f_out_c1                                                            ("000000010010101000000101111100100000"),
		.cmu_fpll_f_out_c0                                                            ("000000001001010100000010111110010000"),
		.cmu_fpll_f_out_c2                                                            ("000000010010101000000101111100100000"),
		.cmu_fpll_initial_settings                                                    ("true"),
		.cmu_fpll_m_counter_c2                                                        (1),
		.cmu_fpll_m_counter_c3                                                        (1),
		.cmu_fpll_m_counter_c0                                                        (1),
		.cmu_fpll_m_counter_c1                                                        (1),
		.cmu_fpll_pfd_freq                                                            ("000000000011011111100001000111010110"),
		.cmu_fpll_pll_vco_freq_band_0_fix_high                                        ("pll_vco_freq_band_0_fix_high_0"),
		.cmu_fpll_pll_vco_freq_band_1_fix_high                                        ("pll_vco_freq_band_1_fix_high_0"),
		.cmu_fpll_xpm_cmu_fpll_core_cal_vco_count_length                              ("sel_8b_count"),
		.cmu_fpll_xpm_cmu_fpll_core_pfd_pulse_width                                   ("pulse_width_setting0"),
		.cmu_fpll_pll_vco_freq_band_1_dyn_high_bits                                   (0),
		.cmu_fpll_set_fpll_input_freq_range                                           (0),
		.cmu_fpll_pll_vco_freq_band_0_fix                                             (1),
		.cmu_fpll_pll_vco_freq_band_0_dyn_high_bits                                   (0),
		.cmu_fpll_pll_vco_freq_band_1_fix                                             (1),
		.cmu_fpll_xpm_cmu_fpll_core_xpm_cpvco_fpll_xpm_chgpmplf_fpll_cp_current_boost ("normal_setting"),
		.cmu_fpll_xpm_cmu_fpll_core_fpll_refclk_source                                ("normal_refclk"),
		.cmu_fpll_pll_vco_freq_band_0_dyn_low_bits                                    (0),
		.cmu_fpll_xpm_cmu_fpll_core_pfd_delay_compensation                            ("normal_delay"),
		.cmu_fpll_pll_vco_freq_band_1_dyn_low_bits                                    (0),
		.cmu_fpll_refclk_select_mux_pll_clk_sel_override                              ("normal"),
		.cmu_fpll_refclk_select_mux_pll_clk_sel_override_value                        ("select_clk0"),
		.cmu_fpll_refclk_select_mux_pll_auto_clk_sw_en                                ("false"),
		.cmu_fpll_refclk_select_mux_pll_clk_loss_edge                                 ("pll_clk_loss_both_edges"),
		.cmu_fpll_refclk_select_mux_pll_clk_loss_sw_en                                ("false"),
		.cmu_fpll_refclk_select_mux_pll_clk_sw_dly                                    (0),
		.cmu_fpll_refclk_select_mux_pll_manu_clk_sw_en                                ("false"),
		.cmu_fpll_refclk_select_mux_pll_sw_refclk_src                                 ("pll_sw_refclk_src_clk_0"),
		.cmu_fpll_refclk_select_mux_silicon_rev                                       ("20nm5es"),
		.cmu_fpll_refclk_select_mux_refclk_select0                                    ("lvpecl"),
		.cmu_fpll_refclk_select_mux_refclk_select1                                    ("ref_iqclk0"),
		.cmu_fpll_refclk_select_mux_mux0_inclk0_logical_to_physical_mapping           ("lvpecl"),
		.cmu_fpll_refclk_select_mux_mux0_inclk1_logical_to_physical_mapping           ("power_down"),
		.cmu_fpll_refclk_select_mux_mux0_inclk2_logical_to_physical_mapping           ("power_down"),
		.cmu_fpll_refclk_select_mux_mux0_inclk3_logical_to_physical_mapping           ("power_down"),
		.cmu_fpll_refclk_select_mux_mux0_inclk4_logical_to_physical_mapping           ("power_down"),
		.cmu_fpll_refclk_select_mux_mux1_inclk0_logical_to_physical_mapping           ("lvpecl"),
		.cmu_fpll_refclk_select_mux_mux1_inclk1_logical_to_physical_mapping           ("power_down"),
		.cmu_fpll_refclk_select_mux_mux1_inclk2_logical_to_physical_mapping           ("power_down"),
		.cmu_fpll_refclk_select_mux_mux1_inclk3_logical_to_physical_mapping           ("power_down"),
		.cmu_fpll_refclk_select_mux_mux1_inclk4_logical_to_physical_mapping           ("power_down"),
		.enable_analog_resets                                                         (0),
		.hip_cal_en                                                                   ("disable"),
		.cmu_fpll_reconfig_en                                                         ("0"),
		.cmu_fpll_dps_en                                                              ("false"),
		.cmu_fpll_calibration_en                                                      ("enable"),
		.cmu_fpll_refclk_freq                                                         ("000000100110011010101100010000110010"),
		.enable_mcgb                                                                  (0),
		.enable_mcgb_debug_ports_parameters                                           (0),
		.hssi_pma_cgb_master_prot_mode                                                ("basic_tx"),
		.hssi_pma_cgb_master_silicon_rev                                              ("20nm1"),
		.hssi_pma_cgb_master_x1_div_m_sel                                             ("divbypass"),
		.hssi_pma_cgb_master_cgb_enable_iqtxrxclk                                     ("disable_iqtxrxclk"),
		.hssi_pma_cgb_master_ser_mode                                                 ("sixty_four_bit"),
		.hssi_pma_cgb_master_datarate                                                 ("0 bps"),
		.hssi_pma_cgb_master_cgb_power_down                                           ("normal_cgb"),
		.hssi_pma_cgb_master_observe_cgb_clocks                                       ("observe_nothing"),
		.hssi_pma_cgb_master_op_mode                                                  ("enabled"),
		.hssi_pma_cgb_master_tx_ucontrol_reset_pcie                                   ("pcscorehip_controls_mcgb"),
		.hssi_pma_cgb_master_vccdreg_output                                           ("vccdreg_nominal"),
		.hssi_pma_cgb_master_input_select                                             ("fpll_top"),
		.hssi_pma_cgb_master_input_select_gen3                                        ("unused")
	) xcvr_fpll_a10_0 (
		.pll_refclk0              (pll_refclk0),                          //   input,  width = 1,   pll_refclk0.clk
		.pll_powerdown            (pll_powerdown),                        //   input,  width = 1, pll_powerdown.pll_powerdown
		.pll_locked               (pll_locked),                           //  output,  width = 1,    pll_locked.pll_locked
		.outclk0                  (outclk0),                              //  output,  width = 1,       outclk0.clk
		.outclk1                  (outclk1),                              //  output,  width = 1,       outclk1.clk
		.outclk2                  (outclk2),                              //  output,  width = 1,       outclk2.clk
		.outclk3                  (outclk3),                              //  output,  width = 1,       outclk3.clk
		.pll_cal_busy             (pll_cal_busy),                         //  output,  width = 1,  pll_cal_busy.pll_cal_busy
		.pll_refclk1              (1'b0),                                 // (terminated),                           
		.pll_refclk2              (1'b0),                                 // (terminated),                           
		.pll_refclk3              (1'b0),                                 // (terminated),                           
		.pll_refclk4              (1'b0),                                 // (terminated),                           
		.tx_serial_clk            (),                                     // (terminated),                           
		.pll_pcie_clk             (),                                     // (terminated),                           
		.fpll_to_fpll_cascade_clk (),                                     // (terminated),                           
		.hssi_pll_cascade_clk     (),                                     // (terminated),                           
		.atx_to_fpll_cascade_clk  (1'b0),                                 // (terminated),                           
		.reconfig_clk0            (1'b0),                                 // (terminated),                           
		.reconfig_reset0          (1'b0),                                 // (terminated),                           
		.reconfig_write0          (1'b0),                                 // (terminated),                           
		.reconfig_read0           (1'b0),                                 // (terminated),                           
		.reconfig_address0        (10'b0000000000),                       // (terminated),                           
		.reconfig_writedata0      (32'b00000000000000000000000000000000), // (terminated),                           
		.reconfig_readdata0       (),                                     // (terminated),                           
		.reconfig_waitrequest0    (),                                     // (terminated),                           
		.avmm_busy0               (),                                     // (terminated),                           
		.hip_cal_done             (),                                     // (terminated),                           
		.phase_reset              (1'b0),                                 // (terminated),                           
		.phase_en                 (1'b0),                                 // (terminated),                           
		.updn                     (1'b0),                                 // (terminated),                           
		.cntsel                   (4'b0000),                              // (terminated),                           
		.phase_done               (),                                     // (terminated),                           
		.extswitch                (1'b0),                                 // (terminated),                           
		.activeclk                (),                                     // (terminated),                           
		.clkbad                   (),                                     // (terminated),                           
		.clklow                   (),                                     // (terminated),                           
		.fref                     (),                                     // (terminated),                           
		.mcgb_rst                 (1'b0),                                 // (terminated),                           
		.mcgb_aux_clk0            (1'b0),                                 // (terminated),                           
		.mcgb_aux_clk1            (1'b0),                                 // (terminated),                           
		.mcgb_aux_clk2            (1'b0),                                 // (terminated),                           
		.tx_bonding_clocks        (),                                     // (terminated),                           
		.mcgb_serial_clk          (),                                     // (terminated),                           
		.pcie_sw                  (2'b00),                                // (terminated),                           
		.pcie_sw_done             (),                                     // (terminated),                           
		.reconfig_clk1            (1'b0),                                 // (terminated),                           
		.reconfig_reset1          (1'b0),                                 // (terminated),                           
		.reconfig_write1          (1'b0),                                 // (terminated),                           
		.reconfig_read1           (1'b0),                                 // (terminated),                           
		.reconfig_address1        (10'b0000000000),                       // (terminated),                           
		.reconfig_writedata1      (32'b00000000000000000000000000000000), // (terminated),                           
		.reconfig_readdata1       (),                                     // (terminated),                           
		.reconfig_waitrequest1    (),                                     // (terminated),                           
		.mcgb_cal_busy            (),                                     // (terminated),                           
		.mcgb_hip_cal_done        ()                                      // (terminated),                           
	);

endmodule
