# Mini-Project-in-VLSI-Design-EC383-
Repository for the RTL to GDSII flow run on Openlane for Mini Project in VLSI Design

## Directory Structure
designs/   
├── ci/  
├── designs/  
│   ├── picorv32_base  
│&#8194;&#8194;&#8194;&#8194;├── runs  
│&#8194;&#8194;&#8194;&#8194;├── src  
│&#8194;&#8194;&#8194;&#8194;&#8194;&#8194;├── picorv32_base.v  
│&#8194;&#8194;&#8194;&#8194;├── config.json  
│   └── test_sram_macro  
│&#8194;&#8194;&#8194;&#8194;├── runs  
│&#8194;&#8194;&#8194;&#8194;├── src  
│&#8194;&#8194;&#8194;&#8194;&#8194;&#8194;├── picorv32_base.v  
│&#8194;&#8194;&#8194;&#8194;├── config.json  
├── spm/  
│   ├── runs  
│   └── src  
│   └── verify  
│   └── config.json  
│   └── pin_oder.cfg  
flow.tcl  
README.md  

## Flow configuration Variables for SRAM

### Power domain
    "FP_PDN_MULTILAYER": true,
    "EXTRA_LEFS": "/path",
    "EXTRA_GDS_FILES": "/path",
    "EXTRA_LIBS": "/path",
    "VDD_NETS": "vccd1",
    "GND_NETS": "vssd1",
    "FP_PDN_MACRO_HOOKS": "submodule.sram0 vccd1 vssd1 vccd1 vssd1, submodule.sram1 vccd1 vssd1 vccd1 vssd1"
+ Using only lower vertical layer for power distribution network.  
`"FP_PDN_MULTILAYER"`: true  
+ Using only 1 power domain  
`"VDD_NETS"`: "vccd1"  
`"GND_NETS"`: "vssd1"
+ Specifying explicit power connections for the SRAM modules  
`"FP_PDN_MACRO_HOOKS"`: "submodule.sram0 vccd1 vssd1 vccd1 vssd1, submodule.sram1 vccd1 vssd1 vccd1 vssd1"
### Floorplanning and placement
    "FP_SIZING": "absolute",
    "DIE_AREA": "0 0 750 1250",
    "PL_TARGET_DENSITY": 0.5
+ Using absolute sizing  
`"FP_SIZING"`: "absolute"  
+ Die Area  
`"DIE_AREA"`: "0 0 750 1250"
+ Default target density  
`"PL_TARGET_DENSITY"`: 0.5
### Magic and DRC
    "RUN_KLAYOUT_XOR": false,
    "MAGIC_DRC_USE_GDS": false,
    "QUIT_ON_MAGIC_DRC": false,
    "MACRO_PLACEMENT_CFG": "dir::macro_placement.cfg"
+ Checks will be done on the DEF/LEF
`"MAGIC_DRC_USE_GDS"`: false
+ Checks for DRC violations after magic DRC is executed and exits the flow if any was found
`"QUIT_ON_MAGIC_DRC"`: false
+ Macro placement  
`MACRO_PLACEMENT_CFG` specifies a file (often called macro.cfg or macro_placement.cfg) listing macros to be placed as submodules within the layout being hardened

## Flow configuration Variables for Picorv32

### Clock domain
    "CLOCK_PORT": "clk",
    "CLOCK_PERIOD": 10.0
### Power domain
    "FP_PDN_MULTILAYER": true
+ Using only lower vertical layer for power distribution network.  
`"FP_PDN_MULTILAYER"`: true
### Floorplanning and placement
    "FP_SIZING": "absolute",
    "DIE_AREA": "0 0 750 1250",
    "PL_TARGET_DENSITY": 0.5
+ Using absolute sizing  
`"FP_SIZING"`: "absolute"  
+ Die Area  
`"DIE_AREA"`: "0 0 750 1250"
+ Default target density  
`"PL_TARGET_DENSITY"`: 0.5