
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
# ncsim - auto-generated simulation script

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
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "ncsim.sh", and modify text as directed.
# 
# You can also modify the simulation flow to suit your needs. Set the
# following variables to 1 to disable their corresponding processes:
# - SKIP_FILE_COPY: skip copying ROM/RAM initialization files
# - SKIP_DEV_COM: skip compiling the Quartus EDA simulation library
# - SKIP_COM: skip compiling Quartus-generated IP simulation files
# - SKIP_ELAB and SKIP_SIM: skip elaboration and simulation
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator. In this case, you must also copy the generated files
# # "cds.lib" and "hdl.var" - plus the directory "cds_libs" if generated - 
# # into the location from which you launch the simulator, or incorporate
# # into any existing library setup.
# #
# # Run Quartus-generated IP simulation script once to compile Quartus EDA
# # simulation libraries and Quartus-generated IP simulation files, and copy
# # any ROM/RAM initialization files to the simulation directory.
# # - If necessary, specify USER_DEFINED_COMPILE_OPTIONS.
# #
# source <script generation output directory>/cadence/ncsim_setup.sh \
# SKIP_ELAB=1 \
# SKIP_SIM=1 \
# USER_DEFINED_COMPILE_OPTIONS=<compilation options for your design> \
# QSYS_SIMDIR=<script generation output directory>
# #
# # Compile all design files and testbench files, including the top level.
# # (These are all the files required for simulation other than the files
# # compiled by the IP script)
# #
# ncvlog <compilation options> <design and testbench files>
# #
# # TOP_LEVEL_NAME is used in this script to set the top-level simulation or
# # testbench module/entity name.
# #
# # Run the IP script again to elaborate and simulate the top level:
# # - Specify TOP_LEVEL_NAME and USER_DEFINED_ELAB_OPTIONS.
# # - Override the default USER_DEFINED_SIM_OPTIONS. For example, to run
# #   until $finish(), set to an empty string: USER_DEFINED_SIM_OPTIONS="".
# #
# source <script generation output directory>/cadence/ncsim_setup.sh \
# SKIP_FILE_COPY=1 \
# SKIP_DEV_COM=1 \
# SKIP_COM=1 \
# TOP_LEVEL_NAME=<simulation top> \
# USER_DEFINED_ELAB_OPTIONS=<elaboration options for your design> \
# USER_DEFINED_SIM_OPTIONS=<simulation options for your design>
# #
# # TOP-LEVEL TEMPLATE - END
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
QSYS_SIMDIR="./../"
QUARTUS_INSTALL_DIR="/usr/opt/intelFPGA/16.1/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="-input \"@run 100; exit\""

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
if [[ `ncsim -version` != *"ncsim(64)"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/i_tse_mac/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/cyclonev_ver/
mkdir -p ./libraries/cyclonev_hssi_ver/
mkdir -p ./libraries/cyclonev_pcie_hip_ver/

# ----------------------------------------
# copy RAM/ROM files to simulation directory

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                      -work altera_ver           
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                               -work lpm_ver              
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                  -work sgate_ver            
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                              -work altera_mf_ver        
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                          -work altera_lnsim_ver     
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_atoms_ncrypt.v"          -work cyclonev_ver         
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_hmi_atoms_ncrypt.v"      -work cyclonev_ver         
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v"                         -work cyclonev_ver         
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi_ver    
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v"                    -work cyclonev_hssi_ver    
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_pcie_hip_atoms_ncrypt.v" -work cyclonev_pcie_hip_ver
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v"                -work cyclonev_pcie_hip_ver
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_eth_tse_mac.v"                     -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_clk_cntl.v"                    -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_crc328checker.v"               -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_crc328generator.v"             -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_crc32ctl8.v"                   -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_crc32galois8.v"                -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_gmii_io.v"                     -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_lb_read_cntl.v"                -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_lb_wrt_cntl.v"                 -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_hashing.v"                     -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_host_control.v"                -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_host_control_small.v"          -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_mac_control.v"                 -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_register_map.v"                -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_register_map_small.v"          -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_rx_counter_cntl.v"             -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_shared_mac_control.v"          -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_shared_register_map.v"         -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_tx_counter_cntl.v"             -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_lfsr_10.v"                     -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_loopback_ff.v"                 -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_altshifttaps.v"                -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_fifoless_mac_rx.v"             -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_mac_rx.v"                      -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_fifoless_mac_tx.v"             -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_mac_tx.v"                      -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_magic_detection.v"             -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_mdio.v"                        -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_mdio_clk_gen.v"                -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_mdio_cntl.v"                   -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_top_mdio.v"                    -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_mii_rx_if.v"                   -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_mii_tx_if.v"                   -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_pipeline_base.v"               -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_pipeline_stage.sv"             -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_dpram_16x32.v"                 -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_dpram_8x32.v"                  -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_dpram_ecc_16x32.v"             -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_fifoless_retransmit_cntl.v"    -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_retransmit_cntl.v"             -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_rgmii_in1.v"                   -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_rgmii_in4.v"                   -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_nf_rgmii_module.v"             -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_rgmii_module.v"                -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_rgmii_out1.v"                  -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_rgmii_out4.v"                  -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_rx_ff.v"                       -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_rx_min_ff.v"                   -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_rx_ff_cntrl.v"                 -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_rx_ff_cntrl_32.v"              -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_rx_ff_cntrl_32_shift16.v"      -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_rx_ff_length.v"                -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_rx_stat_extract.v"             -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_timing_adapter32.v"            -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_timing_adapter8.v"             -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_timing_adapter_fifo32.v"       -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_timing_adapter_fifo8.v"        -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_top_1geth.v"                   -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_top_fifoless_1geth.v"          -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_top_w_fifo.v"                  -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_top_w_fifo_10_100_1000.v"      -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_top_wo_fifo.v"                 -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_top_wo_fifo_10_100_1000.v"     -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_top_gen_host.v"                -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_tx_ff.v"                       -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_tx_min_ff.v"                   -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_tx_ff_cntrl.v"                 -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_tx_ff_cntrl_32.v"              -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_tx_ff_cntrl_32_shift16.v"      -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_tx_ff_length.v"                -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_tx_ff_read_cntl.v"             -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_tx_stat_extract.v"             -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_eth_tse_std_synchronizer.v"        -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_eth_tse_std_synchronizer_bundle.v" -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_eth_tse_ptp_std_synchronizer.v"    -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_false_path_marker.v"           -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_reset_synchronizer.v"          -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_clock_crosser.v"               -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_a_fifo_13.v"                   -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_a_fifo_24.v"                   -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_a_fifo_34.v"                   -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_a_fifo_opt_1246.v"             -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_a_fifo_opt_14_44.v"            -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_a_fifo_opt_36_10.v"            -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_gray_cnt.v"                    -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_sdpm_altsyncram.v"             -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_altsyncram_dpm_fifo.v"         -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_bin_cnt.v"                     -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_ph_calculator.sv"              -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_sdpm_gen.v"                    -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_ecc_dec_x10.v"                 -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_ecc_enc_x10.v"                 -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_ecc_enc_x10_wrapper.v"         -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_ecc_dec_x14.v"                 -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_ecc_enc_x14.v"                 -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_ecc_enc_x14_wrapper.v"         -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_ecc_dec_x2.v"                  -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_ecc_enc_x2.v"                  -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_ecc_enc_x2_wrapper.v"          -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_ecc_dec_x23.v"                 -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_ecc_enc_x23.v"                 -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_ecc_enc_x23_wrapper.v"         -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_ecc_dec_x36.v"                 -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_ecc_enc_x36.v"                 -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_ecc_enc_x36_wrapper.v"         -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_ecc_dec_x40.v"                 -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_ecc_enc_x40.v"                 -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_ecc_enc_x40_wrapper.v"         -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_ecc_dec_x30.v"                 -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_ecc_enc_x30.v"                 -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_ecc_enc_x30_wrapper.v"         -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/cadence/altera_tse_ecc_status_crosser.v"          -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/altera_eth_tse_mac/altera_std_synchronizer_nocut.v"                  -work i_tse_mac -cdslib ./cds_libs/i_tse_mac.cds.lib
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/C5_ETH.v"                                                                                                                
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  export GENERIC_PARAM_COMPAT_CHECK=1
  ncelab -access +w+r+c -namemap_mixgen $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  eval ncsim -licqueue $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS $TOP_LEVEL_NAME
fi
