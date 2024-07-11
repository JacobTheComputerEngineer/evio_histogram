set moduleName event_writer
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {event_writer}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_evOut int 33 regular {fifo 1 volatile }  }
	{ build_all_samples int 1 regular {ap_stable 0} }
	{ enable_cm int 1 regular {ap_stable 0} }
	{ fiber int 5 regular {ap_stable 0} }
	{ m_apvThr int 13 regular {array 2048 { 1 3 } 1 1 }  }
	{ s_avgBHeader int 32 regular {fifo 0 volatile } {global 0}  }
	{ s_avgBSamplesIn int 32 regular {fifo 0 volatile } {global 0}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "s_evOut", "interface" : "fifo", "bitwidth" : 33, "direction" : "WRITEONLY"} , 
 	{ "Name" : "build_all_samples", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "enable_cm", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "fiber", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "m_apvThr", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "s_avgBHeader", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "s_avgBSamplesIn", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_evOut_din sc_out sc_lv 33 signal 0 } 
	{ s_evOut_full_n sc_in sc_logic 1 signal 0 } 
	{ s_evOut_write sc_out sc_logic 1 signal 0 } 
	{ s_avgBSamplesIn_dout sc_in sc_lv 32 signal 6 } 
	{ s_avgBSamplesIn_num_data_valid sc_in sc_lv 2 signal 6 } 
	{ s_avgBSamplesIn_fifo_cap sc_in sc_lv 2 signal 6 } 
	{ s_avgBSamplesIn_empty_n sc_in sc_logic 1 signal 6 } 
	{ s_avgBSamplesIn_read sc_out sc_logic 1 signal 6 } 
	{ s_avgBHeader_dout sc_in sc_lv 32 signal 5 } 
	{ s_avgBHeader_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ s_avgBHeader_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ s_avgBHeader_empty_n sc_in sc_logic 1 signal 5 } 
	{ s_avgBHeader_read sc_out sc_logic 1 signal 5 } 
	{ build_all_samples sc_in sc_lv 1 signal 1 } 
	{ enable_cm sc_in sc_lv 1 signal 2 } 
	{ fiber sc_in sc_lv 5 signal 3 } 
	{ m_apvThr_address0 sc_out sc_lv 11 signal 4 } 
	{ m_apvThr_ce0 sc_out sc_logic 1 signal 4 } 
	{ m_apvThr_q0 sc_in sc_lv 13 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_evOut_din", "direction": "out", "datatype": "sc_lv", "bitwidth":33, "type": "signal", "bundle":{"name": "s_evOut", "role": "din" }} , 
 	{ "name": "s_evOut_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_evOut", "role": "full_n" }} , 
 	{ "name": "s_evOut_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_evOut", "role": "write" }} , 
 	{ "name": "s_avgBSamplesIn_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_avgBSamplesIn", "role": "dout" }} , 
 	{ "name": "s_avgBSamplesIn_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_avgBSamplesIn", "role": "num_data_valid" }} , 
 	{ "name": "s_avgBSamplesIn_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_avgBSamplesIn", "role": "fifo_cap" }} , 
 	{ "name": "s_avgBSamplesIn_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgBSamplesIn", "role": "empty_n" }} , 
 	{ "name": "s_avgBSamplesIn_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgBSamplesIn", "role": "read" }} , 
 	{ "name": "s_avgBHeader_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_avgBHeader", "role": "dout" }} , 
 	{ "name": "s_avgBHeader_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_avgBHeader", "role": "num_data_valid" }} , 
 	{ "name": "s_avgBHeader_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_avgBHeader", "role": "fifo_cap" }} , 
 	{ "name": "s_avgBHeader_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgBHeader", "role": "empty_n" }} , 
 	{ "name": "s_avgBHeader_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgBHeader", "role": "read" }} , 
 	{ "name": "build_all_samples", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "build_all_samples", "role": "default" }} , 
 	{ "name": "enable_cm", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "enable_cm", "role": "default" }} , 
 	{ "name": "fiber", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "fiber", "role": "default" }} , 
 	{ "name": "m_apvThr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "m_apvThr", "role": "address0" }} , 
 	{ "name": "m_apvThr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_apvThr", "role": "ce0" }} , 
 	{ "name": "m_apvThr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "m_apvThr", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
			{"Name" : "s_avgBHeader", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgBHeader_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cnt", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "avgB_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_avgBSamplesIn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgBSamplesIn_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "event_writer_stream_stream_stream_ap_uint_ap_uint_ap_uint_ap_int_128_s", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.avgB_1_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_evOut { ap_fifo {  { s_evOut_din fifo_port_we 1 33 }  { s_evOut_full_n fifo_status 0 1 }  { s_evOut_write fifo_data 1 1 } } }
	build_all_samples { ap_stable {  { build_all_samples in_data 0 1 } } }
	enable_cm { ap_stable {  { enable_cm in_data 0 1 } } }
	fiber { ap_stable {  { fiber in_data 0 5 } } }
	m_apvThr { ap_memory {  { m_apvThr_address0 mem_address 1 11 }  { m_apvThr_ce0 mem_ce 1 1 }  { m_apvThr_q0 in_data 0 13 } } }
	s_avgBHeader { ap_fifo {  { s_avgBHeader_dout fifo_port_we 0 32 }  { s_avgBHeader_num_data_valid fifo_status_num_data_valid 0 3 }  { s_avgBHeader_fifo_cap fifo_update 0 3 }  { s_avgBHeader_empty_n fifo_status 0 1 }  { s_avgBHeader_read fifo_data 1 1 } } }
	s_avgBSamplesIn { ap_fifo {  { s_avgBSamplesIn_dout fifo_port_we 0 32 }  { s_avgBSamplesIn_num_data_valid fifo_status_num_data_valid 0 2 }  { s_avgBSamplesIn_fifo_cap fifo_update 0 2 }  { s_avgBSamplesIn_empty_n fifo_status 0 1 }  { s_avgBSamplesIn_read fifo_data 1 1 } } }
}
