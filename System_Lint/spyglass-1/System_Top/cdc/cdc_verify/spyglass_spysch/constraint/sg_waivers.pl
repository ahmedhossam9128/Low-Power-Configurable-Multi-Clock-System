################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'7',
                          "totalGeneratedCount"=>'0',
                          "totalReportCount"=>'0'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q!waive  -rule "Setup_port01" -msg "Port coverage for top design unit \'System_Top\' is: \'1\' (25.00 %) port(s) not fully constrained" -comment "Created by ICer on 28-Sep-2026 01:39:27"!',
                       "-rule"=>'"Setup_port01"',
                       "-msg"=>'q!Port coverage for top design unit \'System_Top\' is: \'1\' (25.00 %) port(s) not fully constrained!',
                       "-comment"=>'"Created by ICer on 28-Sep-2026 01:39:27"',
                       "violations_waived"=>'82',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/System_Top/cdc/cdc_verify/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'1'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'2',
                       "waiverCmd"=>'q%waive  -rule "Setup_port01" -msg "Abstracted sgdc file for input ports of block \'System_Top\' is generated" -comment "Created by ICer on 28-Sep-2026 01:39:27 Async RST handeled within RST Synchronizers "%',
                       "-rule"=>'"Setup_port01"',
                       "-msg"=>'q%Abstracted sgdc file for input ports of block \'System_Top\' is generated%',
                       "-comment"=>'"Created by ICer on 28-Sep-2026 01:39:27 Async RST handeled within RST Synchronizers "',
                       "violations_waived"=>'84',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/System_Top/cdc/cdc_verify/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'2'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'3',
                       "waiverCmd"=>'q%waive  -rule "Ac_datahold01a" -msg "Synchronized crossing: destination flop \'System_Top.u_UART_TX.U2_FSM.P_DATA_Registered[7:0]\', clocked by \'System_Top.UART_CLK\', source flop \'System_Top.u_FIFO.u_fifo_mem.mem_Buffer[7:0][7:0]\', clocked by \'System_Top.REF_CLK\'. Data-enable sequencing check: Partially-Proved" -comment "Created by ICer on 28-Sep-2026 01:42:34 Synchonization crossing handeled with async_FIFO "%',
                       "-rule"=>'"Ac_datahold01a"',
                       "-msg"=>'q%Synchronized crossing: destination flop \'System_Top.u_UART_TX.U2_FSM.P_DATA_Registered[7:0]\', clocked by \'System_Top.UART_CLK\', source flop \'System_Top.u_FIFO.u_fifo_mem.mem_Buffer[7:0][7:0]\', clocked by \'System_Top.REF_CLK\'. Data-enable sequencing check: Partially-Proved%',
                       "-comment"=>'"Created by ICer on 28-Sep-2026 01:42:34 Synchonization crossing handeled with async_FIFO "',
                       "violations_waived"=>'151',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/System_Top/cdc/cdc_verify/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'4'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'4',
                       "waiverCmd"=>'q%waive  -rule "Ac_conv01" -msg "13 synchronizers (System_Top.u_FIFO.u_sync_r2w.sync_reg[0][3:0],System_Top.u_BUS_SYNC.Bit_Syncronizer[1] ...) converge on flop \'System_Top.RF_RdEn\'" -comment "Created by ICer on 28-Sep-2026 01:48:41 SysCtrl safely handles data conversion and data is unrelated "%',
                       "-rule"=>'"Ac_conv01"',
                       "-msg"=>'q%13 synchronizers (System_Top.u_FIFO.u_sync_r2w.sync_reg[0][3:0],System_Top.u_BUS_SYNC.Bit_Syncronizer[1] ...) converge on flop \'System_Top.RF_RdEn\'%',
                       "-comment"=>'"Created by ICer on 28-Sep-2026 01:48:41 SysCtrl safely handles data conversion and data is unrelated "',
                       "violations_waived"=>'149',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/System_Top/cdc/cdc_verify/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'6'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'5',
                       "waiverCmd"=>'q%waive  -rule "Ac_conv02" -msg "9 synchronizers (System_Top.u_BUS_SYNC.Bit_Syncronizer[1],System_Top.u_BUS_SYNC.Sync_bus[7:0]) converge on MUX \'System_Top.u_SysCtrl.Nx_S[0]\'. Gray encoding check: \'Partially-Proved\'" -comment "Created by ICer on 28-Sep-2026 01:50:36 RX_D_VALID is a qualifier that bypasses data safely" --on_the_fly_compat_check %',
                       "-rule"=>'"Ac_conv02"',
                       "-msg"=>'q%9 synchronizers (System_Top.u_BUS_SYNC.Bit_Syncronizer[1],System_Top.u_BUS_SYNC.Sync_bus[7:0]) converge on MUX \'System_Top.u_SysCtrl.Nx_S[0]\'. Gray encoding check: \'Partially-Proved\'%',
                       "-comment"=>'"Created by ICer on 28-Sep-2026 01:50:36 RX_D_VALID is a qualifier that bypasses data safely"',
                       "violations_waived"=>'143',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/System_Top/cdc/cdc_verify/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'8'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'6',
                       "waiverCmd"=>'q%waive  -rule "Ac_conv02" -msg "4 synchronizers (System_Top.u_FIFO.u_sync_r2w.sync_reg[0][3:0]) converge on combinational gate \'System_Top.FIFO_FULL\'. Gray encoding check: \'Partially-Proved\'" -comment "Created by ICer on 28-Sep-2026 01:53:09 Safe data convergence with gray encoding" --on_the_fly_compat_check %',
                       "-rule"=>'"Ac_conv02"',
                       "-msg"=>'q%4 synchronizers (System_Top.u_FIFO.u_sync_r2w.sync_reg[0][3:0]) converge on combinational gate \'System_Top.FIFO_FULL\'. Gray encoding check: \'Partially-Proved\'%',
                       "-comment"=>'"Created by ICer on 28-Sep-2026 01:53:09 Safe data convergence with gray encoding"',
                       "violations_waived"=>'145',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/System_Top/cdc/cdc_verify/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'10'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'7',
                       "waiverCmd"=>'q%waive  -rule "Ac_cdc01a" -msg "Fast(\'System_Top.REF_CLK\') to slow(\'System_Top.UART_CLK\') clock crossing(from \'System_Top.u_FIFO.grey_w_ptr[3]\' to \'System_Top.u_FIFO.u_sync_w2r.sync_reg[0][3]\') detected. Data hold check:Partially-Proved" -comment "Created by ICer on 28-Sep-2026 01:54:12 FIFO safely handles data loss and synchronization from fast to slow clk domains"%',
                       "-rule"=>'"Ac_cdc01a"',
                       "-msg"=>'q%Fast(\'System_Top.REF_CLK\') to slow(\'System_Top.UART_CLK\') clock crossing(from \'System_Top.u_FIFO.grey_w_ptr[3]\' to \'System_Top.u_FIFO.u_sync_w2r.sync_reg[0][3]\') detected. Data hold check:Partially-Proved%',
                       "-comment"=>'"Created by ICer on 28-Sep-2026 01:54:12 FIFO safely handles data loss and synchronization from fast to slow clk domains"',
                       "violations_waived"=>'150',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/System_Top/cdc/cdc_verify/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'12'
                      );

spyWaiversDataCount("totalWaivers"=>'7',
"totalWaiversApplied"=>'7',
"totalWaiversWithRegExp"=>'0',
"totalWaiversWithRuleSpecified"=>'7',
"totalWaiversWithIpSpecified"=>'0',
"totalWaiversWithFileLine"=>'0',
                         );

spyProhibitWaiverRules(                         );

spySetWaivedViolationNumberHash("");

1;
