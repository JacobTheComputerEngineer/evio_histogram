# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mpd_data_processor_main_fifo_w64_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {s_avgAPreHeader_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mpd_data_processor_main_fifo_w13_d3_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {s_avgASamples_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mpd_data_processor_main_fifo_w64_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {s_avgBPreHeader_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mpd_data_processor_main_fifo_w32_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {s_avgAHeader_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mpd_data_processor_main_fifo_w32_d4_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {s_avgBHeader_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mpd_data_processor_main_fifo_w13_d2_S_x BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {s_avgBSamplesOut_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mpd_data_processor_main_fifo_w32_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {s_avgBSamplesIn_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mpd_data_processor_main_start_for_avgHeaderDiv_U0 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {start_for_avgHeaderDiv_U0_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mpd_data_processor_main_start_for_avgBSamplesFifoProc_U0 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {start_for_avgBSamplesFifoProc_U0_U}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 48 \
    name m_offset \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename m_offset \
    op interface \
    ports { m_offset_address0 { O 10 vector } m_offset_ce0 { O 1 bit } m_offset_d0 { O 26 vector } m_offset_q0 { I 26 vector } m_offset_we0 { O 1 bit } m_offset_address1 { O 10 vector } m_offset_ce1 { O 1 bit } m_offset_d1 { O 26 vector } m_offset_q1 { I 26 vector } m_offset_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'm_offset'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 49 \
    name m_apvThr \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename m_apvThr \
    op interface \
    ports { m_apvThr_address0 { O 11 vector } m_apvThr_ce0 { O 1 bit } m_apvThr_d0 { O 13 vector } m_apvThr_q0 { I 13 vector } m_apvThr_we0 { O 1 bit } m_apvThr_address1 { O 11 vector } m_apvThr_ce1 { O 1 bit } m_apvThr_d1 { O 13 vector } m_apvThr_q1 { I 13 vector } m_apvThr_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'm_apvThr'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 50 \
    name m_apvThrB \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename m_apvThrB \
    op interface \
    ports { m_apvThrB_address0 { O 11 vector } m_apvThrB_ce0 { O 1 bit } m_apvThrB_d0 { O 13 vector } m_apvThrB_q0 { I 13 vector } m_apvThrB_we0 { O 1 bit } m_apvThrB_address1 { O 11 vector } m_apvThrB_ce1 { O 1 bit } m_apvThrB_d1 { O 13 vector } m_apvThrB_q1 { I 13 vector } m_apvThrB_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'm_apvThrB'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name s_evIn \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_evIn \
    op interface \
    ports { s_evIn_dout { I 33 vector } s_evIn_empty_n { I 1 bit } s_evIn_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name s_evOut \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_s_evOut \
    op interface \
    ports { s_evOut_din { O 33 vector } s_evOut_full_n { I 1 bit } s_evOut_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name build_all_samples \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_build_all_samples \
    op interface \
    ports { build_all_samples { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name enable_cm \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_enable_cm \
    op interface \
    ports { enable_cm { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name fiber \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fiber \
    op interface \
    ports { fiber { I 5 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


