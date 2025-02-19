
-- 
-- Definition of  fulladder
-- 
--      Sat May 12 20:07:52 2018
--      
--      Precision RTL Synthesis, 64-bit 2015.2.16
-- 

--
-- Please compile Mgc_home/pkgs/psr/modgen/modgen_sim.vhd file into
-- "modgen_sim" library, during the simulation run for this netlist
--
library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity fulladder_gate is 
   port (
      i_a : IN std_logic ;
      i_b : IN std_logic ;
      i_cin : IN std_logic ;
      o_sum : OUT std_logic ;
      o_cout : OUT std_logic) ;
end fulladder_gate ;

architecture main of fulladder_gate is 
   signal u_sum_rtlcs2, u_carry_o_cout_0n0s3, u_carry_o_cout_0n0s4, 
      u_carry_o_cout_0n0s2, u_carry_o_cout_0n0s5: std_logic ;

begin
   u_sum_rtlcs2 <= i_cin XOR i_a ;
   o_sum <= u_sum_rtlcs2 XOR i_b ;
   o_cout <= u_carry_o_cout_0n0s2 OR u_carry_o_cout_0n0s5 ;
   u_carry_o_cout_0n0s2 <= u_carry_o_cout_0n0s3 OR u_carry_o_cout_0n0s4 ;
   u_carry_o_cout_0n0s3 <= i_a AND i_b ;
   u_carry_o_cout_0n0s4 <= i_a AND i_cin ;
   u_carry_o_cout_0n0s5 <= i_b AND i_cin ;
end main ;

