#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Thu Sep 14 19:48:49 EDT 2023
# SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 76be59b265b54b3e9a4e3f81cabb40c5 --incr --debug typical --relax --mt 8 -L util_vector_logic_v2_0_1 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot TestProgram_wrapper_behav xil_defaultlib.TestProgram_wrapper xil_defaultlib.glbl -log elaborate.log"
xelab -wto 76be59b265b54b3e9a4e3f81cabb40c5 --incr --debug typical --relax --mt 8 -L util_vector_logic_v2_0_1 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot TestProgram_wrapper_behav xil_defaultlib.TestProgram_wrapper xil_defaultlib.glbl -log elaborate.log

