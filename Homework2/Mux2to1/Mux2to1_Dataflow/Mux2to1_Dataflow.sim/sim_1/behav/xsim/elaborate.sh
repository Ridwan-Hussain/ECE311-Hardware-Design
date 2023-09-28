#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Wed Sep 20 20:14:37 EDT 2023
# SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 8f5d6c0248a34160924b37ee988c4714 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot Mux2to1_tb_behav xil_defaultlib.Mux2to1_tb xil_defaultlib.glbl -log elaborate.log"
xelab -wto 8f5d6c0248a34160924b37ee988c4714 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot Mux2to1_tb_behav xil_defaultlib.Mux2to1_tb xil_defaultlib.glbl -log elaborate.log

