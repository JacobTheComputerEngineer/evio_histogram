set moduleName avgBSamplesFifoProc
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
set C_modelName {avgBSamplesFifoProc}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_avgBSamplesOut int 13 regular {fifo 0 volatile } {global 0}  }
	{ s_avgBSamplesIn int 32 regular {fifo 1 volatile } {global 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "s_avgBSamplesOut", "interface" : "fifo", "bitwidth" : 13, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "s_avgBSamplesIn", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_avgBSamplesOut_dout sc_in sc_lv 13 signal 0 } 
	{ s_avgBSamplesOut_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ s_avgBSamplesOut_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ s_avgBSamplesOut_empty_n sc_in sc_logic 1 signal 0 } 
	{ s_avgBSamplesOut_read sc_out sc_logic 1 signal 0 } 
	{ s_avgBSamplesIn_din sc_out sc_lv 32 signal 1 } 
	{ s_avgBSamplesIn_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ s_avgBSamplesIn_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ s_avgBSamplesIn_full_n sc_in sc_logic 1 signal 1 } 
	{ s_avgBSamplesIn_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_avgBSamplesOut_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "s_avgBSamplesOut", "role": "dout" }} , 
 	{ "name": "s_avgBSamplesOut_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_avgBSamplesOut", "role": "num_data_valid" }} , 
 	{ "name": "s_avgBSamplesOut_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_avgBSamplesOut", "role": "fifo_cap" }} , 
 	{ "name": "s_avgBSamplesOut_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgBSamplesOut", "role": "empty_n" }} , 
 	{ "name": "s_avgBSamplesOut_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgBSamplesOut", "role": "read" }} , 
 	{ "name": "s_avgBSamplesIn_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_avgBSamplesIn", "role": "din" }} , 
 	{ "name": "s_avgBSamplesIn_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_avgBSamplesIn", "role": "num_data_valid" }} , 
 	{ "name": "s_avgBSamplesIn_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_avgBSamplesIn", "role": "fifo_cap" }} , 
 	{ "name": "s_avgBSamplesIn_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgBSamplesIn", "role": "full_n" }} , 
 	{ "name": "s_avgBSamplesIn_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgBSamplesIn", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
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
		"Port" : [
			{"Name" : "s_avgBSamplesOut", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgBSamplesOut_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wr_idx", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_5", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_4", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_3", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_2", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "s_avgBSamplesIn", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgBSamplesIn_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wr_pos", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srem_4ns_4ns_4_8_1_U16", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_5_fifo_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_4_fifo_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_3_fifo_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_2_fifo_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_1_fifo_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.avgBSamplesFifoProc_stream_stream_sample_data_pair_t_0_s_avgBSamples_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		wr_pos {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17", "Max" : "17"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "7"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_avgBSamplesOut { ap_fifo {  { s_avgBSamplesOut_dout fifo_port_we 0 13 }  { s_avgBSamplesOut_num_data_valid fifo_status_num_data_valid 0 2 }  { s_avgBSamplesOut_fifo_cap fifo_update 0 2 }  { s_avgBSamplesOut_empty_n fifo_status 0 1 }  { s_avgBSamplesOut_read fifo_data 1 1 } } }
	s_avgBSamplesIn { ap_fifo {  { s_avgBSamplesIn_din fifo_port_we 1 32 }  { s_avgBSamplesIn_num_data_valid fifo_status_num_data_valid 0 2 }  { s_avgBSamplesIn_fifo_cap fifo_update 0 2 }  { s_avgBSamplesIn_full_n fifo_status 0 1 }  { s_avgBSamplesIn_write fifo_data 1 1 } } }
}
