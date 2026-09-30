
########################### Define Top Module ############################
                                                   
set top_module System_Top

######################### Formality Setup File ###########################

set synopsys_auto_setup true

set_svf "../../DFT/$top_module.svf"


set SSLIB "/home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

######################### Reference Container ############################

# Read Reference Design Verilog Files
read_sverilog -container Ref -f system.lst


# Read Reference technology libraries
read_db -container Ref [list $SSLIB $TTLIB $FFLIB]


# set the top Reference Design 
set_reference_design $top_module
set_top $top_module


######################## Implementation Container #########################

# Read Implementation Design Files
read_verilog -container Imp ../../DFT/netlists/$top_module.v

# Read Implementation technology libraries
read_db -container Imp [list $SSLIB $TTLIB $FFLIB]


# set the top Implementation Design
set_implementation_design $top_module
set_top $top_module


############################### Don't verify #################################

# do not verify scan in & scan out ports as a compare point as it is existed only after synthesis and not existed in the RTL

#scan in
set_dont_verify_points -type port Ref:/WORK/*/SI[0]
set_dont_verify_points -type port Ref:/WORK/*/SI[1]
set_dont_verify_points -type port Ref:/WORK/*/SI[2]
set_dont_verify_points -type port Ref:/WORK/*/SI[3]

#scan_out

set_dont_verify_points -type port Ref:/WORK/*/SO[0]
set_dont_verify_points -type port Ref:/WORK/*/SO[1]
set_dont_verify_points -type port Ref:/WORK/*/SO[2]
set_dont_verify_points -type port Ref:/WORK/*/SO[3]

############################### constants #####################################

# all atpg enable(test_mode, scan_enable) are zero during formal compare

#test_mode

set_constant -type port Ref:/WORK/*/test_mode 0
set_constant -type port Imp:/WORK/*/test_mode 0

#scan_enable

set_constant -type port Ref:/WORK/*/SE 0
set_constant -type port Imp:/WORK/*/SE 0

########################### matching Compare points ##########################

match

################################# verify #####################################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

report_passing_points > "reports/passing_points.rpt"
report_failing_points > "reports/failing_points.rpt"
report_aborted_points > "reports/aborted_points.rpt"
report_unverified_points > "reports/unverified_points.rpt"


start_gui
