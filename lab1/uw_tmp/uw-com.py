#------------------------------------------------------------------------
# copy modelsim.ini to local directory

xsys( "vmap -c" )

#------------------------------------------------------------------------
# libraries

xsys( "vlib work-msim")
xsys( "uw-msim-lib /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/altera /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/altera_mf /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/lpm /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/altera_primitives /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/fiftyfivenm /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/fiftyfivenm-enc /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/maxv")

#------------------------------------------------------------------------
# compile source files

xsys( "uw-msim-com  sum.vhd carry.vhd fulladder.vhd ")

