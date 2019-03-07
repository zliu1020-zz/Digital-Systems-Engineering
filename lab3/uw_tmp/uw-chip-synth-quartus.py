# import shutil

#--------------------------------------------------------------

my_chdir("./uw_tmp")

# my_rm( ["LOG"] )
# 
# my_mv( "../LOG",  "LOG" )

xsys("quartus_sh -t uw-chip-synth-quartus.tcl lab3_top")

# must use verilog here.
# vhdl netlist generated by precision contains libraries that
# quartus doesn't know about (e.g. fiftyfivenm.fiftyfivenm_components
my_print("    INFO: map... ")
xsys( "quartus_map lab3_top --source lab3_top_logic.v" )

my_print("fit... ")
xsys( "quartus_fit lab3_top --effort=fast")

my_print("tan... ")
# xsys( "quartus_tan lab3_top" )
xsys( "quartus_sta -t uw-chip-synth-quartus-timing.tcl lab3_top" )

my_print( "asm... ")
xsys( "quartus_asm lab3_top" )

my_println( "eda..." )
xsys( "quartus_eda lab3_top --simulation --tool=modelsim --format=vhdl")
xsys( "quartus_eda lab3_top --simulation --tool=modelsim --format=verilog")


# my_mv( "LOG", "../LOG" )
my_chdir( ".." )

my_mv( "uw_tmp/simulation/modelsim/lab3_top.vo"       , "uw_tmp/lab3_top_chip.v" )
my_mv( "uw_tmp/simulation/modelsim/lab3_top.vho"       , "uw_tmp/lab3_top_chip.vhd" )
my_mv( "uw_tmp/simulation/modelsim/lab3_top_vhd.sdo" , "uw_tmp/lab3_top_chip.sdf", no_warn=True )
my_mv( "uw_tmp/lab3_top.sof" , "lab3_top.sof" )

my_cp( "uw_tmp/lab3_top.map.rpt", "RPT/area_chip.rpt", error_level=1 )
my_cp( "uw_tmp/timing_chip.rpt", "RPT/timing_chip.rpt", error_level=1 )
my_cp( "uw_tmp/timing_chip_path.rpt", "RPT/timing_chip_path.rpt", error_level=1 )

#------------------------------------------------------------------------
# build shim architecture

xsys( "uw-shim lab3_top CHIP_MODE lstep util.vhd mem.vhd lab3.vhd components.vhd lab3_top.vhd" )

