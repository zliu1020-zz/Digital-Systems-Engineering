
-- 
-- Definition of  add2
-- 
--      Sat May 12 20:56:34 2018
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

entity fulladder is 
   port (
      i_a : IN std_logic ;
      i_b : IN std_logic ;
      i_cin : IN std_logic ;
      o_sum : OUT std_logic ;
      o_cout : OUT std_logic) ;
end fulladder ;

architecture main_unfold_1 of fulladder is 
   signal u_sum_rtlcs2, u_carry_o_cout_0n0s3, u_carry_o_cout_0n0s4, 
      u_carry_o_cout_0n0s2, u_carry_o_cout_0n0s5: std_logic ;

begin
   u_sum_rtlcs2 <= i_cin XOR i_a ;
   o_sum <= u_sum_rtlcs2 XOR i_b ;
   o_cout <= u_carry_o_cout_0n0s2 OR u_carry_o_cout_0n0s5 ;
   u_carry_o_cout_0n0s2 <= u_carry_o_cout_0n0s3 OR u_carry_o_cout_0n0s4 ;
   u_carry_o_cout_0n0s3 <= i_b AND i_a ;
   u_carry_o_cout_0n0s4 <= i_b AND i_cin ;
   u_carry_o_cout_0n0s5 <= i_a AND i_cin ;
end main_unfold_1 ;


architecture main of fulladder is 
   signal u_sum_rtlcs2, u_carry_o_cout_0n0s3, u_carry_o_cout_0n0s4, 
      u_carry_o_cout_0n0s2, u_carry_o_cout_0n0s5: std_logic ;

begin
   u_sum_rtlcs2 <= i_cin XOR i_a ;
   o_sum <= u_sum_rtlcs2 XOR i_b ;
   o_cout <= u_carry_o_cout_0n0s2 OR u_carry_o_cout_0n0s5 ;
   u_carry_o_cout_0n0s2 <= u_carry_o_cout_0n0s3 OR u_carry_o_cout_0n0s4 ;
   u_carry_o_cout_0n0s3 <= i_b AND i_a ;
   u_carry_o_cout_0n0s4 <= i_b AND i_cin ;
   u_carry_o_cout_0n0s5 <= i_a AND i_cin ;
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity add2_gate is 
   port (
      i_a : IN std_logic_vector (1 DOWNTO 0) ;
      i_b : IN std_logic_vector (1 DOWNTO 0) ;
      i_cin : IN std_logic ;
      o_sum : OUT std_logic_vector (1 DOWNTO 0) ;
      o_cout : OUT std_logic) ;
end add2_gate ;

architecture main of add2_gate is 
   component fulladder
      port (
         i_a : IN std_logic ;
         i_b : IN std_logic ;
         i_cin : IN std_logic ;
         o_sum : OUT std_logic ;
         o_cout : OUT std_logic) ;
   end component ;
   for fa0 : fulladder use entity work.fulladder(main_unfold_1);
   for fa1 : fulladder use entity work.fulladder(main);
   signal fa0_cout: std_logic ;

begin
   fa0 : fulladder port map ( i_a=>i_a(0), i_b=>i_b(0), i_cin=>i_cin, o_sum
      =>o_sum(0), o_cout=>fa0_cout);
   fa1 : fulladder port map ( i_a=>i_a(1), i_b=>i_b(1), i_cin=>fa0_cout, 
      o_sum=>o_sum(1), o_cout=>o_cout);
end main ;

