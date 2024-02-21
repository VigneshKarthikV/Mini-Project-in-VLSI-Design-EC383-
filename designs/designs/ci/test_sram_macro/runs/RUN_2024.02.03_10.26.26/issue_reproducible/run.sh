#!/bin/sh
dir=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
cd $dir;
export FP_PDN_CFG='openlane/scripts/openroad/common/pdn_cfg.tcl';
export FP_PDN_CHECK_NODES='1';
export FP_PDN_CORE_RING='0';
export FP_PDN_CORE_RING_HOFFSET='6';
export FP_PDN_CORE_RING_HSPACING='1.7';
export FP_PDN_CORE_RING_HWIDTH='1.6';
export FP_PDN_CORE_RING_VOFFSET='6';
export FP_PDN_CORE_RING_VSPACING='1.7';
export FP_PDN_CORE_RING_VWIDTH='1.6';
export FP_PDN_ENABLE_RAILS='1';
export FP_PDN_HOFFSET='16.65';
export FP_PDN_HORIZONTAL_HALO='10';
export FP_PDN_HORIZONTAL_LAYER='met5';
export FP_PDN_HPITCH='153.18';
export FP_PDN_HSPACING='1.7';
export FP_PDN_HWIDTH='1.6';
export FP_PDN_MULTILAYER='1';
export FP_PDN_RAIL_LAYER='met1';
export FP_PDN_RAIL_WIDTH='0.48';
export FP_PDN_SKIPTRIM='0';
export FP_PDN_VERTICAL_HALO='10';
export FP_PDN_VERTICAL_LAYER='met4';
export FP_PDN_VOFFSET='16.32';
export FP_PDN_VPITCH='153.6';
export FP_PDN_VSPACING='1.7';
export FP_PDN_VWIDTH='1.6';
export GND_NET='vssd1';
export GND_NETS='vssd1';
export PACKAGED_SCRIPT_0='openlane/scripts/openroad/pdn.tcl';
export PACKAGED_SCRIPT_1='openlane/scripts/openroad/common/pdn_cfg.tcl';
export VDD_NET='vccd1';
export VDD_NETS='vccd1';
TOOL_BIN=${TOOL_BIN:-openroad}
$TOOL_BIN -exit $PACKAGED_SCRIPT_0
