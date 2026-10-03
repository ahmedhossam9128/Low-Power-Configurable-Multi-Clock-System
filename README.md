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
| Cell area | 22,405.5 µm² (pre-DFT) · 23,929.4 µm² (post-DFT) |
| Cells | 1,895 pre-DFT (1,485 comb + 373 seq) · 1,870 post-DFT |
| Ports | 732 pre-DFT · 854 post-DFT (scan added) |
| Internal power | 0.425 mW @ 1.08 V |
| Scan chains | 4 |

## Clock architecture

Five clocks across two asynchronous domains. `REF_Clock` drives the ALU path; `UART_Clock`
(271.27 ns) drives the UART and generates the divided `RX_Clock`/`TX_Clock`. The two domains are
declared asynchronous in the SDC (`set_clock_groups -asynchronous`) and are crossed only through
synchronizers.

| Clock | Period (ns) | Source | Type |
|---|---|---|---|
| `REF_Clock` | 10.00 | `REF_CLK` port | primary |
| `ALU_Clock` | 10.00 | `u_CLK_GATE/GATED_CLK` | generated (divide_by 1, gated) |
| `UART_Clock` | 271.27 | `UART_CLK` port | primary |
| `RX_Clock` | 271.27 | `u_RX_CLK_DIV/o_div_clk` | generated (divide_by 1) |
| `TX_Clock` | 8680.56 | `u_TX_CLK_DIV/o_div_clk` | generated (divide_by 32) |
| `scan_clk` | 100.00 | `scan_clk` port | test only |

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

- **Clock gating** — `CLK_GATE` holds `ALU_Clock` off while the ALU is idle. Reported gating-cell
  cost is 22.36 µm² (0.1% of area) and 5.42 µW.
- **Multi-rate clocking** — the TX divider runs 32× slower than the UART clock, and the RX
  divider is runtime-selectable.

Post-synthesis power distribution (`ss_1p08v_125c`, low-effort vectorless estimation):

| Block | Total power | Share |
|---|---|---|
| `u_RegFile` | 0.212 mW | 47.0% |
| `u_FIFO` (incl. `u_fifo_mem`) | 0.118 mW | 26.1% |
| `u_SysCtrl` | 4.84e-2 mW | 10.7% |
| `u_ALU` | 3.03e-2 mW | 6.7% |
| `u_BUS_SYNC` | 1.75e-2 mW | 3.9% |
| `u_REF_RST_Sync` | 1.25e-2 mW | 2.8% |
| `u_CLK_GATE` | 5.42e-3 mW | 1.2% |
| `u_UART` | 3.55e-3 mW | 0.8% |
| **`System_Top`** | **0.450 mW** | 100% |

> Note: power was estimated at `-analysis_effort low` with no switching-activity annotation
> (`PWR-414`/`PWR-415` warnings in `power.rpt`), so these are relative indicators rather than
> sign-off-quality absolute numbers. Leakage is reported in pW and is dominated by the register
> file and FIFO memory.

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
DFT/                  DFT Compiler: scan insertion, post-DFT netlist and reports
Formality/            Equivalence checking: post-syn, post-dft, post-PnR
SIM/                  Top-level SystemVerilog testbench and file list
System_Lint/          SpyGlass lint + CDC/RDC: authored constraints, waivers, reports
std_cells/            TSMC CL013G RVT timing libraries and db files (not tracked)
Work/                 Scratch (not tracked)
Final_System_Report.pdf   Full 24-page design and simulation report (see below)
```

### Full design report

`Final_System_Report.pdf` is the complete write-up: specifications and command set, system
architecture, the multi-clock design (CDC/RDC, clock gating, pipelining) with measured numbers,
module reference, the full simulation and coverage analysis, and a backend summary. The sections
below summarise the same results for reading on GitHub; the PDF adds the captured waveform
figures, the SYS_CTRL state diagram, the coverage analysis and the command walkthroughs.

In the report, figures 9–25 (the per-command walkthrough captures) are laid out **one per
row**, each with its own caption and a short description, rather than two abreast.

Each RTL block has a matching testbench under its `Sim/` subdirectory.

## Implementation flow

```
RTL ──► Synthesis ──► DFT (scan insertion) ──► Formality
         (DC)          (DFT Compiler)            (equivalence)
           │                   │
           └───── SpyGlass lint / CDC / RDC ─────┘
```

Each stage is driven by a tcl script plus a `run_*.sh` wrapper:

| Stage | Script | Run |
|---|---|---|
| Synthesis | `Synthesis/syn_script.tcl` | `Synthesis/run_syn.sh` |
| DFT | `DFT/dft_script.tcl` | `DFT/run_dft.sh` |
| Formality (post-syn) | `Formality/post-syn/syn_fm_script.tcl` | `run_syn_fm.tcl` |
| Formality (post-dft) | `Formality/post-dft/dft_fm_script.tcl` | `run_dft_fm.tcl` |
| Formality (post-PnR) | `Formality/post-PnR/pnr_fm_script.tcl` | `run_pnr_fm.tcl` |
| Simulation | `SIM/run.do` | ModelSim/QuestaSim |

The RTL file list is centralised in one `system.lst` per tool working directory, each using paths
relative to that directory (`../RTL/...`, or `../../RTL/...` from the Formality directories):
`SIM/system.lst` (also drives simulation), `Synthesis/system.lst`, `DFT/system.lst`,
`Formality/post-syn/system.lst`, `Formality/post-dft/system.lst`.

> The `.tcl` scripts contain absolute library paths from the original environment and will need
> `search_path` updated before re-running.

### Results

**Timing** — all path groups MET. Worst setup slack 0.00 ns (scan path), worst hold 0.33 ns.

**Equivalence check** — post-synthesis Formality: `Verification SUCCEEDED`, **361 passing compare
points, 0 failing, 0 aborted, 0 unverified** (358 DFF, 1 LAT, 2 port). Verified with
`synopsys_auto_setup` mode enabled.

**DFT** — 4 scan chains inserted; `System_Top` ports increase 732 → 854. Post-DFT area 23,929.4 µm²
(+6.8% over pre-DFT). `test_mode` selects `scan_clk`/`scan_rst` over the functional clocks and
reset through `MUX_2x1` scan muxes (`u_ref_clk_mux`, `u_alu_clk_mux`, `u_uart_clk_mux`,
`u_tx_clk_mux`, `u_rx_clk_mux`, `u_rst_mux`, …), with `SI[3:0]`/`SE`/`SO[3:0]` as the scan
interface.

**SpyGlass CDC/RDC** — run on `System_Top` against the `rtl_handoff` methodology. Constraints are
declared in `System_Lint/system.sgdc` (quasi-static config registers, `reset_synchronizer`,
`sync_cell`, `cdc_attribute -unrelated`); sign-off waivers with rationale are recorded in the
`.awl` files under `System_Lint/spyglass-1/System_Top/`. Consolidated reports are kept in
`System_Lint/spyglass-1/consolidated_reports/`.

## Simulation verification

System-level functional verification is carried out by `SIM/System_Top_tb.sv`, which acts as the
UART host: it frames bytes onto `RX_IN` with the parity setting from `REG2`, decodes the response
frames on `TX_OUT`, and compares them against expected values. Each of the three prescale settings
(32 / 16 / 8) is exercised in full, with a `PASS`/`FAIL` line per check and a summary at the end.

**Result: `PASSED: 239   FAILED: 0` — `ALL TESTS PASSED`.**

The run is a per-prescale sweep (75 checks × 3 prescales = 225) plus a **FIFO-full
back-pressure phase (14 checks)**, added to exercise the `SYS_CTRL` stall path that the original
testbench never reached.

Per-prescale breakdown (75 checks each, × 3 prescales = 225):

| Check | Count |
|---|---|
| `RX_CLK` and `TX_CLK` period (divider outputs) | 2 |
| Read-back of `REG2` / `REG3` (configuration actually applied) | 2 |
| Register writes produce no response (no unexpected TX traffic) | 1 |
| Register read-back at `0x04`, `0x07`, `0x0B`, `0x0F` | 4 |
| ALU with operands (`CC`): 25 operations × 2 response bytes | 50 |
| `REG0`/`REG1` preload produces no response | 1 |
| ALU without operands (`DD`): 5 operations × 2 bytes | 10 |
| Mixed `CC`/`DD` re-check, end-of-sweep TX idle | 5 |
| **Total per prescale** | **75** |

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
[26224639000] PASS  BP back-pressure : FIFO went FULL (20772 REF_CLK cycles; was 0)
[26224639000] PASS  BP DD ADD  A=0x7a B=0x0c LSB : 0x86
[26224639000] PASS  BP DD ADD  A=0x7a B=0x0c MSB : 0x00
[26441653000] PASS  BP DD SUB  A=0x7a B=0x0c LSB : 0x6e
[30964223000] PASS  BP: TX idle after drain : no unexpected TX traffic
```

> **Limitation.** This closes the back-pressure coverage gap, but it does **not** clear the ALU
> high-byte question. The operands used here (`A = 0x7A`, `B = 0x0C`) produce results whose true
> high byte is `0x00` for every function issued, so a stall that zeroed the high byte would be
> indistinguishable from a pass. Directed vectors with a non-zero high byte are still to be added.

The three configurations confirm both clock arithmetic and the register file:

| Prescale | `REG2` read-back | `RX_CLK` period | `TX_CLK` period |
|---|---|---|---|
| 32 | `0x81` | 271.3 ns (`UART_CLK` ÷ 1) | 8680.6 ns (1 bit @ 115 200 baud) |
| 16 | `0x41` | 542.5 ns (÷ 2) | 8680.6 ns |
| 8 | `0x21` | 1085.1 ns (÷ 4) | 8680.6 ns |

Representative checks from each prescale sweep:

```
================ Prescale = 32  (PAR_EN=1 PAR_TYP=0) ================
[703805000]  PASS  RX_CLK period 271.3 ns (Prescale 32 -> UART_CLK/1)
[712485000]  PASS  TX_CLK period 8680.6 ns (= 1 bit @ 115200 baud)
[1024985000] PASS  RD REG2 (UART cfg) : 0x81
[1337485000] PASS  RD REG3 (div ratio) : 0x20
[2804499000] PASS  RF writes: no response : no unexpected TX traffic
[3116999000] PASS  RD RF[0x04] : 0x85
[4575333000] PASS  CC ADD  A=0xc8 B=0x07 LSB : 0xcf
[19054500000] PASS  CC ADD  A=0xff B=0xff MSB : 0xfe
[23863528000] PASS  end of sweep: TX idle : no unexpected TX traffic

================ FIFO-full back-pressure ================
Slowing TX (REG3 = 128) so the FIFO fills faster than it drains.
[26224639000] PASS  BP back-pressure : FIFO went FULL (20772 REF_CLK cycles; was 0)
[26224639000] PASS  BP DD ADD  A=0x7a B=0x0c LSB : 0x86
[26441653000] PASS  BP DD SUB  A=0x7a B=0x0c LSB : 0x6e
[30964223000] PASS  BP: TX idle after drain : no unexpected TX traffic

================ Prescale = 16  (PAR_EN=1 PAR_TYP=0) ================
[31624559000] PASS  RX_CLK period 542.5 ns (Prescale 16 -> UART_CLK/2)
[31953878000] PASS  RD REG2 (UART cfg) : 0x41
[35504225000] PASS  CC ADD  A=0xc8 B=0x07 LSB : 0xcf
[54792421000] PASS  end of sweep: TX idle : no unexpected TX traffic

================ Prescale = 8  (PAR_EN=1 PAR_TYP=0) =================
[55453283000] PASS  RX_CLK period 1085.1 ns (Prescale 8 -> UART_CLK/4)
[55782059000] PASS  RD REG2 (UART cfg) : 0x21
[59332406000] PASS  CC ADD  A=0xc8 B=0x07 LSB : 0xcf
[78620602000] PASS  end of sweep: TX idle : no unexpected TX traffic

==================== SUMMARY ====================
PASSED: 239   FAILED: 0
ALL TESTS PASSED
=================================================
** Note: $stop    : System_Top_tb.sv(470)
```

Measured latencies at 100 MHz `REF_CLK`:

| Quantity | Value |
|---|---|
| `RX_D_VALID` → synchronized pulse | 21–28 ns (2–3 cycles, phase dependent) |
| Register write: `RX_D_VALID` (data byte) → `WrEn` | 36 ns |
| Register read: address byte → `RdEn` / `Rd_D_Valid` / `FIFO_WR_INC` | 31 / 41 / 61 ns |
| ALU (`DD`): function byte → `ALU_EN` / `FIFO_WR_INC` | 38 / 68 ns |
| `ALU_CLK` edges per command vs `REF_CLK` edges in the same 677 µs | 3 vs 67 709 (0.0044 %) |
| FIFO write → `EMPTY` de-asserts in TX domain | 17.0 µs (2 `TX_CLK` cycles) |
| Reset release `RST` → REF / UART domain | 15 ns / 478 ns |

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
