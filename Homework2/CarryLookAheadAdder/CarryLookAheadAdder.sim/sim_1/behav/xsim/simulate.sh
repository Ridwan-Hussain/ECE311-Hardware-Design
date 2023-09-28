#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Thu Sep 21 20:57:08 EDT 2023
# SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xsim CarryLookAhead_tb_behav -key {Behavioral:sim_1:Functional:CarryLookAhead_tb} -tclbatch CarryLookAhead_tb.tcl -log simulate.log"
xsim CarryLookAhead_tb_behav -key {Behavioral:sim_1:Functional:CarryLookAhead_tb} -tclbatch CarryLookAhead_tb.tcl -log simulate.log

