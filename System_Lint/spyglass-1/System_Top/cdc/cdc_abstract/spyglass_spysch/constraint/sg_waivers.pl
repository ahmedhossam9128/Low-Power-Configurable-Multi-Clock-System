################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'1',
                          "totalGeneratedCount"=>'0',
                          "totalReportCount"=>'0'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q!waive  -rule "Setup_port01" -msg "Port coverage for top design unit \'System_Top\' is: \'1\' (25.00 %) port(s) not fully constrained" -comment "Created by ICer on 28-Sep-2026 01:56:59 async RST handled within RST Synchronizers"!',
                       "-rule"=>'"Setup_port01"',
                       "-msg"=>'q!Port coverage for top design unit \'System_Top\' is: \'1\' (25.00 %) port(s) not fully constrained!',
                       "-comment"=>'"Created by ICer on 28-Sep-2026 01:56:59 async RST handled within RST Synchronizers"',
                       "violations_waived"=>'51',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/System_Top/cdc/cdc_abstract/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'1'
                      );

spyWaiversDataCount("totalWaivers"=>'1',
"totalWaiversApplied"=>'1',
"totalWaiversWithRegExp"=>'0',
"totalWaiversWithRuleSpecified"=>'1',
"totalWaiversWithIpSpecified"=>'0',
"totalWaiversWithFileLine"=>'0',
                         );

spyProhibitWaiverRules(                         );

spySetWaivedViolationNumberHash("");

1;
