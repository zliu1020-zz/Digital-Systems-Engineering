
-- 
-- Definition of  heatingsys
-- 
--      Fri May 25 17:32:41 2018
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

entity select_3_3 is 
   port (
      a : IN std_logic_vector (2 DOWNTO 0) ;
      b : IN std_logic_vector (2 DOWNTO 0) ;
      d : OUT std_logic) ;
end select_3_3 ;

architecture BEHAVIORAL of select_3_3 is 
   component sim_select
      generic (size : integer := 3) ;
      
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix11 : sim_select
      generic map (size => 3) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity sub_8u_8u_8u_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_8u_8u_8u_0 ;

architecture BEHAVIORAL of sub_8u_8u_8u_0 is 
   component sim_sub
      generic (size : integer := 8) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix29 : sim_sub
      generic map (size => 8) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity or_6u_6u is 
   port (
      a : IN std_logic_vector (5 DOWNTO 0) ;
      d : OUT std_logic) ;
end or_6u_6u ;

architecture BEHAVIORAL of or_6u_6u is 
   component sim_or
      generic (size : integer := 6) ;
      
      port (
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix11 : sim_or
      generic map (size => 6) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity or_5u_5u is 
   port (
      a : IN std_logic_vector (4 DOWNTO 0) ;
      d : OUT std_logic) ;
end or_5u_5u ;

architecture BEHAVIORAL of or_5u_5u is 
   component sim_or
      generic (size : integer := 5) ;
      
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix10 : sim_or
      generic map (size => 5) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity or_3u_3u is 
   port (
      a : IN std_logic_vector (2 DOWNTO 0) ;
      d : OUT std_logic) ;
end or_3u_3u ;

architecture BEHAVIORAL of or_3u_3u is 
   component sim_or
      generic (size : integer := 3) ;
      
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix8 : sim_or
      generic map (size => 3) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity or_7u_7u is 
   port (
      a : IN std_logic_vector (6 DOWNTO 0) ;
      d : OUT std_logic) ;
end or_7u_7u ;

architecture BEHAVIORAL of or_7u_7u is 
   component sim_or
      generic (size : integer := 7) ;
      
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix12 : sim_or
      generic map (size => 7) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity heatingsys is 
   port (
      reset : IN std_logic ;
      clk : IN std_logic ;
      i_cur_temp : IN std_logic_vector (7 DOWNTO 0) ;
      i_des_temp : IN std_logic_vector (7 DOWNTO 0) ;
      o_heatmode : OUT std_logic_vector (1 DOWNTO 0)) ;
end heatingsys ;

architecture main of heatingsys is 
   component select_3_3
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component sub_8u_8u_8u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component or_6u_6u
      port (
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_5u_5u
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
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_7u_7u
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal o_heatmode_EXMPLR22: std_logic_vector (1 DOWNTO 0) ;
   
   signal PWR, GND, not_o_heatmode_0: std_logic ;
   
   signal rtlc1n138: std_logic_vector (7 DOWNTO 0) ;
   
   signal not_rtlc1n573, rtlc1n217, not_rtlc1n217, rtlc1_PS14_n277: 
   std_logic ;
   
   signal rtlc1n340: std_logic_vector (7 DOWNTO 0) ;
   
   signal not_rtlc1n816, not_rtlc1n861, rtlc1n436, rtlc1n440, rtlc1n443, 
      not_rtlc1n443, rtlc1n568, rtlc1n570, not_rtlcn51, rtlc1n573, rtlc1n658, 
      not_rtlc1n658, not_rtlc1n138_2, not_rtlc1n138_1, not_rtlc1n138_0, 
      rtlc1n663, rtlc1n664, rtlc1n665, rtlc1n666, rtlc1n755, not_rtlcn52, 
      rtlc1n758, rtlc1n813, rtlc1n814, not_rtlc1n340_7, rtlc1n816, 
      not_rtlc1n138_7, rtlc1n861, rtlcn51, rtlcn52, rtlcn81, rtlcn90, 
      not_rtlc1n758, rtlcn95, not_rtlcn101, rtlcn101, not_o_heatmode_1, 
      rtlc1_154_and_5_nx0: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_heatmode(1) <= o_heatmode_EXMPLR22(1) ;
   o_heatmode(0) <= o_heatmode_EXMPLR22(0) ;
   PWR <= '1' ;
   GND <= '0' ;
   not_rtlc1n816 <= NOT rtlc1n816 ;
   not_rtlc1n861 <= NOT rtlc1n861 ;
   rtlc1_20_select_0 : select_3_3 port map ( a(2)=>not_o_heatmode_0, a(1)=>
      rtlc1_PS14_n277, a(0)=>o_heatmode_EXMPLR22(1), b(2)=>rtlc1n436, b(1)=>
      rtlc1n440, b(0)=>not_rtlc1n861, d=>rtlc1n443);
   rtlc1n436 <= rtlc1n666 AND not_rtlc1n217 ;
   rtlc1n440 <= not_rtlc1n816 AND rtlc1n758 ;
   not_rtlc1n443 <= NOT rtlc1n443 ;
   rtlc1_54_sub_1 : sub_8u_8u_8u_0 port map ( cin=>PWR, a(7)=>i_cur_temp(7), 
      a(6)=>i_cur_temp(6), a(5)=>i_cur_temp(5), a(4)=>i_cur_temp(4), a(3)=>
      i_cur_temp(3), a(2)=>i_cur_temp(2), a(1)=>i_cur_temp(1), a(0)=>
      i_cur_temp(0), b(7)=>i_des_temp(7), b(6)=>i_des_temp(6), b(5)=>
      i_des_temp(5), b(4)=>i_des_temp(4), b(3)=>i_des_temp(3), b(2)=>
      i_des_temp(2), b(1)=>i_des_temp(1), b(0)=>i_des_temp(0), d(7)=>
      rtlc1n340(7), d(6)=>rtlc1n340(6), d(5)=>rtlc1n340(5), d(4)=>
      rtlc1n340(4), d(3)=>rtlc1n340(3), d(2)=>rtlc1n340(2), d(1)=>
      rtlc1n340(1), d(0)=>rtlc1n340(0), cout=>DANGLING(0,0));
   rtlc1_80_sub_2 : sub_8u_8u_8u_0 port map ( cin=>PWR, a(7)=>i_des_temp(7), 
      a(6)=>i_des_temp(6), a(5)=>i_des_temp(5), a(4)=>i_des_temp(4), a(3)=>
      i_des_temp(3), a(2)=>i_des_temp(2), a(1)=>i_des_temp(1), a(0)=>
      i_des_temp(0), b(7)=>i_cur_temp(7), b(6)=>i_cur_temp(6), b(5)=>
      i_cur_temp(5), b(4)=>i_cur_temp(4), b(3)=>i_cur_temp(3), b(2)=>
      i_cur_temp(2), b(1)=>i_cur_temp(1), b(0)=>i_cur_temp(0), d(7)=>
      rtlc1n138(7), d(6)=>rtlc1n138(6), d(5)=>rtlc1n138(5), d(4)=>
      rtlc1n138(4), d(3)=>rtlc1n138(3), d(2)=>rtlc1n138(2), d(1)=>
      rtlc1n138(1), d(0)=>rtlc1n138(0), cout=>DANGLING(0,1));
   not_rtlc1n573 <= NOT rtlc1n573 ;
   rtlc1n217 <= not_rtlc1n573 AND rtlc1n666 ;
   not_o_heatmode_0 <= NOT o_heatmode_EXMPLR22(0) ;
   rtlc1_133_or_3 : or_6u_6u port map ( a(5)=>rtlc1n138(2), a(4)=>
      rtlc1n138(3), a(3)=>rtlc1n138(4), a(2)=>rtlc1n138(5), a(1)=>
      rtlc1n138(6), a(0)=>rtlc1n138(7), d=>rtlc1n568);
   rtlc1n570 <= rtlc1n138(1) AND rtlc1n138(0) ;
   rtlc1n573 <= not_rtlcn51 OR rtlc1n138(7) ;
   rtlc1_141_or_4 : or_5u_5u port map ( a(4)=>rtlc1n138(3), a(3)=>
      rtlc1n138(4), a(2)=>rtlc1n138(5), a(1)=>rtlc1n138(6), a(0)=>
      rtlc1n138(7), d=>rtlc1n658);
   not_rtlc1n658 <= NOT rtlc1n658 ;
   not_rtlc1n138_2 <= NOT rtlc1n138(2) ;
   not_rtlc1n138_1 <= NOT rtlc1n138(1) ;
   not_rtlc1n138_0 <= NOT rtlc1n138(0) ;
   rtlc1n663 <= not_rtlc1n138_1 AND not_rtlc1n138_0 ;
   rtlc1n664 <= not_rtlc1n138_2 OR rtlc1n663 ;
   rtlc1n665 <= not_rtlc1n658 AND rtlc1n664 ;
   rtlc1n666 <= rtlc1n665 OR rtlc1n138(7) ;
   rtlc1n758 <= not_rtlcn52 OR rtlc1n138(7) ;
   rtlc1n813 <= rtlc1n340(0) AND rtlc1n340(1) ;
   not_rtlc1n340_7 <= NOT rtlc1n340(7) ;
   rtlc1n816 <= rtlc1n814 AND not_rtlc1n340_7 ;
   not_rtlc1n138_7 <= NOT rtlc1n138(7) ;
   rtlc1n861 <= rtlc1n568 AND not_rtlc1n138_7 ;
   not_rtlcn51 <= NOT rtlcn51 ;
   not_rtlcn52 <= NOT rtlcn52 ;
   rtlcn51 <= rtlc1n568 OR rtlc1n570 ;
   rtlcn52 <= rtlc1n658 OR rtlc1n755 ;
   not_rtlc1n217 <= NOT rtlc1n217 ;
   not_rtlc1n758 <= NOT rtlc1n758 ;
   rtlcn95 <= rtlc1_PS14_n277 AND not_rtlc1n758 ;
   rtlcn81 <= rtlcn95 OR not_rtlcn101 ;
   not_rtlcn101 <= NOT rtlcn101 ;
   not_o_heatmode_1 <= NOT o_heatmode_EXMPLR22(1) ;
   rtlc1_PS14_n277 <= not_o_heatmode_1 AND o_heatmode_EXMPLR22(0) ;
   rtlcn101 <= rtlc1n217 OR o_heatmode_EXMPLR22(0) ;
   DFFRSE (rtlcn81,GND,reset,not_rtlc1n443,clk,o_heatmode_EXMPLR22(1)) ;
   DFFRSE (rtlcn90,GND,reset,not_rtlc1n443,clk,o_heatmode_EXMPLR22(0)) ;
   rtlc1_154_and_5_nx0 <= rtlc1n138(2) AND rtlc1n138(1) ;
   rtlc1n755 <= rtlc1_154_and_5_nx0 AND rtlc1n138(0) ;
   modgen_or_0 : or_3u_3u port map ( a(2)=>o_heatmode_EXMPLR22(1), a(1)=>
      not_o_heatmode_0, a(0)=>not_rtlc1n758, d=>rtlcn90);
   modgen_or_1 : or_7u_7u port map ( a(6)=>rtlc1n340(2), a(5)=>rtlc1n340(3), 
      a(4)=>rtlc1n340(4), a(3)=>rtlc1n340(5), a(2)=>rtlc1n340(6), a(1)=>
      rtlc1n340(7), a(0)=>rtlc1n813, d=>rtlc1n814);
end main ;

