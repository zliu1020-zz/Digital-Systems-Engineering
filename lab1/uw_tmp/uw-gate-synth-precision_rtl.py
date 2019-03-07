#--------------------------------------------------------------
# remove xrf files to prevent warning about moving them because
# they already exist

my_rm( ["uw_tmp/*.xrf"] )

#--------------------------------------------------------------
# precision will generate these files,
# so rm old versions to make sure that don't pick up
# obsolete file in case precision fails

my_rm( [ "uw_tmp/myflipflop_gate.vhd" ] )
my_rm( [ "uw_tmp/myflipflop_gate_sim.vhd" ] )

#--------------------------------------------------------------
# run precision

xsys( "precision -newgui -file uw_tmp/uw-gate-synth-precision_rtl.tcl" )

my_rm( [ "myflipflop_gate.xdb" ] )

#--------------------------------------------------------------
# build shim architecture

xsys( "uw-shim myflipflop GATE_MODE MODGEN  myflipflop.vhd" )

