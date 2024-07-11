set moduleName avgB
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
set C_modelName {avgB}
set C_modelType { void 0 }
set C_modelArgList {
	{ m_apvThrB int 13 regular {array 2048 { 1 3 } 1 1 }  }
	{ s_avgAHeader int 32 regular {fifo 0 volatile } {global 0}  }
	{ s_avgBPreHeader int 64 regular {fifo 1 volatile } {global 1}  }
	{ s_avgASamples int 13 regular {fifo 0 volatile } {global 0}  }
	{ s_avgBSamplesOut int 13 regular {fifo 1 volatile } {global 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "m_apvThrB", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "s_avgAHeader", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "s_avgBPreHeader", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "s_avgASamples", "interface" : "fifo", "bitwidth" : 13, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "s_avgBSamplesOut", "interface" : "fifo", "bitwidth" : 13, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_avgASamples_dout sc_in sc_lv 13 signal 3 } 
	{ s_avgASamples_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ s_avgASamples_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ s_avgASamples_empty_n sc_in sc_logic 1 signal 3 } 
	{ s_avgASamples_read sc_out sc_logic 1 signal 3 } 
	{ s_avgBSamplesOut_din sc_out sc_lv 13 signal 4 } 
	{ s_avgBSamplesOut_num_data_valid sc_in sc_lv 2 signal 4 } 
	{ s_avgBSamplesOut_fifo_cap sc_in sc_lv 2 signal 4 } 
	{ s_avgBSamplesOut_full_n sc_in sc_logic 1 signal 4 } 
	{ s_avgBSamplesOut_write sc_out sc_logic 1 signal 4 } 
	{ s_avgAHeader_dout sc_in sc_lv 32 signal 1 } 
	{ s_avgAHeader_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ s_avgAHeader_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ s_avgAHeader_empty_n sc_in sc_logic 1 signal 1 } 
	{ s_avgAHeader_read sc_out sc_logic 1 signal 1 } 
	{ s_avgBPreHeader_din sc_out sc_lv 64 signal 2 } 
	{ s_avgBPreHeader_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ s_avgBPreHeader_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ s_avgBPreHeader_full_n sc_in sc_logic 1 signal 2 } 
	{ s_avgBPreHeader_write sc_out sc_logic 1 signal 2 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ m_apvThrB_address0 sc_out sc_lv 11 signal 0 } 
	{ m_apvThrB_ce0 sc_out sc_logic 1 signal 0 } 
	{ m_apvThrB_q0 sc_in sc_lv 13 signal 0 } 
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
 	{ "name": "s_avgASamples_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "s_avgASamples", "role": "dout" }} , 
 	{ "name": "s_avgASamples_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_avgASamples", "role": "num_data_valid" }} , 
 	{ "name": "s_avgASamples_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_avgASamples", "role": "fifo_cap" }} , 
 	{ "name": "s_avgASamples_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgASamples", "role": "empty_n" }} , 
 	{ "name": "s_avgASamples_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgASamples", "role": "read" }} , 
 	{ "name": "s_avgBSamplesOut_din", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "s_avgBSamplesOut", "role": "din" }} , 
 	{ "name": "s_avgBSamplesOut_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_avgBSamplesOut", "role": "num_data_valid" }} , 
 	{ "name": "s_avgBSamplesOut_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_avgBSamplesOut", "role": "fifo_cap" }} , 
 	{ "name": "s_avgBSamplesOut_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgBSamplesOut", "role": "full_n" }} , 
 	{ "name": "s_avgBSamplesOut_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgBSamplesOut", "role": "write" }} , 
 	{ "name": "s_avgAHeader_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_avgAHeader", "role": "dout" }} , 
 	{ "name": "s_avgAHeader_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_avgAHeader", "role": "num_data_valid" }} , 
 	{ "name": "s_avgAHeader_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_avgAHeader", "role": "fifo_cap" }} , 
 	{ "name": "s_avgAHeader_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgAHeader", "role": "empty_n" }} , 
 	{ "name": "s_avgAHeader_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgAHeader", "role": "read" }} , 
 	{ "name": "s_avgBPreHeader_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_avgBPreHeader", "role": "din" }} , 
 	{ "name": "s_avgBPreHeader_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_avgBPreHeader", "role": "num_data_valid" }} , 
 	{ "name": "s_avgBPreHeader_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_avgBPreHeader", "role": "fifo_cap" }} , 
 	{ "name": "s_avgBPreHeader_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgBPreHeader", "role": "full_n" }} , 
 	{ "name": "s_avgBPreHeader_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_avgBPreHeader", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "m_apvThrB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "m_apvThrB", "role": "address0" }} , 
 	{ "name": "m_apvThrB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_apvThrB", "role": "ce0" }} , 
 	{ "name": "m_apvThrB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "m_apvThrB", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "s_avgAHeader", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgAHeader_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "apv_id_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "s_avgBPreHeader", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgBPreHeader_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "avg_pre_header_tag_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "n", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "avg", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "s_avgASamples", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgASamples_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_avgBSamplesOut", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_avgBSamplesOut_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
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
		s_avgBSamplesOut {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	m_apvThrB { ap_memory {  { m_apvThrB_address0 mem_address 1 11 }  { m_apvThrB_ce0 mem_ce 1 1 }  { m_apvThrB_q0 mem_dout 0 13 } } }
	s_avgAHeader { ap_fifo {  { s_avgAHeader_dout fifo_port_we 0 32 }  { s_avgAHeader_num_data_valid fifo_status_num_data_valid 0 2 }  { s_avgAHeader_fifo_cap fifo_update 0 2 }  { s_avgAHeader_empty_n fifo_status 0 1 }  { s_avgAHeader_read fifo_data 1 1 } } }
	s_avgBPreHeader { ap_fifo {  { s_avgBPreHeader_din fifo_port_we 1 64 }  { s_avgBPreHeader_num_data_valid fifo_status_num_data_valid 0 2 }  { s_avgBPreHeader_fifo_cap fifo_update 0 2 }  { s_avgBPreHeader_full_n fifo_status 0 1 }  { s_avgBPreHeader_write fifo_data 1 1 } } }
	s_avgASamples { ap_fifo {  { s_avgASamples_dout fifo_port_we 0 13 }  { s_avgASamples_num_data_valid fifo_status_num_data_valid 0 3 }  { s_avgASamples_fifo_cap fifo_update 0 3 }  { s_avgASamples_empty_n fifo_status 0 1 }  { s_avgASamples_read fifo_data 1 1 } } }
	s_avgBSamplesOut { ap_fifo {  { s_avgBSamplesOut_din fifo_port_we 1 13 }  { s_avgBSamplesOut_num_data_valid fifo_status_num_data_valid 0 2 }  { s_avgBSamplesOut_fifo_cap fifo_update 0 2 }  { s_avgBSamplesOut_full_n fifo_status 0 1 }  { s_avgBSamplesOut_write fifo_data 1 1 } } }
}
