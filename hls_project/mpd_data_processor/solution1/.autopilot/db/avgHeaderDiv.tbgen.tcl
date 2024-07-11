set moduleName avgHeaderDiv
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
set C_modelName {avgHeaderDiv}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_avgAPreHeader int 64 regular {fifo 0 volatile } {global 0}  }
	{ s_avgBPreHeader int 64 regular {fifo 0 volatile } {global 0}  }
	{ s_avgAHeader int 32 regular {fifo 1 volatile } {global 1}  }
	{ s_avgBHeader int 32 regular {fifo 1 volatile } {global 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "s_avgAPreHeader", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "s_avgBPreHeader", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "s_avgAHeader", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "s_avgBHeader", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_avgAPreHeader_dout sc_in sc_lv 64 signal 0 } 
	{ s_avgAPreHeader_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ s_avgAPreHeader_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ s_avgAPreHeader_empty_n sc_in sc_logic 1 signal 0 } 
	{ s_avgAPreHeader_read sc_out sc_logic 1 signal 0 } 
	{ s_avgBPreHeader_dout sc_in sc_lv 64 signal 1 } 
	{ s_avgBPreHeader_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ s_avgBPreHeader_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ s_avgBPreHeader_empty_n sc_in sc_logic 1 signal 1 } 
	{ s_avgBPreHeader_read sc_out sc_logic 1 signal 1 } 
	{ s_avgAHeader_din sc_out sc_lv 32 signal 2 } 
	{ s_avgAHeader_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ s_avgAHeader_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ s_avgAHeader_full_n sc_in sc_logic 1 signal 2 } 
	{ s_avgAHeader_write sc_out sc_logic 1 signal 2 } 
	{ s_avgBHeader_din sc_out sc_lv 32 signal 3 } 
	{ s_avgBHeader_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ s_avgBHeader_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ s_avgBHeader_full_n sc_in sc_logic 1 signal 3 } 
	{ s_avgBHeader_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_avgAPreHeader_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_avgAPreHeader", "role": "dout" }} , 
 	{ "name": "s_avgAPreHeader_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_avgAPreHeader", "role": "num_data_valid" }} , 
 	{ "name": "s_avgAPreHeader_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_avgAPreHeader", "role": "fifo_cap" }} , 
 	{ "name": "s_avgAPreHeader_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgAPreHeader", "role": "empty_n" }} , 
 	{ "name": "s_avgAPreHeader_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgAPreHeader", "role": "read" }} , 
 	{ "name": "s_avgBPreHeader_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_avgBPreHeader", "role": "dout" }} , 
 	{ "name": "s_avgBPreHeader_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_avgBPreHeader", "role": "num_data_valid" }} , 
 	{ "name": "s_avgBPreHeader_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_avgBPreHeader", "role": "fifo_cap" }} , 
 	{ "name": "s_avgBPreHeader_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgBPreHeader", "role": "empty_n" }} , 
 	{ "name": "s_avgBPreHeader_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgBPreHeader", "role": "read" }} , 
 	{ "name": "s_avgAHeader_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_avgAHeader", "role": "din" }} , 
 	{ "name": "s_avgAHeader_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_avgAHeader", "role": "num_data_valid" }} , 
 	{ "name": "s_avgAHeader_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_avgAHeader", "role": "fifo_cap" }} , 
 	{ "name": "s_avgAHeader_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgAHeader", "role": "full_n" }} , 
 	{ "name": "s_avgAHeader_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgAHeader", "role": "write" }} , 
 	{ "name": "s_avgBHeader_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_avgBHeader", "role": "din" }} , 
 	{ "name": "s_avgBHeader_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_avgBHeader", "role": "num_data_valid" }} , 
 	{ "name": "s_avgBHeader_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_avgBHeader", "role": "fifo_cap" }} , 
 	{ "name": "s_avgBHeader_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgBHeader", "role": "full_n" }} , 
 	{ "name": "s_avgBHeader_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgBHeader", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
		"Port" : [
			{"Name" : "s_avgAPreHeader", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgAPreHeader_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "last", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "s_avgBPreHeader", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgBPreHeader_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_avgAHeader", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgAHeader_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_avgBHeader", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgBHeader_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_20ns_9ns_13_24_1_U5", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	avgHeaderDiv {
		s_avgAPreHeader {Type I LastRead 63 FirstWrite -1}
		last {Type IO LastRead -1 FirstWrite -1}
		s_avgBPreHeader {Type I LastRead 63 FirstWrite -1}
		s_avgAHeader {Type O LastRead -1 FirstWrite 88}
		s_avgBHeader {Type O LastRead -1 FirstWrite 88}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "88", "Max" : "88"}
	, {"Name" : "Interval", "Min" : "64", "Max" : "64"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_avgAPreHeader { ap_fifo {  { s_avgAPreHeader_dout fifo_port_we 0 64 }  { s_avgAPreHeader_num_data_valid fifo_status_num_data_valid 0 2 }  { s_avgAPreHeader_fifo_cap fifo_update 0 2 }  { s_avgAPreHeader_empty_n fifo_status 0 1 }  { s_avgAPreHeader_read fifo_data 1 1 } } }
	s_avgBPreHeader { ap_fifo {  { s_avgBPreHeader_dout fifo_port_we 0 64 }  { s_avgBPreHeader_num_data_valid fifo_status_num_data_valid 0 2 }  { s_avgBPreHeader_fifo_cap fifo_update 0 2 }  { s_avgBPreHeader_empty_n fifo_status 0 1 }  { s_avgBPreHeader_read fifo_data 1 1 } } }
	s_avgAHeader { ap_fifo {  { s_avgAHeader_din fifo_port_we 1 32 }  { s_avgAHeader_num_data_valid fifo_status_num_data_valid 0 2 }  { s_avgAHeader_fifo_cap fifo_update 0 2 }  { s_avgAHeader_full_n fifo_status 0 1 }  { s_avgAHeader_write fifo_data 1 1 } } }
	s_avgBHeader { ap_fifo {  { s_avgBHeader_din fifo_port_we 1 32 }  { s_avgBHeader_num_data_valid fifo_status_num_data_valid 0 3 }  { s_avgBHeader_fifo_cap fifo_update 0 3 }  { s_avgBHeader_full_n fifo_status 0 1 }  { s_avgBHeader_write fifo_data 1 1 } } }
}
