# copy modelsim.ini to local directory
xsys( "vmap -c" )

# libraries
xsys( "vlib work-msim")
xsys( "uw-msim-lib /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/altera /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/altera_mf /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/lpm /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/altera_primitives /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/fiftyfivenm /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/fiftyfivenm-enc /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/maxv" )

# compile source files
xsys( "uw-msim-com util.vhd mem.vhd lab3.vhd util_unsynth.vhd lab3_unsynth_pkg.vhd lab3_tb.vhd")

# run simulation
xsys( "vsim -lib work-msim -L /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/altera -L /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/altera_mf -L /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/lpm -L /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/altera_primitives -L /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/fiftyfivenm -L /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/fiftyfivenm-enc -L /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/maxv   -g/lab3_tb/test_num=4 -g/lab3_tb/period=20   -debugDB -postsimdataflow +autofindloop -wlf uw_tmp/vsim.wlf -voptargs=+acc -warning 3250 -warning 3894 -t 1ns -do uw_tmp/uw-sim.tcl lab3_tb")

