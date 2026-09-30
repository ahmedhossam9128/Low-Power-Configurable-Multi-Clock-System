################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'6',
                          "totalGeneratedCount"=>'48',
                          "totalReportCount"=>'42'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q!waive  -rule "Setup_port01" -msg "Port coverage for top design unit \'System_Top\' is: \'1\' (25.00 %) port(s) not fully constrained" -comment "Created by ICer on 27-Sep-2026 22:33:43"!',
                       "-rule"=>'"Setup_port01"',
                       "-msg"=>'q!Port coverage for top design unit \'System_Top\' is: \'1\' (25.00 %) port(s) not fully constrained!',
                       "-comment"=>'"Created by ICer on 27-Sep-2026 22:33:43"',
                       "violations_waived"=>'82',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/System_Top/cdc/cdc_verify_struct/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'1'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'2',
                       "waiverCmd"=>'q%waive  -rule "Setup_port01" -msg "Abstracted sgdc file for input ports of block \'System_Top\' is generated" -comment "Created by ICer on 27-Sep-2026 22:33:43 Unconstrained Async RST handeled within RST Synchronizers"%',
                       "-rule"=>'"Setup_port01"',
                       "-msg"=>'q%Abstracted sgdc file for input ports of block \'System_Top\' is generated%',
                       "-comment"=>'"Created by ICer on 27-Sep-2026 22:33:43 Unconstrained Async RST handeled within RST Synchronizers"',
                       "violations_waived"=>'84',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/System_Top/cdc/cdc_verify_struct/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'2'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'3',
                       "waiverCmd"=>'q%waive  -rule "Ac_coherency06" -msg "Source flop \\"System_Top.u_FIFO.u_fifo_rd.r_ptr[1]\\" is synchronized twice (at \\"System_Top.u_FIFO.u_sync_r2w.sync_reg[0][1:0]\\") in same destination domain" -comment "Created by ICer on 27-Sep-2026 22:46:17"%',
                       "-rule"=>'"Ac_coherency06"',
                       "-msg"=>'q%Source flop "System_Top.u_FIFO.u_fifo_rd.r_ptr[1]" is synchronized twice (at "System_Top.u_FIFO.u_sync_r2w.sync_reg[0][1:0]") in same destination domain%',
                       "-comment"=>'"Created by ICer on 27-Sep-2026 22:46:17"',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/System_Top/cdc/cdc_verify_struct/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'3'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'4',
                       "waiverCmd"=>'q%waive  -rule "Ac_coherency06" -msg "Source flop \\"System_Top.u_FIFO.u_fifo_rd.r_ptr[2]\\" is synchronized twice (at \\"System_Top.u_FIFO.u_sync_r2w.sync_reg[0][2:1]\\") in same destination domain" -comment "Created by ICer on 27-Sep-2026 22:46:17"%',
                       "-rule"=>'"Ac_coherency06"',
                       "-msg"=>'q%Source flop "System_Top.u_FIFO.u_fifo_rd.r_ptr[2]" is synchronized twice (at "System_Top.u_FIFO.u_sync_r2w.sync_reg[0][2:1]") in same destination domain%',
                       "-comment"=>'"Created by ICer on 27-Sep-2026 22:46:17"',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/System_Top/cdc/cdc_verify_struct/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'4'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'5',
                       "waiverCmd"=>'q%waive  -rule "Ac_coherency06" -msg "Source flop \\"System_Top.u_FIFO.u_fifo_rd.r_ptr[3]\\" is synchronized twice (at \\"System_Top.u_FIFO.u_sync_r2w.sync_reg[0][3:2]\\") in same destination domain" -comment "Created by ICer on 27-Sep-2026 22:46:17"%',
                       "-rule"=>'"Ac_coherency06"',
                       "-msg"=>'q%Source flop "System_Top.u_FIFO.u_fifo_rd.r_ptr[3]" is synchronized twice (at "System_Top.u_FIFO.u_sync_r2w.sync_reg[0][3:2]") in same destination domain%',
                       "-comment"=>'"Created by ICer on 27-Sep-2026 22:46:17"',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/System_Top/cdc/cdc_verify_struct/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'5'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'6',
                       "waiverCmd"=>'q%waive  -rule "Ac_coherency06" -msg "Source flop \\"System_Top.u_FIFO.u_fifo_wr.w_ptr[1]\\" is synchronized twice (at \\"System_Top.u_FIFO.u_sync_w2r.sync_reg[0][1:0]\\") in same destination domain" -comment "Created by ICer on 27-Sep-2026 22:46:17"%',
                       "-rule"=>'"Ac_coherency06"',
                       "-msg"=>'q%Source flop "System_Top.u_FIFO.u_fifo_wr.w_ptr[1]" is synchronized twice (at "System_Top.u_FIFO.u_sync_w2r.sync_reg[0][1:0]") in same destination domain%',
                       "-comment"=>'"Created by ICer on 27-Sep-2026 22:46:17"',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/System_Top/cdc/cdc_verify_struct/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'6'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'7',
                       "waiverCmd"=>'q%waive  -rule "Ac_coherency06" -msg "Source flop \\"System_Top.u_FIFO.u_fifo_wr.w_ptr[2]\\" is synchronized twice (at \\"System_Top.u_FIFO.u_sync_w2r.sync_reg[0][2:1]\\") in same destination domain" -comment "Created by ICer on 27-Sep-2026 22:46:17"%',
                       "-rule"=>'"Ac_coherency06"',
                       "-msg"=>'q%Source flop "System_Top.u_FIFO.u_fifo_wr.w_ptr[2]" is synchronized twice (at "System_Top.u_FIFO.u_sync_w2r.sync_reg[0][2:1]") in same destination domain%',
                       "-comment"=>'"Created by ICer on 27-Sep-2026 22:46:17"',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/System_Top/cdc/cdc_verify_struct/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'7'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'8',
                       "waiverCmd"=>'q%waive  -rule "Ac_coherency06" -msg "Source flop \\"System_Top.u_FIFO.u_fifo_wr.w_ptr[3]\\" is synchronized twice (at \\"System_Top.u_FIFO.u_sync_w2r.sync_reg[0][3:2]\\") in same destination domain" -comment "Created by ICer on 27-Sep-2026 22:46:17 Bus is Gray encoded hence no real data incoherency threat"%',
                       "-rule"=>'"Ac_coherency06"',
                       "-msg"=>'q%Source flop "System_Top.u_FIFO.u_fifo_wr.w_ptr[3]" is synchronized twice (at "System_Top.u_FIFO.u_sync_w2r.sync_reg[0][3:2]") in same destination domain%',
                       "-comment"=>'"Created by ICer on 27-Sep-2026 22:46:17 Bus is Gray encoded hence no real data incoherency threat"',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/System_Top/cdc/cdc_verify_struct/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'9'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'9',
                       "waiverCmd"=>'q%waive  -rule "Ac_conv01" -msg "13 synchronizers (System_Top.u_FIFO.u_sync_r2w.sync_reg[0][3:0],System_Top.u_BUS_SYNC.Bit_Syncronizer[1] ...) converge on flop \'System_Top.RF_RdEn\'" -comment "Created by ICer on 28-Sep-2026 00:26:39  Signals are unrelated and there is no threat to the converrgence"%',
                       "-rule"=>'"Ac_conv01"',
                       "-msg"=>'q%13 synchronizers (System_Top.u_FIFO.u_sync_r2w.sync_reg[0][3:0],System_Top.u_BUS_SYNC.Bit_Syncronizer[1] ...) converge on flop \'System_Top.RF_RdEn\'%',
                       "-comment"=>'"Created by ICer on 28-Sep-2026 00:26:39  Signals are unrelated and there is no threat to the converrgence"',
                       "violations_waived"=>'95',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/System_Top/cdc/cdc_verify_struct/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'11'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'10',
                       "waiverCmd"=>'q%waive  -rule "Ac_conv02" -msg "4 synchronizers (System_Top.u_FIFO.u_sync_w2r.sync_reg[0][3:0]) converge on combinational gate \'System_Top.FIFO_EMPTY\'. Gray encoding check: \'DISABLED\'" -comment "Created by ICer on 28-Sep-2026 00:27:51"%',
                       "-rule"=>'"Ac_conv02"',
                       "-msg"=>'q%4 synchronizers (System_Top.u_FIFO.u_sync_w2r.sync_reg[0][3:0]) converge on combinational gate \'System_Top.FIFO_EMPTY\'. Gray encoding check: \'DISABLED\'%',
                       "-comment"=>'"Created by ICer on 28-Sep-2026 00:27:51"',
                       "violations_waived"=>'86',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/System_Top/cdc/cdc_verify_struct/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'12'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'11',
                       "waiverCmd"=>'q%waive  -rule "Ac_conv02" -msg "9 synchronizers (System_Top.u_BUS_SYNC.Bit_Syncronizer[1],System_Top.u_BUS_SYNC.Sync_bus[7:0]) converge on MUX \'System_Top.u_SysCtrl.Nx_S[0]\'. Gray encoding check: \'DISABLED\'" -comment "Created by ICer on 28-Sep-2026 01:32:14 RX_D_VALID is a Qualifier"%',
                       "-rule"=>'"Ac_conv02"',
                       "-msg"=>'q%9 synchronizers (System_Top.u_BUS_SYNC.Bit_Syncronizer[1],System_Top.u_BUS_SYNC.Sync_bus[7:0]) converge on MUX \'System_Top.u_SysCtrl.Nx_S[0]\'. Gray encoding check: \'DISABLED\'%',
                       "-comment"=>'"Created by ICer on 28-Sep-2026 01:32:14 RX_D_VALID is a Qualifier"',
                       "violations_waived"=>'89',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/System_Top/cdc/cdc_verify_struct/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'15'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'12',
                       "waiverCmd"=>'q%waive  -rule "Ac_conv02" -msg "4 synchronizers (System_Top.u_FIFO.u_sync_r2w.sync_reg[0][3:0]) converge on combinational gate \'System_Top.FIFO_FULL\'. Gray encoding check: \'DISABLED\'" -comment "Created by ICer on 28-Sep-2026 01:37:11 Synchronized data bus with gray encoding"%',
                       "-rule"=>'"Ac_conv02"',
                       "-msg"=>'q%4 synchronizers (System_Top.u_FIFO.u_sync_r2w.sync_reg[0][3:0]) converge on combinational gate \'System_Top.FIFO_FULL\'. Gray encoding check: \'DISABLED\'%',
                       "-comment"=>'"Created by ICer on 28-Sep-2026 01:37:11 Synchronized data bus with gray encoding"',
                       "violations_waived"=>'91',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/System_Top/cdc/cdc_verify_struct/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'15'
                      );

spyWaiversDataCount("totalWaivers"=>'12',
"totalWaiversApplied"=>'12',
"totalWaiversWithRegExp"=>'0',
"totalWaiversWithRuleSpecified"=>'12',
"totalWaiversWithIpSpecified"=>'0',
"totalWaiversWithFileLine"=>'0',
                         );

spyProhibitWaiverRules(                         );

spySetWaivedViolationNumberHash("");

1;
