set moduleName mpd_data_processor_main
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {mpd_data_processor_main}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_evIn int 33 regular {fifo 0 volatile }  }
	{ s_evOut int 33 regular {fifo 1 volatile }  }
	{ build_all_samples int 1 regular {ap_stable 0} }
	{ build_debug_headers int 1 unused {ap_stable 0} }
	{ enable_cm int 1 regular {ap_stable 0} }
	{ fiber int 5 regular {ap_stable 0} }
	{ m_offset int 26 regular {array 1024 { 1 3 } 1 1 }  }
	{ m_apvThr int 13 regular {array 2048 { 1 3 } 1 1 }  }
	{ m_apvThrB int 13 regular {array 2048 { 1 3 } 1 1 }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "s_evIn", "interface" : "fifo", "bitwidth" : 33, "direction" : "READONLY"} , 
 	{ "Name" : "s_evOut", "interface" : "fifo", "bitwidth" : 33, "direction" : "WRITEONLY"} , 
 	{ "Name" : "build_all_samples", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "build_debug_headers", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "enable_cm", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "fiber", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "m_offset", "interface" : "memory", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "m_apvThr", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "m_apvThrB", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ s_evIn_dout sc_in sc_lv 33 signal 0 } 
	{ s_evIn_empty_n sc_in sc_logic 1 signal 0 } 
	{ s_evIn_read sc_out sc_logic 1 signal 0 } 
	{ s_evOut_din sc_out sc_lv 33 signal 1 } 
	{ s_evOut_full_n sc_in sc_logic 1 signal 1 } 
	{ s_evOut_write sc_out sc_logic 1 signal 1 } 
	{ build_all_samples sc_in sc_lv 1 signal 2 } 
	{ build_debug_headers sc_in sc_lv 1 signal 3 } 
	{ enable_cm sc_in sc_lv 1 signal 4 } 
	{ fiber sc_in sc_lv 5 signal 5 } 
	{ m_offset_address0 sc_out sc_lv 10 signal 6 } 
	{ m_offset_ce0 sc_out sc_logic 1 signal 6 } 
	{ m_offset_d0 sc_out sc_lv 26 signal 6 } 
	{ m_offset_q0 sc_in sc_lv 26 signal 6 } 
	{ m_offset_we0 sc_out sc_logic 1 signal 6 } 
	{ m_offset_address1 sc_out sc_lv 10 signal 6 } 
	{ m_offset_ce1 sc_out sc_logic 1 signal 6 } 
	{ m_offset_d1 sc_out sc_lv 26 signal 6 } 
	{ m_offset_q1 sc_in sc_lv 26 signal 6 } 
	{ m_offset_we1 sc_out sc_logic 1 signal 6 } 
	{ m_apvThr_address0 sc_out sc_lv 11 signal 7 } 
	{ m_apvThr_ce0 sc_out sc_logic 1 signal 7 } 
	{ m_apvThr_d0 sc_out sc_lv 13 signal 7 } 
	{ m_apvThr_q0 sc_in sc_lv 13 signal 7 } 
	{ m_apvThr_we0 sc_out sc_logic 1 signal 7 } 
	{ m_apvThr_address1 sc_out sc_lv 11 signal 7 } 
	{ m_apvThr_ce1 sc_out sc_logic 1 signal 7 } 
	{ m_apvThr_d1 sc_out sc_lv 13 signal 7 } 
	{ m_apvThr_q1 sc_in sc_lv 13 signal 7 } 
	{ m_apvThr_we1 sc_out sc_logic 1 signal 7 } 
	{ m_apvThrB_address0 sc_out sc_lv 11 signal 8 } 
	{ m_apvThrB_ce0 sc_out sc_logic 1 signal 8 } 
	{ m_apvThrB_d0 sc_out sc_lv 13 signal 8 } 
	{ m_apvThrB_q0 sc_in sc_lv 13 signal 8 } 
	{ m_apvThrB_we0 sc_out sc_logic 1 signal 8 } 
	{ m_apvThrB_address1 sc_out sc_lv 11 signal 8 } 
	{ m_apvThrB_ce1 sc_out sc_logic 1 signal 8 } 
	{ m_apvThrB_d1 sc_out sc_lv 13 signal 8 } 
	{ m_apvThrB_q1 sc_in sc_lv 13 signal 8 } 
	{ m_apvThrB_we1 sc_out sc_logic 1 signal 8 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
}
set NewPortList {[ 
	{ "name": "s_evIn_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":33, "type": "signal", "bundle":{"name": "s_evIn", "role": "dout" }} , 
 	{ "name": "s_evIn_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_evIn", "role": "empty_n" }} , 
 	{ "name": "s_evIn_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_evIn", "role": "read" }} , 
 	{ "name": "s_evOut_din", "direction": "out", "datatype": "sc_lv", "bitwidth":33, "type": "signal", "bundle":{"name": "s_evOut", "role": "din" }} , 
 	{ "name": "s_evOut_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_evOut", "role": "full_n" }} , 
 	{ "name": "s_evOut_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_evOut", "role": "write" }} , 
 	{ "name": "build_all_samples", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "build_all_samples", "role": "default" }} , 
 	{ "name": "build_debug_headers", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "build_debug_headers", "role": "default" }} , 
 	{ "name": "enable_cm", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "enable_cm", "role": "default" }} , 
 	{ "name": "fiber", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "fiber", "role": "default" }} , 
 	{ "name": "m_offset_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "m_offset", "role": "address0" }} , 
 	{ "name": "m_offset_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_offset", "role": "ce0" }} , 
 	{ "name": "m_offset_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "m_offset", "role": "d0" }} , 
 	{ "name": "m_offset_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "m_offset", "role": "q0" }} , 
 	{ "name": "m_offset_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_offset", "role": "we0" }} , 
 	{ "name": "m_offset_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "m_offset", "role": "address1" }} , 
 	{ "name": "m_offset_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_offset", "role": "ce1" }} , 
 	{ "name": "m_offset_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "m_offset", "role": "d1" }} , 
 	{ "name": "m_offset_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "m_offset", "role": "q1" }} , 
 	{ "name": "m_offset_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_offset", "role": "we1" }} , 
 	{ "name": "m_apvThr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "m_apvThr", "role": "address0" }} , 
 	{ "name": "m_apvThr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_apvThr", "role": "ce0" }} , 
 	{ "name": "m_apvThr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "m_apvThr", "role": "d0" }} , 
 	{ "name": "m_apvThr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "m_apvThr", "role": "q0" }} , 
 	{ "name": "m_apvThr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_apvThr", "role": "we0" }} , 
 	{ "name": "m_apvThr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "m_apvThr", "role": "address1" }} , 
 	{ "name": "m_apvThr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_apvThr", "role": "ce1" }} , 
 	{ "name": "m_apvThr_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "m_apvThr", "role": "d1" }} , 
 	{ "name": "m_apvThr_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "m_apvThr", "role": "q1" }} , 
 	{ "name": "m_apvThr_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_apvThr", "role": "we1" }} , 
 	{ "name": "m_apvThrB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "m_apvThrB", "role": "address0" }} , 
 	{ "name": "m_apvThrB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_apvThrB", "role": "ce0" }} , 
 	{ "name": "m_apvThrB_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "m_apvThrB", "role": "d0" }} , 
 	{ "name": "m_apvThrB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "m_apvThrB", "role": "q0" }} , 
 	{ "name": "m_apvThrB_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_apvThrB", "role": "we0" }} , 
 	{ "name": "m_apvThrB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "m_apvThrB", "role": "address1" }} , 
 	{ "name": "m_apvThrB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_apvThrB", "role": "ce1" }} , 
 	{ "name": "m_apvThrB_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "m_apvThrB", "role": "d1" }} , 
 	{ "name": "m_apvThrB_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "m_apvThrB", "role": "q1" }} , 
 	{ "name": "m_apvThrB_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_apvThrB", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "5", "13", "15", "16", "17", "18", "19", "20", "21", "22", "23"],
		"CDFG" : "mpd_data_processor_main",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "114", "EstimateLatencyMax" : "114",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "frame_decoder_U0"},
			{"ID" : "4", "Name" : "avgB_U0"},
			{"ID" : "13", "Name" : "event_writer_U0"}],
		"OutputProcess" : [
			{"ID" : "13", "Name" : "event_writer_U0"}],
		"Port" : [
			{"Name" : "s_evIn", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "frame_decoder_U0", "Port" : "s_evIn"}]},
			{"Name" : "s_evOut", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "event_writer_U0", "Port" : "s_evOut"}]},
			{"Name" : "build_all_samples", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "build_debug_headers", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "enable_cm", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "fiber", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "m_offset", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "frame_decoder_U0", "Port" : "m_offset"}]},
			{"Name" : "m_apvThr", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "event_writer_U0", "Port" : "m_apvThr"}]},
			{"Name" : "m_apvThrB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "avgB_U0", "Port" : "m_apvThrB"}]},
			{"Name" : "ps", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "frame_decoder_U0", "Port" : "ps"}]},
			{"Name" : "avg_pre_header_sum", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "frame_decoder_U0", "Port" : "avg_pre_header_sum"}]},
			{"Name" : "avg_pre_header_cnt", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "frame_decoder_U0", "Port" : "avg_pre_header_cnt"}]},
			{"Name" : "mpd_id", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "frame_decoder_U0", "Port" : "mpd_id"}]},
			{"Name" : "avg_pre_header_tag", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "frame_decoder_U0", "Port" : "avg_pre_header_tag"}]},
			{"Name" : "s_avgAPreHeader", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "avgHeaderDiv_U0", "Port" : "s_avgAPreHeader"},
					{"ID" : "1", "SubInstance" : "frame_decoder_U0", "Port" : "s_avgAPreHeader"}]},
			{"Name" : "apv_id", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "frame_decoder_U0", "Port" : "apv_id"}]},
			{"Name" : "adc_word_cnt", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "frame_decoder_U0", "Port" : "adc_word_cnt"}]},
			{"Name" : "minmax_min", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "frame_decoder_U0", "Port" : "minmax_min"}]},
			{"Name" : "minmax_max", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "frame_decoder_U0", "Port" : "minmax_max"}]},
			{"Name" : "s_avgASamples", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "frame_decoder_U0", "Port" : "s_avgASamples"},
					{"ID" : "4", "SubInstance" : "avgB_U0", "Port" : "s_avgASamples"}]},
			{"Name" : "last", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "avgHeaderDiv_U0", "Port" : "last"}]},
			{"Name" : "s_avgBPreHeader", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "avgHeaderDiv_U0", "Port" : "s_avgBPreHeader"},
					{"ID" : "4", "SubInstance" : "avgB_U0", "Port" : "s_avgBPreHeader"}]},
			{"Name" : "s_avgAHeader", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "avgHeaderDiv_U0", "Port" : "s_avgAHeader"},
					{"ID" : "4", "SubInstance" : "avgB_U0", "Port" : "s_avgAHeader"}]},
			{"Name" : "s_avgBHeader", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "avgHeaderDiv_U0", "Port" : "s_avgBHeader"},
					{"ID" : "13", "SubInstance" : "event_writer_U0", "Port" : "s_avgBHeader"}]},
			{"Name" : "ps_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "avgB_U0", "Port" : "ps_2"}]},
			{"Name" : "avg_pre_header_sum_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "avgB_U0", "Port" : "avg_pre_header_sum_1"}]},
			{"Name" : "avg_pre_header_cnt_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "avgB_U0", "Port" : "avg_pre_header_cnt_1"}]},
			{"Name" : "apv_id_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "avgB_U0", "Port" : "apv_id_2"}]},
			{"Name" : "avg_pre_header_tag_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "avgB_U0", "Port" : "avg_pre_header_tag_1"}]},
			{"Name" : "n", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "avgB_U0", "Port" : "n"}]},
			{"Name" : "avg", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "avgB_U0", "Port" : "avg"}]},
			{"Name" : "s_avgBSamplesOut", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "avgBSamplesFifoProc_U0", "Port" : "s_avgBSamplesOut"},
					{"ID" : "4", "SubInstance" : "avgB_U0", "Port" : "s_avgBSamplesOut"}]},
			{"Name" : "wr_idx", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "avgBSamplesFifoProc_U0", "Port" : "wr_idx"}]},
			{"Name" : "avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_5", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "avgBSamplesFifoProc_U0", "Port" : "avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_5"}]},
			{"Name" : "avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_4", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "avgBSamplesFifoProc_U0", "Port" : "avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_4"}]},
			{"Name" : "avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_3", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "avgBSamplesFifoProc_U0", "Port" : "avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_3"}]},
			{"Name" : "avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_2", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "avgBSamplesFifoProc_U0", "Port" : "avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_2"}]},
			{"Name" : "avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_1", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "avgBSamplesFifoProc_U0", "Port" : "avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_1"}]},
			{"Name" : "avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "avgBSamplesFifoProc_U0", "Port" : "avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples"}]},
			{"Name" : "s_avgBSamplesIn", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "avgBSamplesFifoProc_U0", "Port" : "s_avgBSamplesIn"},
					{"ID" : "13", "SubInstance" : "event_writer_U0", "Port" : "s_avgBSamplesIn"}]},
			{"Name" : "wr_pos", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "avgBSamplesFifoProc_U0", "Port" : "wr_pos"}]},
			{"Name" : "ps_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "event_writer_U0", "Port" : "ps_1"}]},
			{"Name" : "apv_id_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "event_writer_U0", "Port" : "apv_id_1"}]},
			{"Name" : "sample_n", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "event_writer_U0", "Port" : "sample_n"}]},
			{"Name" : "event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "event_writer_U0", "Port" : "event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_5"}]},
			{"Name" : "event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "event_writer_U0", "Port" : "event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_4"}]},
			{"Name" : "sum", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "event_writer_U0", "Port" : "sum"}]},
			{"Name" : "event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "event_writer_U0", "Port" : "event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_3"}]},
			{"Name" : "event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "event_writer_U0", "Port" : "event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_2"}]},
			{"Name" : "cnt", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "event_writer_U0", "Port" : "cnt"}]},
			{"Name" : "avgB_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "event_writer_U0", "Port" : "avgB_1"}]},
			{"Name" : "event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "event_writer_U0", "Port" : "event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_1"}]},
			{"Name" : "event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "event_writer_U0", "Port" : "event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.frame_decoder_U0", "Parent" : "0",
		"CDFG" : "frame_decoder",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "2",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_evIn", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_evIn_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_offset", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ps", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "avg_pre_header_sum", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "avg_pre_header_cnt", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mpd_id", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "avg_pre_header_tag", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "s_avgAPreHeader", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["2"], "DependentChan" : "15", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgAPreHeader_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "apv_id", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "adc_word_cnt", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "minmax_min", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "minmax_max", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "s_avgASamples", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["4"], "DependentChan" : "16", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgASamples_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.avgHeaderDiv_U0", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "avgHeaderDiv",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "64",
		"VariableLatency" : "0", "ExactLatency" : "88", "EstimateLatencyMin" : "88", "EstimateLatencyMax" : "88",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_avgHeaderDiv_U0_U",
		"Port" : [
			{"Name" : "s_avgAPreHeader", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "15", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgAPreHeader_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "last", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "s_avgBPreHeader", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgBPreHeader_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_avgAHeader", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["4"], "DependentChan" : "18", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgAHeader_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_avgBHeader", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "19", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgBHeader_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.avgHeaderDiv_U0.sdiv_20ns_9ns_13_24_1_U5", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.avgB_U0", "Parent" : "0",
		"CDFG" : "avgB",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "2",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "m_apvThrB", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ps_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "avg_pre_header_sum_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "avg_pre_header_cnt_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "s_avgAHeader", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "18", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgAHeader_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "apv_id_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "s_avgBPreHeader", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["2"], "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgBPreHeader_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "avg_pre_header_tag_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "n", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "avg", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "s_avgASamples", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "16", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgASamples_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_avgBSamplesOut", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["5"], "DependentChan" : "20", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgBSamplesOut_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.avgBSamplesFifoProc_U0", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "11", "12"],
		"CDFG" : "avgBSamplesFifoProc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "7",
		"VariableLatency" : "0", "ExactLatency" : "17", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"StartSource" : "4",
		"StartFifo" : "start_for_avgBSamplesFifoProc_U0_U",
		"Port" : [
			{"Name" : "s_avgBSamplesOut", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "20", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgBSamplesOut_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wr_idx", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_5", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_4", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_3", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_2", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "s_avgBSamplesIn", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "21", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgBSamplesIn_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wr_pos", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.avgBSamplesFifoProc_U0.srem_4ns_4ns_4_8_1_U16", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.avgBSamplesFifoProc_U0.avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_5_fifo_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.avgBSamplesFifoProc_U0.avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_4_fifo_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.avgBSamplesFifoProc_U0.avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_3_fifo_U", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.avgBSamplesFifoProc_U0.avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_2_fifo_U", "Parent" : "5"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.avgBSamplesFifoProc_U0.avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_1_fifo_U", "Parent" : "5"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.avgBSamplesFifoProc_U0.avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_fifo_U", "Parent" : "5"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.event_writer_U0", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "event_writer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "2",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_evOut", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s_evOut_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "build_all_samples", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "enable_cm", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "fiber", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "m_apvThr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ps_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "apv_id_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sample_n", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sum", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "s_avgBHeader", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "19", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgBHeader_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cnt", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "avgB_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_avgBSamplesIn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "21", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgBSamplesIn_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.event_writer_U0.avgB_1_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_avgAPreHeader_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_avgASamples_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_avgBPreHeader_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_avgAHeader_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_avgBHeader_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_avgBSamplesOut_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_avgBSamplesIn_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_avgHeaderDiv_U0_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_avgBSamplesFifoProc_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mpd_data_processor_main {
		s_evIn {Type I LastRead 1 FirstWrite -1}
		s_evOut {Type O LastRead -1 FirstWrite 1}
		build_all_samples {Type I LastRead 114 FirstWrite -1}
		build_debug_headers {Type I LastRead -1 FirstWrite -1}
		enable_cm {Type I LastRead 114 FirstWrite -1}
		fiber {Type I LastRead 114 FirstWrite -1}
		m_offset {Type I LastRead 1 FirstWrite -1}
		m_apvThr {Type I LastRead 0 FirstWrite -1}
		m_apvThrB {Type I LastRead 0 FirstWrite -1}
		ps {Type IO LastRead -1 FirstWrite -1}
		avg_pre_header_sum {Type IO LastRead -1 FirstWrite -1}
		avg_pre_header_cnt {Type IO LastRead -1 FirstWrite -1}
		mpd_id {Type IO LastRead -1 FirstWrite -1}
		avg_pre_header_tag {Type IO LastRead -1 FirstWrite -1}
		s_avgAPreHeader {Type IO LastRead -1 FirstWrite -1}
		apv_id {Type IO LastRead -1 FirstWrite -1}
		adc_word_cnt {Type IO LastRead -1 FirstWrite -1}
		minmax_min {Type IO LastRead -1 FirstWrite -1}
		minmax_max {Type IO LastRead -1 FirstWrite -1}
		s_avgASamples {Type IO LastRead -1 FirstWrite -1}
		last {Type IO LastRead -1 FirstWrite -1}
		s_avgBPreHeader {Type IO LastRead -1 FirstWrite -1}
		s_avgAHeader {Type IO LastRead -1 FirstWrite -1}
		s_avgBHeader {Type IO LastRead -1 FirstWrite -1}
		ps_2 {Type IO LastRead -1 FirstWrite -1}
		avg_pre_header_sum_1 {Type IO LastRead -1 FirstWrite -1}
		avg_pre_header_cnt_1 {Type IO LastRead -1 FirstWrite -1}
		apv_id_2 {Type IO LastRead -1 FirstWrite -1}
		avg_pre_header_tag_1 {Type IO LastRead -1 FirstWrite -1}
		n {Type IO LastRead -1 FirstWrite -1}
		avg {Type IO LastRead -1 FirstWrite -1}
		s_avgBSamplesOut {Type IO LastRead -1 FirstWrite -1}
		wr_idx {Type IO LastRead -1 FirstWrite -1}
		avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_5 {Type IO LastRead -1 FirstWrite -1}
		avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_4 {Type IO LastRead -1 FirstWrite -1}
		avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_3 {Type IO LastRead -1 FirstWrite -1}
		avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_2 {Type IO LastRead -1 FirstWrite -1}
		avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_1 {Type IO LastRead -1 FirstWrite -1}
		avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples {Type IO LastRead -1 FirstWrite -1}
		s_avgBSamplesIn {Type IO LastRead -1 FirstWrite -1}
		wr_pos {Type IO LastRead -1 FirstWrite -1}
		ps_1 {Type IO LastRead -1 FirstWrite -1}
		apv_id_1 {Type IO LastRead -1 FirstWrite -1}
		sample_n {Type IO LastRead -1 FirstWrite -1}
		event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_5 {Type IO LastRead -1 FirstWrite -1}
		event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_4 {Type IO LastRead -1 FirstWrite -1}
		sum {Type IO LastRead -1 FirstWrite -1}
		event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_3 {Type IO LastRead -1 FirstWrite -1}
		event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_2 {Type IO LastRead -1 FirstWrite -1}
		cnt {Type IO LastRead -1 FirstWrite -1}
		avgB_1 {Type IO LastRead -1 FirstWrite -1}
		event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_1 {Type IO LastRead -1 FirstWrite -1}
		event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s {Type IO LastRead -1 FirstWrite -1}}
	frame_decoder {
		s_evIn {Type I LastRead 1 FirstWrite -1}
		m_offset {Type I LastRead 1 FirstWrite -1}
		ps {Type IO LastRead -1 FirstWrite -1}
		avg_pre_header_sum {Type IO LastRead -1 FirstWrite -1}
		avg_pre_header_cnt {Type IO LastRead -1 FirstWrite -1}
		mpd_id {Type IO LastRead -1 FirstWrite -1}
		avg_pre_header_tag {Type IO LastRead -1 FirstWrite -1}
		s_avgAPreHeader {Type O LastRead -1 FirstWrite 2}
		apv_id {Type IO LastRead -1 FirstWrite -1}
		adc_word_cnt {Type IO LastRead -1 FirstWrite -1}
		minmax_min {Type IO LastRead -1 FirstWrite -1}
		minmax_max {Type IO LastRead -1 FirstWrite -1}
		s_avgASamples {Type O LastRead -1 FirstWrite 2}}
	avgHeaderDiv {
		s_avgAPreHeader {Type I LastRead 63 FirstWrite -1}
		last {Type IO LastRead -1 FirstWrite -1}
		s_avgBPreHeader {Type I LastRead 63 FirstWrite -1}
		s_avgAHeader {Type O LastRead -1 FirstWrite 88}
		s_avgBHeader {Type O LastRead -1 FirstWrite 88}}
	avgB {
		m_apvThrB {Type I LastRead 0 FirstWrite -1}
		ps_2 {Type IO LastRead -1 FirstWrite -1}
		avg_pre_header_sum_1 {Type IO LastRead -1 FirstWrite -1}
		avg_pre_header_cnt_1 {Type IO LastRead -1 FirstWrite -1}
		s_avgAHeader {Type I LastRead 1 FirstWrite -1}
		apv_id_2 {Type IO LastRead -1 FirstWrite -1}
		s_avgBPreHeader {Type O LastRead -1 FirstWrite 2}
		avg_pre_header_tag_1 {Type IO LastRead -1 FirstWrite -1}
		n {Type IO LastRead -1 FirstWrite -1}
		avg {Type IO LastRead -1 FirstWrite -1}
		s_avgASamples {Type I LastRead 1 FirstWrite -1}
		s_avgBSamplesOut {Type O LastRead -1 FirstWrite 1}}
	avgBSamplesFifoProc {
		s_avgBSamplesOut {Type I LastRead 6 FirstWrite -1}
		wr_idx {Type IO LastRead -1 FirstWrite -1}
		avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_5 {Type IO LastRead -1 FirstWrite -1}
		avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_4 {Type IO LastRead -1 FirstWrite -1}
		avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_3 {Type IO LastRead -1 FirstWrite -1}
		avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_2 {Type IO LastRead -1 FirstWrite -1}
		avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_1 {Type IO LastRead -1 FirstWrite -1}
		avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples {Type IO LastRead -1 FirstWrite -1}
		s_avgBSamplesIn {Type O LastRead -1 FirstWrite 15}
		wr_pos {Type IO LastRead -1 FirstWrite -1}}
	event_writer {
		s_evOut {Type O LastRead -1 FirstWrite 1}
		build_all_samples {Type I LastRead 0 FirstWrite -1}
		enable_cm {Type I LastRead 1 FirstWrite -1}
		fiber {Type I LastRead 1 FirstWrite -1}
		m_apvThr {Type I LastRead 0 FirstWrite -1}
		ps_1 {Type IO LastRead -1 FirstWrite -1}
		apv_id_1 {Type IO LastRead -1 FirstWrite -1}
		sample_n {Type IO LastRead -1 FirstWrite -1}
		event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_5 {Type IO LastRead -1 FirstWrite -1}
		event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_4 {Type IO LastRead -1 FirstWrite -1}
		sum {Type IO LastRead -1 FirstWrite -1}
		event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_3 {Type IO LastRead -1 FirstWrite -1}
		event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_2 {Type IO LastRead -1 FirstWrite -1}
		s_avgBHeader {Type I LastRead 1 FirstWrite -1}
		cnt {Type IO LastRead -1 FirstWrite -1}
		avgB_1 {Type IO LastRead -1 FirstWrite -1}
		s_avgBSamplesIn {Type I LastRead 1 FirstWrite -1}
		event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_1 {Type IO LastRead -1 FirstWrite -1}
		event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "114", "Max" : "114"}
	, {"Name" : "Interval", "Min" : "64", "Max" : "64"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_evIn { ap_fifo {  { s_evIn_dout fifo_port_we 0 33 }  { s_evIn_empty_n fifo_status 0 1 }  { s_evIn_read fifo_data 1 1 } } }
	s_evOut { ap_fifo {  { s_evOut_din fifo_port_we 1 33 }  { s_evOut_full_n fifo_status 0 1 }  { s_evOut_write fifo_data 1 1 } } }
	build_all_samples { ap_stable {  { build_all_samples in_data 0 1 } } }
	build_debug_headers { ap_stable {  { build_debug_headers in_data 0 1 } } }
	enable_cm { ap_stable {  { enable_cm in_data 0 1 } } }
	fiber { ap_stable {  { fiber in_data 0 5 } } }
	m_offset { ap_memory {  { m_offset_address0 mem_address 1 10 }  { m_offset_ce0 mem_ce 1 1 }  { m_offset_d0 mem_din 1 26 }  { m_offset_q0 mem_dout 0 26 }  { m_offset_we0 mem_we 1 1 }  { m_offset_address1 mem_address 1 10 }  { m_offset_ce1 mem_ce 1 1 }  { m_offset_d1 mem_din 1 26 }  { m_offset_q1 mem_dout 0 26 }  { m_offset_we1 mem_we 1 1 } } }
	m_apvThr { ap_memory {  { m_apvThr_address0 mem_address 1 11 }  { m_apvThr_ce0 mem_ce 1 1 }  { m_apvThr_d0 mem_din 1 13 }  { m_apvThr_q0 mem_dout 0 13 }  { m_apvThr_we0 mem_we 1 1 }  { m_apvThr_address1 mem_address 1 11 }  { m_apvThr_ce1 mem_ce 1 1 }  { m_apvThr_d1 mem_din 1 13 }  { m_apvThr_q1 mem_dout 0 13 }  { m_apvThr_we1 mem_we 1 1 } } }
	m_apvThrB { ap_memory {  { m_apvThrB_address0 mem_address 1 11 }  { m_apvThrB_ce0 mem_ce 1 1 }  { m_apvThrB_d0 mem_din 1 13 }  { m_apvThrB_q0 mem_dout 0 13 }  { m_apvThrB_we0 mem_we 1 1 }  { m_apvThrB_address1 mem_address 1 11 }  { m_apvThrB_ce1 mem_ce 1 1 }  { m_apvThrB_d1 mem_din 1 13 }  { m_apvThrB_q1 mem_dout 0 13 }  { m_apvThrB_we1 mem_we 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	s_evIn { fifo_read 1 no_conditional }
	s_evOut { fifo_write 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
