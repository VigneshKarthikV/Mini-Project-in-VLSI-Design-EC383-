#!/bin/sh
dir=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
cd $dir;
export CLOCK_PORT='clk';
export LIB_FASTEST='pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v95.lib';
export LIB_SLOWEST='pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_100C_1v60.lib';
export LIB_TYPICAL='pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib';
export PACKAGED_SCRIPT_0='openlane/scripts/openroad/sta/multi_corner.tcl';
export STA_MULTICORNER='0';
export STA_MULTICORNER_READ_LIBS='0';
TOOL_BIN=${TOOL_BIN:-sta}
$TOOL_BIN -exit $PACKAGED_SCRIPT_0
