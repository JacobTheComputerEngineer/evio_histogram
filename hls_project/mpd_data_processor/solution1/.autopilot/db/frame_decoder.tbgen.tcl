set moduleName frame_decoder
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
set C_modelName {frame_decoder}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_evIn int 33 regular {fifo 0 volatile }  }
	{ m_offset int 26 regular {array 1024 { 1 3 } 1 1 }  }
	{ s_avgAPreHeader int 64 regular {fifo 1 volatile } {global 1}  }
	{ s_avgASamples int 13 regular {fifo 1 volatile } {global 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "s_evIn", "interface" : "fifo", "bitwidth" : 33, "direction" : "READONLY"} , 
 	{ "Name" : "m_offset", "interface" : "memory", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "s_avgAPreHeader", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "s_avgASamples", "interface" : "fifo", "bitwidth" : 13, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_evIn_dout sc_in sc_lv 33 signal 0 } 
	{ s_evIn_empty_n sc_in sc_logic 1 signal 0 } 
	{ s_evIn_read sc_out sc_logic 1 signal 0 } 
	{ s_avgASamples_din sc_out sc_lv 13 signal 3 } 
	{ s_avgASamples_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ s_avgASamples_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ s_avgASamples_full_n sc_in sc_logic 1 signal 3 } 
	{ s_avgASamples_write sc_out sc_logic 1 signal 3 } 
	{ s_avgAPreHeader_din sc_out sc_lv 64 signal 2 } 
	{ s_avgAPreHeader_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ s_avgAPreHeader_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ s_avgAPreHeader_full_n sc_in sc_logic 1 signal 2 } 
	{ s_avgAPreHeader_write sc_out sc_logic 1 signal 2 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ m_offset_address0 sc_out sc_lv 10 signal 1 } 
	{ m_offset_ce0 sc_out sc_logic 1 signal 1 } 
	{ m_offset_q0 sc_in sc_lv 26 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_evIn_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":33, "type": "signal", "bundle":{"name": "s_evIn", "role": "dout" }} , 
 	{ "name": "s_evIn_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_evIn", "role": "empty_n" }} , 
 	{ "name": "s_evIn_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_evIn", "role": "read" }} , 
 	{ "name": "s_avgASamples_din", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "s_avgASamples", "role": "din" }} , 
 	{ "name": "s_avgASamples_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_avgASamples", "role": "num_data_valid" }} , 
 	{ "name": "s_avgASamples_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_avgASamples", "role": "fifo_cap" }} , 
 	{ "name": "s_avgASamples_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgASamples", "role": "full_n" }} , 
 	{ "name": "s_avgASamples_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgASamples", "role": "write" }} , 
 	{ "name": "s_avgAPreHeader_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_avgAPreHeader", "role": "din" }} , 
 	{ "name": "s_avgAPreHeader_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_avgAPreHeader", "role": "num_data_valid" }} , 
 	{ "name": "s_avgAPreHeader_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_avgAPreHeader", "role": "fifo_cap" }} , 
 	{ "name": "s_avgAPreHeader_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgAPreHeader", "role": "full_n" }} , 
 	{ "name": "s_avgAPreHeader_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgAPreHeader", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "m_offset_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "m_offset", "role": "address0" }} , 
 	{ "name": "m_offset_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_offset", "role": "ce0" }} , 
 	{ "name": "m_offset_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "m_offset", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "s_avgAPreHeader", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgAPreHeader_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "apv_id", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "adc_word_cnt", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "minmax_min", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "minmax_max", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "s_avgASamples", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgASamples_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
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
		s_avgASamples {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_evIn { ap_fifo {  { s_evIn_dout fifo_port_we 0 33 }  { s_evIn_empty_n fifo_status 0 1 }  { s_evIn_read fifo_data 1 1 } } }
	m_offset { ap_memory {  { m_offset_address0 mem_address 1 10 }  { m_offset_ce0 mem_ce 1 1 }  { m_offset_q0 in_data 0 26 } } }
	s_avgAPreHeader { ap_fifo {  { s_avgAPreHeader_din fifo_port_we 1 64 }  { s_avgAPreHeader_num_data_valid fifo_status_num_data_valid 0 2 }  { s_avgAPreHeader_fifo_cap fifo_update 0 2 }  { s_avgAPreHeader_full_n fifo_status 0 1 }  { s_avgAPreHeader_write fifo_data 1 1 } } }
	s_avgASamples { ap_fifo {  { s_avgASamples_din fifo_port_we 1 13 }  { s_avgASamples_num_data_valid fifo_status_num_data_valid 0 3 }  { s_avgASamples_fifo_cap fifo_update 0 3 }  { s_avgASamples_full_n fifo_status 0 1 }  { s_avgASamples_write fifo_data 1 1 } } }
}
