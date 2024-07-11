############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
set_directive_dataflow "mpd_data_processor_main"
set_directive_data_pack "mpd_data_processor_main" s_evIn
set_directive_interface -mode ap_fifo "mpd_data_processor_main" s_evIn
set_directive_data_pack "mpd_data_processor_main" s_evOut
set_directive_interface -mode ap_fifo "mpd_data_processor_main" s_evOut
set_directive_interface -mode ap_stable "mpd_data_processor_main" build_all_samples
set_directive_interface -mode ap_stable "mpd_data_processor_main" build_debug_headers
set_directive_interface -mode ap_stable "mpd_data_processor_main" enable_cm
set_directive_interface -mode ap_stable "mpd_data_processor_main" fiber
set_directive_data_pack "mpd_data_processor_main" s_avgAPreHeader
set_directive_data_pack "mpd_data_processor_main" s_avgBPreHeader
set_directive_data_pack "mpd_data_processor_main" s_avgAHeader
set_directive_data_pack "mpd_data_processor_main" s_avgBHeader
set_directive_data_pack "mpd_data_processor_main" s_avgASamples
set_directive_data_pack "mpd_data_processor_main" s_avgBSamplesOut
set_directive_data_pack "mpd_data_processor_main" s_avgBSamplesIn
set_directive_resource -core RAM_1P_BRAM "mpd_data_processor_main" m_offset
set_directive_resource -core RAM_1P_BRAM "mpd_data_processor_main" m_apvThr
set_directive_resource -core RAM_1P_BRAM "mpd_data_processor_main" m_apvThrB
set_directive_pipeline -enable_flush -II 2 "frame_decoder"
set_directive_pipeline -enable_flush -II 2 "avgB"
set_directive_pipeline -enable_flush -II 64 "avgHeaderDiv"
set_directive_pipeline -enable_flush -II 2 "event_writer"
set_directive_pipeline -enable_flush "avgBSamplesFifoProc"
set_directive_interface -mode ap_ctrl_none "mpd_data_processor_main"
set_directive_top -name mpd_data_processor_main "mpd_data_processor_main"
