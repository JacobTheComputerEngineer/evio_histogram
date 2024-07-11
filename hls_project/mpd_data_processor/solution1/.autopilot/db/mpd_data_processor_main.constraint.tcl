set clock_constraint { \
    name clk \
    module mpd_data_processor_main \
    port ap_clk \
    period 8 \
    uncertainty 1 \
}

set all_path {}

set false_path {}

set one_path { \
    name conx_path_0 \
    type single_source \
    source { \
            module mpd_data_processor_main \
            instance build_all_samples \
            bitWidth 1 \
            type port \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_0

set one_path { \
    name conx_path_1 \
    type single_source \
    source { \
            module mpd_data_processor_main \
            instance build_debug_headers \
            bitWidth 1 \
            type port \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_1

set one_path { \
    name conx_path_2 \
    type single_source \
    source { \
            module mpd_data_processor_main \
            instance enable_cm \
            bitWidth 1 \
            type port \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_2

set one_path { \
    name conx_path_3 \
    type single_source \
    source { \
            module mpd_data_processor_main \
            instance fiber \
            bitWidth 5 \
            type port \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_3

