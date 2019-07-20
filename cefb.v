module cefb(
	clk,
	hrst_,
	srst_,
	
	clk_to_c,
	c_hrst_,
	c_srst_,
	
	clk_33,
	
	dbg_sw_,
	
	status_led_,
	dig_,
	
	spi_sclk,
	spi_mosi,
	spi_miso,
	spi_ss_,
	
	cpld_sclk,
	cpld_mosi,
	cpld_miso,
	cpld_ss_,
	
	uart_a_rxd,
	uart_a_txd,
	
	uart_b_rxd,
	uart_b_txd,
	
	i2c_a_scl,
	i2c_a_sda,
	
	i2c_b_scl,
	i2c_b_sda,
	
	ib_lvds_rx_in,
	ib_lvds_tx_out,
	
	mezz_rxc,
	mezz_txc,
	
	mezz_rx_rst_,
	mezz_tx_rst_,
	
	mezz_rx_status,
	mezz_tx_status,
	
	mezz_rx_c,
	mezz_tx_c,
	
	mezz_sclk,
	mezz_mosi,
	mezz_miso,
	mezz_ss_,
	
	eth_tx_clk,
	eth_rx_clk,

	eth_m_rx_d,
	eth_m_rx_en,
	eth_m_rx_err,
	eth_m_tx_d,
	eth_m_tx_en,
	eth_m_tx_err,
	eth_m_rx_crs,
	eth_m_rx_col,
	
	mem_pll_ref_clk_clk,
	
	mem_a,
	mem_ba,
	mem_ck,
	mem_ck_n,
	mem_cke,
	mem_cs_n,
	mem_dm,
	mem_ras_n,
	mem_cas_n,
	mem_we_n,
	mem_reset_n,
	mem_dq,
	mem_dqs,
	mem_dqs_n,
	mem_odt,
	
	oct_rzqin,
	local_init_done,
	local_cal_success,
	local_cal_fail
);
	input wire [3:0] clk;
	input wire hrst_;
	input wire srst_;
	
	output wire clk_to_c;
	input wire c_hrst_;
	input wire c_srst_;
	
	input wire clk_33;
	
	input wire [7:0] dbg_sw_;
	
	output wire [3:0] status_led_;
	output wire [7:0] dig_;
	
	output wire spi_sclk;
	output wire spi_mosi;
	input wire spi_miso;
	output wire spi_ss_;
	
	output wire cpld_sclk;
	output wire cpld_mosi;
	input wire cpld_miso;
	output wire cpld_ss_;
	
	input wire uart_a_rxd;
	output wire uart_a_txd;
	
	input wire uart_b_rxd;
	output wire uart_b_txd;
	
	output wire i2c_a_scl;
	inout wire i2c_a_sda;
	
	output wire i2c_b_scl;
	output wire i2c_b_sda;
	
	input wire [3:0] ib_lvds_rx_in;
	output wire [3:0] ib_lvds_tx_out;
	
	input wire mezz_rxc;
	output wire mezz_txc;
	
	input wire mezz_rx_rst_;
	output wire mezz_tx_rst_;
	
	input wire [3:0] mezz_rx_status;
	output wire [3:0] mezz_tx_status;
	
	input wire [15:0] mezz_rx_c;
	output wire [15:0] mezz_tx_c;
	
	output wire mezz_sclk;
	output wire mezz_mosi;
	input wire mezz_miso;
	output wire mezz_ss_;
	
	input wire eth_tx_clk;
	input wire eth_rx_clk;

	input wire [3:0] eth_m_rx_d;
	input wire eth_m_rx_en;
	input wire eth_m_rx_err;
	output wire [3:0] eth_m_tx_d;
	output wire eth_m_tx_en;
	output wire eth_m_tx_err;
	input wire eth_m_rx_crs;
	input wire eth_m_rx_col;
	
	input wire mem_pll_ref_clk_clk;
	
	output wire [14:0] mem_a;                      //             memory.mem_a
	output wire [2:0]  mem_ba;                     //                   .mem_ba
	output wire [0:0]  mem_ck;                     //                   .mem_ck
	output wire [0:0]  mem_ck_n;                   //                   .mem_ck_n
	output wire [0:0]  mem_cke;                    //                   .mem_cke
	output wire [0:0]  mem_cs_n;                   //                   .mem_cs_n
	output wire [1:0]  mem_dm;                     //                   .mem_dm
	output wire [0:0]  mem_ras_n;                  //                   .mem_ras_n
	output wire [0:0]  mem_cas_n;                  //                   .mem_cas_n
	output wire [0:0]  mem_we_n;                   //                   .mem_we_n
	output wire        mem_reset_n;                //                   .mem_reset_n
	inout  wire [15:0] mem_dq;                     //                   .mem_dq
	inout  wire [1:0]  mem_dqs;                    //                   .mem_dqs
	inout  wire [1:0]  mem_dqs_n;                  //                   .mem_dqs_n
	output wire [0:0]  mem_odt;                    //                   .mem_odt

	input wire oct_rzqin;
	output wire local_init_done;
	output wire local_cal_success;
	output wire local_cal_fail;
	
	C5_DDR3 c5_ddr3_inst (
		.pll_ref_clk                (mem_pll_ref_clk_clk),                //        pll_ref_clk.clk
		.global_reset_n             (hrst_),             //       global_reset.reset_n
		.soft_reset_n               (srst_),               //         soft_reset.reset_n
		.afi_clk                    (),                    //            afi_clk.clk
		.afi_half_clk               (),               //       afi_half_clk.clk
		.afi_reset_n                (),                //          afi_reset.reset_n
		.afi_reset_export_n         (),         //   afi_reset_export.reset_n
		.mem_a                      (mem_a),                      //             memory.mem_a
		.mem_ba                     (mem_ba),                     //                   .mem_ba
		.mem_ck                     (mem_ck),                     //                   .mem_ck
		.mem_ck_n                   (mem_ck_n),                   //                   .mem_ck_n
		.mem_cke                    (mem_cke),                    //                   .mem_cke
		.mem_cs_n                   (mem_cs_n),                   //                   .mem_cs_n
		.mem_dm                     (mem_dm),                     //                   .mem_dm
		.mem_ras_n                  (mem_ras_n),                  //                   .mem_ras_n
		.mem_cas_n                  (mem_cas_n),                  //                   .mem_cas_n
		.mem_we_n                   (mem_we_n),                   //                   .mem_we_n
		.mem_reset_n                (mem_reset_n),                //                   .mem_reset_n
		.mem_dq                     (mem_dq),                     //                   .mem_dq
		.mem_dqs                    (mem_dqs),                    //                   .mem_dqs
		.mem_dqs_n                  (mem_dqs_n),                  //                   .mem_dqs_n
		.mem_odt                    (mem_odt),                    //                   .mem_odt
		.avl_ready_0                (),                //              avl_0.waitrequest_n
		.avl_burstbegin_0           (),           //                   .beginbursttransfer
		.avl_addr_0                 (),                 //                   .address
		.avl_rdata_valid_0          (),          //                   .readdatavalid
		.avl_rdata_0                (),                //                   .readdata
		.avl_wdata_0                (),                //                   .writedata
		.avl_be_0                   (),                   //                   .byteenable
		.avl_read_req_0             (),             //                   .read
		.avl_write_req_0            (),            //                   .write
		.avl_size_0                 (),                 //                   .burstcount
		.mp_cmd_clk_0_clk           (),           //       mp_cmd_clk_0.clk
		.mp_cmd_reset_n_0_reset_n   (),   //   mp_cmd_reset_n_0.reset_n
		.mp_rfifo_clk_0_clk         (),         //     mp_rfifo_clk_0.clk
		.mp_rfifo_reset_n_0_reset_n (), // mp_rfifo_reset_n_0.reset_n
		.mp_wfifo_clk_0_clk         (),         //     mp_wfifo_clk_0.clk
		.mp_wfifo_reset_n_0_reset_n (), // mp_wfifo_reset_n_0.reset_n
		.local_init_done            (local_init_done),            //             status.local_init_done
		.local_cal_success          (local_cal_success),          //                   .local_cal_success
		.local_cal_fail             (local_cal_fail),             //                   .local_cal_fail
		.oct_rzqin                  (oct_rzqin),                  //                oct.rzqin
		.pll_mem_clk                (),                //        pll_sharing.pll_mem_clk
		.pll_write_clk              (),              //                   .pll_write_clk
		.pll_locked                 (),                 //                   .pll_locked
		.pll_write_clk_pre_phy_clk  (),  //                   .pll_write_clk_pre_phy_clk
		.pll_addr_cmd_clk           (),           //                   .pll_addr_cmd_clk
		.pll_avl_clk                (),                //                   .pll_avl_clk
		.pll_config_clk             (),             //                   .pll_config_clk
		.pll_mem_phy_clk            (),            //                   .pll_mem_phy_clk
		.afi_phy_clk                (),                //                   .afi_phy_clk
		.pll_avl_phy_clk            ()             //                   .pll_avl_phy_clk
	);

	C5_ETH C5_ETH_inst(
		.clk ( clk[2] ),           // control_port_clock_connection.clk
		.reset ( hrst_ ),         //              reset_connection.reset
		.reg_addr (  ),      //                  control_port.address
		.reg_data_out (  ),  //                              .readdata
		.reg_rd (  ),        //                              .read
		.reg_data_in (  ),   //                              .writedata
		.reg_wr (  ),        //                              .write
		.reg_busy (  ),      //                              .waitrequest
		.tx_clk ( tx_clk ),        //   pcs_mac_tx_clock_connection.clk
		.rx_clk ( rx_clk ),        //   pcs_mac_rx_clock_connection.clk
		.set_10 (  ),        //         mac_status_connection.set_10
		.set_1000 (  ),      //                              .set_1000
		.eth_mode (  ),      //                              .eth_mode
		.ena_10 (  ),        //                              .ena_10
		.m_rx_d ( eth_m_rx_d ),        //            mac_mii_connection.mii_rx_d
		.m_rx_en ( eth_m_rx_en ),       //                              .mii_rx_dv
		.m_rx_err ( eth_m_rx_err ),      //                              .mii_rx_err
		.m_tx_d ( eth_m_tx_d ),        //                              .mii_tx_d
		.m_tx_en ( eth_m_tx_en ),       //                              .mii_tx_en
		.m_tx_err ( eth_m_tx_err ),      //                              .mii_tx_err
		.m_rx_crs ( eth_m_rx_crs ),      //                              .mii_crs
		.m_rx_col ( eth_m_rx_col ),      //                              .mii_col
		.ff_rx_clk (  ),     //      receive_clock_connection.clk
		.ff_tx_clk (  ),     //     transmit_clock_connection.clk
		.ff_rx_data (  ),    //                       receive.data
		.ff_rx_eop (  ),     //                              .endofpacket
		.rx_err (  ),        //                              .error
		.ff_rx_mod (  ),     //                              .empty
		.ff_rx_rdy (  ),     //                              .ready
		.ff_rx_sop (  ),     //                              .startofpacket
		.ff_rx_dval (  ),    //                              .valid
		.ff_tx_data (  ),    //                      transmit.data
		.ff_tx_eop (  ),     //                              .endofpacket
		.ff_tx_err (  ),     //                              .error
		.ff_tx_mod (  ),     //                              .empty
		.ff_tx_rdy (  ),     //                              .ready
		.ff_tx_sop (  ),     //                              .startofpacket
		.ff_tx_wren (  ),    //                              .valid
		.ff_tx_crc_fwd (  ), //           mac_misc_connection.ff_tx_crc_fwd
		.ff_tx_septy (  ),   //                              .ff_tx_septy
		.tx_ff_uflow (  ),   //                              .tx_ff_uflow
		.ff_tx_a_full (  ),  //                              .ff_tx_a_full
		.ff_tx_a_empty (  ), //                              .ff_tx_a_empty
		.rx_err_stat (  ),   //                              .rx_err_stat
		.rx_frm_type (  ),   //                              .rx_frm_type
		.ff_rx_dsav (  ),    //                              .ff_rx_dsav
		.ff_rx_a_full (  ),  //                              .ff_rx_a_full
		.ff_rx_a_empty (  )  //                              .ff_rx_a_empty
	);

	C5_LVDS_RX	C5_LVDS_RX_inst (
		.pll_areset ( hrst_ ),
		.rx_channel_data_align (  ),
		.rx_in ( ib_lvds_rx_in ),
		.rx_inclock ( clk[0] ),
		.rx_cda_max (  ),
		.rx_locked (  ),
		.rx_out (  ),
		.rx_outclock (  )
	);
	
	C5_LVDS_TX	C5_LVDS_TX_inst (
		.pll_areset ( hrst_ ),
		.tx_in (  ),
		.tx_inclock ( clk[0] ),
		.tx_locked (  ),
		.tx_out ( ib_lvds_tx_out ),
		.tx_outclock (  )
	);
endmodule
