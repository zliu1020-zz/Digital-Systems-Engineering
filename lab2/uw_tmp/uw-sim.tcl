source /home/ece327/lib/lib-msim.tcl

#----------------------------------------------------------------------

proc reload {} {

  # vcom -93 +acc -work work-msim mult.vhd util_unsynth.vhd mult_tb.vhd

  foreach file [concat { util.vhd } { mult.vhd } { util_unsynth.vhd mult_tb.vhd }] {
    echo "INFO: compiling $file"
    set ext [file extension $file]
    if [regexp -nocase ".v(|lg|o)$" $ext] {
      vlog -novopt +acc -work work-msim $file
    } elseif [regexp -nocase ".v(hd|hdl|ho)$" $ext] {
      vcom -93 +acc -work work-msim $file
    } else {
      echo [concat "ERROR: could not determine VHDL or Verilog for " $file]
      exit
    }
  }
}

#----------------------------------------------------------------------
# set tcl flags from python vars

set sim_mode PROG_MODE
set gui_mode True

#----------------------------------------------------------------------

if { "mult_tb.sim" ne "" } {
  source mult_tb.sim
}


