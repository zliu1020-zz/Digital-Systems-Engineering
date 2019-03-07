
-- 
-- Definition of  mult
-- 
--      Fri May 25 21:23:48 2018
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
library modgen_sim; 
use  modgen_sim.all; 

entity add_8u_8u_8u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_8u_8u_8u_0_0 ;

architecture BEHAVIORAL of add_8u_8u_8u_0_0 is 
   component sim_add
      generic (size : integer := 8) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix29 : sim_add
      generic map (size => 8) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity or_8u_8u is 
   port (
      a : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic) ;
end or_8u_8u ;

architecture BEHAVIORAL of or_8u_8u is 
   component sim_or
      generic (size : integer := 8) ;
      
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix13 : sim_or
      generic map (size => 8) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity and_5u_5u is 
   port (
      a : IN std_logic_vector (4 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_5u_5u ;

architecture BEHAVIORAL of and_5u_5u is 
   component sim_and
      generic (size : integer := 5) ;
      
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix10 : sim_and
      generic map (size => 5) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity mult_gate is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      i_valid : IN std_logic ;
      i_a : IN std_logic_vector (7 DOWNTO 0) ;
      i_b : IN std_logic_vector (7 DOWNTO 0) ;
      o_valid : OUT std_logic ;
      o_z : OUT std_logic_vector (7 DOWNTO 0)) ;
end mult_gate ;

architecture main of mult_gate is 
   component add_8u_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component or_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_5u_5u
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   procedure DFFRSE (
      constant data   : in std_logic;
      constant set    : in std_logic;
      constant reset  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (clk'event and clk'last_value = '0' and clk = '1') then
           if (reset = '1') then
               q <= '0' ;
           elsif (set = '1') then
               q <= '1' ;
           elsif (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((set/='1' or reset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFRSE ;
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   signal o_z_EXMPLR30: std_logic_vector (7 DOWNTO 0) ;
   
   signal v: std_logic_vector (5 DOWNTO 1) ;
   
   signal GND: std_logic ;
   
   signal a: std_logic_vector (7 DOWNTO 0) ;
   
   signal b: std_logic_vector (7 DOWNTO 0) ;
   
   signal PWR: std_logic ;
   
   signal a_1n6ss1: std_logic_vector (6 DOWNTO 0) ;
   
   signal b_1n6ss1: std_logic_vector (7 DOWNTO 1) ;
   
   signal o_z_1n5s1: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlc1n155, rtlc1n192, rtlc1n193: std_logic ;
   
   signal rtlc2_v_D_n22: std_logic_vector (2 DOWNTO 1) ;
   
   signal v_0_2n1s2, v_0_2n1s3, not_a_0, v_1_2n1s5, not_i_a_0, v_1_2n1s7, 
      not_rtlc2n163, rtlc2n163, not_rtlcn13, not_i_valid, rtlcn12, rtlcn13, 
      not_v_1, not_v_2, not_v_3, not_v_4, rtlcn18, not_rtlc1n155: std_logic
    ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_z(7) <= o_z_EXMPLR30(7) ;
   o_z(6) <= o_z_EXMPLR30(6) ;
   o_z(5) <= o_z_EXMPLR30(5) ;
   o_z(4) <= o_z_EXMPLR30(4) ;
   o_z(3) <= o_z_EXMPLR30(3) ;
   o_z(2) <= o_z_EXMPLR30(2) ;
   o_z(1) <= o_z_EXMPLR30(1) ;
   o_z(0) <= o_z_EXMPLR30(0) ;
   GND <= '0' ;
   PWR <= '1' ;
   o_z_add8_1i1 : add_8u_8u_8u_0_0 port map ( cin=>GND, a(7)=>
      o_z_EXMPLR30(7), a(6)=>o_z_EXMPLR30(6), a(5)=>o_z_EXMPLR30(5), a(4)=>
      o_z_EXMPLR30(4), a(3)=>o_z_EXMPLR30(3), a(2)=>o_z_EXMPLR30(2), a(1)=>
      o_z_EXMPLR30(1), a(0)=>o_z_EXMPLR30(0), b(7)=>b(7), b(6)=>b(6), b(5)=>
      b(5), b(4)=>b(4), b(3)=>b(3), b(2)=>b(2), b(1)=>b(1), b(0)=>b(0), d(7)
      =>o_z_1n5s1(7), d(6)=>o_z_1n5s1(6), d(5)=>o_z_1n5s1(5), d(4)=>
      o_z_1n5s1(4), d(3)=>o_z_1n5s1(3), d(2)=>o_z_1n5s1(2), d(1)=>
      o_z_1n5s1(1), d(0)=>o_z_1n5s1(0), cout=>DANGLING(0,0));
   rtlc2_v_D_n22(1) <= v_0_2n1s2 OR v_0_2n1s3 ;
   v_0_2n1s2 <= a(0) AND v(4) ;
   v_0_2n1s3 <= i_a(0) AND i_valid ;
   rtlc2_v_D_n22(2) <= v_1_2n1s5 OR v_1_2n1s7 ;
   v_1_2n1s5 <= not_a_0 AND v(4) ;
   not_a_0 <= NOT a(0) ;
   v_1_2n1s7 <= not_i_a_0 AND i_valid ;
   not_i_a_0 <= NOT i_a(0) ;
   not_rtlc2n163 <= NOT rtlc2n163 ;
   rtlc2_63_or_1 : or_8u_8u port map ( a(7)=>a(0), a(6)=>a(1), a(5)=>a(2), 
      a(4)=>a(3), a(3)=>a(4), a(2)=>a(5), a(1)=>a(6), a(0)=>a(7), d=>
      rtlc2n163);
   not_i_valid <= NOT i_valid ;
   rtlcn12 <= not_i_valid AND rtlc1n192 ;
   not_rtlcn13 <= NOT rtlcn13 ;
   a_1n6ss1(0) <= i_a(0) when i_valid = '1' else a(1) ;
   a_1n6ss1(1) <= i_a(1) when i_valid = '1' else a(2) ;
   a_1n6ss1(2) <= i_a(2) when i_valid = '1' else a(3) ;
   a_1n6ss1(3) <= i_a(3) when i_valid = '1' else a(4) ;
   a_1n6ss1(4) <= i_a(4) when i_valid = '1' else a(5) ;
   a_1n6ss1(5) <= i_a(5) when i_valid = '1' else a(6) ;
   a_1n6ss1(6) <= i_a(6) when i_valid = '1' else a(7) ;
   b_1n6ss1(1) <= i_b(1) when i_valid = '1' else b(0) ;
   b_1n6ss1(2) <= i_b(2) when i_valid = '1' else b(1) ;
   b_1n6ss1(3) <= i_b(3) when i_valid = '1' else b(2) ;
   b_1n6ss1(4) <= i_b(4) when i_valid = '1' else b(3) ;
   b_1n6ss1(5) <= i_b(5) when i_valid = '1' else b(4) ;
   b_1n6ss1(6) <= i_b(6) when i_valid = '1' else b(5) ;
   b_1n6ss1(7) <= i_b(7) when i_valid = '1' else b(6) ;
   not_v_1 <= NOT v(1) ;
   not_v_2 <= NOT v(2) ;
   not_v_3 <= NOT v(3) ;
   not_v_4 <= NOT v(4) ;
   rtlc_66_and_2 : and_5u_5u port map ( a(4)=>not_v_1, a(3)=>not_v_2, a(2)=>
      not_v_3, a(1)=>not_v_4, a(0)=>v(5), d=>rtlc1n193);
   rtlcn18 <= not_v_2 AND not_v_3 ;
   rtlc1n155 <= v(1) OR rtlcn18 ;
   not_rtlc1n155 <= NOT rtlc1n155 ;
   rtlc1n192 <= not_rtlc1n155 OR i_valid ;
   rtlcn13 <= i_valid OR rtlc1n155 ;
   DFFRSE (o_z_1n5s1(7),GND,i_valid,v(1),clk,o_z_EXMPLR30(7)) ;
   DFFRSE (o_z_1n5s1(6),GND,i_valid,v(1),clk,o_z_EXMPLR30(6)) ;
   DFFRSE (o_z_1n5s1(5),GND,i_valid,v(1),clk,o_z_EXMPLR30(5)) ;
   DFFRSE (o_z_1n5s1(4),GND,i_valid,v(1),clk,o_z_EXMPLR30(4)) ;
   DFFRSE (o_z_1n5s1(3),GND,i_valid,v(1),clk,o_z_EXMPLR30(3)) ;
   DFFRSE (o_z_1n5s1(2),GND,i_valid,v(1),clk,o_z_EXMPLR30(2)) ;
   DFFRSE (o_z_1n5s1(1),GND,i_valid,v(1),clk,o_z_EXMPLR30(1)) ;
   DFFRSE (o_z_1n5s1(0),GND,i_valid,v(1),clk,o_z_EXMPLR30(0)) ;
   DFFRSE (PWR,GND,i_valid,rtlc1n193,clk,o_valid) ;
   DFFPCE (b_1n6ss1(7),GND,GND,rtlc1n192,clk,b(7)) ;
   DFFPCE (b_1n6ss1(6),GND,GND,rtlc1n192,clk,b(6)) ;
   DFFPCE (b_1n6ss1(5),GND,GND,rtlc1n192,clk,b(5)) ;
   DFFPCE (b_1n6ss1(4),GND,GND,rtlc1n192,clk,b(4)) ;
   DFFPCE (b_1n6ss1(3),GND,GND,rtlc1n192,clk,b(3)) ;
   DFFPCE (b_1n6ss1(2),GND,GND,rtlc1n192,clk,b(2)) ;
   DFFPCE (b_1n6ss1(1),GND,GND,rtlc1n192,clk,b(1)) ;
   DFFPCE (a_1n6ss1(6),GND,GND,rtlc1n192,clk,a(6)) ;
   DFFPCE (a_1n6ss1(5),GND,GND,rtlc1n192,clk,a(5)) ;
   DFFPCE (a_1n6ss1(4),GND,GND,rtlc1n192,clk,a(4)) ;
   DFFPCE (a_1n6ss1(3),GND,GND,rtlc1n192,clk,a(3)) ;
   DFFPCE (a_1n6ss1(2),GND,GND,rtlc1n192,clk,a(2)) ;
   DFFPCE (a_1n6ss1(1),GND,GND,rtlc1n192,clk,a(1)) ;
   DFFPCE (a_1n6ss1(0),GND,GND,rtlc1n192,clk,a(0)) ;
   DFFRSE (not_rtlc2n163,GND,reset,PWR,clk,v(5)) ;
   DFFRSE (rtlc2n163,GND,reset,PWR,clk,v(4)) ;
   DFFRSE (v(1),GND,reset,PWR,clk,v(3)) ;
   DFFRSE (rtlc2_v_D_n22(2),GND,reset,PWR,clk,v(2)) ;
   DFFRSE (rtlc2_v_D_n22(1),GND,reset,PWR,clk,v(1)) ;
   DFFRSE (i_b(0),GND,not_rtlcn13,rtlc1n192,clk,b(0)) ;
   DFFRSE (i_a(7),GND,rtlcn12,rtlc1n192,clk,a(7)) ;
end main ;

