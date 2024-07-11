# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mpd_data_processor_main_event_writer_avgB_1_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 31 \
    name m_apvThr \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename m_apvThr \
    op interface \
    ports { m_apvThr_address0 { O 11 vector } m_apvThr_ce0 { O 1 bit } m_apvThr_q0 { I 13 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'm_apvThr'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
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
    id 28 \
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
    id 29 \
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
    id 30 \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name s_avgBHeader \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_avgBHeader \
    op interface \
    ports { s_avgBHeader_dout { I 32 vector } s_avgBHeader_num_data_valid { I 3 vector } s_avgBHeader_fifo_cap { I 3 vector } s_avgBHeader_empty_n { I 1 bit } s_avgBHeader_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name s_avgBSamplesIn \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_avgBSamplesIn \
    op interface \
    ports { s_avgBSamplesIn_dout { I 32 vector } s_avgBSamplesIn_num_data_valid { I 2 vector } s_avgBSamplesIn_fifo_cap { I 2 vector } s_avgBSamplesIn_empty_n { I 1 bit } s_avgBSamplesIn_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
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
    id -3 \
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


