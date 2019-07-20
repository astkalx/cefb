
# (C) 2001-2019 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 16.1 203 linux 2019.07.18.21:58:17

# ----------------------------------------
# vcs - auto-generated simulation script

# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     C5_ETH
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level shell script that compiles Altera simulation libraries
# and the Quartus-generated IP in your project, along with your design and
# testbench files, follow the guidelines below.
# 
# 1) Copy the shell script text from the TOP-LEVEL TEMPLATE section
# below into a new file, e.g. named "vcs_sim.sh".
# 
# 2) Copy the text from the DESIGN FILE LIST & OPTIONS TEMPLATE section into
# a separate file, e.g. named "filelist.f".
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # TOP_LEVEL_NAME is used in the Quartus-generated IP simulation script to
# # set the top-level simulation or testbench module/entity name.
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator.
# #
# # Source the Quartus-generated IP simulation script and do the following:
# # - Compile the Quartus EDA simulation library and IP simulation files.
# # - Specify TOP_LEVEL_NAME and QSYS_SIMDIR.
# # - Compile the design and top-level simulation module/entity using
# #   information specified in "filelist.f".
# # - Override the default USER_DEFINED_SIM_OPTIONS. For example, to run
# #   until $finish(), set to an empty string: USER_DEFINED_SIM_OPTIONS="".
# # - Run the simulation.
# #
# source <script generation output directory>/synopsys/vcs/vcs_setup.sh \
# TOP_LEVEL_NAME=<simulation top> \
# QSYS_SIMDIR=<script generation output directory> \
# USER_DEFINED_ELAB_OPTIONS="\"-f filelist.f\"" \
# USER_DEFINED_SIM_OPTIONS=<simulation options for your design>
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# ----------------------------------------
# # DESIGN FILE LIST & OPTIONS TEMPLATE - BEGIN
# #
# # Compile all design files and testbench files, including the top level.
# # (These are all the files required for simulation other than the files
# # compiled by the Quartus-generated IP simulation script)
# #
# +systemverilogext+.sv
# <design and testbench files, compile-time options, elaboration options>
# #
# # DESIGN FILE LIST & OPTIONS TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# If C5_ETH is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------
# ACDS 16.1 203 linux 2019.07.18.21:58:17
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="C5_ETH"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="/usr/opt/intelFPGA/16.1/quartus/"
SKIP_FILE_COPY=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"
# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `vcs -platform` != *"amd64"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# copy RAM/ROM files to simulation directory

vcs -lca -timescale=1ps/1ps -sverilog +verilog2001ext+.v -ntb_opts dtm $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v \
  $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_hmi_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_hssi_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_pcie_hip_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_eth_tse_mac.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_clk_cntl.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_crc328checker.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_crc328generator.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_crc32ctl8.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_crc32galois8.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_gmii_io.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_lb_read_cntl.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_lb_wrt_cntl.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_hashing.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_host_control.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_host_control_small.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_mac_control.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_register_map.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_register_map_small.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_rx_counter_cntl.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_shared_mac_control.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_shared_register_map.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_tx_counter_cntl.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_lfsr_10.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_loopback_ff.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_altshifttaps.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_fifoless_mac_rx.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_mac_rx.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_fifoless_mac_tx.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_mac_tx.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_magic_detection.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_mdio.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_mdio_clk_gen.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_mdio_cntl.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_top_mdio.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_mii_rx_if.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_mii_tx_if.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_pipeline_base.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_pipeline_stage.sv \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_dpram_16x32.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_dpram_8x32.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_dpram_ecc_16x32.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_fifoless_retransmit_cntl.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_retransmit_cntl.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_rgmii_in1.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_rgmii_in4.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_nf_rgmii_module.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_rgmii_module.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_rgmii_out1.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_rgmii_out4.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_rx_ff.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_rx_min_ff.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_rx_ff_cntrl.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_rx_ff_cntrl_32.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_rx_ff_cntrl_32_shift16.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_rx_ff_length.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_rx_stat_extract.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_timing_adapter32.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_timing_adapter8.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_timing_adapter_fifo32.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_timing_adapter_fifo8.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_top_1geth.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_top_fifoless_1geth.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_top_w_fifo.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_top_w_fifo_10_100_1000.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_top_wo_fifo.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_top_wo_fifo_10_100_1000.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_top_gen_host.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_tx_ff.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_tx_min_ff.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_tx_ff_cntrl.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_tx_ff_cntrl_32.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_tx_ff_cntrl_32_shift16.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_tx_ff_length.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_tx_ff_read_cntl.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_tx_stat_extract.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_eth_tse_std_synchronizer.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_eth_tse_std_synchronizer_bundle.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_eth_tse_ptp_std_synchronizer.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_false_path_marker.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_reset_synchronizer.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_clock_crosser.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_a_fifo_13.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_a_fifo_24.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_a_fifo_34.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_a_fifo_opt_1246.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_a_fifo_opt_14_44.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_a_fifo_opt_36_10.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_gray_cnt.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_sdpm_altsyncram.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_altsyncram_dpm_fifo.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_bin_cnt.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_ph_calculator.sv \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_sdpm_gen.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_ecc_dec_x10.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_ecc_enc_x10.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_ecc_enc_x10_wrapper.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_ecc_dec_x14.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_ecc_enc_x14.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_ecc_enc_x14_wrapper.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_ecc_dec_x2.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_ecc_enc_x2.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_ecc_enc_x2_wrapper.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_ecc_dec_x23.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_ecc_enc_x23.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_ecc_enc_x23_wrapper.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_ecc_dec_x36.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_ecc_enc_x36.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_ecc_enc_x36_wrapper.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_ecc_dec_x40.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_ecc_enc_x40.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_ecc_enc_x40_wrapper.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_ecc_dec_x30.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_ecc_enc_x30.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_ecc_enc_x30_wrapper.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/synopsys/altera_tse_ecc_status_crosser.v \
  $QSYS_SIMDIR/altera_eth_tse_mac/altera_std_synchronizer_nocut.v \
  $QSYS_SIMDIR/C5_ETH.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
