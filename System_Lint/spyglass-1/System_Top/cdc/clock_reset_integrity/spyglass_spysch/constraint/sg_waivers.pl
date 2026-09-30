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
                       "waiverCmd"=>'q%waive  -rule "Clock_glitch04" -msg "Flop System_Top.u_RX_CLK_DIV.DIVIDED_CLK and Flop System_Top.u_RegFile.RegFile[2][2] are converging through combinational logic to clock of Flop System_Top.u_UART_RX.u_Sampler.first_sample" -comment "Created by ICer on 27-Sep-2026 22:30:52"%',
                       "-rule"=>'"Clock_glitch04"',
                       "-msg"=>'q%Flop System_Top.u_RX_CLK_DIV.DIVIDED_CLK and Flop System_Top.u_RegFile.RegFile[2][2] are converging through combinational logic to clock of Flop System_Top.u_UART_RX.u_Sampler.first_sample%',
                       "-comment"=>'"Created by ICer on 27-Sep-2026 22:30:52"',
                       "violations_waived"=>'40',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/System_Top/cdc/clock_reset_integrity/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'3'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'2',
                       "waiverCmd"=>'q%waive  -rule "Clock_glitch04" -msg "Flop System_Top.u_TX_CLK_DIV.DIVIDED_CLK and Flop System_Top.u_RegFile.RegFile[3][1] are converging through combinational logic to clock of Flop r_ptr[0]" -comment "Created by ICer on 27-Sep-2026 22:30:52 Converging Signals do not toggle simultaneously and are unrelated"%',
                       "-rule"=>'"Clock_glitch04"',
                       "-msg"=>'q%Flop System_Top.u_TX_CLK_DIV.DIVIDED_CLK and Flop System_Top.u_RegFile.RegFile[3][1] are converging through combinational logic to clock of Flop r_ptr[0]%',
                       "-comment"=>'"Created by ICer on 27-Sep-2026 22:30:52 Converging Signals do not toggle simultaneously and are unrelated"',
                       "violations_waived"=>'41',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/System_Top/cdc/clock_reset_integrity/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'5'
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
