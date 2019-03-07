source /home/ece327/lib/lib-msim.tcl

#----------------------------------------------------------------------

proc reload {} {

  # vcom -93 +acc -work work-msim mem.vhd lab3.vhd util_unsynth.vhd lab3_unsynth_pkg.vhd lab3_tb.vhd

  foreach file [concat { util.vhd } { mem.vhd lab3.vhd } { util_unsynth.vhd lab3_unsynth_pkg.vhd lab3_tb.vhd }] {
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

if { "lab3_tb.sim" ne "" } {
  source lab3_tb.sim
}


