	component alt_usxgmii_mac is
		port (
			csr_read                        : in  std_logic                     := 'X';             -- read
			csr_write                       : in  std_logic                     := 'X';             -- write
			csr_writedata                   : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			csr_readdata                    : out std_logic_vector(31 downto 0);                    -- readdata
			csr_waitrequest                 : out std_logic;                                        -- waitrequest
			csr_address                     : in  std_logic_vector(9 downto 0)  := (others => 'X'); -- address
			tx_312_5_clk                    : in  std_logic                     := 'X';             -- clk
			tx_156_25_clk                   : in  std_logic                     := 'X';             -- clk
			rx_312_5_clk                    : in  std_logic                     := 'X';             -- clk
			rx_156_25_clk                   : in  std_logic                     := 'X';             -- clk
			csr_clk                         : in  std_logic                     := 'X';             -- clk
			csr_rst_n                       : in  std_logic                     := 'X';             -- reset_n
			tx_rst_n                        : in  std_logic                     := 'X';             -- reset_n
			rx_rst_n                        : in  std_logic                     := 'X';             -- reset_n
			xgmii_tx_valid                  : out std_logic;                                        -- out
			xgmii_rx_valid                  : in  std_logic                     := 'X';             -- in
			speed_sel                       : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- export
			avalon_st_tx_startofpacket      : in  std_logic                     := 'X';             -- startofpacket
			avalon_st_tx_endofpacket        : in  std_logic                     := 'X';             -- endofpacket
			avalon_st_tx_valid              : in  std_logic                     := 'X';             -- valid
			avalon_st_tx_data               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			avalon_st_tx_empty              : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- empty
			avalon_st_tx_error              : in  std_logic                     := 'X';             -- error
			avalon_st_tx_ready              : out std_logic;                                        -- ready
			avalon_st_pause_data            : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- data
			xgmii_tx_data                   : out std_logic_vector(31 downto 0);                    -- export
			xgmii_tx_control                : out std_logic_vector(3 downto 0);                     -- export
			avalon_st_txstatus_valid        : out std_logic;                                        -- valid
			avalon_st_txstatus_data         : out std_logic_vector(39 downto 0);                    -- data
			avalon_st_txstatus_error        : out std_logic_vector(6 downto 0);                     -- error
			xgmii_rx_data                   : in  std_logic_vector(31 downto 0) := (others => 'X'); -- export
			xgmii_rx_control                : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			link_fault_status_xgmii_rx_data : out std_logic_vector(1 downto 0);                     -- data
			avalon_st_rx_data               : out std_logic_vector(63 downto 0);                    -- data
			avalon_st_rx_startofpacket      : out std_logic;                                        -- startofpacket
			avalon_st_rx_valid              : out std_logic;                                        -- valid
			avalon_st_rx_empty              : out std_logic_vector(2 downto 0);                     -- empty
			avalon_st_rx_error              : out std_logic_vector(5 downto 0);                     -- error
			avalon_st_rx_ready              : in  std_logic                     := 'X';             -- ready
			avalon_st_rx_endofpacket        : out std_logic;                                        -- endofpacket
			avalon_st_rxstatus_valid        : out std_logic;                                        -- valid
			avalon_st_rxstatus_data         : out std_logic_vector(39 downto 0);                    -- data
			avalon_st_rxstatus_error        : out std_logic_vector(6 downto 0)                      -- error
		);
	end component alt_usxgmii_mac;

	u0 : component alt_usxgmii_mac
		port map (
			csr_read                        => CONNECTED_TO_csr_read,                        --                        csr.read
			csr_write                       => CONNECTED_TO_csr_write,                       --                           .write
			csr_writedata                   => CONNECTED_TO_csr_writedata,                   --                           .writedata
			csr_readdata                    => CONNECTED_TO_csr_readdata,                    --                           .readdata
			csr_waitrequest                 => CONNECTED_TO_csr_waitrequest,                 --                           .waitrequest
			csr_address                     => CONNECTED_TO_csr_address,                     --                           .address
			tx_312_5_clk                    => CONNECTED_TO_tx_312_5_clk,                    --               tx_312_5_clk.clk
			tx_156_25_clk                   => CONNECTED_TO_tx_156_25_clk,                   --              tx_156_25_clk.clk
			rx_312_5_clk                    => CONNECTED_TO_rx_312_5_clk,                    --               rx_312_5_clk.clk
			rx_156_25_clk                   => CONNECTED_TO_rx_156_25_clk,                   --              rx_156_25_clk.clk
			csr_clk                         => CONNECTED_TO_csr_clk,                         --                    csr_clk.clk
			csr_rst_n                       => CONNECTED_TO_csr_rst_n,                       --                  csr_rst_n.reset_n
			tx_rst_n                        => CONNECTED_TO_tx_rst_n,                        --                   tx_rst_n.reset_n
			rx_rst_n                        => CONNECTED_TO_rx_rst_n,                        --                   rx_rst_n.reset_n
			xgmii_tx_valid                  => CONNECTED_TO_xgmii_tx_valid,                  --             xgmii_tx_valid.out
			xgmii_rx_valid                  => CONNECTED_TO_xgmii_rx_valid,                  --             xgmii_rx_valid.in
			speed_sel                       => CONNECTED_TO_speed_sel,                       --                  speed_sel.export
			avalon_st_tx_startofpacket      => CONNECTED_TO_avalon_st_tx_startofpacket,      --               avalon_st_tx.startofpacket
			avalon_st_tx_endofpacket        => CONNECTED_TO_avalon_st_tx_endofpacket,        --                           .endofpacket
			avalon_st_tx_valid              => CONNECTED_TO_avalon_st_tx_valid,              --                           .valid
			avalon_st_tx_data               => CONNECTED_TO_avalon_st_tx_data,               --                           .data
			avalon_st_tx_empty              => CONNECTED_TO_avalon_st_tx_empty,              --                           .empty
			avalon_st_tx_error              => CONNECTED_TO_avalon_st_tx_error,              --                           .error
			avalon_st_tx_ready              => CONNECTED_TO_avalon_st_tx_ready,              --                           .ready
			avalon_st_pause_data            => CONNECTED_TO_avalon_st_pause_data,            --            avalon_st_pause.data
			xgmii_tx_data                   => CONNECTED_TO_xgmii_tx_data,                   --              xgmii_tx_data.export
			xgmii_tx_control                => CONNECTED_TO_xgmii_tx_control,                --           xgmii_tx_control.export
			avalon_st_txstatus_valid        => CONNECTED_TO_avalon_st_txstatus_valid,        --         avalon_st_txstatus.valid
			avalon_st_txstatus_data         => CONNECTED_TO_avalon_st_txstatus_data,         --                           .data
			avalon_st_txstatus_error        => CONNECTED_TO_avalon_st_txstatus_error,        --                           .error
			xgmii_rx_data                   => CONNECTED_TO_xgmii_rx_data,                   --              xgmii_rx_data.export
			xgmii_rx_control                => CONNECTED_TO_xgmii_rx_control,                --           xgmii_rx_control.export
			link_fault_status_xgmii_rx_data => CONNECTED_TO_link_fault_status_xgmii_rx_data, -- link_fault_status_xgmii_rx.data
			avalon_st_rx_data               => CONNECTED_TO_avalon_st_rx_data,               --               avalon_st_rx.data
			avalon_st_rx_startofpacket      => CONNECTED_TO_avalon_st_rx_startofpacket,      --                           .startofpacket
			avalon_st_rx_valid              => CONNECTED_TO_avalon_st_rx_valid,              --                           .valid
			avalon_st_rx_empty              => CONNECTED_TO_avalon_st_rx_empty,              --                           .empty
			avalon_st_rx_error              => CONNECTED_TO_avalon_st_rx_error,              --                           .error
			avalon_st_rx_ready              => CONNECTED_TO_avalon_st_rx_ready,              --                           .ready
			avalon_st_rx_endofpacket        => CONNECTED_TO_avalon_st_rx_endofpacket,        --                           .endofpacket
			avalon_st_rxstatus_valid        => CONNECTED_TO_avalon_st_rxstatus_valid,        --         avalon_st_rxstatus.valid
			avalon_st_rxstatus_data         => CONNECTED_TO_avalon_st_rxstatus_data,         --                           .data
			avalon_st_rxstatus_error        => CONNECTED_TO_avalon_st_rxstatus_error         --                           .error
		);

