# This script segment is generated automatically by AutoPilot

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
    id 11 \
    name m_apvThrB \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename m_apvThrB \
    op interface \
    ports { m_apvThrB_address0 { O 11 vector } m_apvThrB_ce0 { O 1 bit } m_apvThrB_q0 { I 13 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'm_apvThrB'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name s_avgAHeader \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_avgAHeader \
    op interface \
    ports { s_avgAHeader_dout { I 32 vector } s_avgAHeader_num_data_valid { I 2 vector } s_avgAHeader_fifo_cap { I 2 vector } s_avgAHeader_empty_n { I 1 bit } s_avgAHeader_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name s_avgBPreHeader \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_s_avgBPreHeader \
    op interface \
    ports { s_avgBPreHeader_din { O 64 vector } s_avgBPreHeader_num_data_valid { I 2 vector } s_avgBPreHeader_fifo_cap { I 2 vector } s_avgBPreHeader_full_n { I 1 bit } s_avgBPreHeader_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name s_avgASamples \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_avgASamples \
    op interface \
    ports { s_avgASamples_dout { I 13 vector } s_avgASamples_num_data_valid { I 3 vector } s_avgASamples_fifo_cap { I 3 vector } s_avgASamples_empty_n { I 1 bit } s_avgASamples_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name s_avgBSamplesOut \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_s_avgBSamplesOut \
    op interface \
    ports { s_avgBSamplesOut_din { O 13 vector } s_avgBSamplesOut_num_data_valid { I 2 vector } s_avgBSamplesOut_fifo_cap { I 2 vector } s_avgBSamplesOut_full_n { I 1 bit } s_avgBSamplesOut_write { O 1 bit } } \
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


