
########### Reports & Netlist & GDS Generation ############

set top_module System_Top

# Generate Post-PNR Gate Level Netlist
saveNetlist export/${top_module}.v 

# Generate Post-PNR Gate Level Netlist with PG Pins
saveNetlist export/${top_module}_pg.v -includePowerGround

# SPF File standard for defining netlist parasitics.
rcOut -spf export/${top_module}.spf

# Generate SDF File
write_sdf -version 2.1 -prec 3 -min_view hold1_analysis_view -typ_view setup1_analysis_view -max_view setup1_analysis_view export/${top_module}.sdf

#report power
report_power -outfile report/power.rpt

# Generate GDS File
streamOut export/${top_module}.gds -mapFile ./import/gds2InLayer.map -libName DesignLib -stripes 1 -units 2000 -mode ALL
