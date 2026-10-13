#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Thu Oct  8 22:51:59 2026                #
#                                                     #
#######################################################

#@(#)CDS: First Encounter v08.10-p004_1 (32bit) 11/04/2008 14:34 (Linux 2.6)
#@(#)CDS: NanoRoute v08.10-p008 NR081027-0018/USR58-UB (database version 2.30, 67.1.1) {superthreading v1.11}
#@(#)CDS: CeltIC v08.10-p002_1 (32bit) 10/23/2008 22:04:14 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CTE v08.10-p016_1 (32bit) Oct 26 2008 15:11:51 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CPE v08.10-p009

setUIVar rda_Input ui_topcell System_Top
setUIVar rda_Input ui_netlist ../DFT/netlists/System_Top.v
setUIVar rda_Input ui_timelib,min ../std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib
setUIVar rda_Input ui_timelib,max ../std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib
setUIVar rda_Input ui_timelib ../std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib
setUIVar rda_Input ui_leffile {../std_cells/lef/tsmc13fsg_7lm_tech.lef ../std_cells/lef/tsmc13_m_macros.lef import/SYS_TOP_4.lef}
setUIVar rda_Input ui_captbl_file ../std_cells/captables/tsmc13fsg.capTbl
setUIVar rda_Input ui_timingcon_file ../DFT/sdc/System_Top.sdc
setUIVar rda_Input ui_pwrnet VDD
setUIVar rda_Input ui_gndnet VSS
commitConfig
defIn ../DFT/System_Top_scan.def
create_library_set -name min_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib"
create_library_set -name max_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib"
create_library_set -name typ_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib"
create_constraint_mode -name func_mode -sdc_files {../DFT/sdc/System_Top_func.sdc}
create_constraint_mode -name scan_mode -sdc_files {../DFT/sdc/System_Top_scan.sdc}
create_constraint_mode -name capture_mode -sdc_files {../DFT/sdc/System_Top_capture.sdc}
create_rc_corner -name RCcorner -cap_table "../std_cells/captables/tsmc13fsg.capTbl"
create_delay_corner -name min_corner -library_set min_library -rc_corner RCcorner
create_delay_corner -name max_corner -library_set max_library -rc_corner RCcorner
create_analysis_view -name setup1_analysis_view -delay_corner max_corner -constraint_mode func_mode
create_analysis_view -name hold1_analysis_view  -delay_corner min_corner -constraint_mode func_mode
create_analysis_view -name setup2_analysis_view -delay_corner max_corner -constraint_mode capture_mode
create_analysis_view -name hold2_analysis_view  -delay_corner min_corner -constraint_mode capture_mode
create_analysis_view -name setup3_analysis_view -delay_corner max_corner -constraint_mode scan_mode
create_analysis_view -name hold3_analysis_view  -delay_corner min_corner -constraint_mode scan_mode
set_analysis_view -setup {setup1_analysis_view setup2_analysis_view setup3_analysis_view } \
                  -hold { hold1_analysis_view hold2_analysis_view hold3_analysis_view}
loadFPlan ./System_Top.fp
setDrawView fplan
selectObject Module u_SysCtrl
windowSelect 129.274 52.458 134.535 47.198
selectObject Module u_SysCtrl
uiSetTool move
setObjFPlanBox Module u_SysCtrl 101.846 26.1515 163.346 69.2015
setObjFPlanBox Module u_SysCtrl 101.680 21.229 163.180 69.290
deselectAll
selectWire 51.3100 3.3250 52.3100 156.2450 6 VSS
deselectAll
selectObject Module u_ALU
setObjFPlanBox Module u_ALU 5.740 75.469 109.060 152.520
editSplit
uiSetTool select
placeDesign -inPlaceOpt -prePlaceOpt
addTieHiLo -cell TIELOM -prefix LTIE
addTieHiLo -cell TIEHIM -prefix HTIE
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VSS -type pgpin -pin VSS -inst *
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
verifyGeometry -noMinArea
saveFPlan /home/ahesham/Projects/System_pnr/PnR/System_Top.fp
clearClockDomains
setClockDomains -all
timeDesign -preCTS -idealClock -pathReports -drvReports -slackReports -numPaths 50 -prefix System_Top_preCTS -outDir timingReports
setDrawView place
clearClockDomains
setClockDomains -all
timeDesign -preCTS -hold -idealClock -pathReports -slackReports -numPaths 50 -prefix System_Top_preCTS -outDir timingReports
clockDesign -genSpecOnly Clock.ctstch
clockDesign -specFile Clock.ctstch -outDir clock_report -fixedInstBeforeCTS
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
clearClockDomains
setClockDomains -all
timeDesign -postCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix System_Top_postCTS -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix System_Top_postCTS -outDir timingReports
optDesign -postCTS -hold
clearClockDomains
setClockDomains -all
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix System_Top_postCTS -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix System_Top_postCTS -outDir timingReports
setNanoRouteMode -quiet -routeTopRoutingLayer 6
routeDesign -globalDetail -viaOpt -wireOpt
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
verifyGeometry -noMinArea
clearClockDomains
setClockDomains -all
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix System_Top_postRoute -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix System_Top_postRoute -outDir timingReports
zoomBox -11.420 86.317 16.851 63.963
addFiller -cell {FILL1M FILL2M FILL4M FILL8M FILL16M FILL32M FILL64M} -prefix FILLER -markFixed
verifyConnectivity -type all -error 1000 -warning 50
verifyGeometry
setMetalFill -layer 1 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer 2 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer 3 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer 4 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer 5 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer 6 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer 7 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
verifyMetalDensity -reportfile System_Top.density.rpt
verifyProcessAntenna -reportfile System_Top.antenna.rpt -leffile System_Top.antenna.lef -error 1000
setMetalFill -layer 1 -windowSize 200.000 200.000 -windowStep 100.000 100.000
setMetalFill -layer 2 -windowSize 200.000 200.000 -windowStep 100.000 100.000
setMetalFill -layer 3 -windowSize 200.000 200.000 -windowStep 100.000 100.000
setMetalFill -layer 4 -windowSize 200.000 200.000 -windowStep 100.000 100.000
setMetalFill -layer 5 -windowSize 200.000 200.000 -windowStep 100.000 100.000
setMetalFill -layer 6 -windowSize 200.000 200.000 -windowStep 100.000 100.000
setMetalFill -layer 7 -windowSize 200.000 200.000 -windowStep 100.000 100.000
setMetalFill -layer 1 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer 2 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer 3 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer 4 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer 5 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer 6 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer 7 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
verifyMetalDensity -reportfile System_Top.density.rpt
deleteMetalFill -layer { M1 } -shapes { FILLWIRE FILLWIREOPC } -mode all
deleteMetalFill -layer { M2 } -shapes { FILLWIRE FILLWIREOPC } -mode all
deleteMetalFill -layer { M3 } -shapes { FILLWIRE FILLWIREOPC } -mode all
deleteMetalFill -layer { M4 } -shapes { FILLWIRE FILLWIREOPC } -mode all
deleteMetalFill -layer { M5 } -shapes { FILLWIRE FILLWIREOPC } -mode all
deleteMetalFill -layer { M6 } -shapes { FILLWIRE FILLWIREOPC } -mode all
addMetalFill -layer { 1 2 3 4 5 6 } -nets { VSS VDD }
verifyGeometry
setMetalFill -layer 1 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer 2 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer 3 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer 4 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer 5 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer 6 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer 7 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
verifyMetalDensity -reportfile System_Top.density.rpt
verifyConnectivity -type all -error 1000 -warning 50
deleteMetalFill -shapes { FILLWIRE FILLWIREOPC } -mode all
addMetalFill -layer { 1 2 3 4 5 6 7 } -nets { VSS VDD }
setMetalFill -layer 1 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer 2 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer 3 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer 4 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer 5 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer 6 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer 7 -windowSize 200.000 200.000 -windowStep 100.000 100.000 -minDensity 20.000 -maxDensity 80.000
verifyMetalDensity -reportfile System_Top.density.rpt
saveNetlist export/System_Top.v
saveNetlist export/System_Top_pg.v -includePowerGround
rcOut -spf export/System_Top.spf
delayCal -sdf export/System_Top.sdf -version 3.0
report_power -outfile report/power.rpt
streamOut export/System_Top.gds -mapFile ./import/gds2InLayer.map -libName DesignLib -stripes 1 -units 2000 -mode ALL
clearClockDomains
setClockDomains -all
timeDesign -signoff -pathReports -drvReports -slackReports -numPaths 50 -prefix System_Top_signOff -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix System_Top_postRoute -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix System_Top_postRoute -outDir timingReports
saveDesign /home/ahesham/Projects/System_pnr/PnR/System_Top_finish.enc
selectWire 91.1250 116.5450 91.3250 120.4350 2 u_ALU/n190
deselectAll
saveNetlist export/System_Top.v
saveNetlist export/System_Top_pg.v -includePowerGround
rcOut -spf export/System_Top.spf
write_sdf -version 2.1 -prec 3 -min_view hold1_analysis_view -typ_view setup1_analysis_view -max_view setup1_analysis_view export/${top_module}.sdf
report_power -outfile report/power.rpt
streamOut export/System_Top.gds -mapFile ./import/gds2InLayer.map -libName DesignLib -stripes 1 -units 2000 -mode ALL
setLayerPreference net -isVisible 0
setLayerPreference net -isVisible 1
setLayerPreference allM0 -isVisible 0
setLayerPreference allM1Cont -isVisible 0
setLayerPreference allM1Cont -isVisible 1
setLayerPreference allM1 -isVisible 0
setLayerPreference allM1Cont -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM3 -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM7 -isVisible 0
zoomBox 202.561 116.008 155.696 61.020
setLayerPreference metalFill -isVisible 0
setLayerPreference metalFill -isVisible 1
setLayerPreference metalFill -isVisible 0
setLayerPreference metalFill -isVisible 1
setLayerPreference allM0 -isVisible 1
setLayerPreference allM1Cont -isVisible 1
setLayerPreference allM1 -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM2 -isVisible 1
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM3 -isVisible 1
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM4 -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM5 -isVisible 1
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM6 -isVisible 1
setLayerPreference allM7Cont -isVisible 1
setLayerPreference allM7 -isVisible 1
setLayerPreference metalFill -isVisible 0
setLayerPreference allM0 -isVisible 0
setLayerPreference allM1 -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM3 -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM7 -isVisible 0
setLayerPreference allM1Cont -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM0 -isVisible 1
setLayerPreference allM1 -isVisible 1
setLayerPreference allM2 -isVisible 1
setLayerPreference allM3 -isVisible 1
setLayerPreference allM4 -isVisible 1
setLayerPreference allM5 -isVisible 1
setLayerPreference allM6 -isVisible 1
setLayerPreference allM7 -isVisible 1
setLayerPreference allM1Cont -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM7Cont -isVisible 1
setLayerPreference power -isVisible 0
setLayerPreference power -isVisible 1
setLayerPreference power -isVisible 0
setLayerPreference power -isVisible 1
setLayerPreference power -isVisible 0
setLayerPreference power -isVisible 1
setLayerPreference power -isVisible 0
setLayerPreference power -isVisible 1
setLayerPreference power -isVisible 0
setLayerPreference power -isVisible 1
setLayerPreference allM0 -isVisible 0
setLayerPreference allM1 -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM3 -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM7 -isVisible 0
setLayerPreference allM1Cont -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference busguide -isVisible 0
setLayerPreference busguide -isVisible 1
setLayerPreference metalFill -isVisible 1
setLayerPreference metalFill -isVisible 0
setLayerPreference power -isVisible 0
setLayerPreference power -isVisible 1
setLayerPreference power -isVisible 0
setLayerPreference power -isVisible 1
setLayerPreference allM0 -isVisible 1
setLayerPreference allM1 -isVisible 1
setLayerPreference allM2 -isVisible 1
setLayerPreference allM3 -isVisible 1
setLayerPreference allM4 -isVisible 1
setLayerPreference allM5 -isVisible 1
setLayerPreference allM6 -isVisible 1
setLayerPreference allM7 -isVisible 1
setLayerPreference allM1Cont -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM7Cont -isVisible 1
setLayerPreference stdRow -isVisible 0
setLayerPreference stdRow -isVisible 1
setLayerPreference stdRow -isVisible 0
setLayerPreference stdRow -isVisible 1
setLayerPreference stdRow -isVisible 0
setLayerPreference stdRow -isVisible 1
setLayerPreference power -isVisible 0
setLayerPreference power -isVisible 1
setLayerPreference power -isVisible 0
setLayerPreference power -isVisible 1
setLayerPreference power -isVisible 0
setLayerPreference power -isVisible 1
setLayerPreference power -isVisible 0
setLayerPreference power -isVisible 1
setLayerPreference power -isSelectable 0
setLayerPreference inst -isVisible 0
setLayerPreference inst -isVisible 1
setLayerPreference inst -isVisible 0
setLayerPreference allM0 -isVisible 0
setLayerPreference allM1 -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM3 -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM7 -isVisible 0
setLayerPreference allM1Cont -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference inst -isVisible 1
setLayerPreference stdCell -isVisible 0
setLayerPreference stdCell -isVisible 1
setLayerPreference phyCell -isVisible 0
setLayerPreference coverCell -isVisible 0
setLayerPreference phyCell -isVisible 1
setLayerPreference coverCell -isVisible 1
setLayerPreference phyCell -isVisible 0
setLayerPreference phyCell -isVisible 1
setLayerPreference coverCell -isVisible 0
setLayerPreference coverCell -isVisible 1
setLayerPreference block -isVisible 0
setLayerPreference block -isVisible 1
setLayerPreference pg -isVisible 0
setLayerPreference pg -isVisible 1
setLayerPreference layerBlk -isVisible 0
setLayerPreference layerBlk -isVisible 1
setLayerPreference allM0 -isVisible 1
setLayerPreference allM1 -isVisible 1
setLayerPreference allM2 -isVisible 1
setLayerPreference allM3 -isVisible 1
setLayerPreference allM4 -isVisible 1
setLayerPreference allM5 -isVisible 1
setLayerPreference allM6 -isVisible 1
setLayerPreference allM7 -isVisible 1
setLayerPreference allM1Cont -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM7Cont -isVisible 1
setLayerPreference allM0 -isVisible 0
setLayerPreference allM1 -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM3 -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM7 -isVisible 0
setLayerPreference allM1Cont -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference layoutObj -isVisible 1
setLayerPreference layoutObj -isVisible 0
setLayerPreference pinObj -isVisible 1
setLayerPreference pinObj -isVisible 0
setLayerPreference phyCell -isVisible 0
zoomBox 61.240 120.240 107.627 74.787
zoomBox 72.449 113.587 83.271 92.343
zoomBox 71.547 106.731 72.895 103.171
zoomBox 29.486 125.843 92.061 33.693
zoomBox 26.562 84.562 49.641 51.571
zoomBox 25.271 63.266 28.938 58.146
zoomBox 106.070 78.212 162.730 17.816
zoomBox 90.248 44.978 105.907 20.053
zoomBox 154.636 135.183 226.861 63.891
zoomBox 172.705 120.597 195.212 90.296
setLayerPreference phyCell -isVisible 1
setLayerPreference metalFill -isVisible 1
setLayerPreference allM0 -isVisible 1
setLayerPreference allM1 -isVisible 1
setLayerPreference allM2 -isVisible 1
setLayerPreference allM3 -isVisible 1
setLayerPreference allM4 -isVisible 1
setLayerPreference allM5 -isVisible 1
setLayerPreference allM6 -isVisible 1
setLayerPreference allM7 -isVisible 1
setLayerPreference allM1Cont -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM7Cont -isVisible 1
saveDesign /home/ahesham/Projects/System_pnr/PnR/System_Top_chip_finish.enc
