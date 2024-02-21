set env CLOCK_PORT clk
set env LIB_FASTEST pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v95.lib
set env LIB_SLOWEST pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_100C_1v60.lib
set env LIB_TYPICAL pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
set env PACKAGED_SCRIPT_0 openlane/scripts/openroad/sta/multi_corner.tcl
set env STA_MULTICORNER 0
set env STA_MULTICORNER_READ_LIBS 0