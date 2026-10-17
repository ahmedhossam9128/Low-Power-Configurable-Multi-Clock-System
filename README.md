# Low-Power Configurable Multi-Clock System

A configurable, multi-clock-domain digital subsystem written in Verilog/SystemVerilog, implemented
through a full Synopsys RTL-to-GDSII-prep flow on the TSMC CL013G RVT 130 nm library.

The design receives a UART serial stream, optionally routes it through a configurable ALU, and
writes results to a register file. Two asynchronous clock domains are bridged by a dual-clock
asynchronous FIFO and a bus synchronizer. Clock gating and per-domain clock dividers provide the
low-power and configurability features.

---

## Design at a glance

| | |
|---|---|
| Top module | `System_Top` |
| Parameters | `DATA_WIDTH = 8`, `RF_DEPTH = 16`, `FIFO_DEPTH = 8` |
| Technology | TSMC CL013G RVT, 130 nm (`scmetro_tsmc_cl013g_rvt_*`) |
| Voltage corners | SS 1.08 V / 125 °C, TT 1.2 V / 25 °C, FF 1.32 V / −40 °C |
| Cell area | 19,734.4 µm² (pre-DFT) · 22,006.6 µm² (post-DFT) |
| Die / Core dimensions | 240.47 µm × 160.47 µm die · 228.32 µm × 148.32 µm core · 75.44% active cell utilization (100% post-fillers) |
| Cells | 1,828 pre-DFT (1,431 comb + 366 seq) · 1,800 post-DFT (346 scan + 12 shift-reg + 1 ICG) |
| Ports | 552 pre-DFT · 680 post-DFT (scan test ports added) |
| Sign-off Power | **0.846 mW (845.9 µW)** @ 1.08 V, 125 °C (PrimeTime PX time-based with GLS VCD + DSPF RC) |
| Cell Leakage Power | **16.59 µW** (matches Cadence Encounter post-route 16.62 µW to within 0.2%) |
| Test Coverage | **99.61% stuck-at coverage** (15,505 detected faults across 4 scan chains) |
| Post-Route Slack | Setup WNS = **+0.364 ns**, Hold WNS = **+0.074 ns**, 0 DRVs |
| Physical Verification | **0 DRC, 0 LVS, 0 Antenna, 0 Density violations** (Cadence First Encounter) |
| Formal Equivalence | **100% SUCCEEDED** (Formality: post-syn 361 pts, post-DFT 362 pts, post-PnR 362 pts) |
| Gate-Level Simulation | **61/61 PASSED** (QuestaSim with SDF-max annotation, 0 timing check violations) |

## Clock architecture

Five clocks across two asynchronous domains. `REF_Clock` drives the ALU path; `UART_Clock`
(271.27 ns) drives the UART and generates the divided `RX_Clock`/`TX_Clock`. The two domains are
declared asynchronous in the SDC (`set_clock_groups -asynchronous`) and are crossed only through
synchronizers.

| Clock | Frequency | Source | Type |
|---|---|---|---|
| `REF_Clock` | 100 MHz | `REF_CLK` port | primary |
| `ALU_Clock` | 100 MHz| `u_CLK_GATE/GATED_CLK` | generated (divide_by 1, gated) |
| `UART_Clock` | 3.6864 MHz | `UART_CLK` port | primary |
| `RX_Clock` | 3.6864 MHz| `u_RX_CLK_DIV/o_div_clk` | generated (divide_by 1) |
| `TX_Clock` | 115.2 KHz | `u_TX_CLK_DIV/o_div_clk` | generated (divide_by 32) |
| `scan_clk` | 10 MHz | `scan_clk` port | test only |

`TX_CLK_DIV_RATIO` is runtime-configurable (default 32) through the configuration register;
`RX_CLK_DIV_RATIO` (3-bit) selects a divisor on `RX_CLK_DIV_MUX`, which allows the RX sampling
clock to be retuned to the incoming baud rate.

## Operating principle

1. `RX_IN` is deserialized by the UART receiver (`u_UART/u_UART_RX`) using a start-bit check,
   mid-bit sampler, edge/bit counter, optional parity check and stop-bit check. Received data is
   validated by `RX_D_VALID`.
2. Received bytes are written into the asynchronous FIFO (`u_FIFO`), which crosses from the
   UART domain to the `REF_Clock` domain via gray-coded read/write pointers synchronized by
   `DF_SYNC` two-flop synchronizers (`u_sync_r2w`, `u_sync_w2r`).
3. `u_SysCtrl` decodes CDC-synchronized command bytes (`Data_Bus_Sync`) from `RX_P_DATA` into
   register-file access and ALU control, driving `RF_WrEn`, `RF_RdEn`, `RF_ADDR`, `ALU_EN` and
   `ALU_FUN`.
4. `u_RegFile` (16 × 8-bit) supplies ALU operands `ALU_OP_A`/`ALU_OP_B`; `u_ALU` performs one of
   add/sub/multiply/divide plus logical operations and asserts `ALU_OUT_VALID`.
5. Results are serialized back out by the UART transmitter (`u_UART/u_UART_TX_TOP`) on `TX_OUT`
   at `TX_Clock`.
6. `u_CLK_GATE` gates `ALU_Clock` when the ALU is idle (`CLK_Gate_EN`), and `u_pulse_gen`
   produces the clock-gating enable pulse.

Reset is asynchronous-asserted and synchronized per domain by `u_REF_RST_Sync` and
`u_UART_RST_Sync` (`RST_Sync`, 2 stages).

## Power architecture

Two mechanisms account for the "low-power" and "configurable" aspects:

- **Clock gating** — `CLK_GATE` holds `ALU_Clock` off while the ALU is idle.
- **Multi-rate clocking** — the TX divider runs 32× slower than the UART clock, and the RX
  divider is runtime-selectable.

### PrimeTime PX Sign-Off Power Breakdown (Time-Based VCD + DSPF Parasitics)

Sign-off power analysis was performed in Synopsys PrimeTime PX in time-based mode driven by
switching activity extracted from gate-level simulation across the full 19.49 ms run with extracted
post-route DSPF RC parasitics (`System_Top.spf`: 2,086 nets, 39,020 capacitances, 36,934 resistances)
at SS 1.08 V, 125 °C:

| Power Group | Internal Power | Switching Power | Leakage Power | Total Power | Share |
|---|---|---|---|---|---|
| `clock_network` | 572.60 µW | 255.90 µW | 2.85 µW | **831.30 µW** | 98.27% |
| `register` | 0.33 µW | 0.13 µW | 6.12 µW | **6.58 µW** | 0.78% |
| `combinational` | 0.19 µW | 0.22 µW | 7.62 µW | **8.04 µW** | 0.95% |
| **Total System Power** | **573.10 µW (67.75%)** | **256.20 µW (30.29%)** | **16.59 µW (1.96%)** | **845.90 µW** | **100.00%** |

- **Peak Instantaneous Power:** 0.1846 W at $t = 269.37\,\mu\text{s}$ (during initial reset release and simultaneous clock-edge switching).
- **Leakage Correlation:** PrimeTime PX reported **16.59 µW** cell leakage, correlating to within **0.2%** of Cadence Encounter's post-route estimate (**16.62 µW**).

## Repository layout

```
RTL/                  Design source (41 Verilog/SystemVerilog files)
  System_Top/         Top level + pre-DFT variant
  Sys_Ctrl/           Command decode, register-file and ALU control
  UART/               UART_RX (7 blocks), UART_TX (4 blocks), UART_TOP
  ASYNC_FIFO/         FIFO_TOP, FIFO_MEM, FIFO_RD, FIFO_WR, DF_SYNC
  Data_Bus_Sync/      CDC bus synchronizer
  I_CLK_DIV/          Configurable clock divider
  RX_CLK_DIV_MUX/     RX divisor select
  CLK_GATE/           Integrated clock gate
  Pulse_Gen/          Clock-gate enable pulse generator
  RST_Synchronizer/   Per-domain reset synchronizer
  REG_FILE/           16 x 8-bit register file
  ALU/                8-bit ALU with add/sub/mul/div
  Scan_Mux/           2x1 scan mux
Synthesis/            Design Compiler: constraints, netlist, SDF, SDC, reports
DFT/                  DFT Compiler: scan insertion, post-DFT netlist, scan DEF, and reports
PnR/                  Cadence SoC Encounter: floorplanning, CTS, routing, timing & sign-off exports
  export/             Post-route netlists (.v, _pg.v), delays (.sdf), parasitics (.spf), layout (.gds)
  timingReports/      Multi-corner setup/hold timing slack reports (preCTS, postCTS, postRoute, signOff)
  clock_report/       Clock tree synthesis reports and skew analysis
Formality/            Equivalence checking: post-syn, post-dft, post-PnR scripts and verification reports
SIM/                  Top-level SystemVerilog testbench and file list
GLS/                  Gate-Level Simulation (QuestaSim) and Sign-Off Power (PrimeTime PX)
  PT/                 PrimeTime PX time-based power scripts, logs, and System_PW.rpt
System_Lint/          SpyGlass lint + CDC/RDC: authored constraints, waivers, consolidated reports
Final_System_Report.pdf   Full 23-page comprehensive ASIC design and sign-off report
```

### Full design report

`Final_System_Report.pdf` is the complete write-up: specifications and command set, system
architecture, multi-clock design (CDC/RDC, clock gating, pipelining), synthesis optimization,
scan insertion & ATPG coverage, 3-stage formal equivalence, physical design (floorplanning, CTS,
NanoRoute, physical verification), gate-level simulation with SDF-max delays, and sign-off
dynamic power analysis with PrimeTime PX.

## Implementation flow

```
RTL ──► Synthesis ──► DFT (scan insertion) ──► PnR (Encounter) ──► Formality (post-syn / post-dft / post-PnR)
         (DC)          (DFT Compiler)           (NanoRoute)        │
           │                   │                      │             ▼
           └───── SpyGlass lint / CDC / RDC ──────────┴─────► GLS (QuestaSim SDF-max)
                                                                    │
                                                                    ▼
                                                             PrimeTime PX (Power)
```

Each stage is driven by a tcl script plus a `run_*.sh` wrapper:

| Stage | Tool | Script | Output / Deliverables |
|---|---|---|---|
| Synthesis | Design Compiler | `Synthesis/syn_script.tcl` | Gate-level netlist, SDC, SDF, timing/area/power reports |
| DFT | DFT Compiler | `DFT/dft_script.tcl` | Scan-inserted netlist, scan DEF, test SDC, ATPG report |
| Formality (post-syn) | Formality | `Formality/post-syn/syn_fm_script.tcl` | 361 compare points verified (SUCCEEDED) |
| Formality (post-dft) | Formality | `Formality/post-dft/dft_fm_script.tcl` | 362 compare points verified (SUCCEEDED) |
| Formality (post-PnR) | Formality | `Formality/post-PnR/pnr_fm_script.tcl` | 362 compare points verified (SUCCEEDED) |
| Place & Route (PnR) | SoC Encounter | `PnR/encounter.cmd` | Layout GDSII, post-route netlist, SPEF/DSPF, SDF, DRC/LVS |
| Simulation (RTL) | QuestaSim | `SIM/run.do` | Functional verification (167 checks passed) |
| Simulation (GLS) | QuestaSim | `GLS/run.do` | Gate-level verification with SDF-max delays (61 checks passed) |
| Sign-Off Power | PrimeTime PX | `GLS/PT/PT.tcl` | Time-based power analysis using GLS VCD + DSPF parasitics |

The RTL file list is centralised in one `system.lst` per tool working directory, each using paths
relative to that directory (`../RTL/...`, or `../../RTL/...` from the Formality directories):
`SIM/system.lst` (also drives simulation), `Synthesis/system.lst`, `DFT/system.lst`,
`Formality/post-syn/system.lst`, `Formality/post-dft/system.lst`, `Formality/post-PnR/system.lst`.

### Results Summary

**Timing** — all path groups MET across every stage of the design flow:
- *Pre-DFT Synthesis:* Worst Setup Slack = **+0.02 ns** (`ALU_Clock`), Worst Hold Slack = **+0.34 ns**.
- *Post-Route PnR:* Worst Setup Slack = **+0.364 ns**, Worst Hold Slack = **+0.074 ns**, **0 DRVs** (Max Cap: 0, Max Transition: 0, Max Fanout: 0).
- *Clock Tree Synthesis (CTS):* `REF_CLK` skew = **109.3 ps** (45% margin against 200 ps target), Max Edge Delay = 1.84 ns.

**Equivalence check** — verified with Synopsys Formality across all three transformations:
- Post-Synthesis: `Verification SUCCEEDED`, **361 passing compare points, 0 failing, 0 aborted, 0 unverified**.
- Post-DFT: `Verification SUCCEEDED`, **362 passing compare points, 0 failing, 0 aborted, 0 unverified**.
- Post-PnR: `Verification SUCCEEDED`, **362 passing compare points, 0 failing, 0 aborted, 0 unverified**.

**DFT Scan Insertion** — 4 balanced scan chains inserted; test pins multiplexed with functional clocks and reset:
- Stuck-at test coverage: **99.61%** (15,505 detected faults out of 15,604; only 1 undetected fault).
- Area overhead: +11.51% total cell area (19,734 µm² → 22,007 µm²).

**Physical Design & Verification (PnR)** — Cadence SoC Encounter 130 nm 7-metal layer flow:
- Core utilization: **69.89%** pre-CTS → **75.27%** post-CTS → **75.44%** post-route (active cells), reaching **100%** continuous row density after physical filler cell insertion (2,045 filler cells across 52 standard cell rows).
- Routing: 6 metal layers (NanoRoute) with concurrent via/wire optimization.
- Physical Verification: **0 DRC violations**, **0 LVS connectivity errors** (0 opens, 0 shorts), **0 Antenna violations**, **0 Metal Density violations** (20%--80% density window satisfied across all layers 1--7).

**Gate-Level Simulation (GLS)** — QuestaSim with full back-annotated physical delays (`System_Top.sdf` max corner):
- **61/61 functional checks PASSED with zero failures**.
- **0 timing check violations** (setup, hold, recovery, removal, pulse-width) observed throughout 19.49 ms of simulation.

**Sign-Off Power Analysis (PrimeTime PX)** — Time-based dynamic analysis driven by GLS VCD switching activity and extracted DSPF parasitics:
- Total Time-Averaged Power: **0.846 mW (845.9 µW)**.
- Distribution: Cell Internal Power = **67.75% (573.1 µW)**, Net Switching Power = **30.29% (256.2 µW)**, Cell Leakage Power = **1.96% (16.59 µW)**.
- Gated power optimization: Active clock gating holds `ALU_Clock` quiet during idle UART communication, confining high-frequency toggling to active execution cycles.

**SpyGlass CDC/RDC** — run on `System_Top` against the `rtl_handoff` methodology. Constraints are
declared in `System_Lint/system.sgdc` (quasi-static config registers, `reset_synchronizer`,
`sync_cell`, `cdc_attribute -unrelated`); sign-off waivers with rationale are recorded in the
`.awl` files under `System_Lint/spyglass-1/System_Top/`. Consolidated reports are kept in
`System_Lint/spyglass-1/consolidated_reports/`.

## Simulation verification

System-level functional verification is carried out by `SIM/System_Top_tb.sv`, which acts as the
UART host: it frames bytes onto `RX_IN` with the parity setting from `REG2`, decodes the response
frames on `TX_OUT`, and compares them against expected values, printing a `PASS`/`FAIL` line per
check and a summary at the end. All three prescale settings (32 / 16 / 8) are exercised. The full
15-function ALU sweep runs once, at prescale 32: the ALU decode is identical at every prescale, so
repeating it per setting would add runtime without adding coverage. Prescale 16 and 8 run the
configuration, register-file and corner checks instead.

**Result: `PASSED: 167   FAILED: 0` — `ALL TESTS PASSED`.**

The run is **167 checks**: 91 at prescale 32, 31 at prescale 16, 31 at prescale 8, plus a
**FIFO-full back-pressure phase of 14 checks** that exercises the `SYS_CTRL` stall path the original
testbench never reached.

| Check | Count |
|---|---|
| `RX_CLK` and `TX_CLK` period (divider outputs) | 2 |
| Read-back of `REG2` / `REG3` (configuration actually applied) | 2 |
| Register writes produce no response (no unexpected TX traffic) | 1 |
| Register read-back at `0x04`, `0x07`, `0x0B`, `0x0F` | 4 |
| ALU with operands (`CC`): 15 functions × 2 vectors × 2 bytes | 60 |
| `REG0`/`REG1` preload produces no response | 1 |
| ALU without operands (`DD`): 5 operations × 2 bytes | 10 |
| Mixed `CC`/`DD` re-check, end-of-sweep TX idle | 5 |
| **Total at prescale 32** | **91** |
| **Total at prescale 16 and 8** (configuration, register file and corners; the `CC` sweep is
prescale-32 only) | **31** each |

`DD` (no-operand ALU) and the corner cases run at every prescale; only the 15-function `CC` sweep is
restricted to prescale 32.

### FIFO-full back-pressure

At the default TX divider (`REG3 = 32`) the transmitter drains faster than the UART can fill it —
95.5 µs to send one byte against 104.2 µs to produce one FIFO entry — so the 8-entry FIFO never
fills and the `SYS_CTRL` stall path is unreachable. Raising `REG3` to 128 inverts the ratio, so
the FIFO fills and the stall is genuinely exercised. Six ALU results (12 response bytes) are
queued into 8 entries.

| Quantity | Value |
|---|---|
| Stall actually reached | yes — `FIFO_FULL` asserted |
| `REF_CLK` cycles with FIFO FULL | **20 772** (previously 0) |
| Commands queued under back-pressure | 6 ALU (`0xDD`), 12 response bytes |
| Response bytes checked | 12 of 12 correct, in order |

```
================ FIFO-full back-pressure ================
Slowing TX (REG3 = 128) so the FIFO fills faster than it drains.
[31224640000] PASS  BP back-pressure : FIFO went FULL (20772 REF_CLK cycles; was 0)
[35964223000] PASS  BP: TX idle after drain : no unexpected TX traffic
```
The three configurations confirm both clock arithmetic and the register file:

| Prescale | `REG2` read-back | `RX_CLK` period | `TX_CLK` period |
|---|---|---|---|
| 32 | `0x81` | 271.3 ns (`UART_CLK` ÷ 1) | 8680.6 ns (1 bit @ 115 200 baud) |
| 16 | `0x41` | 542.5 ns (÷ 2) | 8680.6 ns |
| 8 | `0x21` | 1085.1 ns (÷ 4) | 8680.6 ns |

Representative checks from each prescale sweep:

```
[14575333000] PASS  CC XOR A=0xc0 B=0x0f LSB : 0xcf
[15825333000] PASS  CC XNOR A=0xbf B=0x10 LSB : 0x50
[15929500000] PASS  CC XNOR A=0xbf B=0x10 MSB : 0xff
[22804500000] PASS  CC SHL A=0xe8 B=0xdf MSB : 0x01
[23325334000] PASS  CC EQ A=0x37 B=0x37 LSB : 0x01
[28863528000] PASS  end of sweep: TX idle : no unexpected TX traffic

================ FIFO-full back-pressure ================
Slowing TX (REG3 = 128) so the FIFO fills faster than it drains.
[31224640000] PASS  BP back-pressure : FIFO went FULL (20772 REF_CLK cycles; was 0)
[35964223000] PASS  BP: TX idle after drain : no unexpected TX traffic

================ Prescale = 16  (PAR_EN=1 PAR_TYP=0) ================
[36624571000] PASS  RX_CLK period 542.5 ns (Prescale 16 -> UART_CLK/2)
[36641389000] PASS  TX_CLK period 8680.6 ns (= 1 bit @ 115200 baud)
[64792433000] PASS  end of sweep: TX idle : no unexpected TX traffic

================ Prescale = 8  (PAR_EN=1 PAR_TYP=0) =================
[65453306000] PASS  RX_CLK period 1085.1 ns (Prescale 8 -> UART_CLK/4)
[93620625000] PASS  end of sweep: TX idle : no unexpected TX traffic

==================== SUMMARY ====================
PASSED: 167   FAILED: 0
ALL TESTS PASSED
=================================================
```

REF_CLK-cycle counts observed in behavioural simulation:

| Quantity | Value |
|---|---|
| Register write: `RX_D_VALID` (data byte) → `WrEn` | 36 ns |
| Register read: address byte → `RdEn` / `Rd_D_Valid` / `FIFO_WR_INC` | 31 / 41 / 61 ns |
| ALU (`DD`): function byte → `ALU_EN` / `FIFO_WR_INC` | 38 / 68 ns |
| FIFO write → `EMPTY` de-asserts in TX domain | 17.0 µs (2 `TX_CLK` cycles) |
| `EMPTY` de-assert → start bit on `TX_OUT` | 8.7 µs (1 `TX_CLK` cycle) |

These show the logic path a command takes. They are **not** timing margins — behavioural
simulation uses ideal clocks. Setup/hold timing, clock-tree skew, and physical margins are
verified in the dedicated STA, PnR, and Gate-Level Simulation (GLS) stages above.

## Getting started

Re-running a stage requires the Synopsys tool suite (DC / DFT Compiler / Formality / SpyGlass) and
the TSMC CL013G libraries. The `std_cells/` library files are **not** tracked in this repository,
so you must point `target_library`/`link_library` (in `Synthesis/syn_script.tcl` and
`DFT/dft_script.tcl`) at your own local copies.

Simulation is the only stage runnable without the synthesis tools. `run.do` compiles the RTL from
`system.lst`, then the testbench, then runs to completion:

```sh
cd SIM
vsim -do run.do
```

The testbench accepts `+QUICK` (one vector per ALU function), `+PAR_EN=<0|1>` and `+PAR_TYP=<0|1>`.

## Contributing notes

- Generated tool output is ignored by `.gitignore` (`FM_WORK*`, `*_svf`, `Work/`, `*.vcd`,
  `*.wlf`, `spyglass-1/`), which is why the repo carries only source, constraints and reports.
- CDC/RDC is checked statically with SpyGlass (`System_Lint/`), not by simulation. Behavioural
  simulation uses ideal clocks, so it cannot verify timing or metastability margins.
- `System_Lint/spyglass-1/consolidated_reports/` and the `.awl` waivers are deliberately tracked
  as sign-off evidence even though they sit inside the ignored SpyGlass tree.
- Please do not commit waveform dumps or standard-cell libraries.

## License

Licensed under the Apache License, Version 2.0 — see [LICENSE](LICENSE).

**Third-party materials are not covered.** This license applies to the original design source and
flow scripts in this repository. The scripts reference Synopsys and TSMC CL013G RVT library
artifacts (`scmetro_tsmc_cl013g_rvt_*.lib` / `.db`), which are the property of their respective
vendors and are subject to separate license terms. Those files are deliberately **not** tracked
here, and nothing in the Apache-2.0 grant extends to them.

Tool output retained as evidence (synthesis/DFT/Formality reports and the SpyGlass consolidated
reports) is provided for verification purposes only.
