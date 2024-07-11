############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project mpd_data_processor
set_top mpd_data_processor_main
add_files ../mpd_data_processor.h
add_files ../mpd_data_processor.cpp
add_files -tb ../mpd_data_processor_wrapper.h -cflags "-Wno-unknown-pragmas"
add_files -tb ../mpd_data_processor_wrapper.cpp -cflags "-Wno-unknown-pragmas"
add_files -tb ../mpd_data_processor_tb.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xcku035-ffva1156-1-i}
create_clock -period 8 -name default
set_clock_uncertainty 1
source "./mpd_data_processor/solution1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design -compiler gcc -trace_level all -rtl vhdl -tool xsim
export_design -format ip_catalog
