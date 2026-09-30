################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'2',
                          "totalGeneratedCount"=>'0',
                          "totalReportCount"=>'0'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q!waive  -rule "Setup_port01" -msg "Port coverage for top design unit \'System_Top\' is: \'1\' (25.00 %) port(s) not fully constrained" -comment "Created by ICer on 27-Sep-2026 21:42:43 async RST covered with RST_Synchronizers partially constrained async RST covered in RST synchronizers "!',
                       "-rule"=>'"Setup_port01"',
                       "-msg"=>'q!Port coverage for top design unit \'System_Top\' is: \'1\' (25.00 %) port(s) not fully constrained!',
                       "-comment"=>'"Created by ICer on 27-Sep-2026 21:42:43 async RST covered with RST_Synchronizers partially constrained async RST covered in RST synchronizers "',
                       "violations_waived"=>'51',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/System_Top/cdc/cdc_setup_check/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'3'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'2',
                       "waiverCmd"=>'q%waive  -rule "Setup_port01" -msg "Abstracted sgdc file for input ports of block \'System_Top\' is generated" -comment "Created by ICer on 27-Sep-2026 21:43:43"%',
                       "-rule"=>'"Setup_port01"',
                       "-msg"=>'q%Abstracted sgdc file for input ports of block \'System_Top\' is generated%',
                       "-comment"=>'"Created by ICer on 27-Sep-2026 21:43:43"',
                       "violations_waived"=>'53',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/System_Top/cdc/cdc_setup_check/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'2'
                      );

spyWaiversDataCount("totalWaivers"=>'2',
"totalWaiversApplied"=>'2',
"totalWaiversWithRegExp"=>'0',
"totalWaiversWithRuleSpecified"=>'2',
"totalWaiversWithIpSpecified"=>'0',
"totalWaiversWithFileLine"=>'0',
                         );

spyProhibitWaiverRules(                         );

spySetWaivedViolationNumberHash("");

1;
