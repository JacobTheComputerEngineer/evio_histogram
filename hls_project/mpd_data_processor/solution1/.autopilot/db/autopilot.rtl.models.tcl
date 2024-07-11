set SynModuleInfo {
  {SRCNAME frame_decoder MODELNAME frame_decoder RTLNAME mpd_data_processor_main_frame_decoder}
  {SRCNAME avgHeaderDiv MODELNAME avgHeaderDiv RTLNAME mpd_data_processor_main_avgHeaderDiv
    SUBMODULES {
      {MODELNAME mpd_data_processor_main_sdiv_20ns_9ns_13_24_1 RTLNAME mpd_data_processor_main_sdiv_20ns_9ns_13_24_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 23 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME avgB MODELNAME avgB RTLNAME mpd_data_processor_main_avgB}
  {SRCNAME avgBSamplesFifoProc MODELNAME avgBSamplesFifoProc RTLNAME mpd_data_processor_main_avgBSamplesFifoProc
    SUBMODULES {
      {MODELNAME mpd_data_processor_main_srem_4ns_4ns_4_8_1 RTLNAME mpd_data_processor_main_srem_4ns_4ns_4_8_1 BINDTYPE op TYPE srem IMPL auto LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME mpd_data_processor_main_fifo_w13_d2_S RTLNAME mpd_data_processor_main_fifo_w13_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_5_U}
      {MODELNAME mpd_data_processor_main_fifo_w13_d2_S RTLNAME mpd_data_processor_main_fifo_w13_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_4_U}
      {MODELNAME mpd_data_processor_main_fifo_w13_d2_S RTLNAME mpd_data_processor_main_fifo_w13_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_3_U}
      {MODELNAME mpd_data_processor_main_fifo_w13_d2_S RTLNAME mpd_data_processor_main_fifo_w13_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_2_U}
      {MODELNAME mpd_data_processor_main_fifo_w13_d2_S RTLNAME mpd_data_processor_main_fifo_w13_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_1_U}
      {MODELNAME mpd_data_processor_main_fifo_w13_d2_S RTLNAME mpd_data_processor_main_fifo_w13_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_U}
    }
  }
  {SRCNAME event_writer MODELNAME event_writer RTLNAME mpd_data_processor_main_event_writer
    SUBMODULES {
      {MODELNAME mpd_data_processor_main_event_writer_avgB_1_RAM_AUTO_1R1W RTLNAME mpd_data_processor_main_event_writer_avgB_1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME mpd_data_processor_main MODELNAME mpd_data_processor_main RTLNAME mpd_data_processor_main IS_TOP 1
    SUBMODULES {
      {MODELNAME mpd_data_processor_main_fifo_w64_d2_S RTLNAME mpd_data_processor_main_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME s_avgAPreHeader_U}
      {MODELNAME mpd_data_processor_main_fifo_w13_d3_S RTLNAME mpd_data_processor_main_fifo_w13_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME s_avgASamples_U}
      {MODELNAME mpd_data_processor_main_fifo_w64_d2_S RTLNAME mpd_data_processor_main_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME s_avgBPreHeader_U}
      {MODELNAME mpd_data_processor_main_fifo_w32_d2_S RTLNAME mpd_data_processor_main_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME s_avgAHeader_U}
      {MODELNAME mpd_data_processor_main_fifo_w32_d4_S RTLNAME mpd_data_processor_main_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME s_avgBHeader_U}
      {MODELNAME mpd_data_processor_main_fifo_w13_d2_S_x RTLNAME mpd_data_processor_main_fifo_w13_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME s_avgBSamplesOut_U}
      {MODELNAME mpd_data_processor_main_fifo_w32_d2_S RTLNAME mpd_data_processor_main_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME s_avgBSamplesIn_U}
      {MODELNAME mpd_data_processor_main_start_for_avgHeaderDiv_U0 RTLNAME mpd_data_processor_main_start_for_avgHeaderDiv_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_avgHeaderDiv_U0_U}
      {MODELNAME mpd_data_processor_main_start_for_avgBSamplesFifoProc_U0 RTLNAME mpd_data_processor_main_start_for_avgBSamplesFifoProc_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_avgBSamplesFifoProc_U0_U}
    }
  }
}
