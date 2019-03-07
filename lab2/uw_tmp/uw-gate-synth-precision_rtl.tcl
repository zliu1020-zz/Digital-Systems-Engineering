set_results_dir uw_tmp
setup_design \
  -hdl vhdl_2008
setup_design \
  -manufacturer Altera \
  -family {Cyclone II}
setup_design -design mult
# setup_design -architecture DESIGN_ARCH
setup_design -overrides {  }

foreach file [concat { util.vhd } { mult.vhd }] {
  add_input_file $file
}

compile

auto_write uw_tmp/mult_gate.vhd

puts "*** synthesis to generic gates succeeded ***"

if { "True" != "True" } {
  exit
}
