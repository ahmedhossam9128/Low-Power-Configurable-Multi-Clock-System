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
RTL/                  Design source (44 Verilog/SystemVerilog files)
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
```

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
| Simulation | `SIM/files.f` + `SIM/run.do` | ModelSim/QuestaSim |

The RTL file list is centralised in `SIM/files.f` and consumed by the synthesis/DFT scripts via
`Synthesis/system.lst` and `DFT/system.lst`, which reference `../RTL/...` paths.

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

## Getting started

Re-running a stage requires the Synopsys tool suite (DC / DFT Compiler / Formality / SpyGlass) and
the TSMC CL013G libraries. The `std_cells/` library files are **not** tracked in this repository,
so you must point `target_library`/`link_library` (in `Synthesis/syn_script.tcl` and
`DFT/dft_script.tcl`) at your own local copies.

Simulation is the only stage runnable without the synthesis tools:

```sh
cd SIM
vlog -f files.f
vsim -do run.do
```

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
