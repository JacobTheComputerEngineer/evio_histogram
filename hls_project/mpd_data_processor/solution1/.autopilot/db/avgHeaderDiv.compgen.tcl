# This script segment is generated automatically by AutoPilot

set name mpd_data_processor_main_sdiv_20ns_9ns_13_24_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {sdiv} IMPL {auto} LATENCY 23 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name s_avgAPreHeader \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_avgAPreHeader \
    op interface \
    ports { s_avgAPreHeader_dout { I 64 vector } s_avgAPreHeader_num_data_valid { I 2 vector } s_avgAPreHeader_fifo_cap { I 2 vector } s_avgAPreHeader_empty_n { I 1 bit } s_avgAPreHeader_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name s_avgBPreHeader \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_avgBPreHeader \
    op interface \
    ports { s_avgBPreHeader_dout { I 64 vector } s_avgBPreHeader_num_data_valid { I 2 vector } s_avgBPreHeader_fifo_cap { I 2 vector } s_avgBPreHeader_empty_n { I 1 bit } s_avgBPreHeader_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name s_avgAHeader \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_s_avgAHeader \
    op interface \
    ports { s_avgAHeader_din { O 32 vector } s_avgAHeader_num_data_valid { I 2 vector } s_avgAHeader_fifo_cap { I 2 vector } s_avgAHeader_full_n { I 1 bit } s_avgAHeader_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name s_avgBHeader \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_s_avgBHeader \
    op interface \
    ports { s_avgBHeader_din { O 32 vector } s_avgBHeader_num_data_valid { I 3 vector } s_avgBHeader_fifo_cap { I 3 vector } s_avgBHeader_full_n { I 1 bit } s_avgBHeader_write { O 1 bit } } \
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


