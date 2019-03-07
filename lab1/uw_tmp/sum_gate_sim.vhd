
-- 
-- Definition of  sum
-- 
--      Wed May  9 09:15:43 2018
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

entity sum_gate is 
   port (
      i_a : IN std_logic ;
      i_b : IN std_logic ;
      i_cin : IN std_logic ;
      o_sum : OUT std_logic) ;
end sum_gate ;

architecture main of sum_gate is 
   signal rtlcs2: std_logic ;

begin
   rtlcs2 <= i_cin XOR i_a ;
   o_sum <= rtlcs2 XOR i_b ;
end main ;

