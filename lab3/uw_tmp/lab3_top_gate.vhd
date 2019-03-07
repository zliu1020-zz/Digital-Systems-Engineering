
-- 
-- Definition of  lab3_top
-- 
--      Sun Jun 24 15:42:08 2018
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

entity mux_16u_16u is 
   port (
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic) ;
end mux_16u_16u ;

architecture BEHAVIORAL of mux_16u_16u is 
   component sim_mux
      generic (size : integer := 16;
         sizead : integer := 4) ;
      
      port (
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix25 : sim_mux
      generic map (size => 16,
         sizead => 4) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

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
   ix10 : sim_select
      generic map (size => 3) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity or_4u_4u is 
   port (
      a : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic) ;
end or_4u_4u ;

architecture BEHAVIORAL of or_4u_4u is 
   component sim_or
      generic (size : integer := 4) ;
      
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix9 : sim_or
      generic map (size => 4) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity and_32u_32u is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_32u_32u ;

architecture BEHAVIORAL of and_32u_32u is 
   component sim_and
      generic (size : integer := 32) ;
      
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix37 : sim_and
      generic map (size => 32) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity and_28u_28u is 
   port (
      a : IN std_logic_vector (27 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_28u_28u ;

architecture BEHAVIORAL of and_28u_28u is 
   component sim_and
      generic (size : integer := 28) ;
      
      port (
         a : IN std_logic_vector (27 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix33 : sim_and
      generic map (size => 28) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_32u_32u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_32u_32u_0_0 ;

architecture BEHAVIORAL of inc_32u_32u_0_0 is 
   component sim_inc
      generic (size : integer := 32) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix69 : sim_inc
      generic map (size => 32) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_8u_8u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_8u_8u_0_0 ;

architecture BEHAVIORAL of inc_8u_8u_0_0 is 
   component sim_inc
      generic (size : integer := 8) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix21 : sim_inc
      generic map (size => 8) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
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

entity add_9u_9u_9u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9u_9u_9u_0_0 ;

architecture BEHAVIORAL of add_9u_9u_9u_0_0 is 
   component sim_add
      generic (size : integer := 9) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix31 : sim_add
      generic map (size => 9) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity decoder_4 is 
   port (
      data : IN std_logic_vector (3 DOWNTO 0) ;
      eq : OUT std_logic_vector (15 DOWNTO 0)) ;
end decoder_4 ;

architecture BEHAVIORAL of decoder_4 is 
   component sim_decoder
      generic (size : integer := 4;
         use_enable : string := "false") ;
      
      port (
         data : IN std_logic_vector (3 DOWNTO 0) ;
         eq : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
begin
   ix24 : sim_decoder
      generic map (size => 4,
         use_enable => "false") 
       port map ( data=>data, eq=>eq);
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
library modgen_sim; 
use  modgen_sim.all; 

entity and_7u_7u is 
   port (
      a : IN std_logic_vector (6 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_7u_7u ;

architecture BEHAVIORAL of and_7u_7u is 
   component sim_and
      generic (size : integer := 7) ;
      
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix12 : sim_and
      generic map (size => 7) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity mux_3u_3u is 
   port (
      a : IN std_logic_vector (2 DOWNTO 0) ;
      b : IN std_logic_vector (2 DOWNTO 0) ;
      d : OUT std_logic) ;
end mux_3u_3u ;

architecture BEHAVIORAL of mux_3u_3u is 
   component sim_mux
      generic (size : integer := 3;
         sizead : integer := 2) ;
      
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix8 : sim_mux
      generic map (size => 3,
         sizead => 2) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity mux_4u_4u is 
   port (
      a : IN std_logic_vector (3 DOWNTO 0) ;
      b : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic) ;
end mux_4u_4u ;

architecture BEHAVIORAL of mux_4u_4u is 
   component sim_mux
      generic (size : integer := 4;
         sizead : integer := 2) ;
      
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix9 : sim_mux
      generic map (size => 4,
         sizead => 2) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity and_4u_4u is 
   port (
      a : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_4u_4u ;

architecture BEHAVIORAL of and_4u_4u is 
   component sim_and
      generic (size : integer := 4) ;
      
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix9 : sim_and
      generic map (size => 4) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_11u_11u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (10 DOWNTO 0) ;
      d : OUT std_logic_vector (10 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_11u_11u_0_0 ;

architecture BEHAVIORAL of inc_11u_11u_0_0 is 
   component sim_inc
      generic (size : integer := 11) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix27 : sim_inc
      generic map (size => 11) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_12u_12u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic_vector (11 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_12u_12u_0_0 ;

architecture BEHAVIORAL of inc_12u_12u_0_0 is 
   component sim_inc
      generic (size : integer := 12) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix29 : sim_inc
      generic map (size => 12) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity dec_4u_4u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic_vector (3 DOWNTO 0) ;
      cout : OUT std_logic) ;
end dec_4u_4u_0_0 ;

architecture BEHAVIORAL of dec_4u_4u_0_0 is 
   component sim_dec
      generic (size : integer := 4) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix13 : sim_dec
      generic map (size => 4) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_4u_4u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic_vector (3 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_4u_4u_0_0 ;

architecture BEHAVIORAL of inc_4u_4u_0_0 is 
   component sim_inc
      generic (size : integer := 4) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix13 : sim_inc
      generic map (size => 4) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity eq_8u_8u is 
   port (
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic) ;
end eq_8u_8u ;

architecture BEHAVIORAL of eq_8u_8u is 
   component sim_eq
      generic (size : integer := 8) ;
      
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix14 : sim_eq
      generic map (size => 8) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity eq_9u_9u is 
   port (
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic) ;
end eq_9u_9u ;

architecture BEHAVIORAL of eq_9u_9u is 
   component sim_eq
      generic (size : integer := 9) ;
      
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix15 : sim_eq
      generic map (size => 9) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sload_sclear_clock_clk_en_0_32_cx0_lab3 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (31 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (31 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sload_sclear_clock_clk_en_0_32_cx0_lab3 ;

architecture INTERFACE of counter_up_sload_sclear_clock_clk_en_0_32_cx0_lab3
    is 
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
   component inc_32u_32u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx100, nx101, nx102, nx103, nx104, nx105, nx106, nx107, 
      nx108, nx109, nx110, nx111, nx112, nx113, nx114, nx115, nx116, nx117, 
      nx118, nx119, nx120, nx121, nx122, nx123, nx124, nx125, nx126, nx127, 
      nx128, nx129, nx130, nx131, sclear_and_0_dup_495, sclear_and_1_dup_496, 
      sclear_and_2_dup_497, sclear_and_3_dup_498, sclear_and_4_dup_499, 
      sclear_and_5_dup_500, sclear_and_6_dup_501, sclear_and_7_dup_502, 
      sclear_and_8_dup_503, sclear_and_9_dup_504, sclear_and_10_dup_505, 
      sclear_and_11_dup_506, sclear_and_12_dup_507, sclear_and_13_dup_508, 
      sclear_and_14_dup_509, sclear_and_15_dup_510, sclear_and_16_dup_511, 
      sclear_and_17_dup_512, sclear_and_18_dup_513, sclear_and_19_dup_514, 
      sclear_and_20_dup_515, sclear_and_21_dup_516, sclear_and_22_dup_517, 
      sclear_and_23_dup_518, sclear_and_24_dup_519, sclear_and_25_dup_520, 
      sclear_and_26_dup_521, sclear_and_27_dup_522, sclear_and_28_dup_523, 
      sclear_and_29_dup_524, sclear_and_30_dup_525, sclear_and_31_dup_526, 
      inc_d_0, inc_d_1, inc_d_2, inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, 
      inc_d_8, inc_d_9, inc_d_10, inc_d_11, inc_d_12, inc_d_13, inc_d_14, 
      inc_d_15, inc_d_16, inc_d_17, inc_d_18, inc_d_19, inc_d_20, inc_d_21, 
      inc_d_22, inc_d_23, inc_d_24, inc_d_25, inc_d_26, inc_d_27, inc_d_28, 
      inc_d_29, inc_d_30, inc_d_31, sload_mux_0_dup_365, sload_mux_1_dup_366, 
      sload_mux_2_dup_367, sload_mux_3_dup_368, sload_mux_4_dup_369, 
      sload_mux_5_dup_370, sload_mux_6_dup_371, sload_mux_7_dup_372, 
      sload_mux_8_dup_373, sload_mux_9_dup_374, sload_mux_10_dup_375, 
      sload_mux_11_dup_376, sload_mux_12_dup_377, sload_mux_13_dup_378, 
      sload_mux_14_dup_379, sload_mux_15_dup_380, sload_mux_16_dup_381, 
      sload_mux_17_dup_382, sload_mux_18_dup_383, sload_mux_19_dup_384, 
      sload_mux_20_dup_385, sload_mux_21_dup_386, sload_mux_22_dup_387, 
      sload_mux_23_dup_388, sload_mux_24_dup_389, sload_mux_25_dup_390, 
      sload_mux_26_dup_391, sload_mux_27_dup_392, sload_mux_28_dup_393, 
      sload_mux_29_dup_394, sload_mux_30_dup_395, sload_mux_31_dup_396, 
      NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(31) <= nx131 ;
   q(30) <= nx130 ;
   q(29) <= nx129 ;
   q(28) <= nx128 ;
   q(27) <= nx127 ;
   q(26) <= nx126 ;
   q(25) <= nx125 ;
   q(24) <= nx124 ;
   q(23) <= nx123 ;
   q(22) <= nx122 ;
   q(21) <= nx121 ;
   q(20) <= nx120 ;
   q(19) <= nx119 ;
   q(18) <= nx118 ;
   q(17) <= nx117 ;
   q(16) <= nx116 ;
   q(15) <= nx115 ;
   q(14) <= nx114 ;
   q(13) <= nx113 ;
   q(12) <= nx112 ;
   q(11) <= nx111 ;
   q(10) <= nx110 ;
   q(9) <= nx109 ;
   q(8) <= nx108 ;
   q(7) <= nx107 ;
   q(6) <= nx106 ;
   q(5) <= nx105 ;
   q(4) <= nx104 ;
   q(3) <= nx103 ;
   q(2) <= nx102 ;
   q(1) <= nx101 ;
   q(0) <= nx100 ;
   GND <= '0' ;
   PWR <= '1' ;
   DFFPCE (sclear_and_31_dup_526,GND,GND,clk_en,clock,nx131) ;
   DFFPCE (sclear_and_30_dup_525,GND,GND,clk_en,clock,nx130) ;
   DFFPCE (sclear_and_29_dup_524,GND,GND,clk_en,clock,nx129) ;
   DFFPCE (sclear_and_28_dup_523,GND,GND,clk_en,clock,nx128) ;
   DFFPCE (sclear_and_27_dup_522,GND,GND,clk_en,clock,nx127) ;
   DFFPCE (sclear_and_26_dup_521,GND,GND,clk_en,clock,nx126) ;
   DFFPCE (sclear_and_25_dup_520,GND,GND,clk_en,clock,nx125) ;
   DFFPCE (sclear_and_24_dup_519,GND,GND,clk_en,clock,nx124) ;
   DFFPCE (sclear_and_23_dup_518,GND,GND,clk_en,clock,nx123) ;
   DFFPCE (sclear_and_22_dup_517,GND,GND,clk_en,clock,nx122) ;
   DFFPCE (sclear_and_21_dup_516,GND,GND,clk_en,clock,nx121) ;
   DFFPCE (sclear_and_20_dup_515,GND,GND,clk_en,clock,nx120) ;
   DFFPCE (sclear_and_19_dup_514,GND,GND,clk_en,clock,nx119) ;
   DFFPCE (sclear_and_18_dup_513,GND,GND,clk_en,clock,nx118) ;
   DFFPCE (sclear_and_17_dup_512,GND,GND,clk_en,clock,nx117) ;
   DFFPCE (sclear_and_16_dup_511,GND,GND,clk_en,clock,nx116) ;
   DFFPCE (sclear_and_15_dup_510,GND,GND,clk_en,clock,nx115) ;
   DFFPCE (sclear_and_14_dup_509,GND,GND,clk_en,clock,nx114) ;
   DFFPCE (sclear_and_13_dup_508,GND,GND,clk_en,clock,nx113) ;
   DFFPCE (sclear_and_12_dup_507,GND,GND,clk_en,clock,nx112) ;
   DFFPCE (sclear_and_11_dup_506,GND,GND,clk_en,clock,nx111) ;
   DFFPCE (sclear_and_10_dup_505,GND,GND,clk_en,clock,nx110) ;
   DFFPCE (sclear_and_9_dup_504,GND,GND,clk_en,clock,nx109) ;
   DFFPCE (sclear_and_8_dup_503,GND,GND,clk_en,clock,nx108) ;
   DFFPCE (sclear_and_7_dup_502,GND,GND,clk_en,clock,nx107) ;
   DFFPCE (sclear_and_6_dup_501,GND,GND,clk_en,clock,nx106) ;
   DFFPCE (sclear_and_5_dup_500,GND,GND,clk_en,clock,nx105) ;
   DFFPCE (sclear_and_4_dup_499,GND,GND,clk_en,clock,nx104) ;
   DFFPCE (sclear_and_3_dup_498,GND,GND,clk_en,clock,nx103) ;
   DFFPCE (sclear_and_2_dup_497,GND,GND,clk_en,clock,nx102) ;
   DFFPCE (sclear_and_1_dup_496,GND,GND,clk_en,clock,nx101) ;
   DFFPCE (sclear_and_0_dup_495,GND,GND,clk_en,clock,nx100) ;
   inc : inc_32u_32u_0_0 port map ( cin=>PWR, a(31)=>nx131, a(30)=>nx130, 
      a(29)=>nx129, a(28)=>nx128, a(27)=>nx127, a(26)=>nx126, a(25)=>nx125, 
      a(24)=>nx124, a(23)=>nx123, a(22)=>nx122, a(21)=>nx121, a(20)=>nx120, 
      a(19)=>nx119, a(18)=>nx118, a(17)=>nx117, a(16)=>nx116, a(15)=>nx115, 
      a(14)=>nx114, a(13)=>nx113, a(12)=>nx112, a(11)=>nx111, a(10)=>nx110, 
      a(9)=>nx109, a(8)=>nx108, a(7)=>nx107, a(6)=>nx106, a(5)=>nx105, a(4)
      =>nx104, a(3)=>nx103, a(2)=>nx102, a(1)=>nx101, a(0)=>nx100, d(31)=>
      inc_d_31, d(30)=>inc_d_30, d(29)=>inc_d_29, d(28)=>inc_d_28, d(27)=>
      inc_d_27, d(26)=>inc_d_26, d(25)=>inc_d_25, d(24)=>inc_d_24, d(23)=>
      inc_d_23, d(22)=>inc_d_22, d(21)=>inc_d_21, d(20)=>inc_d_20, d(19)=>
      inc_d_19, d(18)=>inc_d_18, d(17)=>inc_d_17, d(16)=>inc_d_16, d(15)=>
      inc_d_15, d(14)=>inc_d_14, d(13)=>inc_d_13, d(12)=>inc_d_12, d(11)=>
      inc_d_11, d(10)=>inc_d_10, d(9)=>inc_d_9, d(8)=>inc_d_8, d(7)=>inc_d_7, 
      d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>inc_d_4, d(3)=>inc_d_3, d(2)=>
      inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, cout=>DANGLING(0,0));
   sload_mux_0_dup_365 <= data(0) when sload = '1' else inc_d_0 ;
   sload_mux_1_dup_366 <= data(1) when sload = '1' else inc_d_1 ;
   sload_mux_2_dup_367 <= data(2) when sload = '1' else inc_d_2 ;
   sload_mux_3_dup_368 <= data(3) when sload = '1' else inc_d_3 ;
   sload_mux_4_dup_369 <= data(4) when sload = '1' else inc_d_4 ;
   sload_mux_5_dup_370 <= data(5) when sload = '1' else inc_d_5 ;
   sload_mux_6_dup_371 <= data(6) when sload = '1' else inc_d_6 ;
   sload_mux_7_dup_372 <= data(7) when sload = '1' else inc_d_7 ;
   sload_mux_8_dup_373 <= data(8) when sload = '1' else inc_d_8 ;
   sload_mux_9_dup_374 <= data(9) when sload = '1' else inc_d_9 ;
   sload_mux_10_dup_375 <= data(10) when sload = '1' else inc_d_10 ;
   sload_mux_11_dup_376 <= data(11) when sload = '1' else inc_d_11 ;
   sload_mux_12_dup_377 <= data(12) when sload = '1' else inc_d_12 ;
   sload_mux_13_dup_378 <= data(13) when sload = '1' else inc_d_13 ;
   sload_mux_14_dup_379 <= data(14) when sload = '1' else inc_d_14 ;
   sload_mux_15_dup_380 <= data(15) when sload = '1' else inc_d_15 ;
   sload_mux_16_dup_381 <= data(16) when sload = '1' else inc_d_16 ;
   sload_mux_17_dup_382 <= data(17) when sload = '1' else inc_d_17 ;
   sload_mux_18_dup_383 <= data(18) when sload = '1' else inc_d_18 ;
   sload_mux_19_dup_384 <= data(19) when sload = '1' else inc_d_19 ;
   sload_mux_20_dup_385 <= data(20) when sload = '1' else inc_d_20 ;
   sload_mux_21_dup_386 <= data(21) when sload = '1' else inc_d_21 ;
   sload_mux_22_dup_387 <= data(22) when sload = '1' else inc_d_22 ;
   sload_mux_23_dup_388 <= data(23) when sload = '1' else inc_d_23 ;
   sload_mux_24_dup_389 <= data(24) when sload = '1' else inc_d_24 ;
   sload_mux_25_dup_390 <= data(25) when sload = '1' else inc_d_25 ;
   sload_mux_26_dup_391 <= data(26) when sload = '1' else inc_d_26 ;
   sload_mux_27_dup_392 <= data(27) when sload = '1' else inc_d_27 ;
   sload_mux_28_dup_393 <= data(28) when sload = '1' else inc_d_28 ;
   sload_mux_29_dup_394 <= data(29) when sload = '1' else inc_d_29 ;
   sload_mux_30_dup_395 <= data(30) when sload = '1' else inc_d_30 ;
   sload_mux_31_dup_396 <= data(31) when sload = '1' else inc_d_31 ;
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_495 <= sload_mux_0_dup_365 AND NOT_sclear ;
   sclear_and_1_dup_496 <= sload_mux_1_dup_366 AND NOT_sclear ;
   sclear_and_2_dup_497 <= sload_mux_2_dup_367 AND NOT_sclear ;
   sclear_and_3_dup_498 <= sload_mux_3_dup_368 AND NOT_sclear ;
   sclear_and_4_dup_499 <= sload_mux_4_dup_369 AND NOT_sclear ;
   sclear_and_5_dup_500 <= sload_mux_5_dup_370 AND NOT_sclear ;
   sclear_and_6_dup_501 <= sload_mux_6_dup_371 AND NOT_sclear ;
   sclear_and_7_dup_502 <= sload_mux_7_dup_372 AND NOT_sclear ;
   sclear_and_8_dup_503 <= sload_mux_8_dup_373 AND NOT_sclear ;
   sclear_and_9_dup_504 <= sload_mux_9_dup_374 AND NOT_sclear ;
   sclear_and_10_dup_505 <= sload_mux_10_dup_375 AND NOT_sclear ;
   sclear_and_11_dup_506 <= sload_mux_11_dup_376 AND NOT_sclear ;
   sclear_and_12_dup_507 <= sload_mux_12_dup_377 AND NOT_sclear ;
   sclear_and_13_dup_508 <= sload_mux_13_dup_378 AND NOT_sclear ;
   sclear_and_14_dup_509 <= sload_mux_14_dup_379 AND NOT_sclear ;
   sclear_and_15_dup_510 <= sload_mux_15_dup_380 AND NOT_sclear ;
   sclear_and_16_dup_511 <= sload_mux_16_dup_381 AND NOT_sclear ;
   sclear_and_17_dup_512 <= sload_mux_17_dup_382 AND NOT_sclear ;
   sclear_and_18_dup_513 <= sload_mux_18_dup_383 AND NOT_sclear ;
   sclear_and_19_dup_514 <= sload_mux_19_dup_384 AND NOT_sclear ;
   sclear_and_20_dup_515 <= sload_mux_20_dup_385 AND NOT_sclear ;
   sclear_and_21_dup_516 <= sload_mux_21_dup_386 AND NOT_sclear ;
   sclear_and_22_dup_517 <= sload_mux_22_dup_387 AND NOT_sclear ;
   sclear_and_23_dup_518 <= sload_mux_23_dup_388 AND NOT_sclear ;
   sclear_and_24_dup_519 <= sload_mux_24_dup_389 AND NOT_sclear ;
   sclear_and_25_dup_520 <= sload_mux_25_dup_390 AND NOT_sclear ;
   sclear_and_26_dup_521 <= sload_mux_26_dup_391 AND NOT_sclear ;
   sclear_and_27_dup_522 <= sload_mux_27_dup_392 AND NOT_sclear ;
   sclear_and_28_dup_523 <= sload_mux_28_dup_393 AND NOT_sclear ;
   sclear_and_29_dup_524 <= sload_mux_29_dup_394 AND NOT_sclear ;
   sclear_and_30_dup_525 <= sload_mux_30_dup_395 AND NOT_sclear ;
   sclear_and_31_dup_526 <= sload_mux_31_dup_396 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_clock_clk_en_0_8_cx1_lab3 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_clock_clk_en_0_8_cx1_lab3 ;

architecture INTERFACE of counter_up_sclear_clock_clk_en_0_8_cx1_lab3 is 
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
   component inc_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, 
      sclear_and_0_dup_103, sclear_and_1_dup_104, sclear_and_2_dup_105, 
      sclear_and_3_dup_106, sclear_and_4_dup_107, sclear_and_5_dup_108, 
      sclear_and_6_dup_109, sclear_and_7_dup_110, inc_d_0, inc_d_1, inc_d_2, 
      inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(7) <= nx35 ;
   q(6) <= nx34 ;
   q(5) <= nx33 ;
   q(4) <= nx32 ;
   q(3) <= nx31 ;
   q(2) <= nx30 ;
   q(1) <= nx29 ;
   q(0) <= nx28 ;
   GND <= '0' ;
   PWR <= '1' ;
   DFFPCE (sclear_and_7_dup_110,GND,GND,clk_en,clock,nx35) ;
   DFFPCE (sclear_and_6_dup_109,GND,GND,clk_en,clock,nx34) ;
   DFFPCE (sclear_and_5_dup_108,GND,GND,clk_en,clock,nx33) ;
   DFFPCE (sclear_and_4_dup_107,GND,GND,clk_en,clock,nx32) ;
   DFFPCE (sclear_and_3_dup_106,GND,GND,clk_en,clock,nx31) ;
   DFFPCE (sclear_and_2_dup_105,GND,GND,clk_en,clock,nx30) ;
   DFFPCE (sclear_and_1_dup_104,GND,GND,clk_en,clock,nx29) ;
   DFFPCE (sclear_and_0_dup_103,GND,GND,clk_en,clock,nx28) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx35, a(6)=>nx34, a(5)=>
      nx33, a(4)=>nx32, a(3)=>nx31, a(2)=>nx30, a(1)=>nx29, a(0)=>nx28, d(7)
      =>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>inc_d_4, d(3)=>inc_d_3, 
      d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_103 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_104 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_105 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_106 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_107 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_108 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_109 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_110 <= inc_d_7 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_clock_clk_en_0_32_cx7_lab3 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (31 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (31 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_clock_clk_en_0_32_cx7_lab3 ;

architecture INTERFACE of counter_up_sclear_clock_clk_en_0_32_cx7_lab3 is 
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
   component inc_32u_32u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal nx64, nx66, nx100, nx101, nx102, nx103, nx104, nx105, nx106, nx107, 
      nx108, nx109, nx110, nx111, nx112, nx113, nx114, nx115, nx116, nx117, 
      nx118, nx119, nx120, nx121, nx122, nx123, nx124, nx125, nx126, nx127, 
      nx128, nx129, nx130, nx131, sclear_and_0_dup_367, sclear_and_1_dup_368, 
      sclear_and_2_dup_369, sclear_and_3_dup_370, sclear_and_4_dup_371, 
      sclear_and_5_dup_372, sclear_and_6_dup_373, sclear_and_7_dup_374, 
      sclear_and_8_dup_375, sclear_and_9_dup_376, sclear_and_10_dup_377, 
      sclear_and_11_dup_378, sclear_and_12_dup_379, sclear_and_13_dup_380, 
      sclear_and_14_dup_381, sclear_and_15_dup_382, sclear_and_16_dup_383, 
      sclear_and_17_dup_384, sclear_and_18_dup_385, sclear_and_19_dup_386, 
      sclear_and_20_dup_387, sclear_and_21_dup_388, sclear_and_22_dup_389, 
      sclear_and_23_dup_390, sclear_and_24_dup_391, sclear_and_25_dup_392, 
      sclear_and_26_dup_393, sclear_and_27_dup_394, sclear_and_28_dup_395, 
      sclear_and_29_dup_396, sclear_and_30_dup_397, sclear_and_31_dup_398, 
      inc_d_0, inc_d_1, inc_d_2, inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, 
      inc_d_8, inc_d_9, inc_d_10, inc_d_11, inc_d_12, inc_d_13, inc_d_14, 
      inc_d_15, inc_d_16, inc_d_17, inc_d_18, inc_d_19, inc_d_20, inc_d_21, 
      inc_d_22, inc_d_23, inc_d_24, inc_d_25, inc_d_26, inc_d_27, inc_d_28, 
      inc_d_29, inc_d_30, inc_d_31, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(31) <= nx131 ;
   q(30) <= nx130 ;
   q(29) <= nx129 ;
   q(28) <= nx128 ;
   q(27) <= nx127 ;
   q(26) <= nx126 ;
   q(25) <= nx125 ;
   q(24) <= nx124 ;
   q(23) <= nx123 ;
   q(22) <= nx122 ;
   q(21) <= nx121 ;
   q(20) <= nx120 ;
   q(19) <= nx119 ;
   q(18) <= nx118 ;
   q(17) <= nx117 ;
   q(16) <= nx116 ;
   q(15) <= nx115 ;
   q(14) <= nx114 ;
   q(13) <= nx113 ;
   q(12) <= nx112 ;
   q(11) <= nx111 ;
   q(10) <= nx110 ;
   q(9) <= nx109 ;
   q(8) <= nx108 ;
   q(7) <= nx107 ;
   q(6) <= nx106 ;
   q(5) <= nx105 ;
   q(4) <= nx104 ;
   q(3) <= nx103 ;
   q(2) <= nx102 ;
   q(1) <= nx101 ;
   q(0) <= nx100 ;
   nx64 <= '0' ;
   nx66 <= '1' ;
   DFFPCE (sclear_and_31_dup_398,nx64,nx64,clk_en,clock,nx131) ;
   DFFPCE (sclear_and_30_dup_397,nx64,nx64,clk_en,clock,nx130) ;
   DFFPCE (sclear_and_29_dup_396,nx64,nx64,clk_en,clock,nx129) ;
   DFFPCE (sclear_and_28_dup_395,nx64,nx64,clk_en,clock,nx128) ;
   DFFPCE (sclear_and_27_dup_394,nx64,nx64,clk_en,clock,nx127) ;
   DFFPCE (sclear_and_26_dup_393,nx64,nx64,clk_en,clock,nx126) ;
   DFFPCE (sclear_and_25_dup_392,nx64,nx64,clk_en,clock,nx125) ;
   DFFPCE (sclear_and_24_dup_391,nx64,nx64,clk_en,clock,nx124) ;
   DFFPCE (sclear_and_23_dup_390,nx64,nx64,clk_en,clock,nx123) ;
   DFFPCE (sclear_and_22_dup_389,nx64,nx64,clk_en,clock,nx122) ;
   DFFPCE (sclear_and_21_dup_388,nx64,nx64,clk_en,clock,nx121) ;
   DFFPCE (sclear_and_20_dup_387,nx64,nx64,clk_en,clock,nx120) ;
   DFFPCE (sclear_and_19_dup_386,nx64,nx64,clk_en,clock,nx119) ;
   DFFPCE (sclear_and_18_dup_385,nx64,nx64,clk_en,clock,nx118) ;
   DFFPCE (sclear_and_17_dup_384,nx64,nx64,clk_en,clock,nx117) ;
   DFFPCE (sclear_and_16_dup_383,nx64,nx64,clk_en,clock,nx116) ;
   DFFPCE (sclear_and_15_dup_382,nx64,nx64,clk_en,clock,nx115) ;
   DFFPCE (sclear_and_14_dup_381,nx64,nx64,clk_en,clock,nx114) ;
   DFFPCE (sclear_and_13_dup_380,nx64,nx64,clk_en,clock,nx113) ;
   DFFPCE (sclear_and_12_dup_379,nx64,nx64,clk_en,clock,nx112) ;
   DFFPCE (sclear_and_11_dup_378,nx64,nx64,clk_en,clock,nx111) ;
   DFFPCE (sclear_and_10_dup_377,nx64,nx64,clk_en,clock,nx110) ;
   DFFPCE (sclear_and_9_dup_376,nx64,nx64,clk_en,clock,nx109) ;
   DFFPCE (sclear_and_8_dup_375,nx64,nx64,clk_en,clock,nx108) ;
   DFFPCE (sclear_and_7_dup_374,nx64,nx64,clk_en,clock,nx107) ;
   DFFPCE (sclear_and_6_dup_373,nx64,nx64,clk_en,clock,nx106) ;
   DFFPCE (sclear_and_5_dup_372,nx64,nx64,clk_en,clock,nx105) ;
   DFFPCE (sclear_and_4_dup_371,nx64,nx64,clk_en,clock,nx104) ;
   DFFPCE (sclear_and_3_dup_370,nx64,nx64,clk_en,clock,nx103) ;
   DFFPCE (sclear_and_2_dup_369,nx64,nx64,clk_en,clock,nx102) ;
   DFFPCE (sclear_and_1_dup_368,nx64,nx64,clk_en,clock,nx101) ;
   DFFPCE (sclear_and_0_dup_367,nx64,nx64,clk_en,clock,nx100) ;
   inc : inc_32u_32u_0_0 port map ( cin=>nx66, a(31)=>nx131, a(30)=>nx130, 
      a(29)=>nx129, a(28)=>nx128, a(27)=>nx127, a(26)=>nx126, a(25)=>nx125, 
      a(24)=>nx124, a(23)=>nx123, a(22)=>nx122, a(21)=>nx121, a(20)=>nx120, 
      a(19)=>nx119, a(18)=>nx118, a(17)=>nx117, a(16)=>nx116, a(15)=>nx115, 
      a(14)=>nx114, a(13)=>nx113, a(12)=>nx112, a(11)=>nx111, a(10)=>nx110, 
      a(9)=>nx109, a(8)=>nx108, a(7)=>nx107, a(6)=>nx106, a(5)=>nx105, a(4)
      =>nx104, a(3)=>nx103, a(2)=>nx102, a(1)=>nx101, a(0)=>nx100, d(31)=>
      inc_d_31, d(30)=>inc_d_30, d(29)=>inc_d_29, d(28)=>inc_d_28, d(27)=>
      inc_d_27, d(26)=>inc_d_26, d(25)=>inc_d_25, d(24)=>inc_d_24, d(23)=>
      inc_d_23, d(22)=>inc_d_22, d(21)=>inc_d_21, d(20)=>inc_d_20, d(19)=>
      inc_d_19, d(18)=>inc_d_18, d(17)=>inc_d_17, d(16)=>inc_d_16, d(15)=>
      inc_d_15, d(14)=>inc_d_14, d(13)=>inc_d_13, d(12)=>inc_d_12, d(11)=>
      inc_d_11, d(10)=>inc_d_10, d(9)=>inc_d_9, d(8)=>inc_d_8, d(7)=>inc_d_7, 
      d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>inc_d_4, d(3)=>inc_d_3, d(2)=>
      inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_367 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_368 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_369 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_370 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_371 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_372 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_373 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_374 <= inc_d_7 AND NOT_sclear ;
   sclear_and_8_dup_375 <= inc_d_8 AND NOT_sclear ;
   sclear_and_9_dup_376 <= inc_d_9 AND NOT_sclear ;
   sclear_and_10_dup_377 <= inc_d_10 AND NOT_sclear ;
   sclear_and_11_dup_378 <= inc_d_11 AND NOT_sclear ;
   sclear_and_12_dup_379 <= inc_d_12 AND NOT_sclear ;
   sclear_and_13_dup_380 <= inc_d_13 AND NOT_sclear ;
   sclear_and_14_dup_381 <= inc_d_14 AND NOT_sclear ;
   sclear_and_15_dup_382 <= inc_d_15 AND NOT_sclear ;
   sclear_and_16_dup_383 <= inc_d_16 AND NOT_sclear ;
   sclear_and_17_dup_384 <= inc_d_17 AND NOT_sclear ;
   sclear_and_18_dup_385 <= inc_d_18 AND NOT_sclear ;
   sclear_and_19_dup_386 <= inc_d_19 AND NOT_sclear ;
   sclear_and_20_dup_387 <= inc_d_20 AND NOT_sclear ;
   sclear_and_21_dup_388 <= inc_d_21 AND NOT_sclear ;
   sclear_and_22_dup_389 <= inc_d_22 AND NOT_sclear ;
   sclear_and_23_dup_390 <= inc_d_23 AND NOT_sclear ;
   sclear_and_24_dup_391 <= inc_d_24 AND NOT_sclear ;
   sclear_and_25_dup_392 <= inc_d_25 AND NOT_sclear ;
   sclear_and_26_dup_393 <= inc_d_26 AND NOT_sclear ;
   sclear_and_27_dup_394 <= inc_d_27 AND NOT_sclear ;
   sclear_and_28_dup_395 <= inc_d_28 AND NOT_sclear ;
   sclear_and_29_dup_396 <= inc_d_29 AND NOT_sclear ;
   sclear_and_30_dup_397 <= inc_d_30 AND NOT_sclear ;
   sclear_and_31_dup_398 <= inc_d_31 AND NOT_sclear ;
end INTERFACE ;


architecture INTERFACE of decoder_4 is 
   component eq_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal data_EXMPLR108: std_logic_vector (3 DOWNTO 0) ;
   
   signal eq_EXMPLR109: std_logic_vector (15 DOWNTO 0) ;
   
   signal nx24, nx26: std_logic ;

begin
   nx24 <= '0' ;
   nx26 <= '1' ;
   cmp_15 : eq_4u_4u port map ( a=>data, b(3)=>nx26, b(2)=>nx26, b(1)=>nx26, 
      b(0)=>nx26, d=>eq(15));
   cmp_14 : eq_4u_4u port map ( a=>data, b(3)=>nx26, b(2)=>nx26, b(1)=>nx26, 
      b(0)=>nx24, d=>eq(14));
   cmp_13 : eq_4u_4u port map ( a=>data, b(3)=>nx26, b(2)=>nx26, b(1)=>nx24, 
      b(0)=>nx26, d=>eq(13));
   cmp_12 : eq_4u_4u port map ( a=>data, b(3)=>nx26, b(2)=>nx26, b(1)=>nx24, 
      b(0)=>nx24, d=>eq(12));
   cmp_11 : eq_4u_4u port map ( a=>data, b(3)=>nx26, b(2)=>nx24, b(1)=>nx26, 
      b(0)=>nx26, d=>eq(11));
   cmp_10 : eq_4u_4u port map ( a=>data, b(3)=>nx26, b(2)=>nx24, b(1)=>nx26, 
      b(0)=>nx24, d=>eq(10));
   cmp_9 : eq_4u_4u port map ( a=>data, b(3)=>nx26, b(2)=>nx24, b(1)=>nx24, 
      b(0)=>nx26, d=>eq(9));
   cmp_8 : eq_4u_4u port map ( a=>data, b(3)=>nx26, b(2)=>nx24, b(1)=>nx24, 
      b(0)=>nx24, d=>eq(8));
   cmp_7 : eq_4u_4u port map ( a=>data, b(3)=>nx24, b(2)=>nx26, b(1)=>nx26, 
      b(0)=>nx26, d=>eq(7));
   cmp_6 : eq_4u_4u port map ( a=>data, b(3)=>nx24, b(2)=>nx26, b(1)=>nx26, 
      b(0)=>nx24, d=>eq(6));
   cmp_5 : eq_4u_4u port map ( a=>data, b(3)=>nx24, b(2)=>nx26, b(1)=>nx24, 
      b(0)=>nx26, d=>eq(5));
   cmp_4 : eq_4u_4u port map ( a=>data, b(3)=>nx24, b(2)=>nx26, b(1)=>nx24, 
      b(0)=>nx24, d=>eq(4));
   cmp_3 : eq_4u_4u port map ( a=>data, b(3)=>nx24, b(2)=>nx24, b(1)=>nx26, 
      b(0)=>nx26, d=>eq(3));
   cmp_2 : eq_4u_4u port map ( a=>data, b(3)=>nx24, b(2)=>nx24, b(1)=>nx26, 
      b(0)=>nx24, d=>eq(2));
   cmp_1 : eq_4u_4u port map ( a=>data, b(3)=>nx24, b(2)=>nx24, b(1)=>nx24, 
      b(0)=>nx26, d=>eq(1));
   cmp_0 : eq_4u_4u port map ( a=>data, b(3)=>nx24, b(2)=>nx24, b(1)=>nx24, 
      b(0)=>nx24, d=>eq(0));
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity lab3 is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      i_valid : IN std_logic ;
      i_data : IN std_logic_vector (7 DOWNTO 0) ;
      o_done : OUT std_logic ;
      o_data : OUT std_logic_vector (7 DOWNTO 0)) ;
end lab3 ;

architecture main of lab3 is 
   component mux_16u_16u
      port (
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component select_3_3
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_32u_32u
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_28u_28u
      port (
         a : IN std_logic_vector (27 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_sload_sclear_clock_clk_en_0_32_cx0_lab3
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (31 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (31 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_sclear_clock_clk_en_0_8_cx1_lab3
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component sub_8u_8u_8u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_9u_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
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
   component counter_up_sclear_clock_clk_en_0_32_cx7_lab3
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (31 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (31 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component decoder_4
      port (
         data : IN std_logic_vector (3 DOWNTO 0) ;
         eq : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   component and_5u_5u
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_7u_7u
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal row: std_logic_vector (31 DOWNTO 0) ;
   
   signal column: std_logic_vector (31 DOWNTO 0) ;
   
   signal p_31, GND: std_logic ;
   
   signal stage: std_logic_vector (1 DOWNTO 1) ;
   
   signal flag, compute_flag: std_logic ;
   
   signal state: std_logic_vector (4 DOWNTO 0) ;
   
   signal PWR, not_reset, rtlc0n92, not_rtlcs0, rtlc0n163, rtlc0n165, 
      rtlc0n178, rtlc0n180, rtlc0_PS25_n202, rtlc0n234, rtlc0n237, 
      not_rtlc0n237, rtlc0n240, rtlc0n246, minuend_1n10ss1_487, 
      minuend_1n10ss1_486, minuend_1n10ss1_485, minuend_1n10ss1_484, 
      minuend_1n10ss1_483, minuend_1n10ss1_482, minuend_1n10ss1_481, 
      minuend_1n10ss1_480, minuend_1n10ss1_455, minuend_1n10ss1_454, 
      minuend_1n10ss1_453, minuend_1n10ss1_452, minuend_1n10ss1_451, 
      minuend_1n10ss1_450, minuend_1n10ss1_449, minuend_1n10ss1_448, 
      minuend_1n10ss1_423, minuend_1n10ss1_422, minuend_1n10ss1_421, 
      minuend_1n10ss1_420, minuend_1n10ss1_419, minuend_1n10ss1_418, 
      minuend_1n10ss1_417, minuend_1n10ss1_416, minuend_1n10ss1_391, 
      minuend_1n10ss1_390, minuend_1n10ss1_389, minuend_1n10ss1_388, 
      minuend_1n10ss1_387, minuend_1n10ss1_386, minuend_1n10ss1_385, 
      minuend_1n10ss1_384, minuend_1n10ss1_359, minuend_1n10ss1_358, 
      minuend_1n10ss1_357, minuend_1n10ss1_356, minuend_1n10ss1_355, 
      minuend_1n10ss1_354, minuend_1n10ss1_353, minuend_1n10ss1_352, 
      minuend_1n10ss1_327, minuend_1n10ss1_326, minuend_1n10ss1_325, 
      minuend_1n10ss1_324, minuend_1n10ss1_323, minuend_1n10ss1_322, 
      minuend_1n10ss1_321, minuend_1n10ss1_320, minuend_1n10ss1_295, 
      minuend_1n10ss1_294, minuend_1n10ss1_293, minuend_1n10ss1_292, 
      minuend_1n10ss1_291, minuend_1n10ss1_290, minuend_1n10ss1_289, 
      minuend_1n10ss1_288, minuend_1n10ss1_263, minuend_1n10ss1_262, 
      minuend_1n10ss1_261, minuend_1n10ss1_260, minuend_1n10ss1_259, 
      minuend_1n10ss1_258, minuend_1n10ss1_257, minuend_1n10ss1_256, 
      minuend_1n10ss1_231, minuend_1n10ss1_230, minuend_1n10ss1_229, 
      minuend_1n10ss1_228, minuend_1n10ss1_227, minuend_1n10ss1_226, 
      minuend_1n10ss1_225, minuend_1n10ss1_224, minuend_1n10ss1_199, 
      minuend_1n10ss1_198, minuend_1n10ss1_197, minuend_1n10ss1_196, 
      minuend_1n10ss1_195, minuend_1n10ss1_194, minuend_1n10ss1_193, 
      minuend_1n10ss1_192, minuend_1n10ss1_167, minuend_1n10ss1_166, 
      minuend_1n10ss1_165, minuend_1n10ss1_164, minuend_1n10ss1_163, 
      minuend_1n10ss1_162, minuend_1n10ss1_161, minuend_1n10ss1_160, 
      minuend_1n10ss1_135, minuend_1n10ss1_134, minuend_1n10ss1_133, 
      minuend_1n10ss1_132, minuend_1n10ss1_131, minuend_1n10ss1_130, 
      minuend_1n10ss1_129, minuend_1n10ss1_128, minuend_1n10ss1_103, 
      minuend_1n10ss1_102, minuend_1n10ss1_101, minuend_1n10ss1_100, 
      minuend_1n10ss1_99, minuend_1n10ss1_98, minuend_1n10ss1_97, 
      minuend_1n10ss1_96, minuend_1n10ss1_71, minuend_1n10ss1_70, 
      minuend_1n10ss1_69, minuend_1n10ss1_68, minuend_1n10ss1_67, 
      minuend_1n10ss1_66, minuend_1n10ss1_65, minuend_1n10ss1_64, 
      minuend_1n10ss1_39, minuend_1n10ss1_38, minuend_1n10ss1_37, 
      minuend_1n10ss1_36, minuend_1n10ss1_35, minuend_1n10ss1_34, 
      minuend_1n10ss1_33, minuend_1n10ss1_32, minuend_1n10ss1_7, 
      minuend_1n10ss1_6, minuend_1n10ss1_5, minuend_1n10ss1_4, 
      minuend_1n10ss1_3, minuend_1n10ss1_2, minuend_1n10ss1_1, 
      minuend_1n10ss1_0, subtrahend_1n10ss1_487, subtrahend_1n10ss1_486, 
      subtrahend_1n10ss1_485, subtrahend_1n10ss1_484, subtrahend_1n10ss1_483, 
      subtrahend_1n10ss1_482, subtrahend_1n10ss1_481, subtrahend_1n10ss1_480, 
      subtrahend_1n10ss1_455, subtrahend_1n10ss1_454, subtrahend_1n10ss1_453, 
      subtrahend_1n10ss1_452, subtrahend_1n10ss1_451, subtrahend_1n10ss1_450, 
      subtrahend_1n10ss1_449, subtrahend_1n10ss1_448, subtrahend_1n10ss1_423, 
      subtrahend_1n10ss1_422, subtrahend_1n10ss1_421, subtrahend_1n10ss1_420, 
      subtrahend_1n10ss1_419, subtrahend_1n10ss1_418, subtrahend_1n10ss1_417, 
      subtrahend_1n10ss1_416, subtrahend_1n10ss1_391, subtrahend_1n10ss1_390, 
      subtrahend_1n10ss1_389, subtrahend_1n10ss1_388, subtrahend_1n10ss1_387, 
      subtrahend_1n10ss1_386, subtrahend_1n10ss1_385, subtrahend_1n10ss1_384, 
      subtrahend_1n10ss1_359, subtrahend_1n10ss1_358, subtrahend_1n10ss1_357, 
      subtrahend_1n10ss1_356, subtrahend_1n10ss1_355, subtrahend_1n10ss1_354, 
      subtrahend_1n10ss1_353, subtrahend_1n10ss1_352, subtrahend_1n10ss1_327, 
      subtrahend_1n10ss1_326, subtrahend_1n10ss1_325, subtrahend_1n10ss1_324, 
      subtrahend_1n10ss1_323, subtrahend_1n10ss1_322, subtrahend_1n10ss1_321, 
      subtrahend_1n10ss1_320, subtrahend_1n10ss1_295, subtrahend_1n10ss1_294, 
      subtrahend_1n10ss1_293, subtrahend_1n10ss1_292, subtrahend_1n10ss1_291, 
      subtrahend_1n10ss1_290, subtrahend_1n10ss1_289, subtrahend_1n10ss1_288, 
      subtrahend_1n10ss1_263, subtrahend_1n10ss1_262, subtrahend_1n10ss1_261, 
      subtrahend_1n10ss1_260, subtrahend_1n10ss1_259, subtrahend_1n10ss1_258, 
      subtrahend_1n10ss1_257, subtrahend_1n10ss1_256, subtrahend_1n10ss1_231, 
      subtrahend_1n10ss1_230, subtrahend_1n10ss1_229, subtrahend_1n10ss1_228, 
      subtrahend_1n10ss1_227, subtrahend_1n10ss1_226, subtrahend_1n10ss1_225, 
      subtrahend_1n10ss1_224, subtrahend_1n10ss1_199, subtrahend_1n10ss1_198, 
      subtrahend_1n10ss1_197, subtrahend_1n10ss1_196, subtrahend_1n10ss1_195, 
      subtrahend_1n10ss1_194, subtrahend_1n10ss1_193, subtrahend_1n10ss1_192, 
      subtrahend_1n10ss1_167, subtrahend_1n10ss1_166, subtrahend_1n10ss1_165, 
      subtrahend_1n10ss1_164, subtrahend_1n10ss1_163, subtrahend_1n10ss1_162, 
      subtrahend_1n10ss1_161, subtrahend_1n10ss1_160, subtrahend_1n10ss1_135, 
      subtrahend_1n10ss1_134, subtrahend_1n10ss1_133, subtrahend_1n10ss1_132, 
      subtrahend_1n10ss1_131, subtrahend_1n10ss1_130, subtrahend_1n10ss1_129, 
      subtrahend_1n10ss1_128, subtrahend_1n10ss1_103, subtrahend_1n10ss1_102, 
      subtrahend_1n10ss1_101, subtrahend_1n10ss1_100, subtrahend_1n10ss1_99, 
      subtrahend_1n10ss1_98, subtrahend_1n10ss1_97, subtrahend_1n10ss1_96, 
      subtrahend_1n10ss1_71, subtrahend_1n10ss1_70, subtrahend_1n10ss1_69, 
      subtrahend_1n10ss1_68, subtrahend_1n10ss1_67, subtrahend_1n10ss1_66, 
      subtrahend_1n10ss1_65, subtrahend_1n10ss1_64, subtrahend_1n10ss1_39, 
      subtrahend_1n10ss1_38, subtrahend_1n10ss1_37, subtrahend_1n10ss1_36, 
      subtrahend_1n10ss1_35, subtrahend_1n10ss1_34, subtrahend_1n10ss1_33, 
      subtrahend_1n10ss1_32, subtrahend_1n10ss1_7, subtrahend_1n10ss1_6, 
      subtrahend_1n10ss1_5, subtrahend_1n10ss1_4, subtrahend_1n10ss1_3, 
      subtrahend_1n10ss1_2, subtrahend_1n10ss1_1, subtrahend_1n10ss1_0, 
      addend_1n10ss1_487, addend_1n10ss1_486, addend_1n10ss1_485, 
      addend_1n10ss1_484, addend_1n10ss1_483, addend_1n10ss1_482, 
      addend_1n10ss1_481, addend_1n10ss1_480: std_logic ;
   
   signal minuend_1n1s2: std_logic_vector (15 DOWNTO 0) ;
   
   signal rtlc1n2916, not_rtlcs6, rtlc1n5510, not_rtlcs5, rtlc1n12117, 
      rtlc1n12118, p_1n7s3_9, p_1n7s3_7, p_1n7s3_6, p_1n7s3_5, p_1n7s3_4, 
      p_1n7s3_3, p_1n7s3_2, p_1n7s3_1, p_1n7s3_0, p_1n7s2_31, rtlc1n12165, 
      rtlc1n12178, rtlc1n12189, not_rtlc1n12189, rtlc1n12225, 
      not_rtlc1n12225, not_rtlcn10655, not_rtlc1n12118, rtlc1n13957, 
      not_rtlc1n13957, rtlc1n13963, rtlcn181, rtlcn183, rtlcn325, rtlcn329, 
      rtlcn333, rtlcn337, rtlcn341, rtlcn345, rtlcn349, rtlcn353, rtlcn357, 
      rtlcn361, rtlcn365, rtlcn369, rtlcn373, rtlcn377, rtlcn381, rtlcn385, 
      rtlcn389, rtlcn393, rtlcn397, rtlcn401, rtlcn405, rtlcn409, rtlcn413, 
      rtlcn417, rtlcn421, rtlcn425, rtlcn429, rtlcn433, rtlcn437, rtlcn441, 
      rtlcn445, rtlcn449, rtlcn453, rtlcn457, rtlcn461, rtlcn465, rtlcn469, 
      rtlcn473, rtlcn477, rtlcn481, rtlcn485, rtlcn489, rtlcn493, rtlcn497, 
      rtlcn501, rtlcn505, rtlcn509, rtlcn513, rtlcn8784, rtlcn8788, 
      rtlcn8797, rtlcn8803, rtlcn8810, rtlcn8821, rtlcn9171, rtlcn9178, 
      rtlcn9185, rtlcn9192, rtlcn9199, rtlcn9206, rtlcn9213, rtlcn9220, 
      rtlcn9227, rtlcn9234, rtlcn9241, rtlcn9248, rtlcn9255, rtlcn9262, 
      rtlcn9269, rtlcn9276, not_rtlcn10634, not_rtlcn10635, not_rtlcn10649, 
      not_rtlcn10648, not_rtlcn10647, not_rtlcn10646, not_rtlcn10645, 
      not_rtlcn10644, not_rtlcn10643, not_rtlcn10642, not_rtlcn10641, 
      not_rtlcn10640, not_rtlcn10639, not_rtlcn10638, not_rtlcn10637, 
      not_rtlcn10636, rtlcn10420, rtlcn10421, rtlcn10422, rtlcn10423, 
      rtlcn10424, not_i_valid, not_minuend_1n1s2_15, rtlcn10427, 
      not_minuend_1n1s2_14, rtlcn10431, not_minuend_1n1s2_13, rtlcn10434, 
      not_minuend_1n1s2_12, rtlcn10437, not_minuend_1n1s2_11, rtlcn10440, 
      not_minuend_1n1s2_10, rtlcn10443, not_minuend_1n1s2_9, rtlcn10446, 
      not_minuend_1n1s2_8, rtlcn10449, not_minuend_1n1s2_7, rtlcn10452, 
      not_minuend_1n1s2_6, rtlcn10455, not_minuend_1n1s2_5, rtlcn10458, 
      not_minuend_1n1s2_4, rtlcn10461, not_minuend_1n1s2_3, rtlcn10464, 
      not_minuend_1n1s2_2, rtlcn10467, not_minuend_1n1s2_1, rtlcn10470, 
      not_minuend_1n1s2_0, rtlcn10473, not_state_4, not_rtlc0_PS25_n202, 
      not_state_3, not_rtlcn10650, not_state_1, not_rtlcn10423, rtlcn10484, 
      not_rtlcn10421, not_rtlc0n92, rtlcn10487, rtlcn10488, not_rtlcn10651, 
      not_rtlcn10652, not_state_0, rtlcn10634, rtlcn10635, rtlcn10636, 
      rtlcn10637, rtlcn10638, rtlcn10639, rtlcn10640, rtlcn10641, rtlcn10642, 
      rtlcn10643, rtlcn10644, rtlcn10645, rtlcn10646, rtlcn10647, rtlcn10648, 
      rtlcn10649, rtlcn10650, rtlcn10651, rtlcn10652, rtlcn10653, rtlcn10654, 
      rtlcn10655, rtlcn10656, rtlcn10658, rtlcn10660, rtlcn10661, rtlcn10662, 
      not_rtlc1n12117, rtlcn10667, rtlcn10668, rtlcn10669, rtlcn10670, 
      rtlcn10671, rtlcn10672, rtlcn10673, rtlcn10674, rtlcn10675, rtlcn10676, 
      rtlcn10677, rtlcn10678, rtlcn10679, rtlcn10680, rtlcn10681, rtlcn10682, 
      not_rtlc1n5510, not_stage_1, rtlcn10685, rtlcn10686, not_rtlcn10653, 
      rtlcn10689, not_rtlc1n2916, not_rtlcn10654, rtlcn10693, rtlcn10694, 
      rtlcn10695, rtlcn10696, rtlcn10697, rtlcn10698, rtlcn10699, rtlcn10700, 
      rtlcn10701, rtlcn10702, rtlcn10703, rtlcn10704, rtlcn10705, rtlcn10706, 
      rtlcn10707, rtlcn10708, rtlcn10709, rtlcn10710, rtlcn10711, rtlcn10712, 
      rtlcn10713, rtlcn10714, rtlcn10715, rtlcn10716, rtlcn10717, rtlcn10718, 
      rtlcn10719, rtlcn10720, rtlcn10721, rtlcn10722, rtlcn10723, rtlcn10725, 
      rtlcn10726, rtlcs0, rtlcs2, rtlcs3, rtlcs5, rtlcs6, not_row_3, 
      not_row_2, not_row_1, not_row_0, not_column_31, not_column_30, 
      not_column_29, not_column_28, not_column_27, not_column_26, 
      not_column_25, not_column_24, not_column_23, not_column_22, 
      not_column_21, not_column_20, not_column_19, not_column_18, 
      not_column_17, not_column_16, not_column_15, not_column_14, 
      not_column_13, not_column_12, not_column_11, not_column_10, 
      not_column_9, not_column_8, not_column_7, not_column_6, not_column_5, 
      not_column_4, not_row_31, not_row_30, not_row_29, not_row_28, 
      not_row_27, not_row_26, not_row_25, not_row_24, not_row_23, not_row_22, 
      not_row_21, not_row_20, not_row_19, not_row_18, not_row_17, not_row_16, 
      not_row_15, not_row_14, not_row_13, not_row_12, not_row_11, not_row_10, 
      not_row_9, not_row_8, not_row_7, not_row_6, not_row_5, not_row_4, 
      not_rtlcn16035, rtlcn16002, rtlcn16035: std_logic ;
   
   signal minuend_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal minuend_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal minuend_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal minuend_3: std_logic_vector (7 DOWNTO 0) ;
   
   signal minuend_4: std_logic_vector (7 DOWNTO 0) ;
   
   signal minuend_5: std_logic_vector (7 DOWNTO 0) ;
   
   signal minuend_6: std_logic_vector (7 DOWNTO 0) ;
   
   signal minuend_7: std_logic_vector (7 DOWNTO 0) ;
   
   signal minuend_8: std_logic_vector (7 DOWNTO 0) ;
   
   signal minuend_9: std_logic_vector (7 DOWNTO 0) ;
   
   signal minuend_10: std_logic_vector (7 DOWNTO 0) ;
   
   signal minuend_11: std_logic_vector (7 DOWNTO 0) ;
   
   signal minuend_12: std_logic_vector (7 DOWNTO 0) ;
   
   signal minuend_13: std_logic_vector (7 DOWNTO 0) ;
   
   signal minuend_14: std_logic_vector (7 DOWNTO 0) ;
   
   signal minuend_15: std_logic_vector (7 DOWNTO 0) ;
   
   signal subtrahend_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal subtrahend_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal subtrahend_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal subtrahend_3: std_logic_vector (7 DOWNTO 0) ;
   
   signal subtrahend_4: std_logic_vector (7 DOWNTO 0) ;
   
   signal subtrahend_5: std_logic_vector (7 DOWNTO 0) ;
   
   signal subtrahend_6: std_logic_vector (7 DOWNTO 0) ;
   
   signal subtrahend_7: std_logic_vector (7 DOWNTO 0) ;
   
   signal subtrahend_8: std_logic_vector (7 DOWNTO 0) ;
   
   signal subtrahend_9: std_logic_vector (7 DOWNTO 0) ;
   
   signal subtrahend_10: std_logic_vector (7 DOWNTO 0) ;
   
   signal subtrahend_11: std_logic_vector (7 DOWNTO 0) ;
   
   signal subtrahend_12: std_logic_vector (7 DOWNTO 0) ;
   
   signal subtrahend_13: std_logic_vector (7 DOWNTO 0) ;
   
   signal subtrahend_14: std_logic_vector (7 DOWNTO 0) ;
   
   signal subtrahend_15: std_logic_vector (7 DOWNTO 0) ;
   
   signal addend_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal addend_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal addend_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal addend_3: std_logic_vector (7 DOWNTO 0) ;
   
   signal addend_4: std_logic_vector (7 DOWNTO 0) ;
   
   signal addend_5: std_logic_vector (7 DOWNTO 0) ;
   
   signal addend_6: std_logic_vector (7 DOWNTO 0) ;
   
   signal addend_7: std_logic_vector (7 DOWNTO 0) ;
   
   signal addend_8: std_logic_vector (7 DOWNTO 0) ;
   
   signal addend_9: std_logic_vector (7 DOWNTO 0) ;
   
   signal addend_10: std_logic_vector (7 DOWNTO 0) ;
   
   signal addend_11: std_logic_vector (7 DOWNTO 0) ;
   
   signal addend_12: std_logic_vector (7 DOWNTO 0) ;
   
   signal addend_13: std_logic_vector (7 DOWNTO 0) ;
   
   signal addend_14: std_logic_vector (7 DOWNTO 0) ;
   
   signal addend_15: std_logic_vector (7 DOWNTO 0) ;
   
   signal p_1n7s3f1: std_logic_vector (7 DOWNTO 0) ;
   
   signal p_1n7s3f2: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlc_24180_and_291_nx0, rtlc_24189_and_292_nx0, 
      rtlc_24197_and_293_nx0, rtlc_24198_or_294_nx0, rtlc_24605_or_296_nx0, 
      nx3008: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   GND <= '0' ;
   PWR <= '1' ;
   rtlc0n237 <= state(0) OR state(1) ;
   not_rtlc0n237 <= NOT rtlc0n237 ;
   rtlc0n240 <= state(1) OR state(3) ;
   rtlc0n246 <= state(3) OR state(4) ;
   rtlc0_PS25_n202 <= reset OR i_valid ;
   rtlc0n178 <= rtlcs5 AND rtlcs0 ;
   rtlc0n180 <= rtlc0n178 AND compute_flag ;
   not_rtlcs0 <= NOT rtlcs0 ;
   rtlc0n163 <= rtlcs5 AND not_rtlcs0 ;
   rtlc0n165 <= rtlc0n163 AND compute_flag ;
   rtlc0n92 <= not_reset AND i_valid ;
   not_reset <= NOT reset ;
   p_mux_1i2Bus84_0 : mux_16u_16u port map ( a(15)=>minuend_15(0), a(14)=>
      minuend_14(0), a(13)=>minuend_13(0), a(12)=>minuend_12(0), a(11)=>
      minuend_11(0), a(10)=>minuend_10(0), a(9)=>minuend_9(0), a(8)=>
      minuend_8(0), a(7)=>minuend_7(0), a(6)=>minuend_6(0), a(5)=>
      minuend_5(0), a(4)=>minuend_4(0), a(3)=>minuend_3(0), a(2)=>
      minuend_2(0), a(1)=>minuend_1(0), a(0)=>minuend_0(0), b(15)=>GND, 
      b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>GND, 
      b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>column(3), 
      b(2)=>column(2), b(1)=>column(1), b(0)=>column(0), d=>p_1n7s3f1(0));
   p_mux_1i2Bus84_1 : mux_16u_16u port map ( a(15)=>minuend_15(1), a(14)=>
      minuend_14(1), a(13)=>minuend_13(1), a(12)=>minuend_12(1), a(11)=>
      minuend_11(1), a(10)=>minuend_10(1), a(9)=>minuend_9(1), a(8)=>
      minuend_8(1), a(7)=>minuend_7(1), a(6)=>minuend_6(1), a(5)=>
      minuend_5(1), a(4)=>minuend_4(1), a(3)=>minuend_3(1), a(2)=>
      minuend_2(1), a(1)=>minuend_1(1), a(0)=>minuend_0(1), b(15)=>GND, 
      b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>GND, 
      b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>column(3), 
      b(2)=>column(2), b(1)=>column(1), b(0)=>column(0), d=>p_1n7s3f1(1));
   p_mux_1i2Bus84_2 : mux_16u_16u port map ( a(15)=>minuend_15(2), a(14)=>
      minuend_14(2), a(13)=>minuend_13(2), a(12)=>minuend_12(2), a(11)=>
      minuend_11(2), a(10)=>minuend_10(2), a(9)=>minuend_9(2), a(8)=>
      minuend_8(2), a(7)=>minuend_7(2), a(6)=>minuend_6(2), a(5)=>
      minuend_5(2), a(4)=>minuend_4(2), a(3)=>minuend_3(2), a(2)=>
      minuend_2(2), a(1)=>minuend_1(2), a(0)=>minuend_0(2), b(15)=>GND, 
      b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>GND, 
      b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>column(3), 
      b(2)=>column(2), b(1)=>column(1), b(0)=>column(0), d=>p_1n7s3f1(2));
   p_mux_1i2Bus84_3 : mux_16u_16u port map ( a(15)=>minuend_15(3), a(14)=>
      minuend_14(3), a(13)=>minuend_13(3), a(12)=>minuend_12(3), a(11)=>
      minuend_11(3), a(10)=>minuend_10(3), a(9)=>minuend_9(3), a(8)=>
      minuend_8(3), a(7)=>minuend_7(3), a(6)=>minuend_6(3), a(5)=>
      minuend_5(3), a(4)=>minuend_4(3), a(3)=>minuend_3(3), a(2)=>
      minuend_2(3), a(1)=>minuend_1(3), a(0)=>minuend_0(3), b(15)=>GND, 
      b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>GND, 
      b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>column(3), 
      b(2)=>column(2), b(1)=>column(1), b(0)=>column(0), d=>p_1n7s3f1(3));
   p_mux_1i2Bus84_4 : mux_16u_16u port map ( a(15)=>minuend_15(4), a(14)=>
      minuend_14(4), a(13)=>minuend_13(4), a(12)=>minuend_12(4), a(11)=>
      minuend_11(4), a(10)=>minuend_10(4), a(9)=>minuend_9(4), a(8)=>
      minuend_8(4), a(7)=>minuend_7(4), a(6)=>minuend_6(4), a(5)=>
      minuend_5(4), a(4)=>minuend_4(4), a(3)=>minuend_3(4), a(2)=>
      minuend_2(4), a(1)=>minuend_1(4), a(0)=>minuend_0(4), b(15)=>GND, 
      b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>GND, 
      b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>column(3), 
      b(2)=>column(2), b(1)=>column(1), b(0)=>column(0), d=>p_1n7s3f1(4));
   p_mux_1i2Bus84_5 : mux_16u_16u port map ( a(15)=>minuend_15(5), a(14)=>
      minuend_14(5), a(13)=>minuend_13(5), a(12)=>minuend_12(5), a(11)=>
      minuend_11(5), a(10)=>minuend_10(5), a(9)=>minuend_9(5), a(8)=>
      minuend_8(5), a(7)=>minuend_7(5), a(6)=>minuend_6(5), a(5)=>
      minuend_5(5), a(4)=>minuend_4(5), a(3)=>minuend_3(5), a(2)=>
      minuend_2(5), a(1)=>minuend_1(5), a(0)=>minuend_0(5), b(15)=>GND, 
      b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>GND, 
      b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>column(3), 
      b(2)=>column(2), b(1)=>column(1), b(0)=>column(0), d=>p_1n7s3f1(5));
   p_mux_1i2Bus84_6 : mux_16u_16u port map ( a(15)=>minuend_15(6), a(14)=>
      minuend_14(6), a(13)=>minuend_13(6), a(12)=>minuend_12(6), a(11)=>
      minuend_11(6), a(10)=>minuend_10(6), a(9)=>minuend_9(6), a(8)=>
      minuend_8(6), a(7)=>minuend_7(6), a(6)=>minuend_6(6), a(5)=>
      minuend_5(6), a(4)=>minuend_4(6), a(3)=>minuend_3(6), a(2)=>
      minuend_2(6), a(1)=>minuend_1(6), a(0)=>minuend_0(6), b(15)=>GND, 
      b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>GND, 
      b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>column(3), 
      b(2)=>column(2), b(1)=>column(1), b(0)=>column(0), d=>p_1n7s3f1(6));
   p_mux_1i2Bus84_7 : mux_16u_16u port map ( a(15)=>minuend_15(7), a(14)=>
      minuend_14(7), a(13)=>minuend_13(7), a(12)=>minuend_12(7), a(11)=>
      minuend_11(7), a(10)=>minuend_10(7), a(9)=>minuend_9(7), a(8)=>
      minuend_8(7), a(7)=>minuend_7(7), a(6)=>minuend_6(7), a(5)=>
      minuend_5(7), a(4)=>minuend_4(7), a(3)=>minuend_3(7), a(2)=>
      minuend_2(7), a(1)=>minuend_1(7), a(0)=>minuend_0(7), b(15)=>GND, 
      b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>GND, 
      b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>column(3), 
      b(2)=>column(2), b(1)=>column(1), b(0)=>column(0), d=>p_1n7s3f1(7));
   p_mux_1i10Bus85_0 : mux_16u_16u port map ( a(15)=>subtrahend_15(0), a(14)
      =>subtrahend_14(0), a(13)=>subtrahend_13(0), a(12)=>subtrahend_12(0), 
      a(11)=>subtrahend_11(0), a(10)=>subtrahend_10(0), a(9)=>
      subtrahend_9(0), a(8)=>subtrahend_8(0), a(7)=>subtrahend_7(0), a(6)=>
      subtrahend_6(0), a(5)=>subtrahend_5(0), a(4)=>subtrahend_4(0), a(3)=>
      subtrahend_3(0), a(2)=>subtrahend_2(0), a(1)=>subtrahend_1(0), a(0)=>
      subtrahend_0(0), b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)
      =>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      GND, b(4)=>GND, b(3)=>column(3), b(2)=>column(2), b(1)=>column(1), 
      b(0)=>column(0), d=>p_1n7s3f2(0));
   p_mux_1i10Bus85_1 : mux_16u_16u port map ( a(15)=>subtrahend_15(1), a(14)
      =>subtrahend_14(1), a(13)=>subtrahend_13(1), a(12)=>subtrahend_12(1), 
      a(11)=>subtrahend_11(1), a(10)=>subtrahend_10(1), a(9)=>
      subtrahend_9(1), a(8)=>subtrahend_8(1), a(7)=>subtrahend_7(1), a(6)=>
      subtrahend_6(1), a(5)=>subtrahend_5(1), a(4)=>subtrahend_4(1), a(3)=>
      subtrahend_3(1), a(2)=>subtrahend_2(1), a(1)=>subtrahend_1(1), a(0)=>
      subtrahend_0(1), b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)
      =>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      GND, b(4)=>GND, b(3)=>column(3), b(2)=>column(2), b(1)=>column(1), 
      b(0)=>column(0), d=>p_1n7s3f2(1));
   p_mux_1i10Bus85_2 : mux_16u_16u port map ( a(15)=>subtrahend_15(2), a(14)
      =>subtrahend_14(2), a(13)=>subtrahend_13(2), a(12)=>subtrahend_12(2), 
      a(11)=>subtrahend_11(2), a(10)=>subtrahend_10(2), a(9)=>
      subtrahend_9(2), a(8)=>subtrahend_8(2), a(7)=>subtrahend_7(2), a(6)=>
      subtrahend_6(2), a(5)=>subtrahend_5(2), a(4)=>subtrahend_4(2), a(3)=>
      subtrahend_3(2), a(2)=>subtrahend_2(2), a(1)=>subtrahend_1(2), a(0)=>
      subtrahend_0(2), b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)
      =>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      GND, b(4)=>GND, b(3)=>column(3), b(2)=>column(2), b(1)=>column(1), 
      b(0)=>column(0), d=>p_1n7s3f2(2));
   p_mux_1i10Bus85_3 : mux_16u_16u port map ( a(15)=>subtrahend_15(3), a(14)
      =>subtrahend_14(3), a(13)=>subtrahend_13(3), a(12)=>subtrahend_12(3), 
      a(11)=>subtrahend_11(3), a(10)=>subtrahend_10(3), a(9)=>
      subtrahend_9(3), a(8)=>subtrahend_8(3), a(7)=>subtrahend_7(3), a(6)=>
      subtrahend_6(3), a(5)=>subtrahend_5(3), a(4)=>subtrahend_4(3), a(3)=>
      subtrahend_3(3), a(2)=>subtrahend_2(3), a(1)=>subtrahend_1(3), a(0)=>
      subtrahend_0(3), b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)
      =>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      GND, b(4)=>GND, b(3)=>column(3), b(2)=>column(2), b(1)=>column(1), 
      b(0)=>column(0), d=>p_1n7s3f2(3));
   p_mux_1i10Bus85_4 : mux_16u_16u port map ( a(15)=>subtrahend_15(4), a(14)
      =>subtrahend_14(4), a(13)=>subtrahend_13(4), a(12)=>subtrahend_12(4), 
      a(11)=>subtrahend_11(4), a(10)=>subtrahend_10(4), a(9)=>
      subtrahend_9(4), a(8)=>subtrahend_8(4), a(7)=>subtrahend_7(4), a(6)=>
      subtrahend_6(4), a(5)=>subtrahend_5(4), a(4)=>subtrahend_4(4), a(3)=>
      subtrahend_3(4), a(2)=>subtrahend_2(4), a(1)=>subtrahend_1(4), a(0)=>
      subtrahend_0(4), b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)
      =>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      GND, b(4)=>GND, b(3)=>column(3), b(2)=>column(2), b(1)=>column(1), 
      b(0)=>column(0), d=>p_1n7s3f2(4));
   p_mux_1i10Bus85_5 : mux_16u_16u port map ( a(15)=>subtrahend_15(5), a(14)
      =>subtrahend_14(5), a(13)=>subtrahend_13(5), a(12)=>subtrahend_12(5), 
      a(11)=>subtrahend_11(5), a(10)=>subtrahend_10(5), a(9)=>
      subtrahend_9(5), a(8)=>subtrahend_8(5), a(7)=>subtrahend_7(5), a(6)=>
      subtrahend_6(5), a(5)=>subtrahend_5(5), a(4)=>subtrahend_4(5), a(3)=>
      subtrahend_3(5), a(2)=>subtrahend_2(5), a(1)=>subtrahend_1(5), a(0)=>
      subtrahend_0(5), b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)
      =>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      GND, b(4)=>GND, b(3)=>column(3), b(2)=>column(2), b(1)=>column(1), 
      b(0)=>column(0), d=>p_1n7s3f2(5));
   p_mux_1i10Bus85_6 : mux_16u_16u port map ( a(15)=>subtrahend_15(6), a(14)
      =>subtrahend_14(6), a(13)=>subtrahend_13(6), a(12)=>subtrahend_12(6), 
      a(11)=>subtrahend_11(6), a(10)=>subtrahend_10(6), a(9)=>
      subtrahend_9(6), a(8)=>subtrahend_8(6), a(7)=>subtrahend_7(6), a(6)=>
      subtrahend_6(6), a(5)=>subtrahend_5(6), a(4)=>subtrahend_4(6), a(3)=>
      subtrahend_3(6), a(2)=>subtrahend_2(6), a(1)=>subtrahend_1(6), a(0)=>
      subtrahend_0(6), b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)
      =>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      GND, b(4)=>GND, b(3)=>column(3), b(2)=>column(2), b(1)=>column(1), 
      b(0)=>column(0), d=>p_1n7s3f2(6));
   p_mux_1i10Bus85_7 : mux_16u_16u port map ( a(15)=>subtrahend_15(7), a(14)
      =>subtrahend_14(7), a(13)=>subtrahend_13(7), a(12)=>subtrahend_12(7), 
      a(11)=>subtrahend_11(7), a(10)=>subtrahend_10(7), a(9)=>
      subtrahend_9(7), a(8)=>subtrahend_8(7), a(7)=>subtrahend_7(7), a(6)=>
      subtrahend_6(7), a(5)=>subtrahend_5(7), a(4)=>subtrahend_4(7), a(3)=>
      subtrahend_3(7), a(2)=>subtrahend_2(7), a(1)=>subtrahend_1(7), a(0)=>
      subtrahend_0(7), b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)
      =>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      GND, b(4)=>GND, b(3)=>column(3), b(2)=>column(2), b(1)=>column(1), 
      b(0)=>column(0), d=>p_1n7s3f2(7));
   subtrahend_select_1i19Bus19_0 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(0), b(0)=>
      addend_0(0), d=>subtrahend_1n10ss1_0);
   subtrahend_select_1i19Bus19_1 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(1), b(0)=>
      addend_0(1), d=>subtrahend_1n10ss1_1);
   subtrahend_select_1i19Bus19_2 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(2), b(0)=>
      addend_0(2), d=>subtrahend_1n10ss1_2);
   subtrahend_select_1i19Bus19_3 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(3), b(0)=>
      addend_0(3), d=>subtrahend_1n10ss1_3);
   subtrahend_select_1i19Bus19_4 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(4), b(0)=>
      addend_0(4), d=>subtrahend_1n10ss1_4);
   subtrahend_select_1i19Bus19_5 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(5), b(0)=>
      addend_0(5), d=>subtrahend_1n10ss1_5);
   subtrahend_select_1i19Bus19_6 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(6), b(0)=>
      addend_0(6), d=>subtrahend_1n10ss1_6);
   subtrahend_select_1i19Bus19_7 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(7), b(0)=>
      addend_0(7), d=>subtrahend_1n10ss1_7);
   subtrahend_select_1i27Bus20_32 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(0), b(0)=>
      addend_1(0), d=>subtrahend_1n10ss1_32);
   subtrahend_select_1i27Bus20_33 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(1), b(0)=>
      addend_1(1), d=>subtrahend_1n10ss1_33);
   subtrahend_select_1i27Bus20_34 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(2), b(0)=>
      addend_1(2), d=>subtrahend_1n10ss1_34);
   subtrahend_select_1i27Bus20_35 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(3), b(0)=>
      addend_1(3), d=>subtrahend_1n10ss1_35);
   subtrahend_select_1i27Bus20_36 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(4), b(0)=>
      addend_1(4), d=>subtrahend_1n10ss1_36);
   subtrahend_select_1i27Bus20_37 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(5), b(0)=>
      addend_1(5), d=>subtrahend_1n10ss1_37);
   subtrahend_select_1i27Bus20_38 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(6), b(0)=>
      addend_1(6), d=>subtrahend_1n10ss1_38);
   subtrahend_select_1i27Bus20_39 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(7), b(0)=>
      addend_1(7), d=>subtrahend_1n10ss1_39);
   subtrahend_select_1i35Bus21_64 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(0), b(0)=>
      addend_2(0), d=>subtrahend_1n10ss1_64);
   subtrahend_select_1i35Bus21_65 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(1), b(0)=>
      addend_2(1), d=>subtrahend_1n10ss1_65);
   subtrahend_select_1i35Bus21_66 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(2), b(0)=>
      addend_2(2), d=>subtrahend_1n10ss1_66);
   subtrahend_select_1i35Bus21_67 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(3), b(0)=>
      addend_2(3), d=>subtrahend_1n10ss1_67);
   subtrahend_select_1i35Bus21_68 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(4), b(0)=>
      addend_2(4), d=>subtrahend_1n10ss1_68);
   subtrahend_select_1i35Bus21_69 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(5), b(0)=>
      addend_2(5), d=>subtrahend_1n10ss1_69);
   subtrahend_select_1i35Bus21_70 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(6), b(0)=>
      addend_2(6), d=>subtrahend_1n10ss1_70);
   subtrahend_select_1i35Bus21_71 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(7), b(0)=>
      addend_2(7), d=>subtrahend_1n10ss1_71);
   subtrahend_select_1i43Bus22_96 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(0), b(0)=>
      addend_3(0), d=>subtrahend_1n10ss1_96);
   subtrahend_select_1i43Bus22_97 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(1), b(0)=>
      addend_3(1), d=>subtrahend_1n10ss1_97);
   subtrahend_select_1i43Bus22_98 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(2), b(0)=>
      addend_3(2), d=>subtrahend_1n10ss1_98);
   subtrahend_select_1i43Bus22_99 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(3), b(0)=>
      addend_3(3), d=>subtrahend_1n10ss1_99);
   subtrahend_select_1i43Bus22_100 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(4), b(0)=>
      addend_3(4), d=>subtrahend_1n10ss1_100);
   subtrahend_select_1i43Bus22_101 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(5), b(0)=>
      addend_3(5), d=>subtrahend_1n10ss1_101);
   subtrahend_select_1i43Bus22_102 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(6), b(0)=>
      addend_3(6), d=>subtrahend_1n10ss1_102);
   subtrahend_select_1i43Bus22_103 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(7), b(0)=>
      addend_3(7), d=>subtrahend_1n10ss1_103);
   subtrahend_select_1i51Bus23_128 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(0), b(0)=>
      addend_4(0), d=>subtrahend_1n10ss1_128);
   subtrahend_select_1i51Bus23_129 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(1), b(0)=>
      addend_4(1), d=>subtrahend_1n10ss1_129);
   subtrahend_select_1i51Bus23_130 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(2), b(0)=>
      addend_4(2), d=>subtrahend_1n10ss1_130);
   subtrahend_select_1i51Bus23_131 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(3), b(0)=>
      addend_4(3), d=>subtrahend_1n10ss1_131);
   subtrahend_select_1i51Bus23_132 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(4), b(0)=>
      addend_4(4), d=>subtrahend_1n10ss1_132);
   subtrahend_select_1i51Bus23_133 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(5), b(0)=>
      addend_4(5), d=>subtrahend_1n10ss1_133);
   subtrahend_select_1i51Bus23_134 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(6), b(0)=>
      addend_4(6), d=>subtrahend_1n10ss1_134);
   subtrahend_select_1i51Bus23_135 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(7), b(0)=>
      addend_4(7), d=>subtrahend_1n10ss1_135);
   subtrahend_select_1i59Bus24_160 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(0), b(0)=>
      addend_5(0), d=>subtrahend_1n10ss1_160);
   subtrahend_select_1i59Bus24_161 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(1), b(0)=>
      addend_5(1), d=>subtrahend_1n10ss1_161);
   subtrahend_select_1i59Bus24_162 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(2), b(0)=>
      addend_5(2), d=>subtrahend_1n10ss1_162);
   subtrahend_select_1i59Bus24_163 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(3), b(0)=>
      addend_5(3), d=>subtrahend_1n10ss1_163);
   subtrahend_select_1i59Bus24_164 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(4), b(0)=>
      addend_5(4), d=>subtrahend_1n10ss1_164);
   subtrahend_select_1i59Bus24_165 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(5), b(0)=>
      addend_5(5), d=>subtrahend_1n10ss1_165);
   subtrahend_select_1i59Bus24_166 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(6), b(0)=>
      addend_5(6), d=>subtrahend_1n10ss1_166);
   subtrahend_select_1i59Bus24_167 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(7), b(0)=>
      addend_5(7), d=>subtrahend_1n10ss1_167);
   subtrahend_select_1i67Bus25_192 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(0), b(0)=>
      addend_6(0), d=>subtrahend_1n10ss1_192);
   subtrahend_select_1i67Bus25_193 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(1), b(0)=>
      addend_6(1), d=>subtrahend_1n10ss1_193);
   subtrahend_select_1i67Bus25_194 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(2), b(0)=>
      addend_6(2), d=>subtrahend_1n10ss1_194);
   subtrahend_select_1i67Bus25_195 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(3), b(0)=>
      addend_6(3), d=>subtrahend_1n10ss1_195);
   subtrahend_select_1i67Bus25_196 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(4), b(0)=>
      addend_6(4), d=>subtrahend_1n10ss1_196);
   subtrahend_select_1i67Bus25_197 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(5), b(0)=>
      addend_6(5), d=>subtrahend_1n10ss1_197);
   subtrahend_select_1i67Bus25_198 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(6), b(0)=>
      addend_6(6), d=>subtrahend_1n10ss1_198);
   subtrahend_select_1i67Bus25_199 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(7), b(0)=>
      addend_6(7), d=>subtrahend_1n10ss1_199);
   subtrahend_select_1i75Bus26_224 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(0), b(0)=>
      addend_7(0), d=>subtrahend_1n10ss1_224);
   subtrahend_select_1i75Bus26_225 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(1), b(0)=>
      addend_7(1), d=>subtrahend_1n10ss1_225);
   subtrahend_select_1i75Bus26_226 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(2), b(0)=>
      addend_7(2), d=>subtrahend_1n10ss1_226);
   subtrahend_select_1i75Bus26_227 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(3), b(0)=>
      addend_7(3), d=>subtrahend_1n10ss1_227);
   subtrahend_select_1i75Bus26_228 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(4), b(0)=>
      addend_7(4), d=>subtrahend_1n10ss1_228);
   subtrahend_select_1i75Bus26_229 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(5), b(0)=>
      addend_7(5), d=>subtrahend_1n10ss1_229);
   subtrahend_select_1i75Bus26_230 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(6), b(0)=>
      addend_7(6), d=>subtrahend_1n10ss1_230);
   subtrahend_select_1i75Bus26_231 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(7), b(0)=>
      addend_7(7), d=>subtrahend_1n10ss1_231);
   subtrahend_select_1i83Bus27_256 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(0), b(0)=>
      addend_8(0), d=>subtrahend_1n10ss1_256);
   subtrahend_select_1i83Bus27_257 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(1), b(0)=>
      addend_8(1), d=>subtrahend_1n10ss1_257);
   subtrahend_select_1i83Bus27_258 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(2), b(0)=>
      addend_8(2), d=>subtrahend_1n10ss1_258);
   subtrahend_select_1i83Bus27_259 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(3), b(0)=>
      addend_8(3), d=>subtrahend_1n10ss1_259);
   subtrahend_select_1i83Bus27_260 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(4), b(0)=>
      addend_8(4), d=>subtrahend_1n10ss1_260);
   subtrahend_select_1i83Bus27_261 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(5), b(0)=>
      addend_8(5), d=>subtrahend_1n10ss1_261);
   subtrahend_select_1i83Bus27_262 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(6), b(0)=>
      addend_8(6), d=>subtrahend_1n10ss1_262);
   subtrahend_select_1i83Bus27_263 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(7), b(0)=>
      addend_8(7), d=>subtrahend_1n10ss1_263);
   subtrahend_select_1i91Bus28_288 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(0), b(0)=>
      addend_9(0), d=>subtrahend_1n10ss1_288);
   subtrahend_select_1i91Bus28_289 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(1), b(0)=>
      addend_9(1), d=>subtrahend_1n10ss1_289);
   subtrahend_select_1i91Bus28_290 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(2), b(0)=>
      addend_9(2), d=>subtrahend_1n10ss1_290);
   subtrahend_select_1i91Bus28_291 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(3), b(0)=>
      addend_9(3), d=>subtrahend_1n10ss1_291);
   subtrahend_select_1i91Bus28_292 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(4), b(0)=>
      addend_9(4), d=>subtrahend_1n10ss1_292);
   subtrahend_select_1i91Bus28_293 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(5), b(0)=>
      addend_9(5), d=>subtrahend_1n10ss1_293);
   subtrahend_select_1i91Bus28_294 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(6), b(0)=>
      addend_9(6), d=>subtrahend_1n10ss1_294);
   subtrahend_select_1i91Bus28_295 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(7), b(0)=>
      addend_9(7), d=>subtrahend_1n10ss1_295);
   subtrahend_select_1i99Bus29_320 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(0), b(0)=>
      addend_10(0), d=>subtrahend_1n10ss1_320);
   subtrahend_select_1i99Bus29_321 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(1), b(0)=>
      addend_10(1), d=>subtrahend_1n10ss1_321);
   subtrahend_select_1i99Bus29_322 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(2), b(0)=>
      addend_10(2), d=>subtrahend_1n10ss1_322);
   subtrahend_select_1i99Bus29_323 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(3), b(0)=>
      addend_10(3), d=>subtrahend_1n10ss1_323);
   subtrahend_select_1i99Bus29_324 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(4), b(0)=>
      addend_10(4), d=>subtrahend_1n10ss1_324);
   subtrahend_select_1i99Bus29_325 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(5), b(0)=>
      addend_10(5), d=>subtrahend_1n10ss1_325);
   subtrahend_select_1i99Bus29_326 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(6), b(0)=>
      addend_10(6), d=>subtrahend_1n10ss1_326);
   subtrahend_select_1i99Bus29_327 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(7), b(0)=>
      addend_10(7), d=>subtrahend_1n10ss1_327);
   subtrahend_select_1i107Bus30_352 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(0), b(0)=>
      addend_11(0), d=>subtrahend_1n10ss1_352);
   subtrahend_select_1i107Bus30_353 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(1), b(0)=>
      addend_11(1), d=>subtrahend_1n10ss1_353);
   subtrahend_select_1i107Bus30_354 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(2), b(0)=>
      addend_11(2), d=>subtrahend_1n10ss1_354);
   subtrahend_select_1i107Bus30_355 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(3), b(0)=>
      addend_11(3), d=>subtrahend_1n10ss1_355);
   subtrahend_select_1i107Bus30_356 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(4), b(0)=>
      addend_11(4), d=>subtrahend_1n10ss1_356);
   subtrahend_select_1i107Bus30_357 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(5), b(0)=>
      addend_11(5), d=>subtrahend_1n10ss1_357);
   subtrahend_select_1i107Bus30_358 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(6), b(0)=>
      addend_11(6), d=>subtrahend_1n10ss1_358);
   subtrahend_select_1i107Bus30_359 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(7), b(0)=>
      addend_11(7), d=>subtrahend_1n10ss1_359);
   subtrahend_select_1i115Bus31_384 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(0), b(0)=>
      addend_12(0), d=>subtrahend_1n10ss1_384);
   subtrahend_select_1i115Bus31_385 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(1), b(0)=>
      addend_12(1), d=>subtrahend_1n10ss1_385);
   subtrahend_select_1i115Bus31_386 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(2), b(0)=>
      addend_12(2), d=>subtrahend_1n10ss1_386);
   subtrahend_select_1i115Bus31_387 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(3), b(0)=>
      addend_12(3), d=>subtrahend_1n10ss1_387);
   subtrahend_select_1i115Bus31_388 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(4), b(0)=>
      addend_12(4), d=>subtrahend_1n10ss1_388);
   subtrahend_select_1i115Bus31_389 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(5), b(0)=>
      addend_12(5), d=>subtrahend_1n10ss1_389);
   subtrahend_select_1i115Bus31_390 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(6), b(0)=>
      addend_12(6), d=>subtrahend_1n10ss1_390);
   subtrahend_select_1i115Bus31_391 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(7), b(0)=>
      addend_12(7), d=>subtrahend_1n10ss1_391);
   subtrahend_select_1i123Bus32_416 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(0), b(0)=>
      addend_13(0), d=>subtrahend_1n10ss1_416);
   subtrahend_select_1i123Bus32_417 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(1), b(0)=>
      addend_13(1), d=>subtrahend_1n10ss1_417);
   subtrahend_select_1i123Bus32_418 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(2), b(0)=>
      addend_13(2), d=>subtrahend_1n10ss1_418);
   subtrahend_select_1i123Bus32_419 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(3), b(0)=>
      addend_13(3), d=>subtrahend_1n10ss1_419);
   subtrahend_select_1i123Bus32_420 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(4), b(0)=>
      addend_13(4), d=>subtrahend_1n10ss1_420);
   subtrahend_select_1i123Bus32_421 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(5), b(0)=>
      addend_13(5), d=>subtrahend_1n10ss1_421);
   subtrahend_select_1i123Bus32_422 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(6), b(0)=>
      addend_13(6), d=>subtrahend_1n10ss1_422);
   subtrahend_select_1i123Bus32_423 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(7), b(0)=>
      addend_13(7), d=>subtrahend_1n10ss1_423);
   subtrahend_select_1i131Bus33_448 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(0), b(0)=>
      addend_14(0), d=>subtrahend_1n10ss1_448);
   subtrahend_select_1i131Bus33_449 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(1), b(0)=>
      addend_14(1), d=>subtrahend_1n10ss1_449);
   subtrahend_select_1i131Bus33_450 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(2), b(0)=>
      addend_14(2), d=>subtrahend_1n10ss1_450);
   subtrahend_select_1i131Bus33_451 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(3), b(0)=>
      addend_14(3), d=>subtrahend_1n10ss1_451);
   subtrahend_select_1i131Bus33_452 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(4), b(0)=>
      addend_14(4), d=>subtrahend_1n10ss1_452);
   subtrahend_select_1i131Bus33_453 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(5), b(0)=>
      addend_14(5), d=>subtrahend_1n10ss1_453);
   subtrahend_select_1i131Bus33_454 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(6), b(0)=>
      addend_14(6), d=>subtrahend_1n10ss1_454);
   subtrahend_select_1i131Bus33_455 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(7), b(0)=>
      addend_14(7), d=>subtrahend_1n10ss1_455);
   subtrahend_select_1i139Bus34_480 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(0), b(0)=>
      addend_15(0), d=>subtrahend_1n10ss1_480);
   subtrahend_select_1i139Bus34_481 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(1), b(0)=>
      addend_15(1), d=>subtrahend_1n10ss1_481);
   subtrahend_select_1i139Bus34_482 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(2), b(0)=>
      addend_15(2), d=>subtrahend_1n10ss1_482);
   subtrahend_select_1i139Bus34_483 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(3), b(0)=>
      addend_15(3), d=>subtrahend_1n10ss1_483);
   subtrahend_select_1i139Bus34_484 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(4), b(0)=>
      addend_15(4), d=>subtrahend_1n10ss1_484);
   subtrahend_select_1i139Bus34_485 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(5), b(0)=>
      addend_15(5), d=>subtrahend_1n10ss1_485);
   subtrahend_select_1i139Bus34_486 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(6), b(0)=>
      addend_15(6), d=>subtrahend_1n10ss1_486);
   subtrahend_select_1i139Bus34_487 : select_3_3 port map ( a(2)=>state(0), 
      a(1)=>state(1), a(0)=>state(2), b(2)=>GND, b(1)=>i_data(7), b(0)=>
      addend_15(7), d=>subtrahend_1n10ss1_487);
   rtlc1n13957 <= state(0) OR state(3) ;
   not_rtlc1n13957 <= NOT rtlc1n13957 ;
   not_rtlc1n12225 <= NOT rtlc1n12225 ;
   not_rtlc1n12189 <= NOT rtlc1n12189 ;
   not_rtlcs6 <= NOT rtlcs6 ;
   rtlc1n5510 <= not_rtlcs6 AND i_valid ;
   rtlc1n2916 <= rtlcs6 AND i_valid ;
   rtlc1n12165 <= state(1) AND not_rtlc1n2916 ;
   rtlc1n12178 <= state(3) AND not_i_valid ;
   rtlcn181 <= state(3) AND p_31 ;
   rtlcn183 <= state(1) AND not_rtlcs5 ;
   rtlc_201_or_162 : or_4u_4u port map ( a(3)=>state(3), a(2)=>state(4), 
      a(1)=>rtlc1n12165, a(0)=>rtlcn183, d=>rtlc1n12189);
   minuend_select_1i259Bus18_487 : select_3_3 port map ( a(2)=>
      not_rtlcn10634, a(1)=>state(2), a(0)=>rtlcn9171, b(2)=>i_data(7), b(1)
      =>subtrahend_15(7), b(0)=>GND, d=>minuend_1n10ss1_487);
   minuend_select_1i260Bus17_455 : select_3_3 port map ( a(2)=>
      not_rtlcn10635, a(1)=>state(2), a(0)=>rtlcn9178, b(2)=>i_data(7), b(1)
      =>subtrahend_14(7), b(0)=>GND, d=>minuend_1n10ss1_455);
   minuend_select_1i261Bus16_423 : select_3_3 port map ( a(2)=>
      not_rtlcn10649, a(1)=>state(2), a(0)=>rtlcn9185, b(2)=>i_data(7), b(1)
      =>subtrahend_13(7), b(0)=>GND, d=>minuend_1n10ss1_423);
   minuend_select_1i262Bus15_391 : select_3_3 port map ( a(2)=>
      not_rtlcn10648, a(1)=>state(2), a(0)=>rtlcn9192, b(2)=>i_data(7), b(1)
      =>subtrahend_12(7), b(0)=>GND, d=>minuend_1n10ss1_391);
   minuend_select_1i263Bus14_359 : select_3_3 port map ( a(2)=>
      not_rtlcn10647, a(1)=>state(2), a(0)=>rtlcn9199, b(2)=>i_data(7), b(1)
      =>subtrahend_11(7), b(0)=>GND, d=>minuend_1n10ss1_359);
   minuend_select_1i264Bus13_327 : select_3_3 port map ( a(2)=>
      not_rtlcn10646, a(1)=>state(2), a(0)=>rtlcn9206, b(2)=>i_data(7), b(1)
      =>subtrahend_10(7), b(0)=>GND, d=>minuend_1n10ss1_327);
   minuend_select_1i265Bus12_295 : select_3_3 port map ( a(2)=>
      not_rtlcn10645, a(1)=>state(2), a(0)=>rtlcn9213, b(2)=>i_data(7), b(1)
      =>subtrahend_9(7), b(0)=>GND, d=>minuend_1n10ss1_295);
   minuend_select_1i266Bus11_263 : select_3_3 port map ( a(2)=>
      not_rtlcn10644, a(1)=>state(2), a(0)=>rtlcn9220, b(2)=>i_data(7), b(1)
      =>subtrahend_8(7), b(0)=>GND, d=>minuend_1n10ss1_263);
   minuend_select_1i267Bus10_231 : select_3_3 port map ( a(2)=>
      not_rtlcn10643, a(1)=>state(2), a(0)=>rtlcn9227, b(2)=>i_data(7), b(1)
      =>subtrahend_7(7), b(0)=>GND, d=>minuend_1n10ss1_231);
   minuend_select_1i268Bus9_199 : select_3_3 port map ( a(2)=>not_rtlcn10642, 
      a(1)=>state(2), a(0)=>rtlcn9234, b(2)=>i_data(7), b(1)=>
      subtrahend_6(7), b(0)=>GND, d=>minuend_1n10ss1_199);
   minuend_select_1i269Bus8_167 : select_3_3 port map ( a(2)=>not_rtlcn10641, 
      a(1)=>state(2), a(0)=>rtlcn9241, b(2)=>i_data(7), b(1)=>
      subtrahend_5(7), b(0)=>GND, d=>minuend_1n10ss1_167);
   minuend_select_1i270Bus7_135 : select_3_3 port map ( a(2)=>not_rtlcn10640, 
      a(1)=>state(2), a(0)=>rtlcn9248, b(2)=>i_data(7), b(1)=>
      subtrahend_4(7), b(0)=>GND, d=>minuend_1n10ss1_135);
   minuend_select_1i271Bus6_103 : select_3_3 port map ( a(2)=>not_rtlcn10639, 
      a(1)=>state(2), a(0)=>rtlcn9255, b(2)=>i_data(7), b(1)=>
      subtrahend_3(7), b(0)=>GND, d=>minuend_1n10ss1_103);
   minuend_select_1i272Bus5_71 : select_3_3 port map ( a(2)=>not_rtlcn10638, 
      a(1)=>state(2), a(0)=>rtlcn9262, b(2)=>i_data(7), b(1)=>
      subtrahend_2(7), b(0)=>GND, d=>minuend_1n10ss1_71);
   minuend_select_1i273Bus4_39 : select_3_3 port map ( a(2)=>not_rtlcn10637, 
      a(1)=>state(2), a(0)=>rtlcn9269, b(2)=>i_data(7), b(1)=>
      subtrahend_1(7), b(0)=>GND, d=>minuend_1n10ss1_39);
   minuend_select_1i274Bus3_7 : select_3_3 port map ( a(2)=>not_rtlcn10636, 
      a(1)=>state(2), a(0)=>rtlcn9276, b(2)=>i_data(7), b(1)=>
      subtrahend_0(7), b(0)=>GND, d=>minuend_1n10ss1_7);
   minuend_select_1i259Bus18_486 : select_3_3 port map ( a(2)=>
      not_rtlcn10634, a(1)=>state(2), a(0)=>rtlcn9171, b(2)=>i_data(6), b(1)
      =>subtrahend_15(6), b(0)=>GND, d=>minuend_1n10ss1_486);
   minuend_select_1i260Bus17_454 : select_3_3 port map ( a(2)=>
      not_rtlcn10635, a(1)=>state(2), a(0)=>rtlcn9178, b(2)=>i_data(6), b(1)
      =>subtrahend_14(6), b(0)=>GND, d=>minuend_1n10ss1_454);
   minuend_select_1i261Bus16_422 : select_3_3 port map ( a(2)=>
      not_rtlcn10649, a(1)=>state(2), a(0)=>rtlcn9185, b(2)=>i_data(6), b(1)
      =>subtrahend_13(6), b(0)=>GND, d=>minuend_1n10ss1_422);
   minuend_select_1i262Bus15_390 : select_3_3 port map ( a(2)=>
      not_rtlcn10648, a(1)=>state(2), a(0)=>rtlcn9192, b(2)=>i_data(6), b(1)
      =>subtrahend_12(6), b(0)=>GND, d=>minuend_1n10ss1_390);
   minuend_select_1i263Bus14_358 : select_3_3 port map ( a(2)=>
      not_rtlcn10647, a(1)=>state(2), a(0)=>rtlcn9199, b(2)=>i_data(6), b(1)
      =>subtrahend_11(6), b(0)=>GND, d=>minuend_1n10ss1_358);
   minuend_select_1i264Bus13_326 : select_3_3 port map ( a(2)=>
      not_rtlcn10646, a(1)=>state(2), a(0)=>rtlcn9206, b(2)=>i_data(6), b(1)
      =>subtrahend_10(6), b(0)=>GND, d=>minuend_1n10ss1_326);
   minuend_select_1i265Bus12_294 : select_3_3 port map ( a(2)=>
      not_rtlcn10645, a(1)=>state(2), a(0)=>rtlcn9213, b(2)=>i_data(6), b(1)
      =>subtrahend_9(6), b(0)=>GND, d=>minuend_1n10ss1_294);
   minuend_select_1i266Bus11_262 : select_3_3 port map ( a(2)=>
      not_rtlcn10644, a(1)=>state(2), a(0)=>rtlcn9220, b(2)=>i_data(6), b(1)
      =>subtrahend_8(6), b(0)=>GND, d=>minuend_1n10ss1_262);
   minuend_select_1i267Bus10_230 : select_3_3 port map ( a(2)=>
      not_rtlcn10643, a(1)=>state(2), a(0)=>rtlcn9227, b(2)=>i_data(6), b(1)
      =>subtrahend_7(6), b(0)=>GND, d=>minuend_1n10ss1_230);
   minuend_select_1i268Bus9_198 : select_3_3 port map ( a(2)=>not_rtlcn10642, 
      a(1)=>state(2), a(0)=>rtlcn9234, b(2)=>i_data(6), b(1)=>
      subtrahend_6(6), b(0)=>GND, d=>minuend_1n10ss1_198);
   minuend_select_1i269Bus8_166 : select_3_3 port map ( a(2)=>not_rtlcn10641, 
      a(1)=>state(2), a(0)=>rtlcn9241, b(2)=>i_data(6), b(1)=>
      subtrahend_5(6), b(0)=>GND, d=>minuend_1n10ss1_166);
   minuend_select_1i270Bus7_134 : select_3_3 port map ( a(2)=>not_rtlcn10640, 
      a(1)=>state(2), a(0)=>rtlcn9248, b(2)=>i_data(6), b(1)=>
      subtrahend_4(6), b(0)=>GND, d=>minuend_1n10ss1_134);
   minuend_select_1i271Bus6_102 : select_3_3 port map ( a(2)=>not_rtlcn10639, 
      a(1)=>state(2), a(0)=>rtlcn9255, b(2)=>i_data(6), b(1)=>
      subtrahend_3(6), b(0)=>GND, d=>minuend_1n10ss1_102);
   minuend_select_1i272Bus5_70 : select_3_3 port map ( a(2)=>not_rtlcn10638, 
      a(1)=>state(2), a(0)=>rtlcn9262, b(2)=>i_data(6), b(1)=>
      subtrahend_2(6), b(0)=>GND, d=>minuend_1n10ss1_70);
   minuend_select_1i273Bus4_38 : select_3_3 port map ( a(2)=>not_rtlcn10637, 
      a(1)=>state(2), a(0)=>rtlcn9269, b(2)=>i_data(6), b(1)=>
      subtrahend_1(6), b(0)=>GND, d=>minuend_1n10ss1_38);
   minuend_select_1i274Bus3_6 : select_3_3 port map ( a(2)=>not_rtlcn10636, 
      a(1)=>state(2), a(0)=>rtlcn9276, b(2)=>i_data(6), b(1)=>
      subtrahend_0(6), b(0)=>GND, d=>minuend_1n10ss1_6);
   minuend_select_1i259Bus18_485 : select_3_3 port map ( a(2)=>
      not_rtlcn10634, a(1)=>state(2), a(0)=>rtlcn9171, b(2)=>i_data(5), b(1)
      =>subtrahend_15(5), b(0)=>GND, d=>minuend_1n10ss1_485);
   minuend_select_1i260Bus17_453 : select_3_3 port map ( a(2)=>
      not_rtlcn10635, a(1)=>state(2), a(0)=>rtlcn9178, b(2)=>i_data(5), b(1)
      =>subtrahend_14(5), b(0)=>GND, d=>minuend_1n10ss1_453);
   minuend_select_1i261Bus16_421 : select_3_3 port map ( a(2)=>
      not_rtlcn10649, a(1)=>state(2), a(0)=>rtlcn9185, b(2)=>i_data(5), b(1)
      =>subtrahend_13(5), b(0)=>GND, d=>minuend_1n10ss1_421);
   minuend_select_1i262Bus15_389 : select_3_3 port map ( a(2)=>
      not_rtlcn10648, a(1)=>state(2), a(0)=>rtlcn9192, b(2)=>i_data(5), b(1)
      =>subtrahend_12(5), b(0)=>GND, d=>minuend_1n10ss1_389);
   minuend_select_1i263Bus14_357 : select_3_3 port map ( a(2)=>
      not_rtlcn10647, a(1)=>state(2), a(0)=>rtlcn9199, b(2)=>i_data(5), b(1)
      =>subtrahend_11(5), b(0)=>GND, d=>minuend_1n10ss1_357);
   minuend_select_1i264Bus13_325 : select_3_3 port map ( a(2)=>
      not_rtlcn10646, a(1)=>state(2), a(0)=>rtlcn9206, b(2)=>i_data(5), b(1)
      =>subtrahend_10(5), b(0)=>GND, d=>minuend_1n10ss1_325);
   minuend_select_1i265Bus12_293 : select_3_3 port map ( a(2)=>
      not_rtlcn10645, a(1)=>state(2), a(0)=>rtlcn9213, b(2)=>i_data(5), b(1)
      =>subtrahend_9(5), b(0)=>GND, d=>minuend_1n10ss1_293);
   minuend_select_1i266Bus11_261 : select_3_3 port map ( a(2)=>
      not_rtlcn10644, a(1)=>state(2), a(0)=>rtlcn9220, b(2)=>i_data(5), b(1)
      =>subtrahend_8(5), b(0)=>GND, d=>minuend_1n10ss1_261);
   minuend_select_1i267Bus10_229 : select_3_3 port map ( a(2)=>
      not_rtlcn10643, a(1)=>state(2), a(0)=>rtlcn9227, b(2)=>i_data(5), b(1)
      =>subtrahend_7(5), b(0)=>GND, d=>minuend_1n10ss1_229);
   minuend_select_1i268Bus9_197 : select_3_3 port map ( a(2)=>not_rtlcn10642, 
      a(1)=>state(2), a(0)=>rtlcn9234, b(2)=>i_data(5), b(1)=>
      subtrahend_6(5), b(0)=>GND, d=>minuend_1n10ss1_197);
   minuend_select_1i269Bus8_165 : select_3_3 port map ( a(2)=>not_rtlcn10641, 
      a(1)=>state(2), a(0)=>rtlcn9241, b(2)=>i_data(5), b(1)=>
      subtrahend_5(5), b(0)=>GND, d=>minuend_1n10ss1_165);
   minuend_select_1i270Bus7_133 : select_3_3 port map ( a(2)=>not_rtlcn10640, 
      a(1)=>state(2), a(0)=>rtlcn9248, b(2)=>i_data(5), b(1)=>
      subtrahend_4(5), b(0)=>GND, d=>minuend_1n10ss1_133);
   minuend_select_1i271Bus6_101 : select_3_3 port map ( a(2)=>not_rtlcn10639, 
      a(1)=>state(2), a(0)=>rtlcn9255, b(2)=>i_data(5), b(1)=>
      subtrahend_3(5), b(0)=>GND, d=>minuend_1n10ss1_101);
   minuend_select_1i272Bus5_69 : select_3_3 port map ( a(2)=>not_rtlcn10638, 
      a(1)=>state(2), a(0)=>rtlcn9262, b(2)=>i_data(5), b(1)=>
      subtrahend_2(5), b(0)=>GND, d=>minuend_1n10ss1_69);
   minuend_select_1i273Bus4_37 : select_3_3 port map ( a(2)=>not_rtlcn10637, 
      a(1)=>state(2), a(0)=>rtlcn9269, b(2)=>i_data(5), b(1)=>
      subtrahend_1(5), b(0)=>GND, d=>minuend_1n10ss1_37);
   minuend_select_1i274Bus3_5 : select_3_3 port map ( a(2)=>not_rtlcn10636, 
      a(1)=>state(2), a(0)=>rtlcn9276, b(2)=>i_data(5), b(1)=>
      subtrahend_0(5), b(0)=>GND, d=>minuend_1n10ss1_5);
   minuend_select_1i259Bus18_484 : select_3_3 port map ( a(2)=>
      not_rtlcn10634, a(1)=>state(2), a(0)=>rtlcn9171, b(2)=>i_data(4), b(1)
      =>subtrahend_15(4), b(0)=>GND, d=>minuend_1n10ss1_484);
   minuend_select_1i260Bus17_452 : select_3_3 port map ( a(2)=>
      not_rtlcn10635, a(1)=>state(2), a(0)=>rtlcn9178, b(2)=>i_data(4), b(1)
      =>subtrahend_14(4), b(0)=>GND, d=>minuend_1n10ss1_452);
   minuend_select_1i261Bus16_420 : select_3_3 port map ( a(2)=>
      not_rtlcn10649, a(1)=>state(2), a(0)=>rtlcn9185, b(2)=>i_data(4), b(1)
      =>subtrahend_13(4), b(0)=>GND, d=>minuend_1n10ss1_420);
   minuend_select_1i262Bus15_388 : select_3_3 port map ( a(2)=>
      not_rtlcn10648, a(1)=>state(2), a(0)=>rtlcn9192, b(2)=>i_data(4), b(1)
      =>subtrahend_12(4), b(0)=>GND, d=>minuend_1n10ss1_388);
   minuend_select_1i263Bus14_356 : select_3_3 port map ( a(2)=>
      not_rtlcn10647, a(1)=>state(2), a(0)=>rtlcn9199, b(2)=>i_data(4), b(1)
      =>subtrahend_11(4), b(0)=>GND, d=>minuend_1n10ss1_356);
   minuend_select_1i264Bus13_324 : select_3_3 port map ( a(2)=>
      not_rtlcn10646, a(1)=>state(2), a(0)=>rtlcn9206, b(2)=>i_data(4), b(1)
      =>subtrahend_10(4), b(0)=>GND, d=>minuend_1n10ss1_324);
   minuend_select_1i265Bus12_292 : select_3_3 port map ( a(2)=>
      not_rtlcn10645, a(1)=>state(2), a(0)=>rtlcn9213, b(2)=>i_data(4), b(1)
      =>subtrahend_9(4), b(0)=>GND, d=>minuend_1n10ss1_292);
   minuend_select_1i266Bus11_260 : select_3_3 port map ( a(2)=>
      not_rtlcn10644, a(1)=>state(2), a(0)=>rtlcn9220, b(2)=>i_data(4), b(1)
      =>subtrahend_8(4), b(0)=>GND, d=>minuend_1n10ss1_260);
   minuend_select_1i267Bus10_228 : select_3_3 port map ( a(2)=>
      not_rtlcn10643, a(1)=>state(2), a(0)=>rtlcn9227, b(2)=>i_data(4), b(1)
      =>subtrahend_7(4), b(0)=>GND, d=>minuend_1n10ss1_228);
   minuend_select_1i268Bus9_196 : select_3_3 port map ( a(2)=>not_rtlcn10642, 
      a(1)=>state(2), a(0)=>rtlcn9234, b(2)=>i_data(4), b(1)=>
      subtrahend_6(4), b(0)=>GND, d=>minuend_1n10ss1_196);
   minuend_select_1i269Bus8_164 : select_3_3 port map ( a(2)=>not_rtlcn10641, 
      a(1)=>state(2), a(0)=>rtlcn9241, b(2)=>i_data(4), b(1)=>
      subtrahend_5(4), b(0)=>GND, d=>minuend_1n10ss1_164);
   minuend_select_1i270Bus7_132 : select_3_3 port map ( a(2)=>not_rtlcn10640, 
      a(1)=>state(2), a(0)=>rtlcn9248, b(2)=>i_data(4), b(1)=>
      subtrahend_4(4), b(0)=>GND, d=>minuend_1n10ss1_132);
   minuend_select_1i271Bus6_100 : select_3_3 port map ( a(2)=>not_rtlcn10639, 
      a(1)=>state(2), a(0)=>rtlcn9255, b(2)=>i_data(4), b(1)=>
      subtrahend_3(4), b(0)=>GND, d=>minuend_1n10ss1_100);
   minuend_select_1i272Bus5_68 : select_3_3 port map ( a(2)=>not_rtlcn10638, 
      a(1)=>state(2), a(0)=>rtlcn9262, b(2)=>i_data(4), b(1)=>
      subtrahend_2(4), b(0)=>GND, d=>minuend_1n10ss1_68);
   minuend_select_1i273Bus4_36 : select_3_3 port map ( a(2)=>not_rtlcn10637, 
      a(1)=>state(2), a(0)=>rtlcn9269, b(2)=>i_data(4), b(1)=>
      subtrahend_1(4), b(0)=>GND, d=>minuend_1n10ss1_36);
   minuend_select_1i274Bus3_4 : select_3_3 port map ( a(2)=>not_rtlcn10636, 
      a(1)=>state(2), a(0)=>rtlcn9276, b(2)=>i_data(4), b(1)=>
      subtrahend_0(4), b(0)=>GND, d=>minuend_1n10ss1_4);
   minuend_select_1i259Bus18_483 : select_3_3 port map ( a(2)=>
      not_rtlcn10634, a(1)=>state(2), a(0)=>rtlcn9171, b(2)=>i_data(3), b(1)
      =>subtrahend_15(3), b(0)=>GND, d=>minuend_1n10ss1_483);
   minuend_select_1i260Bus17_451 : select_3_3 port map ( a(2)=>
      not_rtlcn10635, a(1)=>state(2), a(0)=>rtlcn9178, b(2)=>i_data(3), b(1)
      =>subtrahend_14(3), b(0)=>GND, d=>minuend_1n10ss1_451);
   minuend_select_1i261Bus16_419 : select_3_3 port map ( a(2)=>
      not_rtlcn10649, a(1)=>state(2), a(0)=>rtlcn9185, b(2)=>i_data(3), b(1)
      =>subtrahend_13(3), b(0)=>GND, d=>minuend_1n10ss1_419);
   minuend_select_1i262Bus15_387 : select_3_3 port map ( a(2)=>
      not_rtlcn10648, a(1)=>state(2), a(0)=>rtlcn9192, b(2)=>i_data(3), b(1)
      =>subtrahend_12(3), b(0)=>GND, d=>minuend_1n10ss1_387);
   minuend_select_1i263Bus14_355 : select_3_3 port map ( a(2)=>
      not_rtlcn10647, a(1)=>state(2), a(0)=>rtlcn9199, b(2)=>i_data(3), b(1)
      =>subtrahend_11(3), b(0)=>GND, d=>minuend_1n10ss1_355);
   minuend_select_1i264Bus13_323 : select_3_3 port map ( a(2)=>
      not_rtlcn10646, a(1)=>state(2), a(0)=>rtlcn9206, b(2)=>i_data(3), b(1)
      =>subtrahend_10(3), b(0)=>GND, d=>minuend_1n10ss1_323);
   minuend_select_1i265Bus12_291 : select_3_3 port map ( a(2)=>
      not_rtlcn10645, a(1)=>state(2), a(0)=>rtlcn9213, b(2)=>i_data(3), b(1)
      =>subtrahend_9(3), b(0)=>GND, d=>minuend_1n10ss1_291);
   minuend_select_1i266Bus11_259 : select_3_3 port map ( a(2)=>
      not_rtlcn10644, a(1)=>state(2), a(0)=>rtlcn9220, b(2)=>i_data(3), b(1)
      =>subtrahend_8(3), b(0)=>GND, d=>minuend_1n10ss1_259);
   minuend_select_1i267Bus10_227 : select_3_3 port map ( a(2)=>
      not_rtlcn10643, a(1)=>state(2), a(0)=>rtlcn9227, b(2)=>i_data(3), b(1)
      =>subtrahend_7(3), b(0)=>GND, d=>minuend_1n10ss1_227);
   minuend_select_1i268Bus9_195 : select_3_3 port map ( a(2)=>not_rtlcn10642, 
      a(1)=>state(2), a(0)=>rtlcn9234, b(2)=>i_data(3), b(1)=>
      subtrahend_6(3), b(0)=>GND, d=>minuend_1n10ss1_195);
   minuend_select_1i269Bus8_163 : select_3_3 port map ( a(2)=>not_rtlcn10641, 
      a(1)=>state(2), a(0)=>rtlcn9241, b(2)=>i_data(3), b(1)=>
      subtrahend_5(3), b(0)=>GND, d=>minuend_1n10ss1_163);
   minuend_select_1i270Bus7_131 : select_3_3 port map ( a(2)=>not_rtlcn10640, 
      a(1)=>state(2), a(0)=>rtlcn9248, b(2)=>i_data(3), b(1)=>
      subtrahend_4(3), b(0)=>GND, d=>minuend_1n10ss1_131);
   minuend_select_1i271Bus6_99 : select_3_3 port map ( a(2)=>not_rtlcn10639, 
      a(1)=>state(2), a(0)=>rtlcn9255, b(2)=>i_data(3), b(1)=>
      subtrahend_3(3), b(0)=>GND, d=>minuend_1n10ss1_99);
   minuend_select_1i272Bus5_67 : select_3_3 port map ( a(2)=>not_rtlcn10638, 
      a(1)=>state(2), a(0)=>rtlcn9262, b(2)=>i_data(3), b(1)=>
      subtrahend_2(3), b(0)=>GND, d=>minuend_1n10ss1_67);
   minuend_select_1i273Bus4_35 : select_3_3 port map ( a(2)=>not_rtlcn10637, 
      a(1)=>state(2), a(0)=>rtlcn9269, b(2)=>i_data(3), b(1)=>
      subtrahend_1(3), b(0)=>GND, d=>minuend_1n10ss1_35);
   minuend_select_1i274Bus3_3 : select_3_3 port map ( a(2)=>not_rtlcn10636, 
      a(1)=>state(2), a(0)=>rtlcn9276, b(2)=>i_data(3), b(1)=>
      subtrahend_0(3), b(0)=>GND, d=>minuend_1n10ss1_3);
   minuend_select_1i259Bus18_482 : select_3_3 port map ( a(2)=>
      not_rtlcn10634, a(1)=>state(2), a(0)=>rtlcn9171, b(2)=>i_data(2), b(1)
      =>subtrahend_15(2), b(0)=>GND, d=>minuend_1n10ss1_482);
   minuend_select_1i260Bus17_450 : select_3_3 port map ( a(2)=>
      not_rtlcn10635, a(1)=>state(2), a(0)=>rtlcn9178, b(2)=>i_data(2), b(1)
      =>subtrahend_14(2), b(0)=>GND, d=>minuend_1n10ss1_450);
   minuend_select_1i261Bus16_418 : select_3_3 port map ( a(2)=>
      not_rtlcn10649, a(1)=>state(2), a(0)=>rtlcn9185, b(2)=>i_data(2), b(1)
      =>subtrahend_13(2), b(0)=>GND, d=>minuend_1n10ss1_418);
   minuend_select_1i262Bus15_386 : select_3_3 port map ( a(2)=>
      not_rtlcn10648, a(1)=>state(2), a(0)=>rtlcn9192, b(2)=>i_data(2), b(1)
      =>subtrahend_12(2), b(0)=>GND, d=>minuend_1n10ss1_386);
   minuend_select_1i263Bus14_354 : select_3_3 port map ( a(2)=>
      not_rtlcn10647, a(1)=>state(2), a(0)=>rtlcn9199, b(2)=>i_data(2), b(1)
      =>subtrahend_11(2), b(0)=>GND, d=>minuend_1n10ss1_354);
   minuend_select_1i264Bus13_322 : select_3_3 port map ( a(2)=>
      not_rtlcn10646, a(1)=>state(2), a(0)=>rtlcn9206, b(2)=>i_data(2), b(1)
      =>subtrahend_10(2), b(0)=>GND, d=>minuend_1n10ss1_322);
   minuend_select_1i265Bus12_290 : select_3_3 port map ( a(2)=>
      not_rtlcn10645, a(1)=>state(2), a(0)=>rtlcn9213, b(2)=>i_data(2), b(1)
      =>subtrahend_9(2), b(0)=>GND, d=>minuend_1n10ss1_290);
   minuend_select_1i266Bus11_258 : select_3_3 port map ( a(2)=>
      not_rtlcn10644, a(1)=>state(2), a(0)=>rtlcn9220, b(2)=>i_data(2), b(1)
      =>subtrahend_8(2), b(0)=>GND, d=>minuend_1n10ss1_258);
   minuend_select_1i267Bus10_226 : select_3_3 port map ( a(2)=>
      not_rtlcn10643, a(1)=>state(2), a(0)=>rtlcn9227, b(2)=>i_data(2), b(1)
      =>subtrahend_7(2), b(0)=>GND, d=>minuend_1n10ss1_226);
   minuend_select_1i268Bus9_194 : select_3_3 port map ( a(2)=>not_rtlcn10642, 
      a(1)=>state(2), a(0)=>rtlcn9234, b(2)=>i_data(2), b(1)=>
      subtrahend_6(2), b(0)=>GND, d=>minuend_1n10ss1_194);
   minuend_select_1i269Bus8_162 : select_3_3 port map ( a(2)=>not_rtlcn10641, 
      a(1)=>state(2), a(0)=>rtlcn9241, b(2)=>i_data(2), b(1)=>
      subtrahend_5(2), b(0)=>GND, d=>minuend_1n10ss1_162);
   minuend_select_1i270Bus7_130 : select_3_3 port map ( a(2)=>not_rtlcn10640, 
      a(1)=>state(2), a(0)=>rtlcn9248, b(2)=>i_data(2), b(1)=>
      subtrahend_4(2), b(0)=>GND, d=>minuend_1n10ss1_130);
   minuend_select_1i271Bus6_98 : select_3_3 port map ( a(2)=>not_rtlcn10639, 
      a(1)=>state(2), a(0)=>rtlcn9255, b(2)=>i_data(2), b(1)=>
      subtrahend_3(2), b(0)=>GND, d=>minuend_1n10ss1_98);
   minuend_select_1i272Bus5_66 : select_3_3 port map ( a(2)=>not_rtlcn10638, 
      a(1)=>state(2), a(0)=>rtlcn9262, b(2)=>i_data(2), b(1)=>
      subtrahend_2(2), b(0)=>GND, d=>minuend_1n10ss1_66);
   minuend_select_1i273Bus4_34 : select_3_3 port map ( a(2)=>not_rtlcn10637, 
      a(1)=>state(2), a(0)=>rtlcn9269, b(2)=>i_data(2), b(1)=>
      subtrahend_1(2), b(0)=>GND, d=>minuend_1n10ss1_34);
   minuend_select_1i274Bus3_2 : select_3_3 port map ( a(2)=>not_rtlcn10636, 
      a(1)=>state(2), a(0)=>rtlcn9276, b(2)=>i_data(2), b(1)=>
      subtrahend_0(2), b(0)=>GND, d=>minuend_1n10ss1_2);
   minuend_select_1i259Bus18_481 : select_3_3 port map ( a(2)=>
      not_rtlcn10634, a(1)=>state(2), a(0)=>rtlcn9171, b(2)=>i_data(1), b(1)
      =>subtrahend_15(1), b(0)=>GND, d=>minuend_1n10ss1_481);
   minuend_select_1i260Bus17_449 : select_3_3 port map ( a(2)=>
      not_rtlcn10635, a(1)=>state(2), a(0)=>rtlcn9178, b(2)=>i_data(1), b(1)
      =>subtrahend_14(1), b(0)=>GND, d=>minuend_1n10ss1_449);
   minuend_select_1i261Bus16_417 : select_3_3 port map ( a(2)=>
      not_rtlcn10649, a(1)=>state(2), a(0)=>rtlcn9185, b(2)=>i_data(1), b(1)
      =>subtrahend_13(1), b(0)=>GND, d=>minuend_1n10ss1_417);
   minuend_select_1i262Bus15_385 : select_3_3 port map ( a(2)=>
      not_rtlcn10648, a(1)=>state(2), a(0)=>rtlcn9192, b(2)=>i_data(1), b(1)
      =>subtrahend_12(1), b(0)=>GND, d=>minuend_1n10ss1_385);
   minuend_select_1i263Bus14_353 : select_3_3 port map ( a(2)=>
      not_rtlcn10647, a(1)=>state(2), a(0)=>rtlcn9199, b(2)=>i_data(1), b(1)
      =>subtrahend_11(1), b(0)=>GND, d=>minuend_1n10ss1_353);
   minuend_select_1i264Bus13_321 : select_3_3 port map ( a(2)=>
      not_rtlcn10646, a(1)=>state(2), a(0)=>rtlcn9206, b(2)=>i_data(1), b(1)
      =>subtrahend_10(1), b(0)=>GND, d=>minuend_1n10ss1_321);
   minuend_select_1i265Bus12_289 : select_3_3 port map ( a(2)=>
      not_rtlcn10645, a(1)=>state(2), a(0)=>rtlcn9213, b(2)=>i_data(1), b(1)
      =>subtrahend_9(1), b(0)=>GND, d=>minuend_1n10ss1_289);
   minuend_select_1i266Bus11_257 : select_3_3 port map ( a(2)=>
      not_rtlcn10644, a(1)=>state(2), a(0)=>rtlcn9220, b(2)=>i_data(1), b(1)
      =>subtrahend_8(1), b(0)=>GND, d=>minuend_1n10ss1_257);
   minuend_select_1i267Bus10_225 : select_3_3 port map ( a(2)=>
      not_rtlcn10643, a(1)=>state(2), a(0)=>rtlcn9227, b(2)=>i_data(1), b(1)
      =>subtrahend_7(1), b(0)=>GND, d=>minuend_1n10ss1_225);
   minuend_select_1i268Bus9_193 : select_3_3 port map ( a(2)=>not_rtlcn10642, 
      a(1)=>state(2), a(0)=>rtlcn9234, b(2)=>i_data(1), b(1)=>
      subtrahend_6(1), b(0)=>GND, d=>minuend_1n10ss1_193);
   minuend_select_1i269Bus8_161 : select_3_3 port map ( a(2)=>not_rtlcn10641, 
      a(1)=>state(2), a(0)=>rtlcn9241, b(2)=>i_data(1), b(1)=>
      subtrahend_5(1), b(0)=>GND, d=>minuend_1n10ss1_161);
   minuend_select_1i270Bus7_129 : select_3_3 port map ( a(2)=>not_rtlcn10640, 
      a(1)=>state(2), a(0)=>rtlcn9248, b(2)=>i_data(1), b(1)=>
      subtrahend_4(1), b(0)=>GND, d=>minuend_1n10ss1_129);
   minuend_select_1i271Bus6_97 : select_3_3 port map ( a(2)=>not_rtlcn10639, 
      a(1)=>state(2), a(0)=>rtlcn9255, b(2)=>i_data(1), b(1)=>
      subtrahend_3(1), b(0)=>GND, d=>minuend_1n10ss1_97);
   minuend_select_1i272Bus5_65 : select_3_3 port map ( a(2)=>not_rtlcn10638, 
      a(1)=>state(2), a(0)=>rtlcn9262, b(2)=>i_data(1), b(1)=>
      subtrahend_2(1), b(0)=>GND, d=>minuend_1n10ss1_65);
   minuend_select_1i273Bus4_33 : select_3_3 port map ( a(2)=>not_rtlcn10637, 
      a(1)=>state(2), a(0)=>rtlcn9269, b(2)=>i_data(1), b(1)=>
      subtrahend_1(1), b(0)=>GND, d=>minuend_1n10ss1_33);
   minuend_select_1i274Bus3_1 : select_3_3 port map ( a(2)=>not_rtlcn10636, 
      a(1)=>state(2), a(0)=>rtlcn9276, b(2)=>i_data(1), b(1)=>
      subtrahend_0(1), b(0)=>GND, d=>minuend_1n10ss1_1);
   minuend_select_1i259Bus18_480 : select_3_3 port map ( a(2)=>
      not_rtlcn10634, a(1)=>state(2), a(0)=>rtlcn9171, b(2)=>i_data(0), b(1)
      =>subtrahend_15(0), b(0)=>GND, d=>minuend_1n10ss1_480);
   minuend_select_1i260Bus17_448 : select_3_3 port map ( a(2)=>
      not_rtlcn10635, a(1)=>state(2), a(0)=>rtlcn9178, b(2)=>i_data(0), b(1)
      =>subtrahend_14(0), b(0)=>GND, d=>minuend_1n10ss1_448);
   minuend_select_1i261Bus16_416 : select_3_3 port map ( a(2)=>
      not_rtlcn10649, a(1)=>state(2), a(0)=>rtlcn9185, b(2)=>i_data(0), b(1)
      =>subtrahend_13(0), b(0)=>GND, d=>minuend_1n10ss1_416);
   minuend_select_1i262Bus15_384 : select_3_3 port map ( a(2)=>
      not_rtlcn10648, a(1)=>state(2), a(0)=>rtlcn9192, b(2)=>i_data(0), b(1)
      =>subtrahend_12(0), b(0)=>GND, d=>minuend_1n10ss1_384);
   minuend_select_1i263Bus14_352 : select_3_3 port map ( a(2)=>
      not_rtlcn10647, a(1)=>state(2), a(0)=>rtlcn9199, b(2)=>i_data(0), b(1)
      =>subtrahend_11(0), b(0)=>GND, d=>minuend_1n10ss1_352);
   minuend_select_1i264Bus13_320 : select_3_3 port map ( a(2)=>
      not_rtlcn10646, a(1)=>state(2), a(0)=>rtlcn9206, b(2)=>i_data(0), b(1)
      =>subtrahend_10(0), b(0)=>GND, d=>minuend_1n10ss1_320);
   minuend_select_1i265Bus12_288 : select_3_3 port map ( a(2)=>
      not_rtlcn10645, a(1)=>state(2), a(0)=>rtlcn9213, b(2)=>i_data(0), b(1)
      =>subtrahend_9(0), b(0)=>GND, d=>minuend_1n10ss1_288);
   minuend_select_1i266Bus11_256 : select_3_3 port map ( a(2)=>
      not_rtlcn10644, a(1)=>state(2), a(0)=>rtlcn9220, b(2)=>i_data(0), b(1)
      =>subtrahend_8(0), b(0)=>GND, d=>minuend_1n10ss1_256);
   minuend_select_1i267Bus10_224 : select_3_3 port map ( a(2)=>
      not_rtlcn10643, a(1)=>state(2), a(0)=>rtlcn9227, b(2)=>i_data(0), b(1)
      =>subtrahend_7(0), b(0)=>GND, d=>minuend_1n10ss1_224);
   minuend_select_1i268Bus9_192 : select_3_3 port map ( a(2)=>not_rtlcn10642, 
      a(1)=>state(2), a(0)=>rtlcn9234, b(2)=>i_data(0), b(1)=>
      subtrahend_6(0), b(0)=>GND, d=>minuend_1n10ss1_192);
   minuend_select_1i269Bus8_160 : select_3_3 port map ( a(2)=>not_rtlcn10641, 
      a(1)=>state(2), a(0)=>rtlcn9241, b(2)=>i_data(0), b(1)=>
      subtrahend_5(0), b(0)=>GND, d=>minuend_1n10ss1_160);
   minuend_select_1i270Bus7_128 : select_3_3 port map ( a(2)=>not_rtlcn10640, 
      a(1)=>state(2), a(0)=>rtlcn9248, b(2)=>i_data(0), b(1)=>
      subtrahend_4(0), b(0)=>GND, d=>minuend_1n10ss1_128);
   minuend_select_1i271Bus6_96 : select_3_3 port map ( a(2)=>not_rtlcn10639, 
      a(1)=>state(2), a(0)=>rtlcn9255, b(2)=>i_data(0), b(1)=>
      subtrahend_3(0), b(0)=>GND, d=>minuend_1n10ss1_96);
   minuend_select_1i272Bus5_64 : select_3_3 port map ( a(2)=>not_rtlcn10638, 
      a(1)=>state(2), a(0)=>rtlcn9262, b(2)=>i_data(0), b(1)=>
      subtrahend_2(0), b(0)=>GND, d=>minuend_1n10ss1_64);
   minuend_select_1i273Bus4_32 : select_3_3 port map ( a(2)=>not_rtlcn10637, 
      a(1)=>state(2), a(0)=>rtlcn9269, b(2)=>i_data(0), b(1)=>
      subtrahend_1(0), b(0)=>GND, d=>minuend_1n10ss1_32);
   minuend_select_1i274Bus3_0 : select_3_3 port map ( a(2)=>not_rtlcn10636, 
      a(1)=>state(2), a(0)=>rtlcn9276, b(2)=>i_data(0), b(1)=>
      subtrahend_0(0), b(0)=>GND, d=>minuend_1n10ss1_0);
   not_rtlcs5 <= NOT rtlcs5 ;
   not_i_valid <= NOT i_valid ;
   rtlcn10420 <= state(0) AND not_i_valid ;
   not_minuend_1n1s2_15 <= NOT minuend_1n1s2(15) ;
   rtlcn10427 <= state(0) AND not_minuend_1n1s2_15 ;
   rtlcn9171 <= rtlcn10420 OR rtlcn10427 ;
   not_minuend_1n1s2_14 <= NOT minuend_1n1s2(14) ;
   rtlcn10431 <= state(0) AND not_minuend_1n1s2_14 ;
   rtlcn9178 <= rtlcn10420 OR rtlcn10431 ;
   not_minuend_1n1s2_13 <= NOT minuend_1n1s2(13) ;
   rtlcn10434 <= state(0) AND not_minuend_1n1s2_13 ;
   rtlcn9185 <= rtlcn10420 OR rtlcn10434 ;
   not_minuend_1n1s2_12 <= NOT minuend_1n1s2(12) ;
   rtlcn10437 <= state(0) AND not_minuend_1n1s2_12 ;
   rtlcn9192 <= rtlcn10420 OR rtlcn10437 ;
   not_minuend_1n1s2_11 <= NOT minuend_1n1s2(11) ;
   rtlcn10440 <= state(0) AND not_minuend_1n1s2_11 ;
   rtlcn9199 <= rtlcn10420 OR rtlcn10440 ;
   not_minuend_1n1s2_10 <= NOT minuend_1n1s2(10) ;
   rtlcn10443 <= state(0) AND not_minuend_1n1s2_10 ;
   rtlcn9206 <= rtlcn10420 OR rtlcn10443 ;
   not_minuend_1n1s2_9 <= NOT minuend_1n1s2(9) ;
   rtlcn10446 <= state(0) AND not_minuend_1n1s2_9 ;
   rtlcn9213 <= rtlcn10420 OR rtlcn10446 ;
   not_minuend_1n1s2_8 <= NOT minuend_1n1s2(8) ;
   rtlcn10449 <= state(0) AND not_minuend_1n1s2_8 ;
   rtlcn9220 <= rtlcn10420 OR rtlcn10449 ;
   not_minuend_1n1s2_7 <= NOT minuend_1n1s2(7) ;
   rtlcn10452 <= state(0) AND not_minuend_1n1s2_7 ;
   rtlcn9227 <= rtlcn10420 OR rtlcn10452 ;
   not_minuend_1n1s2_6 <= NOT minuend_1n1s2(6) ;
   rtlcn10455 <= state(0) AND not_minuend_1n1s2_6 ;
   rtlcn9234 <= rtlcn10420 OR rtlcn10455 ;
   not_minuend_1n1s2_5 <= NOT minuend_1n1s2(5) ;
   rtlcn10458 <= state(0) AND not_minuend_1n1s2_5 ;
   rtlcn9241 <= rtlcn10420 OR rtlcn10458 ;
   not_minuend_1n1s2_4 <= NOT minuend_1n1s2(4) ;
   rtlcn10461 <= state(0) AND not_minuend_1n1s2_4 ;
   rtlcn9248 <= rtlcn10420 OR rtlcn10461 ;
   not_minuend_1n1s2_3 <= NOT minuend_1n1s2(3) ;
   rtlcn10464 <= state(0) AND not_minuend_1n1s2_3 ;
   rtlcn9255 <= rtlcn10420 OR rtlcn10464 ;
   not_minuend_1n1s2_2 <= NOT minuend_1n1s2(2) ;
   rtlcn10467 <= state(0) AND not_minuend_1n1s2_2 ;
   rtlcn9262 <= rtlcn10420 OR rtlcn10467 ;
   not_minuend_1n1s2_1 <= NOT minuend_1n1s2(1) ;
   rtlcn10470 <= state(0) AND not_minuend_1n1s2_1 ;
   rtlcn9269 <= rtlcn10420 OR rtlcn10470 ;
   not_minuend_1n1s2_0 <= NOT minuend_1n1s2(0) ;
   rtlcn10473 <= state(0) AND not_minuend_1n1s2_0 ;
   rtlcn9276 <= rtlcn10420 OR rtlcn10473 ;
   not_state_4 <= NOT state(4) ;
   not_rtlc0_PS25_n202 <= NOT rtlc0_PS25_n202 ;
   rtlcn10421 <= not_state_4 OR not_rtlc0_PS25_n202 ;
   not_state_3 <= NOT state(3) ;
   rtlcn10424 <= not_state_3 OR rtlc0n180 ;
   rtlcn10422 <= not_state_3 OR rtlc0n165 ;
   rtlcn8788 <= state(2) OR not_rtlcn10650 ;
   not_state_1 <= NOT state(1) ;
   rtlcn10423 <= not_state_1 OR rtlcs3 ;
   not_rtlcn10423 <= NOT rtlcn10423 ;
   rtlcn10484 <= state(0) AND rtlc0n92 ;
   rtlcn8803 <= not_rtlcn10423 OR rtlcn10484 ;
   not_rtlcn10421 <= NOT rtlcn10421 ;
   not_rtlc0n92 <= NOT rtlc0n92 ;
   rtlcn10487 <= state(0) AND not_rtlc0n92 ;
   rtlcn8810 <= not_rtlcn10421 OR rtlcn10487 ;
   not_state_0 <= NOT state(0) ;
   not_rtlcn10634 <= NOT rtlcn10634 ;
   not_rtlcn10635 <= NOT rtlcn10635 ;
   not_rtlcn10636 <= NOT rtlcn10636 ;
   not_rtlcn10637 <= NOT rtlcn10637 ;
   not_rtlcn10638 <= NOT rtlcn10638 ;
   not_rtlcn10639 <= NOT rtlcn10639 ;
   not_rtlcn10640 <= NOT rtlcn10640 ;
   not_rtlcn10641 <= NOT rtlcn10641 ;
   not_rtlcn10642 <= NOT rtlcn10642 ;
   not_rtlcn10643 <= NOT rtlcn10643 ;
   not_rtlcn10644 <= NOT rtlcn10644 ;
   not_rtlcn10645 <= NOT rtlcn10645 ;
   not_rtlcn10646 <= NOT rtlcn10646 ;
   not_rtlcn10647 <= NOT rtlcn10647 ;
   not_rtlcn10648 <= NOT rtlcn10648 ;
   not_rtlcn10649 <= NOT rtlcn10649 ;
   not_rtlcn10650 <= NOT rtlcn10650 ;
   not_rtlcn10651 <= NOT rtlcn10651 ;
   not_rtlcn10652 <= NOT rtlcn10652 ;
   rtlc1n13963 <= state(0) OR state(2) ;
   rtlc0n234 <= state(0) OR state(4) ;
   rtlc1n12117 <= not_rtlc1n13957 OR rtlc1n12178 ;
   not_rtlc1n12117 <= NOT rtlc1n12117 ;
   rtlcn10667 <= minuend_1n1s2(15) AND not_rtlc1n12117 ;
   rtlcn325 <= not_rtlcn10652 OR rtlcn10667 ;
   rtlcn10668 <= not_rtlc1n12117 AND minuend_1n1s2(14) ;
   rtlcn337 <= not_rtlcn10652 OR rtlcn10668 ;
   rtlcn10669 <= not_rtlc1n12117 AND minuend_1n1s2(13) ;
   rtlcn349 <= not_rtlcn10652 OR rtlcn10669 ;
   rtlcn10670 <= not_rtlc1n12117 AND minuend_1n1s2(12) ;
   rtlcn361 <= not_rtlcn10652 OR rtlcn10670 ;
   rtlcn10671 <= not_rtlc1n12117 AND minuend_1n1s2(11) ;
   rtlcn373 <= not_rtlcn10652 OR rtlcn10671 ;
   rtlcn10672 <= not_rtlc1n12117 AND minuend_1n1s2(10) ;
   rtlcn385 <= not_rtlcn10652 OR rtlcn10672 ;
   rtlcn10673 <= not_rtlc1n12117 AND minuend_1n1s2(9) ;
   rtlcn397 <= not_rtlcn10652 OR rtlcn10673 ;
   rtlcn10674 <= not_rtlc1n12117 AND minuend_1n1s2(8) ;
   rtlcn409 <= not_rtlcn10652 OR rtlcn10674 ;
   rtlcn10675 <= not_rtlc1n12117 AND minuend_1n1s2(7) ;
   rtlcn421 <= not_rtlcn10652 OR rtlcn10675 ;
   rtlcn10676 <= not_rtlc1n12117 AND minuend_1n1s2(6) ;
   rtlcn433 <= not_rtlcn10652 OR rtlcn10676 ;
   rtlcn10677 <= not_rtlc1n12117 AND minuend_1n1s2(5) ;
   rtlcn445 <= not_rtlcn10652 OR rtlcn10677 ;
   rtlcn10678 <= not_rtlc1n12117 AND minuend_1n1s2(4) ;
   rtlcn457 <= not_rtlcn10652 OR rtlcn10678 ;
   rtlcn10679 <= not_rtlc1n12117 AND minuend_1n1s2(3) ;
   rtlcn469 <= not_rtlcn10652 OR rtlcn10679 ;
   rtlcn10680 <= not_rtlc1n12117 AND minuend_1n1s2(2) ;
   rtlcn481 <= not_rtlcn10652 OR rtlcn10680 ;
   rtlcn10681 <= not_rtlc1n12117 AND minuend_1n1s2(1) ;
   rtlcn493 <= not_rtlcn10652 OR rtlcn10681 ;
   rtlcn10682 <= not_rtlc1n12117 AND minuend_1n1s2(0) ;
   rtlcn505 <= not_rtlcn10652 OR rtlcn10682 ;
   not_rtlc1n5510 <= NOT rtlc1n5510 ;
   not_stage_1 <= NOT stage(1) ;
   rtlcn10685 <= state(2) AND not_stage_1 ;
   rtlcn10660 <= rtlc0n246 OR rtlcn10685 ;
   rtlcn10686 <= state(1) AND not_rtlc1n5510 ;
   rtlcn10653 <= rtlcn10660 OR rtlcn10686 ;
   not_rtlcn10653 <= NOT rtlcn10653 ;
   rtlcn10656 <= not_state_1 AND not_rtlcn10653 ;
   rtlcn10689 <= minuend_1n1s2(15) AND not_rtlcn10653 ;
   rtlcn329 <= rtlcn10656 OR rtlcn10689 ;
   not_rtlc1n2916 <= NOT rtlc1n2916 ;
   rtlcn10654 <= rtlcn10660 OR rtlc1n12165 ;
   not_rtlcn10654 <= NOT rtlcn10654 ;
   rtlcn10658 <= not_state_1 AND not_rtlcn10654 ;
   rtlcn10693 <= minuend_1n1s2(15) AND not_rtlcn10654 ;
   rtlcn333 <= rtlcn10658 OR rtlcn10693 ;
   rtlcn10694 <= minuend_1n1s2(14) AND not_rtlcn10653 ;
   rtlcn341 <= rtlcn10656 OR rtlcn10694 ;
   rtlcn10695 <= minuend_1n1s2(14) AND not_rtlcn10654 ;
   rtlcn345 <= rtlcn10658 OR rtlcn10695 ;
   rtlcn10696 <= minuend_1n1s2(13) AND not_rtlcn10653 ;
   rtlcn353 <= rtlcn10656 OR rtlcn10696 ;
   rtlcn10697 <= minuend_1n1s2(13) AND not_rtlcn10654 ;
   rtlcn357 <= rtlcn10658 OR rtlcn10697 ;
   rtlcn10698 <= minuend_1n1s2(12) AND not_rtlcn10653 ;
   rtlcn365 <= rtlcn10656 OR rtlcn10698 ;
   rtlcn10699 <= minuend_1n1s2(12) AND not_rtlcn10654 ;
   rtlcn369 <= rtlcn10658 OR rtlcn10699 ;
   rtlcn10700 <= minuend_1n1s2(11) AND not_rtlcn10653 ;
   rtlcn377 <= rtlcn10656 OR rtlcn10700 ;
   rtlcn10701 <= minuend_1n1s2(11) AND not_rtlcn10654 ;
   rtlcn381 <= rtlcn10658 OR rtlcn10701 ;
   rtlcn10702 <= minuend_1n1s2(10) AND not_rtlcn10653 ;
   rtlcn389 <= rtlcn10656 OR rtlcn10702 ;
   rtlcn10703 <= minuend_1n1s2(10) AND not_rtlcn10654 ;
   rtlcn393 <= rtlcn10658 OR rtlcn10703 ;
   rtlcn10704 <= minuend_1n1s2(9) AND not_rtlcn10653 ;
   rtlcn401 <= rtlcn10656 OR rtlcn10704 ;
   rtlcn10705 <= minuend_1n1s2(9) AND not_rtlcn10654 ;
   rtlcn405 <= rtlcn10658 OR rtlcn10705 ;
   rtlcn10706 <= minuend_1n1s2(8) AND not_rtlcn10653 ;
   rtlcn413 <= rtlcn10656 OR rtlcn10706 ;
   rtlcn10707 <= minuend_1n1s2(8) AND not_rtlcn10654 ;
   rtlcn417 <= rtlcn10658 OR rtlcn10707 ;
   rtlcn10708 <= minuend_1n1s2(7) AND not_rtlcn10653 ;
   rtlcn425 <= rtlcn10656 OR rtlcn10708 ;
   rtlcn10709 <= minuend_1n1s2(7) AND not_rtlcn10654 ;
   rtlcn429 <= rtlcn10658 OR rtlcn10709 ;
   rtlcn10710 <= minuend_1n1s2(6) AND not_rtlcn10653 ;
   rtlcn437 <= rtlcn10656 OR rtlcn10710 ;
   rtlcn10711 <= minuend_1n1s2(6) AND not_rtlcn10654 ;
   rtlcn441 <= rtlcn10658 OR rtlcn10711 ;
   rtlcn10712 <= minuend_1n1s2(5) AND not_rtlcn10653 ;
   rtlcn449 <= rtlcn10656 OR rtlcn10712 ;
   rtlcn10713 <= minuend_1n1s2(5) AND not_rtlcn10654 ;
   rtlcn453 <= rtlcn10658 OR rtlcn10713 ;
   rtlcn10714 <= minuend_1n1s2(4) AND not_rtlcn10653 ;
   rtlcn461 <= rtlcn10656 OR rtlcn10714 ;
   rtlcn10715 <= minuend_1n1s2(4) AND not_rtlcn10654 ;
   rtlcn465 <= rtlcn10658 OR rtlcn10715 ;
   rtlcn10716 <= minuend_1n1s2(3) AND not_rtlcn10653 ;
   rtlcn473 <= rtlcn10656 OR rtlcn10716 ;
   rtlcn10717 <= minuend_1n1s2(3) AND not_rtlcn10654 ;
   rtlcn477 <= rtlcn10658 OR rtlcn10717 ;
   rtlcn10718 <= minuend_1n1s2(2) AND not_rtlcn10653 ;
   rtlcn485 <= rtlcn10656 OR rtlcn10718 ;
   rtlcn10719 <= minuend_1n1s2(2) AND not_rtlcn10654 ;
   rtlcn489 <= rtlcn10658 OR rtlcn10719 ;
   rtlcn10720 <= minuend_1n1s2(1) AND not_rtlcn10653 ;
   rtlcn497 <= rtlcn10656 OR rtlcn10720 ;
   rtlcn10721 <= minuend_1n1s2(1) AND not_rtlcn10654 ;
   rtlcn501 <= rtlcn10658 OR rtlcn10721 ;
   rtlcn10722 <= minuend_1n1s2(0) AND not_rtlcn10653 ;
   rtlcn509 <= rtlcn10656 OR rtlcn10722 ;
   rtlcn10723 <= minuend_1n1s2(0) AND not_rtlcn10654 ;
   rtlcn513 <= rtlcn10658 OR rtlcn10723 ;
   rtlc1n12118 <= not_rtlc0n237 OR rtlcn10686 ;
   not_rtlc1n12118 <= NOT rtlc1n12118 ;
   rtlcn10661 <= not_rtlc1n5510 OR rtlcs5 ;
   rtlcn10662 <= not_i_valid OR rtlcs5 ;
   rtlcn10725 <= state(3) AND rtlcn10662 ;
   not_rtlcn10655 <= NOT rtlcn10655 ;
   not_row_3 <= NOT row(3) ;
   not_row_2 <= NOT row(2) ;
   not_row_1 <= NOT row(1) ;
   not_row_0 <= NOT row(0) ;
   not_column_31 <= NOT column(31) ;
   not_column_30 <= NOT column(30) ;
   not_column_29 <= NOT column(29) ;
   not_column_28 <= NOT column(28) ;
   not_column_27 <= NOT column(27) ;
   not_column_26 <= NOT column(26) ;
   not_column_25 <= NOT column(25) ;
   not_column_24 <= NOT column(24) ;
   not_column_23 <= NOT column(23) ;
   not_column_22 <= NOT column(22) ;
   not_column_21 <= NOT column(21) ;
   not_column_20 <= NOT column(20) ;
   not_column_19 <= NOT column(19) ;
   not_column_18 <= NOT column(18) ;
   not_column_17 <= NOT column(17) ;
   not_column_16 <= NOT column(16) ;
   not_column_15 <= NOT column(15) ;
   not_column_14 <= NOT column(14) ;
   not_column_13 <= NOT column(13) ;
   not_column_12 <= NOT column(12) ;
   not_column_11 <= NOT column(11) ;
   not_column_10 <= NOT column(10) ;
   not_column_9 <= NOT column(9) ;
   not_column_8 <= NOT column(8) ;
   not_column_7 <= NOT column(7) ;
   not_column_6 <= NOT column(6) ;
   not_column_5 <= NOT column(5) ;
   not_column_4 <= NOT column(4) ;
   rtlc_24641_and_298 : and_32u_32u port map ( a(31)=>not_column_31, a(30)=>
      not_column_30, a(29)=>not_column_29, a(28)=>not_column_28, a(27)=>
      not_column_27, a(26)=>not_column_26, a(25)=>not_column_25, a(24)=>
      not_column_24, a(23)=>not_column_23, a(22)=>not_column_22, a(21)=>
      not_column_21, a(20)=>not_column_20, a(19)=>not_column_19, a(18)=>
      not_column_18, a(17)=>not_column_17, a(16)=>not_column_16, a(15)=>
      not_column_15, a(14)=>not_column_14, a(13)=>not_column_13, a(12)=>
      not_column_12, a(11)=>not_column_11, a(10)=>not_column_10, a(9)=>
      not_column_9, a(8)=>not_column_8, a(7)=>not_column_7, a(6)=>
      not_column_6, a(5)=>not_column_5, a(4)=>not_column_4, a(3)=>column(3), 
      a(2)=>column(2), a(1)=>column(1), a(0)=>column(0), d=>rtlcs5);
   not_row_31 <= NOT row(31) ;
   not_row_30 <= NOT row(30) ;
   not_row_29 <= NOT row(29) ;
   not_row_28 <= NOT row(28) ;
   not_row_27 <= NOT row(27) ;
   not_row_26 <= NOT row(26) ;
   not_row_25 <= NOT row(25) ;
   not_row_24 <= NOT row(24) ;
   not_row_23 <= NOT row(23) ;
   not_row_22 <= NOT row(22) ;
   not_row_21 <= NOT row(21) ;
   not_row_20 <= NOT row(20) ;
   not_row_19 <= NOT row(19) ;
   not_row_18 <= NOT row(18) ;
   not_row_17 <= NOT row(17) ;
   not_row_16 <= NOT row(16) ;
   not_row_15 <= NOT row(15) ;
   not_row_14 <= NOT row(14) ;
   not_row_13 <= NOT row(13) ;
   not_row_12 <= NOT row(12) ;
   not_row_11 <= NOT row(11) ;
   not_row_10 <= NOT row(10) ;
   not_row_9 <= NOT row(9) ;
   not_row_8 <= NOT row(8) ;
   not_row_7 <= NOT row(7) ;
   not_row_6 <= NOT row(6) ;
   not_row_5 <= NOT row(5) ;
   not_row_4 <= NOT row(4) ;
   rtlc_24670_and_299 : and_28u_28u port map ( a(27)=>not_row_31, a(26)=>
      not_row_30, a(25)=>not_row_29, a(24)=>not_row_28, a(23)=>not_row_27, 
      a(22)=>not_row_26, a(21)=>not_row_25, a(20)=>not_row_24, a(19)=>
      not_row_23, a(18)=>not_row_22, a(17)=>not_row_21, a(16)=>not_row_20, 
      a(15)=>not_row_19, a(14)=>not_row_18, a(13)=>not_row_17, a(12)=>
      not_row_16, a(11)=>not_row_15, a(10)=>not_row_14, a(9)=>not_row_13, 
      a(8)=>not_row_12, a(7)=>not_row_11, a(6)=>not_row_10, a(5)=>not_row_9, 
      a(4)=>not_row_8, a(3)=>not_row_7, a(2)=>not_row_6, a(1)=>not_row_5, 
      a(0)=>not_row_4, d=>rtlcs2);
   rtlcn10651 <= state(1) OR rtlc1n12118 ;
   rtlcn10650 <= rtlc0n180 OR rtlcn10422 ;
   rtlcn10634 <= state(2) OR rtlcn9171 ;
   addend_1n10ss1_487 <= i_data(7) AND state(3) ;
   rtlcn10635 <= state(2) OR rtlcn9178 ;
   rtlcn10649 <= state(2) OR rtlcn9185 ;
   rtlcn10648 <= state(2) OR rtlcn9192 ;
   rtlcn10647 <= state(2) OR rtlcn9199 ;
   rtlcn10646 <= state(2) OR rtlcn9206 ;
   rtlcn10645 <= state(2) OR rtlcn9213 ;
   rtlcn10644 <= state(2) OR rtlcn9220 ;
   rtlcn10643 <= state(2) OR rtlcn9227 ;
   rtlcn10642 <= state(2) OR rtlcn9234 ;
   rtlcn10641 <= state(2) OR rtlcn9241 ;
   rtlcn10640 <= state(2) OR rtlcn9248 ;
   rtlcn10639 <= state(2) OR rtlcn9255 ;
   rtlcn10638 <= state(2) OR rtlcn9262 ;
   rtlcn10637 <= state(2) OR rtlcn9269 ;
   rtlcn10636 <= state(2) OR rtlcn9276 ;
   addend_1n10ss1_486 <= i_data(6) AND state(3) ;
   addend_1n10ss1_485 <= i_data(5) AND state(3) ;
   addend_1n10ss1_484 <= i_data(4) AND state(3) ;
   addend_1n10ss1_483 <= i_data(3) AND state(3) ;
   addend_1n10ss1_482 <= i_data(2) AND state(3) ;
   addend_1n10ss1_481 <= i_data(1) AND state(3) ;
   addend_1n10ss1_480 <= i_data(0) AND state(3) ;
   not_rtlcn16035 <= NOT rtlcn16035 ;
   p_1n7s2_31 <= not_rtlcn16035 AND p_1n7s3_9 ;
   rtlcn10652 <= state(3) OR rtlc1n12117 ;
   modgen_counter_row : counter_up_sload_sclear_clock_clk_en_0_32_cx0_lab3
       port map ( clock=>clk, q(31)=>row(31), q(30)=>row(30), q(29)=>row(29), 
      q(28)=>row(28), q(27)=>row(27), q(26)=>row(26), q(25)=>row(25), q(24)
      =>row(24), q(23)=>row(23), q(22)=>row(22), q(21)=>row(21), q(20)=>
      row(20), q(19)=>row(19), q(18)=>row(18), q(17)=>row(17), q(16)=>
      row(16), q(15)=>row(15), q(14)=>row(14), q(13)=>row(13), q(12)=>
      row(12), q(11)=>row(11), q(10)=>row(10), q(9)=>row(9), q(8)=>row(8), 
      q(7)=>row(7), q(6)=>row(6), q(5)=>row(5), q(4)=>row(4), q(3)=>row(3), 
      q(2)=>row(2), q(1)=>row(1), q(0)=>row(0), clk_en=>not_rtlc1n12189, 
      aclear=>GND, sload=>state(1), data(31)=>GND, data(30)=>GND, data(29)=>
      GND, data(28)=>GND, data(27)=>GND, data(26)=>GND, data(25)=>GND, 
      data(24)=>GND, data(23)=>GND, data(22)=>GND, data(21)=>GND, data(20)=>
      GND, data(19)=>GND, data(18)=>GND, data(17)=>GND, data(16)=>GND, 
      data(15)=>GND, data(14)=>GND, data(13)=>GND, data(12)=>GND, data(11)=>
      GND, data(10)=>GND, data(9)=>GND, data(8)=>GND, data(7)=>GND, data(6)
      =>GND, data(5)=>GND, data(4)=>GND, data(3)=>GND, data(2)=>GND, data(1)
      =>GND, data(0)=>PWR, aset=>GND, sclear=>state(0), updn=>PWR, cnt_en=>
      PWR);
   modgen_counter_o_data : counter_up_sclear_clock_clk_en_0_8_cx1_lab3
       port map ( clock=>clk, q(7)=>o_data(7), q(6)=>o_data(6), q(5)=>
      o_data(5), q(4)=>o_data(4), q(3)=>o_data(3), q(2)=>o_data(2), q(1)=>
      o_data(1), q(0)=>o_data(0), clk_en=>not_rtlc1n12225, aclear=>GND, 
      sload=>GND, data(7)=>DANGLING(0,0), data(6)=>DANGLING(0,1), data(5)=>
      DANGLING(0,2), data(4)=>DANGLING(0,3), data(3)=>DANGLING(0,4), data(2)
      =>DANGLING(0,5), data(1)=>DANGLING(0,6), data(0)=>DANGLING(0,7), aset
      =>GND, sclear=>state(0), updn=>PWR, cnt_en=>PWR);
   p_1n7s3_9 <= NOT rtlcn16002 ;
   p_sub8_1i275 : sub_8u_8u_8u_0 port map ( cin=>PWR, a(7)=>p_1n7s3f1(7), 
      a(6)=>p_1n7s3f1(6), a(5)=>p_1n7s3f1(5), a(4)=>p_1n7s3f1(4), a(3)=>
      p_1n7s3f1(3), a(2)=>p_1n7s3f1(2), a(1)=>p_1n7s3f1(1), a(0)=>
      p_1n7s3f1(0), b(7)=>p_1n7s3f2(7), b(6)=>p_1n7s3f2(6), b(5)=>
      p_1n7s3f2(5), b(4)=>p_1n7s3f2(4), b(3)=>p_1n7s3f2(3), b(2)=>
      p_1n7s3f2(2), b(1)=>p_1n7s3f2(1), b(0)=>p_1n7s3f2(0), d(7)=>p_1n7s3_7, 
      d(6)=>p_1n7s3_6, d(5)=>p_1n7s3_5, d(4)=>p_1n7s3_4, d(3)=>p_1n7s3_3, 
      d(2)=>p_1n7s3_2, d(1)=>p_1n7s3_1, d(0)=>p_1n7s3_0, cout=>rtlcn16002);
   p_add9_1i276 : add_9u_9u_9u_0_0 port map ( cin=>GND, a(8)=>p_1n7s3_9, 
      a(7)=>p_1n7s3_7, a(6)=>p_1n7s3_6, a(5)=>p_1n7s3_5, a(4)=>p_1n7s3_4, 
      a(3)=>p_1n7s3_3, a(2)=>p_1n7s3_2, a(1)=>p_1n7s3_1, a(0)=>p_1n7s3_0, 
      b(8)=>GND, b(7)=>i_data(7), b(6)=>i_data(6), b(5)=>i_data(5), b(4)=>
      i_data(4), b(3)=>i_data(3), b(2)=>i_data(2), b(1)=>i_data(1), b(0)=>
      i_data(0), d(8)=>DANGLING(0,8), d(7)=>DANGLING(0,9), d(6)=>
      DANGLING(0,10), d(5)=>DANGLING(0,11), d(4)=>DANGLING(0,12), d(3)=>
      DANGLING(0,13), d(2)=>DANGLING(0,14), d(1)=>DANGLING(0,15), d(0)=>
      DANGLING(0,16), cout=>rtlcn16035);
   DFFRSE (rtlcn8784,GND,reset,PWR,clk,state(4)) ;
   DFFRSE (rtlcn8788,GND,reset,PWR,clk,state(3)) ;
   DFFRSE (rtlcn8797,GND,reset,PWR,clk,state(2)) ;
   DFFRSE (rtlcn8803,GND,reset,PWR,clk,state(1)) ;
   DFFRSE (rtlcn8810,reset,GND,PWR,clk,state(0)) ;
   DFFPCE (state(2),GND,GND,rtlc1n13963,clk,stage(1)) ;
   DFFPCE (not_state_0,GND,GND,rtlc0n234,clk,o_done) ;
   DFFPCE (addend_1n10ss1_487,GND,GND,rtlcn325,clk,addend_15(7)) ;
   DFFPCE (subtrahend_1n10ss1_487,GND,GND,rtlcn329,clk,subtrahend_15(7)) ;
   DFFPCE (minuend_1n10ss1_487,GND,GND,rtlcn333,clk,minuend_15(7)) ;
   DFFPCE (addend_1n10ss1_487,GND,GND,rtlcn337,clk,addend_14(7)) ;
   DFFPCE (subtrahend_1n10ss1_455,GND,GND,rtlcn341,clk,subtrahend_14(7)) ;
   DFFPCE (minuend_1n10ss1_455,GND,GND,rtlcn345,clk,minuend_14(7)) ;
   DFFPCE (addend_1n10ss1_487,GND,GND,rtlcn349,clk,addend_13(7)) ;
   DFFPCE (subtrahend_1n10ss1_423,GND,GND,rtlcn353,clk,subtrahend_13(7)) ;
   DFFPCE (minuend_1n10ss1_423,GND,GND,rtlcn357,clk,minuend_13(7)) ;
   DFFPCE (addend_1n10ss1_487,GND,GND,rtlcn361,clk,addend_12(7)) ;
   DFFPCE (subtrahend_1n10ss1_391,GND,GND,rtlcn365,clk,subtrahend_12(7)) ;
   DFFPCE (minuend_1n10ss1_391,GND,GND,rtlcn369,clk,minuend_12(7)) ;
   DFFPCE (addend_1n10ss1_487,GND,GND,rtlcn373,clk,addend_11(7)) ;
   DFFPCE (subtrahend_1n10ss1_359,GND,GND,rtlcn377,clk,subtrahend_11(7)) ;
   DFFPCE (minuend_1n10ss1_359,GND,GND,rtlcn381,clk,minuend_11(7)) ;
   DFFPCE (addend_1n10ss1_487,GND,GND,rtlcn385,clk,addend_10(7)) ;
   DFFPCE (subtrahend_1n10ss1_327,GND,GND,rtlcn389,clk,subtrahend_10(7)) ;
   DFFPCE (minuend_1n10ss1_327,GND,GND,rtlcn393,clk,minuend_10(7)) ;
   DFFPCE (addend_1n10ss1_487,GND,GND,rtlcn397,clk,addend_9(7)) ;
   DFFPCE (subtrahend_1n10ss1_295,GND,GND,rtlcn401,clk,subtrahend_9(7)) ;
   DFFPCE (minuend_1n10ss1_295,GND,GND,rtlcn405,clk,minuend_9(7)) ;
   DFFPCE (addend_1n10ss1_487,GND,GND,rtlcn409,clk,addend_8(7)) ;
   DFFPCE (subtrahend_1n10ss1_263,GND,GND,rtlcn413,clk,subtrahend_8(7)) ;
   DFFPCE (minuend_1n10ss1_263,GND,GND,rtlcn417,clk,minuend_8(7)) ;
   DFFPCE (addend_1n10ss1_487,GND,GND,rtlcn421,clk,addend_7(7)) ;
   DFFPCE (subtrahend_1n10ss1_231,GND,GND,rtlcn425,clk,subtrahend_7(7)) ;
   DFFPCE (minuend_1n10ss1_231,GND,GND,rtlcn429,clk,minuend_7(7)) ;
   DFFPCE (addend_1n10ss1_487,GND,GND,rtlcn433,clk,addend_6(7)) ;
   DFFPCE (subtrahend_1n10ss1_199,GND,GND,rtlcn437,clk,subtrahend_6(7)) ;
   DFFPCE (minuend_1n10ss1_199,GND,GND,rtlcn441,clk,minuend_6(7)) ;
   DFFPCE (addend_1n10ss1_487,GND,GND,rtlcn445,clk,addend_5(7)) ;
   DFFPCE (subtrahend_1n10ss1_167,GND,GND,rtlcn449,clk,subtrahend_5(7)) ;
   DFFPCE (minuend_1n10ss1_167,GND,GND,rtlcn453,clk,minuend_5(7)) ;
   DFFPCE (addend_1n10ss1_487,GND,GND,rtlcn457,clk,addend_4(7)) ;
   DFFPCE (subtrahend_1n10ss1_135,GND,GND,rtlcn461,clk,subtrahend_4(7)) ;
   DFFPCE (minuend_1n10ss1_135,GND,GND,rtlcn465,clk,minuend_4(7)) ;
   DFFPCE (addend_1n10ss1_487,GND,GND,rtlcn469,clk,addend_3(7)) ;
   DFFPCE (subtrahend_1n10ss1_103,GND,GND,rtlcn473,clk,subtrahend_3(7)) ;
   DFFPCE (minuend_1n10ss1_103,GND,GND,rtlcn477,clk,minuend_3(7)) ;
   DFFPCE (addend_1n10ss1_487,GND,GND,rtlcn481,clk,addend_2(7)) ;
   DFFPCE (subtrahend_1n10ss1_71,GND,GND,rtlcn485,clk,subtrahend_2(7)) ;
   DFFPCE (minuend_1n10ss1_71,GND,GND,rtlcn489,clk,minuend_2(7)) ;
   DFFPCE (addend_1n10ss1_487,GND,GND,rtlcn493,clk,addend_1(7)) ;
   DFFPCE (subtrahend_1n10ss1_39,GND,GND,rtlcn497,clk,subtrahend_1(7)) ;
   DFFPCE (minuend_1n10ss1_39,GND,GND,rtlcn501,clk,minuend_1(7)) ;
   DFFPCE (addend_1n10ss1_487,GND,GND,rtlcn505,clk,addend_0(7)) ;
   DFFPCE (subtrahend_1n10ss1_7,GND,GND,rtlcn509,clk,subtrahend_0(7)) ;
   DFFPCE (minuend_1n10ss1_7,GND,GND,rtlcn513,clk,minuend_0(7)) ;
   DFFPCE (addend_1n10ss1_486,GND,GND,rtlcn325,clk,addend_15(6)) ;
   DFFPCE (subtrahend_1n10ss1_486,GND,GND,rtlcn329,clk,subtrahend_15(6)) ;
   DFFPCE (minuend_1n10ss1_486,GND,GND,rtlcn333,clk,minuend_15(6)) ;
   DFFPCE (addend_1n10ss1_486,GND,GND,rtlcn337,clk,addend_14(6)) ;
   DFFPCE (subtrahend_1n10ss1_454,GND,GND,rtlcn341,clk,subtrahend_14(6)) ;
   DFFPCE (minuend_1n10ss1_454,GND,GND,rtlcn345,clk,minuend_14(6)) ;
   DFFPCE (addend_1n10ss1_486,GND,GND,rtlcn349,clk,addend_13(6)) ;
   DFFPCE (subtrahend_1n10ss1_422,GND,GND,rtlcn353,clk,subtrahend_13(6)) ;
   DFFPCE (minuend_1n10ss1_422,GND,GND,rtlcn357,clk,minuend_13(6)) ;
   DFFPCE (addend_1n10ss1_486,GND,GND,rtlcn361,clk,addend_12(6)) ;
   DFFPCE (subtrahend_1n10ss1_390,GND,GND,rtlcn365,clk,subtrahend_12(6)) ;
   DFFPCE (minuend_1n10ss1_390,GND,GND,rtlcn369,clk,minuend_12(6)) ;
   DFFPCE (addend_1n10ss1_486,GND,GND,rtlcn373,clk,addend_11(6)) ;
   DFFPCE (subtrahend_1n10ss1_358,GND,GND,rtlcn377,clk,subtrahend_11(6)) ;
   DFFPCE (minuend_1n10ss1_358,GND,GND,rtlcn381,clk,minuend_11(6)) ;
   DFFPCE (addend_1n10ss1_486,GND,GND,rtlcn385,clk,addend_10(6)) ;
   DFFPCE (subtrahend_1n10ss1_326,GND,GND,rtlcn389,clk,subtrahend_10(6)) ;
   DFFPCE (minuend_1n10ss1_326,GND,GND,rtlcn393,clk,minuend_10(6)) ;
   DFFPCE (addend_1n10ss1_486,GND,GND,rtlcn397,clk,addend_9(6)) ;
   DFFPCE (subtrahend_1n10ss1_294,GND,GND,rtlcn401,clk,subtrahend_9(6)) ;
   DFFPCE (minuend_1n10ss1_294,GND,GND,rtlcn405,clk,minuend_9(6)) ;
   DFFPCE (addend_1n10ss1_486,GND,GND,rtlcn409,clk,addend_8(6)) ;
   DFFPCE (subtrahend_1n10ss1_262,GND,GND,rtlcn413,clk,subtrahend_8(6)) ;
   DFFPCE (minuend_1n10ss1_262,GND,GND,rtlcn417,clk,minuend_8(6)) ;
   DFFPCE (addend_1n10ss1_486,GND,GND,rtlcn421,clk,addend_7(6)) ;
   DFFPCE (subtrahend_1n10ss1_230,GND,GND,rtlcn425,clk,subtrahend_7(6)) ;
   DFFPCE (minuend_1n10ss1_230,GND,GND,rtlcn429,clk,minuend_7(6)) ;
   DFFPCE (addend_1n10ss1_486,GND,GND,rtlcn433,clk,addend_6(6)) ;
   DFFPCE (subtrahend_1n10ss1_198,GND,GND,rtlcn437,clk,subtrahend_6(6)) ;
   DFFPCE (minuend_1n10ss1_198,GND,GND,rtlcn441,clk,minuend_6(6)) ;
   DFFPCE (addend_1n10ss1_486,GND,GND,rtlcn445,clk,addend_5(6)) ;
   DFFPCE (subtrahend_1n10ss1_166,GND,GND,rtlcn449,clk,subtrahend_5(6)) ;
   DFFPCE (minuend_1n10ss1_166,GND,GND,rtlcn453,clk,minuend_5(6)) ;
   DFFPCE (addend_1n10ss1_486,GND,GND,rtlcn457,clk,addend_4(6)) ;
   DFFPCE (subtrahend_1n10ss1_134,GND,GND,rtlcn461,clk,subtrahend_4(6)) ;
   DFFPCE (minuend_1n10ss1_134,GND,GND,rtlcn465,clk,minuend_4(6)) ;
   DFFPCE (addend_1n10ss1_486,GND,GND,rtlcn469,clk,addend_3(6)) ;
   DFFPCE (subtrahend_1n10ss1_102,GND,GND,rtlcn473,clk,subtrahend_3(6)) ;
   DFFPCE (minuend_1n10ss1_102,GND,GND,rtlcn477,clk,minuend_3(6)) ;
   DFFPCE (addend_1n10ss1_486,GND,GND,rtlcn481,clk,addend_2(6)) ;
   DFFPCE (subtrahend_1n10ss1_70,GND,GND,rtlcn485,clk,subtrahend_2(6)) ;
   DFFPCE (minuend_1n10ss1_70,GND,GND,rtlcn489,clk,minuend_2(6)) ;
   DFFPCE (addend_1n10ss1_486,GND,GND,rtlcn493,clk,addend_1(6)) ;
   DFFPCE (subtrahend_1n10ss1_38,GND,GND,rtlcn497,clk,subtrahend_1(6)) ;
   DFFPCE (minuend_1n10ss1_38,GND,GND,rtlcn501,clk,minuend_1(6)) ;
   DFFPCE (addend_1n10ss1_486,GND,GND,rtlcn505,clk,addend_0(6)) ;
   DFFPCE (subtrahend_1n10ss1_6,GND,GND,rtlcn509,clk,subtrahend_0(6)) ;
   DFFPCE (minuend_1n10ss1_6,GND,GND,rtlcn513,clk,minuend_0(6)) ;
   DFFPCE (addend_1n10ss1_485,GND,GND,rtlcn325,clk,addend_15(5)) ;
   DFFPCE (subtrahend_1n10ss1_485,GND,GND,rtlcn329,clk,subtrahend_15(5)) ;
   DFFPCE (minuend_1n10ss1_485,GND,GND,rtlcn333,clk,minuend_15(5)) ;
   DFFPCE (addend_1n10ss1_485,GND,GND,rtlcn337,clk,addend_14(5)) ;
   DFFPCE (subtrahend_1n10ss1_453,GND,GND,rtlcn341,clk,subtrahend_14(5)) ;
   DFFPCE (minuend_1n10ss1_453,GND,GND,rtlcn345,clk,minuend_14(5)) ;
   DFFPCE (addend_1n10ss1_485,GND,GND,rtlcn349,clk,addend_13(5)) ;
   DFFPCE (subtrahend_1n10ss1_421,GND,GND,rtlcn353,clk,subtrahend_13(5)) ;
   DFFPCE (minuend_1n10ss1_421,GND,GND,rtlcn357,clk,minuend_13(5)) ;
   DFFPCE (addend_1n10ss1_485,GND,GND,rtlcn361,clk,addend_12(5)) ;
   DFFPCE (subtrahend_1n10ss1_389,GND,GND,rtlcn365,clk,subtrahend_12(5)) ;
   DFFPCE (minuend_1n10ss1_389,GND,GND,rtlcn369,clk,minuend_12(5)) ;
   DFFPCE (addend_1n10ss1_485,GND,GND,rtlcn373,clk,addend_11(5)) ;
   DFFPCE (subtrahend_1n10ss1_357,GND,GND,rtlcn377,clk,subtrahend_11(5)) ;
   DFFPCE (minuend_1n10ss1_357,GND,GND,rtlcn381,clk,minuend_11(5)) ;
   DFFPCE (addend_1n10ss1_485,GND,GND,rtlcn385,clk,addend_10(5)) ;
   DFFPCE (subtrahend_1n10ss1_325,GND,GND,rtlcn389,clk,subtrahend_10(5)) ;
   DFFPCE (minuend_1n10ss1_325,GND,GND,rtlcn393,clk,minuend_10(5)) ;
   DFFPCE (addend_1n10ss1_485,GND,GND,rtlcn397,clk,addend_9(5)) ;
   DFFPCE (subtrahend_1n10ss1_293,GND,GND,rtlcn401,clk,subtrahend_9(5)) ;
   DFFPCE (minuend_1n10ss1_293,GND,GND,rtlcn405,clk,minuend_9(5)) ;
   DFFPCE (addend_1n10ss1_485,GND,GND,rtlcn409,clk,addend_8(5)) ;
   DFFPCE (subtrahend_1n10ss1_261,GND,GND,rtlcn413,clk,subtrahend_8(5)) ;
   DFFPCE (minuend_1n10ss1_261,GND,GND,rtlcn417,clk,minuend_8(5)) ;
   DFFPCE (addend_1n10ss1_485,GND,GND,rtlcn421,clk,addend_7(5)) ;
   DFFPCE (subtrahend_1n10ss1_229,GND,GND,rtlcn425,clk,subtrahend_7(5)) ;
   DFFPCE (minuend_1n10ss1_229,GND,GND,rtlcn429,clk,minuend_7(5)) ;
   DFFPCE (addend_1n10ss1_485,GND,GND,rtlcn433,clk,addend_6(5)) ;
   DFFPCE (subtrahend_1n10ss1_197,GND,GND,rtlcn437,clk,subtrahend_6(5)) ;
   DFFPCE (minuend_1n10ss1_197,GND,GND,rtlcn441,clk,minuend_6(5)) ;
   DFFPCE (addend_1n10ss1_485,GND,GND,rtlcn445,clk,addend_5(5)) ;
   DFFPCE (subtrahend_1n10ss1_165,GND,GND,rtlcn449,clk,subtrahend_5(5)) ;
   DFFPCE (minuend_1n10ss1_165,GND,GND,rtlcn453,clk,minuend_5(5)) ;
   DFFPCE (addend_1n10ss1_485,GND,GND,rtlcn457,clk,addend_4(5)) ;
   DFFPCE (subtrahend_1n10ss1_133,GND,GND,rtlcn461,clk,subtrahend_4(5)) ;
   DFFPCE (minuend_1n10ss1_133,GND,GND,rtlcn465,clk,minuend_4(5)) ;
   DFFPCE (addend_1n10ss1_485,GND,GND,rtlcn469,clk,addend_3(5)) ;
   DFFPCE (subtrahend_1n10ss1_101,GND,GND,rtlcn473,clk,subtrahend_3(5)) ;
   DFFPCE (minuend_1n10ss1_101,GND,GND,rtlcn477,clk,minuend_3(5)) ;
   DFFPCE (addend_1n10ss1_485,GND,GND,rtlcn481,clk,addend_2(5)) ;
   DFFPCE (subtrahend_1n10ss1_69,GND,GND,rtlcn485,clk,subtrahend_2(5)) ;
   DFFPCE (minuend_1n10ss1_69,GND,GND,rtlcn489,clk,minuend_2(5)) ;
   DFFPCE (addend_1n10ss1_485,GND,GND,rtlcn493,clk,addend_1(5)) ;
   DFFPCE (subtrahend_1n10ss1_37,GND,GND,rtlcn497,clk,subtrahend_1(5)) ;
   DFFPCE (minuend_1n10ss1_37,GND,GND,rtlcn501,clk,minuend_1(5)) ;
   DFFPCE (addend_1n10ss1_485,GND,GND,rtlcn505,clk,addend_0(5)) ;
   DFFPCE (subtrahend_1n10ss1_5,GND,GND,rtlcn509,clk,subtrahend_0(5)) ;
   DFFPCE (minuend_1n10ss1_5,GND,GND,rtlcn513,clk,minuend_0(5)) ;
   DFFPCE (addend_1n10ss1_484,GND,GND,rtlcn325,clk,addend_15(4)) ;
   DFFPCE (subtrahend_1n10ss1_484,GND,GND,rtlcn329,clk,subtrahend_15(4)) ;
   DFFPCE (minuend_1n10ss1_484,GND,GND,rtlcn333,clk,minuend_15(4)) ;
   DFFPCE (addend_1n10ss1_484,GND,GND,rtlcn337,clk,addend_14(4)) ;
   DFFPCE (subtrahend_1n10ss1_452,GND,GND,rtlcn341,clk,subtrahend_14(4)) ;
   DFFPCE (minuend_1n10ss1_452,GND,GND,rtlcn345,clk,minuend_14(4)) ;
   DFFPCE (addend_1n10ss1_484,GND,GND,rtlcn349,clk,addend_13(4)) ;
   DFFPCE (subtrahend_1n10ss1_420,GND,GND,rtlcn353,clk,subtrahend_13(4)) ;
   DFFPCE (minuend_1n10ss1_420,GND,GND,rtlcn357,clk,minuend_13(4)) ;
   DFFPCE (addend_1n10ss1_484,GND,GND,rtlcn361,clk,addend_12(4)) ;
   DFFPCE (subtrahend_1n10ss1_388,GND,GND,rtlcn365,clk,subtrahend_12(4)) ;
   DFFPCE (minuend_1n10ss1_388,GND,GND,rtlcn369,clk,minuend_12(4)) ;
   DFFPCE (addend_1n10ss1_484,GND,GND,rtlcn373,clk,addend_11(4)) ;
   DFFPCE (subtrahend_1n10ss1_356,GND,GND,rtlcn377,clk,subtrahend_11(4)) ;
   DFFPCE (minuend_1n10ss1_356,GND,GND,rtlcn381,clk,minuend_11(4)) ;
   DFFPCE (addend_1n10ss1_484,GND,GND,rtlcn385,clk,addend_10(4)) ;
   DFFPCE (subtrahend_1n10ss1_324,GND,GND,rtlcn389,clk,subtrahend_10(4)) ;
   DFFPCE (minuend_1n10ss1_324,GND,GND,rtlcn393,clk,minuend_10(4)) ;
   DFFPCE (addend_1n10ss1_484,GND,GND,rtlcn397,clk,addend_9(4)) ;
   DFFPCE (subtrahend_1n10ss1_292,GND,GND,rtlcn401,clk,subtrahend_9(4)) ;
   DFFPCE (minuend_1n10ss1_292,GND,GND,rtlcn405,clk,minuend_9(4)) ;
   DFFPCE (addend_1n10ss1_484,GND,GND,rtlcn409,clk,addend_8(4)) ;
   DFFPCE (subtrahend_1n10ss1_260,GND,GND,rtlcn413,clk,subtrahend_8(4)) ;
   DFFPCE (minuend_1n10ss1_260,GND,GND,rtlcn417,clk,minuend_8(4)) ;
   DFFPCE (addend_1n10ss1_484,GND,GND,rtlcn421,clk,addend_7(4)) ;
   DFFPCE (subtrahend_1n10ss1_228,GND,GND,rtlcn425,clk,subtrahend_7(4)) ;
   DFFPCE (minuend_1n10ss1_228,GND,GND,rtlcn429,clk,minuend_7(4)) ;
   DFFPCE (addend_1n10ss1_484,GND,GND,rtlcn433,clk,addend_6(4)) ;
   DFFPCE (subtrahend_1n10ss1_196,GND,GND,rtlcn437,clk,subtrahend_6(4)) ;
   DFFPCE (minuend_1n10ss1_196,GND,GND,rtlcn441,clk,minuend_6(4)) ;
   DFFPCE (addend_1n10ss1_484,GND,GND,rtlcn445,clk,addend_5(4)) ;
   DFFPCE (subtrahend_1n10ss1_164,GND,GND,rtlcn449,clk,subtrahend_5(4)) ;
   DFFPCE (minuend_1n10ss1_164,GND,GND,rtlcn453,clk,minuend_5(4)) ;
   DFFPCE (addend_1n10ss1_484,GND,GND,rtlcn457,clk,addend_4(4)) ;
   DFFPCE (subtrahend_1n10ss1_132,GND,GND,rtlcn461,clk,subtrahend_4(4)) ;
   DFFPCE (minuend_1n10ss1_132,GND,GND,rtlcn465,clk,minuend_4(4)) ;
   DFFPCE (addend_1n10ss1_484,GND,GND,rtlcn469,clk,addend_3(4)) ;
   DFFPCE (subtrahend_1n10ss1_100,GND,GND,rtlcn473,clk,subtrahend_3(4)) ;
   DFFPCE (minuend_1n10ss1_100,GND,GND,rtlcn477,clk,minuend_3(4)) ;
   DFFPCE (addend_1n10ss1_484,GND,GND,rtlcn481,clk,addend_2(4)) ;
   DFFPCE (subtrahend_1n10ss1_68,GND,GND,rtlcn485,clk,subtrahend_2(4)) ;
   DFFPCE (minuend_1n10ss1_68,GND,GND,rtlcn489,clk,minuend_2(4)) ;
   DFFPCE (addend_1n10ss1_484,GND,GND,rtlcn493,clk,addend_1(4)) ;
   DFFPCE (subtrahend_1n10ss1_36,GND,GND,rtlcn497,clk,subtrahend_1(4)) ;
   DFFPCE (minuend_1n10ss1_36,GND,GND,rtlcn501,clk,minuend_1(4)) ;
   DFFPCE (addend_1n10ss1_484,GND,GND,rtlcn505,clk,addend_0(4)) ;
   DFFPCE (subtrahend_1n10ss1_4,GND,GND,rtlcn509,clk,subtrahend_0(4)) ;
   DFFPCE (minuend_1n10ss1_4,GND,GND,rtlcn513,clk,minuend_0(4)) ;
   DFFPCE (addend_1n10ss1_483,GND,GND,rtlcn325,clk,addend_15(3)) ;
   DFFPCE (subtrahend_1n10ss1_483,GND,GND,rtlcn329,clk,subtrahend_15(3)) ;
   DFFPCE (minuend_1n10ss1_483,GND,GND,rtlcn333,clk,minuend_15(3)) ;
   DFFPCE (addend_1n10ss1_483,GND,GND,rtlcn337,clk,addend_14(3)) ;
   DFFPCE (subtrahend_1n10ss1_451,GND,GND,rtlcn341,clk,subtrahend_14(3)) ;
   DFFPCE (minuend_1n10ss1_451,GND,GND,rtlcn345,clk,minuend_14(3)) ;
   DFFPCE (addend_1n10ss1_483,GND,GND,rtlcn349,clk,addend_13(3)) ;
   DFFPCE (subtrahend_1n10ss1_419,GND,GND,rtlcn353,clk,subtrahend_13(3)) ;
   DFFPCE (minuend_1n10ss1_419,GND,GND,rtlcn357,clk,minuend_13(3)) ;
   DFFPCE (addend_1n10ss1_483,GND,GND,rtlcn361,clk,addend_12(3)) ;
   DFFPCE (subtrahend_1n10ss1_387,GND,GND,rtlcn365,clk,subtrahend_12(3)) ;
   DFFPCE (minuend_1n10ss1_387,GND,GND,rtlcn369,clk,minuend_12(3)) ;
   DFFPCE (addend_1n10ss1_483,GND,GND,rtlcn373,clk,addend_11(3)) ;
   DFFPCE (subtrahend_1n10ss1_355,GND,GND,rtlcn377,clk,subtrahend_11(3)) ;
   DFFPCE (minuend_1n10ss1_355,GND,GND,rtlcn381,clk,minuend_11(3)) ;
   DFFPCE (addend_1n10ss1_483,GND,GND,rtlcn385,clk,addend_10(3)) ;
   DFFPCE (subtrahend_1n10ss1_323,GND,GND,rtlcn389,clk,subtrahend_10(3)) ;
   DFFPCE (minuend_1n10ss1_323,GND,GND,rtlcn393,clk,minuend_10(3)) ;
   DFFPCE (addend_1n10ss1_483,GND,GND,rtlcn397,clk,addend_9(3)) ;
   DFFPCE (subtrahend_1n10ss1_291,GND,GND,rtlcn401,clk,subtrahend_9(3)) ;
   DFFPCE (minuend_1n10ss1_291,GND,GND,rtlcn405,clk,minuend_9(3)) ;
   DFFPCE (addend_1n10ss1_483,GND,GND,rtlcn409,clk,addend_8(3)) ;
   DFFPCE (subtrahend_1n10ss1_259,GND,GND,rtlcn413,clk,subtrahend_8(3)) ;
   DFFPCE (minuend_1n10ss1_259,GND,GND,rtlcn417,clk,minuend_8(3)) ;
   DFFPCE (addend_1n10ss1_483,GND,GND,rtlcn421,clk,addend_7(3)) ;
   DFFPCE (subtrahend_1n10ss1_227,GND,GND,rtlcn425,clk,subtrahend_7(3)) ;
   DFFPCE (minuend_1n10ss1_227,GND,GND,rtlcn429,clk,minuend_7(3)) ;
   DFFPCE (addend_1n10ss1_483,GND,GND,rtlcn433,clk,addend_6(3)) ;
   DFFPCE (subtrahend_1n10ss1_195,GND,GND,rtlcn437,clk,subtrahend_6(3)) ;
   DFFPCE (minuend_1n10ss1_195,GND,GND,rtlcn441,clk,minuend_6(3)) ;
   DFFPCE (addend_1n10ss1_483,GND,GND,rtlcn445,clk,addend_5(3)) ;
   DFFPCE (subtrahend_1n10ss1_163,GND,GND,rtlcn449,clk,subtrahend_5(3)) ;
   DFFPCE (minuend_1n10ss1_163,GND,GND,rtlcn453,clk,minuend_5(3)) ;
   DFFPCE (addend_1n10ss1_483,GND,GND,rtlcn457,clk,addend_4(3)) ;
   DFFPCE (subtrahend_1n10ss1_131,GND,GND,rtlcn461,clk,subtrahend_4(3)) ;
   DFFPCE (minuend_1n10ss1_131,GND,GND,rtlcn465,clk,minuend_4(3)) ;
   DFFPCE (addend_1n10ss1_483,GND,GND,rtlcn469,clk,addend_3(3)) ;
   DFFPCE (subtrahend_1n10ss1_99,GND,GND,rtlcn473,clk,subtrahend_3(3)) ;
   DFFPCE (minuend_1n10ss1_99,GND,GND,rtlcn477,clk,minuend_3(3)) ;
   DFFPCE (addend_1n10ss1_483,GND,GND,rtlcn481,clk,addend_2(3)) ;
   DFFPCE (subtrahend_1n10ss1_67,GND,GND,rtlcn485,clk,subtrahend_2(3)) ;
   DFFPCE (minuend_1n10ss1_67,GND,GND,rtlcn489,clk,minuend_2(3)) ;
   DFFPCE (addend_1n10ss1_483,GND,GND,rtlcn493,clk,addend_1(3)) ;
   DFFPCE (subtrahend_1n10ss1_35,GND,GND,rtlcn497,clk,subtrahend_1(3)) ;
   DFFPCE (minuend_1n10ss1_35,GND,GND,rtlcn501,clk,minuend_1(3)) ;
   DFFPCE (addend_1n10ss1_483,GND,GND,rtlcn505,clk,addend_0(3)) ;
   DFFPCE (subtrahend_1n10ss1_3,GND,GND,rtlcn509,clk,subtrahend_0(3)) ;
   DFFPCE (minuend_1n10ss1_3,GND,GND,rtlcn513,clk,minuend_0(3)) ;
   DFFPCE (addend_1n10ss1_482,GND,GND,rtlcn325,clk,addend_15(2)) ;
   DFFPCE (subtrahend_1n10ss1_482,GND,GND,rtlcn329,clk,subtrahend_15(2)) ;
   DFFPCE (minuend_1n10ss1_482,GND,GND,rtlcn333,clk,minuend_15(2)) ;
   DFFPCE (addend_1n10ss1_482,GND,GND,rtlcn337,clk,addend_14(2)) ;
   DFFPCE (subtrahend_1n10ss1_450,GND,GND,rtlcn341,clk,subtrahend_14(2)) ;
   DFFPCE (minuend_1n10ss1_450,GND,GND,rtlcn345,clk,minuend_14(2)) ;
   DFFPCE (addend_1n10ss1_482,GND,GND,rtlcn349,clk,addend_13(2)) ;
   DFFPCE (subtrahend_1n10ss1_418,GND,GND,rtlcn353,clk,subtrahend_13(2)) ;
   DFFPCE (minuend_1n10ss1_418,GND,GND,rtlcn357,clk,minuend_13(2)) ;
   DFFPCE (addend_1n10ss1_482,GND,GND,rtlcn361,clk,addend_12(2)) ;
   DFFPCE (subtrahend_1n10ss1_386,GND,GND,rtlcn365,clk,subtrahend_12(2)) ;
   DFFPCE (minuend_1n10ss1_386,GND,GND,rtlcn369,clk,minuend_12(2)) ;
   DFFPCE (addend_1n10ss1_482,GND,GND,rtlcn373,clk,addend_11(2)) ;
   DFFPCE (subtrahend_1n10ss1_354,GND,GND,rtlcn377,clk,subtrahend_11(2)) ;
   DFFPCE (minuend_1n10ss1_354,GND,GND,rtlcn381,clk,minuend_11(2)) ;
   DFFPCE (addend_1n10ss1_482,GND,GND,rtlcn385,clk,addend_10(2)) ;
   DFFPCE (subtrahend_1n10ss1_322,GND,GND,rtlcn389,clk,subtrahend_10(2)) ;
   DFFPCE (minuend_1n10ss1_322,GND,GND,rtlcn393,clk,minuend_10(2)) ;
   DFFPCE (addend_1n10ss1_482,GND,GND,rtlcn397,clk,addend_9(2)) ;
   DFFPCE (subtrahend_1n10ss1_290,GND,GND,rtlcn401,clk,subtrahend_9(2)) ;
   DFFPCE (minuend_1n10ss1_290,GND,GND,rtlcn405,clk,minuend_9(2)) ;
   DFFPCE (addend_1n10ss1_482,GND,GND,rtlcn409,clk,addend_8(2)) ;
   DFFPCE (subtrahend_1n10ss1_258,GND,GND,rtlcn413,clk,subtrahend_8(2)) ;
   DFFPCE (minuend_1n10ss1_258,GND,GND,rtlcn417,clk,minuend_8(2)) ;
   DFFPCE (addend_1n10ss1_482,GND,GND,rtlcn421,clk,addend_7(2)) ;
   DFFPCE (subtrahend_1n10ss1_226,GND,GND,rtlcn425,clk,subtrahend_7(2)) ;
   DFFPCE (minuend_1n10ss1_226,GND,GND,rtlcn429,clk,minuend_7(2)) ;
   DFFPCE (addend_1n10ss1_482,GND,GND,rtlcn433,clk,addend_6(2)) ;
   DFFPCE (subtrahend_1n10ss1_194,GND,GND,rtlcn437,clk,subtrahend_6(2)) ;
   DFFPCE (minuend_1n10ss1_194,GND,GND,rtlcn441,clk,minuend_6(2)) ;
   DFFPCE (addend_1n10ss1_482,GND,GND,rtlcn445,clk,addend_5(2)) ;
   DFFPCE (subtrahend_1n10ss1_162,GND,GND,rtlcn449,clk,subtrahend_5(2)) ;
   DFFPCE (minuend_1n10ss1_162,GND,GND,rtlcn453,clk,minuend_5(2)) ;
   DFFPCE (addend_1n10ss1_482,GND,GND,rtlcn457,clk,addend_4(2)) ;
   DFFPCE (subtrahend_1n10ss1_130,GND,GND,rtlcn461,clk,subtrahend_4(2)) ;
   DFFPCE (minuend_1n10ss1_130,GND,GND,rtlcn465,clk,minuend_4(2)) ;
   DFFPCE (addend_1n10ss1_482,GND,GND,rtlcn469,clk,addend_3(2)) ;
   DFFPCE (subtrahend_1n10ss1_98,GND,GND,rtlcn473,clk,subtrahend_3(2)) ;
   DFFPCE (minuend_1n10ss1_98,GND,GND,rtlcn477,clk,minuend_3(2)) ;
   DFFPCE (addend_1n10ss1_482,GND,GND,rtlcn481,clk,addend_2(2)) ;
   DFFPCE (subtrahend_1n10ss1_66,GND,GND,rtlcn485,clk,subtrahend_2(2)) ;
   DFFPCE (minuend_1n10ss1_66,GND,GND,rtlcn489,clk,minuend_2(2)) ;
   DFFPCE (addend_1n10ss1_482,GND,GND,rtlcn493,clk,addend_1(2)) ;
   DFFPCE (subtrahend_1n10ss1_34,GND,GND,rtlcn497,clk,subtrahend_1(2)) ;
   DFFPCE (minuend_1n10ss1_34,GND,GND,rtlcn501,clk,minuend_1(2)) ;
   DFFPCE (addend_1n10ss1_482,GND,GND,rtlcn505,clk,addend_0(2)) ;
   DFFPCE (subtrahend_1n10ss1_2,GND,GND,rtlcn509,clk,subtrahend_0(2)) ;
   DFFPCE (minuend_1n10ss1_2,GND,GND,rtlcn513,clk,minuend_0(2)) ;
   DFFPCE (addend_1n10ss1_481,GND,GND,rtlcn325,clk,addend_15(1)) ;
   DFFPCE (subtrahend_1n10ss1_481,GND,GND,rtlcn329,clk,subtrahend_15(1)) ;
   DFFPCE (minuend_1n10ss1_481,GND,GND,rtlcn333,clk,minuend_15(1)) ;
   DFFPCE (addend_1n10ss1_481,GND,GND,rtlcn337,clk,addend_14(1)) ;
   DFFPCE (subtrahend_1n10ss1_449,GND,GND,rtlcn341,clk,subtrahend_14(1)) ;
   DFFPCE (minuend_1n10ss1_449,GND,GND,rtlcn345,clk,minuend_14(1)) ;
   DFFPCE (addend_1n10ss1_481,GND,GND,rtlcn349,clk,addend_13(1)) ;
   DFFPCE (subtrahend_1n10ss1_417,GND,GND,rtlcn353,clk,subtrahend_13(1)) ;
   DFFPCE (minuend_1n10ss1_417,GND,GND,rtlcn357,clk,minuend_13(1)) ;
   DFFPCE (addend_1n10ss1_481,GND,GND,rtlcn361,clk,addend_12(1)) ;
   DFFPCE (subtrahend_1n10ss1_385,GND,GND,rtlcn365,clk,subtrahend_12(1)) ;
   DFFPCE (minuend_1n10ss1_385,GND,GND,rtlcn369,clk,minuend_12(1)) ;
   DFFPCE (addend_1n10ss1_481,GND,GND,rtlcn373,clk,addend_11(1)) ;
   DFFPCE (subtrahend_1n10ss1_353,GND,GND,rtlcn377,clk,subtrahend_11(1)) ;
   DFFPCE (minuend_1n10ss1_353,GND,GND,rtlcn381,clk,minuend_11(1)) ;
   DFFPCE (addend_1n10ss1_481,GND,GND,rtlcn385,clk,addend_10(1)) ;
   DFFPCE (subtrahend_1n10ss1_321,GND,GND,rtlcn389,clk,subtrahend_10(1)) ;
   DFFPCE (minuend_1n10ss1_321,GND,GND,rtlcn393,clk,minuend_10(1)) ;
   DFFPCE (addend_1n10ss1_481,GND,GND,rtlcn397,clk,addend_9(1)) ;
   DFFPCE (subtrahend_1n10ss1_289,GND,GND,rtlcn401,clk,subtrahend_9(1)) ;
   DFFPCE (minuend_1n10ss1_289,GND,GND,rtlcn405,clk,minuend_9(1)) ;
   DFFPCE (addend_1n10ss1_481,GND,GND,rtlcn409,clk,addend_8(1)) ;
   DFFPCE (subtrahend_1n10ss1_257,GND,GND,rtlcn413,clk,subtrahend_8(1)) ;
   DFFPCE (minuend_1n10ss1_257,GND,GND,rtlcn417,clk,minuend_8(1)) ;
   DFFPCE (addend_1n10ss1_481,GND,GND,rtlcn421,clk,addend_7(1)) ;
   DFFPCE (subtrahend_1n10ss1_225,GND,GND,rtlcn425,clk,subtrahend_7(1)) ;
   DFFPCE (minuend_1n10ss1_225,GND,GND,rtlcn429,clk,minuend_7(1)) ;
   DFFPCE (addend_1n10ss1_481,GND,GND,rtlcn433,clk,addend_6(1)) ;
   DFFPCE (subtrahend_1n10ss1_193,GND,GND,rtlcn437,clk,subtrahend_6(1)) ;
   DFFPCE (minuend_1n10ss1_193,GND,GND,rtlcn441,clk,minuend_6(1)) ;
   DFFPCE (addend_1n10ss1_481,GND,GND,rtlcn445,clk,addend_5(1)) ;
   DFFPCE (subtrahend_1n10ss1_161,GND,GND,rtlcn449,clk,subtrahend_5(1)) ;
   DFFPCE (minuend_1n10ss1_161,GND,GND,rtlcn453,clk,minuend_5(1)) ;
   DFFPCE (addend_1n10ss1_481,GND,GND,rtlcn457,clk,addend_4(1)) ;
   DFFPCE (subtrahend_1n10ss1_129,GND,GND,rtlcn461,clk,subtrahend_4(1)) ;
   DFFPCE (minuend_1n10ss1_129,GND,GND,rtlcn465,clk,minuend_4(1)) ;
   DFFPCE (addend_1n10ss1_481,GND,GND,rtlcn469,clk,addend_3(1)) ;
   DFFPCE (subtrahend_1n10ss1_97,GND,GND,rtlcn473,clk,subtrahend_3(1)) ;
   DFFPCE (minuend_1n10ss1_97,GND,GND,rtlcn477,clk,minuend_3(1)) ;
   DFFPCE (addend_1n10ss1_481,GND,GND,rtlcn481,clk,addend_2(1)) ;
   DFFPCE (subtrahend_1n10ss1_65,GND,GND,rtlcn485,clk,subtrahend_2(1)) ;
   DFFPCE (minuend_1n10ss1_65,GND,GND,rtlcn489,clk,minuend_2(1)) ;
   DFFPCE (addend_1n10ss1_481,GND,GND,rtlcn493,clk,addend_1(1)) ;
   DFFPCE (subtrahend_1n10ss1_33,GND,GND,rtlcn497,clk,subtrahend_1(1)) ;
   DFFPCE (minuend_1n10ss1_33,GND,GND,rtlcn501,clk,minuend_1(1)) ;
   DFFPCE (addend_1n10ss1_481,GND,GND,rtlcn505,clk,addend_0(1)) ;
   DFFPCE (subtrahend_1n10ss1_1,GND,GND,rtlcn509,clk,subtrahend_0(1)) ;
   DFFPCE (minuend_1n10ss1_1,GND,GND,rtlcn513,clk,minuend_0(1)) ;
   DFFPCE (addend_1n10ss1_480,GND,GND,rtlcn325,clk,addend_15(0)) ;
   DFFPCE (subtrahend_1n10ss1_480,GND,GND,rtlcn329,clk,subtrahend_15(0)) ;
   DFFPCE (minuend_1n10ss1_480,GND,GND,rtlcn333,clk,minuend_15(0)) ;
   DFFPCE (addend_1n10ss1_480,GND,GND,rtlcn337,clk,addend_14(0)) ;
   DFFPCE (subtrahend_1n10ss1_448,GND,GND,rtlcn341,clk,subtrahend_14(0)) ;
   DFFPCE (minuend_1n10ss1_448,GND,GND,rtlcn345,clk,minuend_14(0)) ;
   DFFPCE (addend_1n10ss1_480,GND,GND,rtlcn349,clk,addend_13(0)) ;
   DFFPCE (subtrahend_1n10ss1_416,GND,GND,rtlcn353,clk,subtrahend_13(0)) ;
   DFFPCE (minuend_1n10ss1_416,GND,GND,rtlcn357,clk,minuend_13(0)) ;
   DFFPCE (addend_1n10ss1_480,GND,GND,rtlcn361,clk,addend_12(0)) ;
   DFFPCE (subtrahend_1n10ss1_384,GND,GND,rtlcn365,clk,subtrahend_12(0)) ;
   DFFPCE (minuend_1n10ss1_384,GND,GND,rtlcn369,clk,minuend_12(0)) ;
   DFFPCE (addend_1n10ss1_480,GND,GND,rtlcn373,clk,addend_11(0)) ;
   DFFPCE (subtrahend_1n10ss1_352,GND,GND,rtlcn377,clk,subtrahend_11(0)) ;
   DFFPCE (minuend_1n10ss1_352,GND,GND,rtlcn381,clk,minuend_11(0)) ;
   DFFPCE (addend_1n10ss1_480,GND,GND,rtlcn385,clk,addend_10(0)) ;
   DFFPCE (subtrahend_1n10ss1_320,GND,GND,rtlcn389,clk,subtrahend_10(0)) ;
   DFFPCE (minuend_1n10ss1_320,GND,GND,rtlcn393,clk,minuend_10(0)) ;
   DFFPCE (addend_1n10ss1_480,GND,GND,rtlcn397,clk,addend_9(0)) ;
   DFFPCE (subtrahend_1n10ss1_288,GND,GND,rtlcn401,clk,subtrahend_9(0)) ;
   DFFPCE (minuend_1n10ss1_288,GND,GND,rtlcn405,clk,minuend_9(0)) ;
   DFFPCE (addend_1n10ss1_480,GND,GND,rtlcn409,clk,addend_8(0)) ;
   DFFPCE (subtrahend_1n10ss1_256,GND,GND,rtlcn413,clk,subtrahend_8(0)) ;
   DFFPCE (minuend_1n10ss1_256,GND,GND,rtlcn417,clk,minuend_8(0)) ;
   DFFPCE (addend_1n10ss1_480,GND,GND,rtlcn421,clk,addend_7(0)) ;
   DFFPCE (subtrahend_1n10ss1_224,GND,GND,rtlcn425,clk,subtrahend_7(0)) ;
   DFFPCE (minuend_1n10ss1_224,GND,GND,rtlcn429,clk,minuend_7(0)) ;
   DFFPCE (addend_1n10ss1_480,GND,GND,rtlcn433,clk,addend_6(0)) ;
   DFFPCE (subtrahend_1n10ss1_192,GND,GND,rtlcn437,clk,subtrahend_6(0)) ;
   DFFPCE (minuend_1n10ss1_192,GND,GND,rtlcn441,clk,minuend_6(0)) ;
   DFFPCE (addend_1n10ss1_480,GND,GND,rtlcn445,clk,addend_5(0)) ;
   DFFPCE (subtrahend_1n10ss1_160,GND,GND,rtlcn449,clk,subtrahend_5(0)) ;
   DFFPCE (minuend_1n10ss1_160,GND,GND,rtlcn453,clk,minuend_5(0)) ;
   DFFPCE (addend_1n10ss1_480,GND,GND,rtlcn457,clk,addend_4(0)) ;
   DFFPCE (subtrahend_1n10ss1_128,GND,GND,rtlcn461,clk,subtrahend_4(0)) ;
   DFFPCE (minuend_1n10ss1_128,GND,GND,rtlcn465,clk,minuend_4(0)) ;
   DFFPCE (addend_1n10ss1_480,GND,GND,rtlcn469,clk,addend_3(0)) ;
   DFFPCE (subtrahend_1n10ss1_96,GND,GND,rtlcn473,clk,subtrahend_3(0)) ;
   DFFPCE (minuend_1n10ss1_96,GND,GND,rtlcn477,clk,minuend_3(0)) ;
   DFFPCE (addend_1n10ss1_480,GND,GND,rtlcn481,clk,addend_2(0)) ;
   DFFPCE (subtrahend_1n10ss1_64,GND,GND,rtlcn485,clk,subtrahend_2(0)) ;
   DFFPCE (minuend_1n10ss1_64,GND,GND,rtlcn489,clk,minuend_2(0)) ;
   DFFPCE (addend_1n10ss1_480,GND,GND,rtlcn493,clk,addend_1(0)) ;
   DFFPCE (subtrahend_1n10ss1_32,GND,GND,rtlcn497,clk,subtrahend_1(0)) ;
   DFFPCE (minuend_1n10ss1_32,GND,GND,rtlcn501,clk,minuend_1(0)) ;
   DFFPCE (addend_1n10ss1_480,GND,GND,rtlcn505,clk,addend_0(0)) ;
   DFFPCE (subtrahend_1n10ss1_0,GND,GND,rtlcn509,clk,subtrahend_0(0)) ;
   DFFPCE (minuend_1n10ss1_0,GND,GND,rtlcn513,clk,minuend_0(0)) ;
   DFFRSE (rtlcs5,GND,not_rtlcn10652,not_rtlc1n12117,clk,compute_flag) ;
   DFFRSE (rtlcs5,GND,not_rtlcn10651,not_rtlc1n12118,clk,flag) ;
   DFFRSE (p_1n7s2_31,GND,not_rtlcn10652,not_rtlc1n12117,clk,p_31) ;
   rtlc1n12225 <= rtlc1n12117 OR rtlcn181 ;
   rtlc_24180_and_291_nx0 <= rtlc0n246 AND rtlcn10421 ;
   rtlcn8784 <= rtlc_24180_and_291_nx0 AND rtlcn10424 ;
   rtlc_24189_and_292_nx0 <= rtlc0n240 AND rtlcn10422 ;
   rtlcn8797 <= rtlc_24189_and_292_nx0 AND rtlcn10423 ;
   rtlc_24197_and_293_nx0 <= state(1) AND rtlcs5 ;
   rtlcn10488 <= rtlc_24197_and_293_nx0 AND rtlc1n2916 ;
   rtlc_24198_or_294_nx0 <= state(2) OR rtlcn10420 ;
   rtlcn8821 <= rtlc_24198_or_294_nx0 OR rtlcn10488 ;
   rtlcn10726 <= rtlc1n12165 AND rtlcn10661 ;
   rtlc_24605_or_296_nx0 <= state(4) OR rtlcn10725 ;
   rtlcn10655 <= rtlc_24605_or_296_nx0 OR rtlcn10726 ;
   nx3008 <= rtlcn8821 OR not_rtlcn10655 ;
   modgen_counter_column : counter_up_sclear_clock_clk_en_0_32_cx7_lab3
       port map ( clock=>clk, q(31)=>column(31), q(30)=>column(30), q(29)=>
      column(29), q(28)=>column(28), q(27)=>column(27), q(26)=>column(26), 
      q(25)=>column(25), q(24)=>column(24), q(23)=>column(23), q(22)=>
      column(22), q(21)=>column(21), q(20)=>column(20), q(19)=>column(19), 
      q(18)=>column(18), q(17)=>column(17), q(16)=>column(16), q(15)=>
      column(15), q(14)=>column(14), q(13)=>column(13), q(12)=>column(12), 
      q(11)=>column(11), q(10)=>column(10), q(9)=>column(9), q(8)=>column(8), 
      q(7)=>column(7), q(6)=>column(6), q(5)=>column(5), q(4)=>column(4), 
      q(3)=>column(3), q(2)=>column(2), q(1)=>column(1), q(0)=>column(0), 
      clk_en=>nx3008, aclear=>GND, sload=>GND, data(31)=>DANGLING(0,17), 
      data(30)=>DANGLING(0,18), data(29)=>DANGLING(0,19), data(28)=>
      DANGLING(0,20), data(27)=>DANGLING(0,21), data(26)=>DANGLING(0,22), 
      data(25)=>DANGLING(0,23), data(24)=>DANGLING(0,24), data(23)=>
      DANGLING(0,25), data(22)=>DANGLING(0,26), data(21)=>DANGLING(0,27), 
      data(20)=>DANGLING(0,28), data(19)=>DANGLING(0,29), data(18)=>
      DANGLING(0,30), data(17)=>DANGLING(0,31), data(16)=>DANGLING(0,32), 
      data(15)=>DANGLING(0,33), data(14)=>DANGLING(0,34), data(13)=>
      DANGLING(0,35), data(12)=>DANGLING(0,36), data(11)=>DANGLING(0,37), 
      data(10)=>DANGLING(0,38), data(9)=>DANGLING(0,39), data(8)=>
      DANGLING(0,40), data(7)=>DANGLING(0,41), data(6)=>DANGLING(0,42), 
      data(5)=>DANGLING(0,43), data(4)=>DANGLING(0,44), data(3)=>
      DANGLING(0,45), data(2)=>DANGLING(0,46), data(1)=>DANGLING(0,47), 
      data(0)=>DANGLING(0,48), aset=>GND, sclear=>rtlcn8821, updn=>PWR, 
      cnt_en=>PWR);
   ix3014 : decoder_4 port map ( data(3)=>column(3), data(2)=>column(2), 
      data(1)=>column(1), data(0)=>column(0), eq(15)=>minuend_1n1s2(15), 
      eq(14)=>minuend_1n1s2(14), eq(13)=>minuend_1n1s2(13), eq(12)=>
      minuend_1n1s2(12), eq(11)=>minuend_1n1s2(11), eq(10)=>
      minuend_1n1s2(10), eq(9)=>minuend_1n1s2(9), eq(8)=>minuend_1n1s2(8), 
      eq(7)=>minuend_1n1s2(7), eq(6)=>minuend_1n1s2(6), eq(5)=>
      minuend_1n1s2(5), eq(4)=>minuend_1n1s2(4), eq(3)=>minuend_1n1s2(3), 
      eq(2)=>minuend_1n1s2(2), eq(1)=>minuend_1n1s2(1), eq(0)=>
      minuend_1n1s2(0));
   modgen_and_0 : and_5u_5u port map ( a(4)=>not_row_3, a(3)=>not_row_2, 
      a(2)=>not_row_1, a(1)=>not_row_0, a(0)=>rtlcs2, d=>rtlcs6);
   modgen_and_2 : and_5u_5u port map ( a(4)=>row(3), a(3)=>row(2), a(2)=>
      row(1), a(1)=>row(0), a(0)=>rtlcs2, d=>rtlcs0);
   modgen_and_3 : and_7u_7u port map ( a(6)=>row(0), a(5)=>flag, a(4)=>
      not_row_3, a(3)=>not_row_2, a(2)=>not_row_1, a(1)=>rtlcs2, a(0)=>
      rtlcs5, d=>rtlcs3);
end main ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_aclear_clock_0_11_cx3_uart is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (10 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (10 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_aclear_clock_0_11_cx3_uart ;

architecture INTERFACE of counter_up_sclear_aclear_clock_0_11_cx3_uart is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component inc_11u_11u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, 
      nx46, nx47, sclear_and_0_dup_136, sclear_and_1_dup_137, 
      sclear_and_2_dup_138, sclear_and_3_dup_139, sclear_and_4_dup_140, 
      sclear_and_5_dup_141, sclear_and_6_dup_142, sclear_and_7_dup_143, 
      sclear_and_8_dup_144, sclear_and_9_dup_145, sclear_and_10_dup_146, 
      inc_d_0, inc_d_1, inc_d_2, inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, 
      inc_d_8, inc_d_9, inc_d_10, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(10) <= nx47 ;
   q(9) <= nx46 ;
   q(8) <= nx45 ;
   q(7) <= nx44 ;
   q(6) <= nx43 ;
   q(5) <= nx42 ;
   q(4) <= nx41 ;
   q(3) <= nx40 ;
   q(2) <= nx39 ;
   q(1) <= nx38 ;
   q(0) <= nx37 ;
   GND <= '0' ;
   PWR <= '1' ;
   DFFPC (sclear_and_10_dup_146,GND,aclear,clock,nx47) ;
   DFFPC (sclear_and_9_dup_145,GND,aclear,clock,nx46) ;
   DFFPC (sclear_and_8_dup_144,GND,aclear,clock,nx45) ;
   DFFPC (sclear_and_7_dup_143,GND,aclear,clock,nx44) ;
   DFFPC (sclear_and_6_dup_142,GND,aclear,clock,nx43) ;
   DFFPC (sclear_and_5_dup_141,GND,aclear,clock,nx42) ;
   DFFPC (sclear_and_4_dup_140,GND,aclear,clock,nx41) ;
   DFFPC (sclear_and_3_dup_139,GND,aclear,clock,nx40) ;
   DFFPC (sclear_and_2_dup_138,GND,aclear,clock,nx39) ;
   DFFPC (sclear_and_1_dup_137,GND,aclear,clock,nx38) ;
   DFFPC (sclear_and_0_dup_136,GND,aclear,clock,nx37) ;
   inc : inc_11u_11u_0_0 port map ( cin=>PWR, a(10)=>nx47, a(9)=>nx46, a(8)
      =>nx45, a(7)=>nx44, a(6)=>nx43, a(5)=>nx42, a(4)=>nx41, a(3)=>nx40, 
      a(2)=>nx39, a(1)=>nx38, a(0)=>nx37, d(10)=>inc_d_10, d(9)=>inc_d_9, 
      d(8)=>inc_d_8, d(7)=>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>
      inc_d_4, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, 
      cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_136 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_137 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_138 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_139 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_140 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_141 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_142 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_143 <= inc_d_7 AND NOT_sclear ;
   sclear_and_8_dup_144 <= inc_d_8 AND NOT_sclear ;
   sclear_and_9_dup_145 <= inc_d_9 AND NOT_sclear ;
   sclear_and_10_dup_146 <= inc_d_10 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_aclear_clock_0_12_cx4_uart is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (11 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (11 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_aclear_clock_0_12_cx4_uart ;

architecture INTERFACE of counter_up_sclear_aclear_clock_0_12_cx4_uart is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component inc_12u_12u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx40, nx41, nx42, nx43, nx44, nx45, nx46, nx47, nx48, 
      nx49, nx50, nx51, sclear_and_0_dup_147, sclear_and_1_dup_148, 
      sclear_and_2_dup_149, sclear_and_3_dup_150, sclear_and_4_dup_151, 
      sclear_and_5_dup_152, sclear_and_6_dup_153, sclear_and_7_dup_154, 
      sclear_and_8_dup_155, sclear_and_9_dup_156, sclear_and_10_dup_157, 
      sclear_and_11_dup_158, inc_d_0, inc_d_1, inc_d_2, inc_d_3, inc_d_4, 
      inc_d_5, inc_d_6, inc_d_7, inc_d_8, inc_d_9, inc_d_10, inc_d_11, 
      NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(11) <= nx51 ;
   q(10) <= nx50 ;
   q(9) <= nx49 ;
   q(8) <= nx48 ;
   q(7) <= nx47 ;
   q(6) <= nx46 ;
   q(5) <= nx45 ;
   q(4) <= nx44 ;
   q(3) <= nx43 ;
   q(2) <= nx42 ;
   q(1) <= nx41 ;
   q(0) <= nx40 ;
   GND <= '0' ;
   PWR <= '1' ;
   DFFPC (sclear_and_11_dup_158,GND,aclear,clock,nx51) ;
   DFFPC (sclear_and_10_dup_157,GND,aclear,clock,nx50) ;
   DFFPC (sclear_and_9_dup_156,GND,aclear,clock,nx49) ;
   DFFPC (sclear_and_8_dup_155,GND,aclear,clock,nx48) ;
   DFFPC (sclear_and_7_dup_154,GND,aclear,clock,nx47) ;
   DFFPC (sclear_and_6_dup_153,GND,aclear,clock,nx46) ;
   DFFPC (sclear_and_5_dup_152,GND,aclear,clock,nx45) ;
   DFFPC (sclear_and_4_dup_151,GND,aclear,clock,nx44) ;
   DFFPC (sclear_and_3_dup_150,GND,aclear,clock,nx43) ;
   DFFPC (sclear_and_2_dup_149,GND,aclear,clock,nx42) ;
   DFFPC (sclear_and_1_dup_148,GND,aclear,clock,nx41) ;
   DFFPC (sclear_and_0_dup_147,GND,aclear,clock,nx40) ;
   inc : inc_12u_12u_0_0 port map ( cin=>PWR, a(11)=>nx51, a(10)=>nx50, a(9)
      =>nx49, a(8)=>nx48, a(7)=>nx47, a(6)=>nx46, a(5)=>nx45, a(4)=>nx44, 
      a(3)=>nx43, a(2)=>nx42, a(1)=>nx41, a(0)=>nx40, d(11)=>inc_d_11, d(10)
      =>inc_d_10, d(9)=>inc_d_9, d(8)=>inc_d_8, d(7)=>inc_d_7, d(6)=>inc_d_6, 
      d(5)=>inc_d_5, d(4)=>inc_d_4, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>
      inc_d_1, d(0)=>inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_147 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_148 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_149 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_150 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_151 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_152 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_153 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_154 <= inc_d_7 AND NOT_sclear ;
   sclear_and_8_dup_155 <= inc_d_8 AND NOT_sclear ;
   sclear_and_9_dup_156 <= inc_d_9 AND NOT_sclear ;
   sclear_and_10_dup_157 <= inc_d_10 AND NOT_sclear ;
   sclear_and_11_dup_158 <= inc_d_11 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx5_uart is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (3 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (3 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx5_uart ;

architecture INTERFACE of 
   counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx5_uart is 
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
   component dec_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx16, nx17, nx18, nx19, nx20, nx22, sload_mux_0_dup_53, 
      sload_mux_1_dup_54, sload_mux_2_dup_55, sload_mux_3_dup_56, dec_d_0, 
      dec_d_1, dec_d_2, dec_d_3: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(3) <= nx19 ;
   q(2) <= nx18 ;
   q(1) <= nx17 ;
   q(0) <= nx16 ;
   GND <= '0' ;
   nx20 <= cnt_en OR sload ;
   nx22 <= clk_en AND nx20 ;
   DFFPCE (sload_mux_3_dup_56,GND,aclear,nx22,clock,nx19) ;
   DFFPCE (sload_mux_2_dup_55,GND,aclear,nx22,clock,nx18) ;
   DFFPCE (sload_mux_1_dup_54,GND,aclear,nx22,clock,nx17) ;
   DFFPCE (sload_mux_0_dup_53,GND,aclear,nx22,clock,nx16) ;
   dec : dec_4u_4u_0_0 port map ( cin=>GND, a(3)=>nx19, a(2)=>nx18, a(1)=>
      nx17, a(0)=>nx16, d(3)=>dec_d_3, d(2)=>dec_d_2, d(1)=>dec_d_1, d(0)=>
      dec_d_0, cout=>DANGLING(0,0));
   sload_mux_0_dup_53 <= data(0) when sload = '1' else dec_d_0 ;
   sload_mux_1_dup_54 <= data(1) when sload = '1' else dec_d_1 ;
   sload_mux_2_dup_55 <= data(2) when sload = '1' else dec_d_2 ;
   sload_mux_3_dup_56 <= data(3) when sload = '1' else dec_d_3 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx6_uart is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (3 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (3 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx6_uart ;

architecture INTERFACE of 
   counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx6_uart is 
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
   component inc_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx16, nx17, nx18, nx19, nx24, nx26, sclear_and_0_dup_59, 
      sclear_and_1_dup_60, sclear_and_2_dup_61, sclear_and_3_dup_62, inc_d_0, 
      inc_d_1, inc_d_2, inc_d_3, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(3) <= nx19 ;
   q(2) <= nx18 ;
   q(1) <= nx17 ;
   q(0) <= nx16 ;
   GND <= '0' ;
   PWR <= '1' ;
   nx24 <= cnt_en OR sclear ;
   nx26 <= nx24 AND clk_en ;
   DFFPCE (sclear_and_3_dup_62,GND,aclear,nx26,clock,nx19) ;
   DFFPCE (sclear_and_2_dup_61,GND,aclear,nx26,clock,nx18) ;
   DFFPCE (sclear_and_1_dup_60,GND,aclear,nx26,clock,nx17) ;
   DFFPCE (sclear_and_0_dup_59,GND,aclear,nx26,clock,nx16) ;
   inc : inc_4u_4u_0_0 port map ( cin=>PWR, a(3)=>nx19, a(2)=>nx18, a(1)=>
      nx17, a(0)=>nx16, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>
      inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_59 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_60 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_61 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_62 <= inc_d_3 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity uart is 
   port (
      CLK : IN std_logic ;
      RST : IN std_logic ;
      Din : IN std_logic_vector (7 DOWNTO 0) ;
      LD : IN std_logic ;
      Rx : IN std_logic ;
      Baud : IN std_logic ;
      Dout : OUT std_logic_vector (7 DOWNTO 0) ;
      Tx : OUT std_logic ;
      TxBusy : OUT std_logic ;
      RxErr : OUT std_logic ;
      RxRDY : OUT std_logic) ;
end uart ;

architecture main_unfold_2098 of uart is 
   component select_3_3
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component mux_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component mux_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_sclear_aclear_clock_0_11_cx3_uart
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (10 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (10 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_sclear_aclear_clock_0_12_cx4_uart
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (11 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (11 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx5_uart
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (3 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (3 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx6_uart
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (3 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (3 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component eq_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component eq_9u_9u
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
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
   signal Tx_Reg: std_logic_vector (8 DOWNTO 1) ;
   
   signal GND: std_logic ;
   
   signal Rx_Reg: std_logic_vector (7 DOWNTO 0) ;
   
   signal RxDivisor_4: std_logic ;
   
   signal RxDiv: std_logic_vector (10 DOWNTO 0) ;
   
   signal TxDiv: std_logic_vector (11 DOWNTO 0) ;
   
   signal TopTx, TopRx: std_logic ;
   
   signal TxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal RxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal Rx_r: std_logic ;
   
   signal RxFSM: std_logic_vector (5 DOWNTO 0) ;
   
   signal TxFSM: std_logic_vector (1 DOWNTO 0) ;
   
   signal PWR, rtlc8n72: std_logic ;
   
   signal Tx_Reg_14n6ss1: std_logic_vector (8 DOWNTO 0) ;
   
   signal not_LD, not_rtlcs3, rtlc14n163, rtlc14n167, rtlc14n218, 
      not_TxFSM_1, not_rtlcn20, not_TopTx, rtlc14n223, rtlc14_X_0_n224, 
      rtlc14n234, not_rtlc14_X_0_n224, rtlc14n289, not_rtlcn22, 
      not_rtlc14n167, not_rtlcn24, not_Rx_r, not_Rx, rtlc17n282, rtlc17n287, 
      not_TopRx, rtlc17n335, rtlc17n414, not_rtlc17n287, not_rtlcn26, 
      rtlcn20, rtlcn22, rtlcn24, rtlcn26, not_TxFSM_0, rtlcn52, rtlcn58, 
      rtlcn63, rtlcn68, rtlcn72, rtlcn78, rtlcn86, rtlcn92, not_rtlcn132, 
      not_RxFSM_0, not_rtlcs5, rtlcn113, rtlcn114, rtlcn115, rtlcn116, 
      not_rtlcs4, not_rtlc14n289, rtlcn132, not_RxFSM_4, rtlcs0, rtlcs1, 
      rtlcs3, rtlcs4, rtlcs5, not_RxBitCnt_2, not_RxBitCnt_1, not_RxBitCnt_0, 
      not_RxDiv_9, not_RxDiv_5, not_RxDiv_1, not_TxDiv_10, not_TxDiv_6, 
      not_TxDiv_2, not_TxBitCnt_3, not_TxBitCnt_2, not_TxBitCnt_1, 
      not_rtlc17n335, rtlcs6, rtlcs7, rtlc14_109_or_318_nx0: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   RxErr <= GND ;
   GND <= '0' ;
   PWR <= '1' ;
   rtlc8n72 <= RxFSM(0) OR rtlcs0 ;
   rtlc14n289 <= rtlcs4 OR rtlc14n218 ;
   rtlc14n163 <= not_TopTx OR not_rtlcs3 ;
   not_TopTx <= NOT TopTx ;
   rtlc14n223 <= not_TopTx AND TxFSM(1) ;
   rtlc14n218 <= TxFSM(1) AND TxFSM(0) ;
   not_rtlc14_X_0_n224 <= NOT rtlc14_X_0_n224 ;
   not_TxFSM_1 <= NOT TxFSM(1) ;
   rtlc14n234 <= TopTx AND not_TxFSM_1 ;
   not_rtlcs3 <= NOT rtlcs3 ;
   rtlc17n282 <= not_TopRx OR not_Rx_r ;
   not_TopRx <= NOT TopRx ;
   rtlc17n335 <= not_TopRx AND RxFSM(3) ;
   not_Rx <= NOT Rx ;
   not_rtlcn20 <= NOT rtlcn20 ;
   rtlcn20 <= TxFSM(1) OR TxFSM(0) ;
   rtlc_82_select_319 : select_3_3 port map ( a(2)=>RxFSM(0), a(1)=>
      not_rtlcn132, a(0)=>RxFSM(5), b(2)=>Rx_r, b(1)=>not_TopRx, b(0)=>
      not_Rx, d=>rtlcn26);
   Tx_Reg_mux_14i1 : mux_3u_3u port map ( a(2)=>Tx_Reg(1), a(1)=>GND, a(0)=>
      PWR, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>TxFSM(0), d=>Tx_Reg_14n6ss1(0));
   rtlc_127_mux_321 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_TopTx, a(1)
      =>PWR, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>
      TxFSM(0), d=>rtlc14n167);
   rtlc_128_mux_322 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_TopTx, a(1)
      =>not_TopTx, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), b(0)
      =>TxFSM(0), d=>rtlcn22);
   rtlc_129_mux_323 : mux_4u_4u port map ( a(3)=>not_TopTx, a(2)=>rtlc14n163, 
      a(1)=>not_TopTx, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), 
      b(0)=>TxFSM(0), d=>rtlcn24);
   not_Rx_r <= NOT Rx_r ;
   not_LD <= NOT LD ;
   not_RxFSM_0 <= NOT RxFSM(0) ;
   not_TxFSM_0 <= NOT TxFSM(0) ;
   not_rtlcs5 <= NOT rtlcs5 ;
   rtlcn52 <= not_rtlcs5 AND RxFSM(2) ;
   rtlcn113 <= not_Rx_r AND RxFSM(1) ;
   rtlcn58 <= RxFSM(3) OR rtlcn113 ;
   rtlcn114 <= RxFSM(4) AND Rx_r ;
   rtlcn63 <= RxFSM(5) OR rtlcn114 ;
   rtlcn68 <= rtlcs5 AND RxFSM(2) ;
   rtlcn72 <= not_RxFSM_0 AND rtlcs0 ;
   rtlcn115 <= RxFSM(4) AND not_Rx_r ;
   rtlcn116 <= Rx_r AND RxFSM(1) ;
   rtlcn78 <= rtlcn115 OR rtlcn116 ;
   not_rtlcs4 <= NOT rtlcs4 ;
   rtlcn86 <= LD OR not_rtlcs4 ;
   not_rtlc14n289 <= NOT rtlc14n289 ;
   not_rtlcn132 <= NOT rtlcn132 ;
   Tx_Reg_14n6ss1(1) <= Tx_Reg(2) when TxFSM(1) = '1' else Din(0) ;
   Tx_Reg_14n6ss1(2) <= Tx_Reg(3) when TxFSM(1) = '1' else Din(1) ;
   Tx_Reg_14n6ss1(3) <= Tx_Reg(4) when TxFSM(1) = '1' else Din(2) ;
   Tx_Reg_14n6ss1(4) <= Tx_Reg(5) when TxFSM(1) = '1' else Din(3) ;
   Tx_Reg_14n6ss1(5) <= Tx_Reg(6) when TxFSM(1) = '1' else Din(4) ;
   Tx_Reg_14n6ss1(6) <= Tx_Reg(7) when TxFSM(1) = '1' else Din(5) ;
   Tx_Reg_14n6ss1(7) <= Tx_Reg(8) when TxFSM(1) = '1' else Din(6) ;
   not_rtlcn24 <= NOT rtlcn24 ;
   not_rtlc14n167 <= NOT rtlc14n167 ;
   not_rtlcn22 <= NOT rtlcn22 ;
   not_rtlcn26 <= NOT rtlcn26 ;
   not_RxFSM_4 <= NOT RxFSM(4) ;
   not_rtlc17n287 <= NOT rtlc17n287 ;
   rtlcn132 <= RxFSM(0) OR RxFSM(5) ;
   not_RxBitCnt_2 <= NOT RxBitCnt(2) ;
   not_RxBitCnt_1 <= NOT RxBitCnt(1) ;
   not_RxBitCnt_0 <= NOT RxBitCnt(0) ;
   rtlc_356_and_325 : and_4u_4u port map ( a(3)=>RxBitCnt(3), a(2)=>
      not_RxBitCnt_2, a(1)=>not_RxBitCnt_1, a(0)=>not_RxBitCnt_0, d=>rtlcs5
   );
   not_RxDiv_9 <= NOT RxDiv(9) ;
   not_RxDiv_5 <= NOT RxDiv(5) ;
   not_RxDiv_1 <= NOT RxDiv(1) ;
   rtlc_366_and_326 : and_4u_4u port map ( a(3)=>not_RxDiv_9, a(2)=>
      not_RxDiv_5, a(1)=>not_RxDiv_1, a(0)=>rtlcs6, d=>rtlcs0);
   rtlc17n287 <= rtlc17n282 OR not_RxFSM_4 ;
   not_TxDiv_10 <= NOT TxDiv(10) ;
   not_TxDiv_6 <= NOT TxDiv(6) ;
   not_TxDiv_2 <= NOT TxDiv(2) ;
   rtlc_377_and_327 : and_4u_4u port map ( a(3)=>not_TxDiv_10, a(2)=>
      not_TxDiv_6, a(1)=>not_TxDiv_2, a(0)=>rtlcs7, d=>rtlcs1);
   not_TxBitCnt_3 <= NOT TxBitCnt(3) ;
   not_TxBitCnt_2 <= NOT TxBitCnt(2) ;
   not_TxBitCnt_1 <= NOT TxBitCnt(1) ;
   rtlc_382_and_328 : and_4u_4u port map ( a(3)=>not_TxBitCnt_3, a(2)=>
      not_TxBitCnt_2, a(1)=>not_TxBitCnt_1, a(0)=>TxBitCnt(0), d=>rtlcs3);
   rtlcs4 <= not_TxFSM_1 AND not_TxFSM_0 ;
   Tx_Reg_14n6ss1(8) <= Din(7) OR TxFSM(1) ;
   rtlc17n414 <= TopRx AND RxFSM(3) ;
   modgen_counter_RxDiv : counter_up_sclear_aclear_clock_0_11_cx3_uart
       port map ( clock=>CLK, q(10)=>RxDiv(10), q(9)=>RxDiv(9), q(8)=>
      RxDiv(8), q(7)=>RxDiv(7), q(6)=>RxDiv(6), q(5)=>RxDiv(5), q(4)=>
      RxDiv(4), q(3)=>RxDiv(3), q(2)=>RxDiv(2), q(1)=>RxDiv(1), q(0)=>
      RxDiv(0), clk_en=>PWR, aclear=>RST, sload=>GND, data(10)=>
      DANGLING(0,0), data(9)=>DANGLING(0,1), data(8)=>DANGLING(0,2), data(7)
      =>DANGLING(0,3), data(6)=>DANGLING(0,4), data(5)=>DANGLING(0,5), 
      data(4)=>DANGLING(0,6), data(3)=>DANGLING(0,7), data(2)=>DANGLING(0,8), 
      data(1)=>DANGLING(0,9), data(0)=>DANGLING(0,10), aset=>GND, sclear=>
      rtlc8n72, updn=>PWR, cnt_en=>PWR);
   modgen_counter_TxDiv : counter_up_sclear_aclear_clock_0_12_cx4_uart
       port map ( clock=>CLK, q(11)=>TxDiv(11), q(10)=>TxDiv(10), q(9)=>
      TxDiv(9), q(8)=>TxDiv(8), q(7)=>TxDiv(7), q(6)=>TxDiv(6), q(5)=>
      TxDiv(5), q(4)=>TxDiv(4), q(3)=>TxDiv(3), q(2)=>TxDiv(2), q(1)=>
      TxDiv(1), q(0)=>TxDiv(0), clk_en=>PWR, aclear=>RST, sload=>GND, 
      data(11)=>DANGLING(0,11), data(10)=>DANGLING(0,12), data(9)=>
      DANGLING(0,13), data(8)=>DANGLING(0,14), data(7)=>DANGLING(0,15), 
      data(6)=>DANGLING(0,16), data(5)=>DANGLING(0,17), data(4)=>
      DANGLING(0,18), data(3)=>DANGLING(0,19), data(2)=>DANGLING(0,20), 
      data(1)=>DANGLING(0,21), data(0)=>DANGLING(0,22), aset=>GND, sclear=>
      rtlcs1, updn=>PWR, cnt_en=>PWR);
   modgen_counter_TxBitCnt : 
      counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx5_uart port map ( 
      clock=>CLK, q(3)=>TxBitCnt(3), q(2)=>TxBitCnt(2), q(1)=>TxBitCnt(1), 
      q(0)=>TxBitCnt(0), clk_en=>not_rtlc14_X_0_n224, aclear=>RST, sload=>
      rtlc14n234, data(3)=>PWR, data(2)=>GND, data(1)=>GND, data(0)=>PWR, 
      aset=>GND, sclear=>GND, updn=>GND, cnt_en=>TxFSM(1));
   not_rtlc17n335 <= NOT rtlc17n335 ;
   modgen_counter_RxBitCnt : 
      counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx6_uart port map ( 
      clock=>CLK, q(3)=>RxBitCnt(3), q(2)=>RxBitCnt(2), q(1)=>RxBitCnt(1), 
      q(0)=>RxBitCnt(0), clk_en=>not_rtlc17n335, aclear=>RST, sload=>GND, 
      data(3)=>DANGLING(0,23), data(2)=>DANGLING(0,24), data(1)=>
      DANGLING(0,25), data(0)=>DANGLING(0,26), aset=>GND, sclear=>RxFSM(0), 
      updn=>PWR, cnt_en=>RxFSM(3));
   rtlceq_s14_eq_329 : eq_8u_8u port map ( a(7)=>RxDiv(10), a(6)=>RxDiv(8), 
      a(5)=>RxDiv(7), a(4)=>RxDiv(6), a(3)=>RxDiv(4), a(2)=>RxDiv(3), a(1)=>
      RxDiv(2), a(0)=>RxDiv(0), b(7)=>GND, b(6)=>GND, b(5)=>RxDivisor_4, 
      b(4)=>RxDivisor_4, b(3)=>RxDivisor_4, b(2)=>RxDivisor_4, b(1)=>GND, 
      b(0)=>GND, d=>rtlcs6);
   rtlceq_s16_eq_330 : eq_9u_9u port map ( a(8)=>TxDiv(11), a(7)=>TxDiv(9), 
      a(6)=>TxDiv(8), a(5)=>TxDiv(7), a(4)=>TxDiv(5), a(3)=>TxDiv(4), a(2)=>
      TxDiv(3), a(1)=>TxDiv(1), a(0)=>TxDiv(0), b(8)=>GND, b(7)=>GND, b(6)=>
      RxDivisor_4, b(5)=>RxDivisor_4, b(4)=>RxDivisor_4, b(3)=>RxDivisor_4, 
      b(2)=>GND, b(1)=>GND, b(0)=>RxDivisor_4, d=>rtlcs7);
   DFFPC (Rx,RST,GND,CLK,Rx_r) ;
   DFFPC (PWR,GND,RST,CLK,RxDivisor_4) ;
   DFFPC (rtlcn72,GND,RST,CLK,TopRx) ;
   DFFPC (rtlcs1,GND,RST,CLK,TopTx) ;
   DFFPCE (not_rtlc14n289,GND,RST,not_rtlcn24,CLK,TxFSM(1)) ;
   DFFPCE (not_TxFSM_0,GND,RST,not_rtlcn24,CLK,TxFSM(0)) ;
   DFFPC (rtlcn86,GND,RST,CLK,TxBusy) ;
   DFFPCE (Tx_Reg_14n6ss1(8),RST,GND,not_rtlc14n167,CLK,Tx_Reg(8)) ;
   DFFPCE (Tx_Reg_14n6ss1(7),RST,GND,not_rtlc14n167,CLK,Tx_Reg(7)) ;
   DFFPCE (Tx_Reg_14n6ss1(6),RST,GND,not_rtlc14n167,CLK,Tx_Reg(6)) ;
   DFFPCE (Tx_Reg_14n6ss1(5),RST,GND,not_rtlc14n167,CLK,Tx_Reg(5)) ;
   DFFPCE (Tx_Reg_14n6ss1(4),RST,GND,not_rtlc14n167,CLK,Tx_Reg(4)) ;
   DFFPCE (Tx_Reg_14n6ss1(3),RST,GND,not_rtlc14n167,CLK,Tx_Reg(3)) ;
   DFFPCE (Tx_Reg_14n6ss1(2),RST,GND,not_rtlc14n167,CLK,Tx_Reg(2)) ;
   DFFPCE (Tx_Reg_14n6ss1(1),RST,GND,not_rtlc14n167,CLK,Tx_Reg(1)) ;
   DFFPCE (Tx_Reg_14n6ss1(0),RST,GND,not_rtlcn22,CLK,Tx) ;
   DFFPCE (rtlcn78,GND,RST,not_rtlcn26,CLK,RxFSM(5)) ;
   DFFPCE (rtlcn68,GND,RST,not_rtlcn26,CLK,RxFSM(4)) ;
   DFFPCE (rtlcn52,GND,RST,not_rtlcn26,CLK,RxFSM(3)) ;
   DFFPCE (rtlcn58,GND,RST,not_rtlcn26,CLK,RxFSM(2)) ;
   DFFPCE (RxFSM(0),GND,RST,not_rtlcn26,CLK,RxFSM(1)) ;
   DFFPCE (rtlcn63,RST,GND,not_rtlcn26,CLK,RxFSM(0)) ;
   DFFPCE (Rx_Reg(7),GND,RST,not_rtlc17n287,CLK,Dout(7)) ;
   DFFPCE (Rx_Reg(6),GND,RST,not_rtlc17n287,CLK,Dout(6)) ;
   DFFPCE (Rx_Reg(5),GND,RST,not_rtlc17n287,CLK,Dout(5)) ;
   DFFPCE (Rx_Reg(4),GND,RST,not_rtlc17n287,CLK,Dout(4)) ;
   DFFPCE (Rx_Reg(3),GND,RST,not_rtlc17n287,CLK,Dout(3)) ;
   DFFPCE (Rx_Reg(2),GND,RST,not_rtlc17n287,CLK,Dout(2)) ;
   DFFPCE (Rx_Reg(1),GND,RST,not_rtlc17n287,CLK,Dout(1)) ;
   DFFPCE (Rx_Reg(0),GND,RST,not_rtlc17n287,CLK,Dout(0)) ;
   DFFPCE (Rx_r,GND,RST,rtlc17n414,CLK,Rx_Reg(7)) ;
   DFFPCE (Rx_Reg(7),GND,RST,rtlc17n414,CLK,Rx_Reg(6)) ;
   DFFPCE (Rx_Reg(6),GND,RST,rtlc17n414,CLK,Rx_Reg(5)) ;
   DFFPCE (Rx_Reg(5),GND,RST,rtlc17n414,CLK,Rx_Reg(4)) ;
   DFFPCE (Rx_Reg(4),GND,RST,rtlc17n414,CLK,Rx_Reg(3)) ;
   DFFPCE (Rx_Reg(3),GND,RST,rtlc17n414,CLK,Rx_Reg(2)) ;
   DFFPCE (Rx_Reg(2),GND,RST,rtlc17n414,CLK,Rx_Reg(1)) ;
   DFFPCE (Rx_Reg(1),GND,RST,rtlc17n414,CLK,Rx_Reg(0)) ;
   DFFPC (rtlcn92,GND,RST,CLK,RxRDY) ;
   rtlc14_109_or_318_nx0 <= rtlc14n218 OR not_rtlcn20 ;
   rtlc14_X_0_n224 <= rtlc14_109_or_318_nx0 OR rtlc14n223 ;
   rtlcn92 <= rtlcn114 AND TopRx ;
end main_unfold_2098 ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_clock_clk_en_0_8_cx8_lab3_top is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_clock_clk_en_0_8_cx8_lab3_top ;

architecture INTERFACE of counter_up_sclear_clock_clk_en_0_8_cx8_lab3_top
    is 
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
   component inc_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal nx16, nx18, nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, 
      sclear_and_0_dup_103, sclear_and_1_dup_104, sclear_and_2_dup_105, 
      sclear_and_3_dup_106, sclear_and_4_dup_107, sclear_and_5_dup_108, 
      sclear_and_6_dup_109, sclear_and_7_dup_110, inc_d_0, inc_d_1, inc_d_2, 
      inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(7) <= nx35 ;
   q(6) <= nx34 ;
   q(5) <= nx33 ;
   q(4) <= nx32 ;
   q(3) <= nx31 ;
   q(2) <= nx30 ;
   q(1) <= nx29 ;
   q(0) <= nx28 ;
   nx16 <= '0' ;
   nx18 <= '1' ;
   DFFPCE (sclear_and_7_dup_110,nx16,nx16,clk_en,clock,nx35) ;
   DFFPCE (sclear_and_6_dup_109,nx16,nx16,clk_en,clock,nx34) ;
   DFFPCE (sclear_and_5_dup_108,nx16,nx16,clk_en,clock,nx33) ;
   DFFPCE (sclear_and_4_dup_107,nx16,nx16,clk_en,clock,nx32) ;
   DFFPCE (sclear_and_3_dup_106,nx16,nx16,clk_en,clock,nx31) ;
   DFFPCE (sclear_and_2_dup_105,nx16,nx16,clk_en,clock,nx30) ;
   DFFPCE (sclear_and_1_dup_104,nx16,nx16,clk_en,clock,nx29) ;
   DFFPCE (sclear_and_0_dup_103,nx16,nx16,clk_en,clock,nx28) ;
   inc : inc_8u_8u_0_0 port map ( cin=>nx18, a(7)=>nx35, a(6)=>nx34, a(5)=>
      nx33, a(4)=>nx32, a(3)=>nx31, a(2)=>nx30, a(1)=>nx29, a(0)=>nx28, d(7)
      =>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>inc_d_4, d(3)=>inc_d_3, 
      d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_103 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_104 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_105 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_106 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_107 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_108 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_109 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_110 <= inc_d_7 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_clock_0_11_cx2_dual_seg7 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (10 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (10 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_clock_0_11_cx2_dual_seg7 ;

architecture INTERFACE of counter_up_sclear_clock_0_11_cx2_dual_seg7 is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component inc_11u_11u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, 
      nx46, nx47, sclear_and_0_dup_136, sclear_and_1_dup_137, 
      sclear_and_2_dup_138, sclear_and_3_dup_139, sclear_and_4_dup_140, 
      sclear_and_5_dup_141, sclear_and_6_dup_142, sclear_and_7_dup_143, 
      sclear_and_8_dup_144, sclear_and_9_dup_145, sclear_and_10_dup_146, 
      inc_d_0, inc_d_1, inc_d_2, inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, 
      inc_d_8, inc_d_9, inc_d_10, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(10) <= nx47 ;
   q(9) <= nx46 ;
   q(8) <= nx45 ;
   q(7) <= nx44 ;
   q(6) <= nx43 ;
   q(5) <= nx42 ;
   q(4) <= nx41 ;
   q(3) <= nx40 ;
   q(2) <= nx39 ;
   q(1) <= nx38 ;
   q(0) <= nx37 ;
   GND <= '0' ;
   PWR <= '1' ;
   DFFPC (sclear_and_10_dup_146,GND,GND,clock,nx47) ;
   DFFPC (sclear_and_9_dup_145,GND,GND,clock,nx46) ;
   DFFPC (sclear_and_8_dup_144,GND,GND,clock,nx45) ;
   DFFPC (sclear_and_7_dup_143,GND,GND,clock,nx44) ;
   DFFPC (sclear_and_6_dup_142,GND,GND,clock,nx43) ;
   DFFPC (sclear_and_5_dup_141,GND,GND,clock,nx42) ;
   DFFPC (sclear_and_4_dup_140,GND,GND,clock,nx41) ;
   DFFPC (sclear_and_3_dup_139,GND,GND,clock,nx40) ;
   DFFPC (sclear_and_2_dup_138,GND,GND,clock,nx39) ;
   DFFPC (sclear_and_1_dup_137,GND,GND,clock,nx38) ;
   DFFPC (sclear_and_0_dup_136,GND,GND,clock,nx37) ;
   inc : inc_11u_11u_0_0 port map ( cin=>PWR, a(10)=>nx47, a(9)=>nx46, a(8)
      =>nx45, a(7)=>nx44, a(6)=>nx43, a(5)=>nx42, a(4)=>nx41, a(3)=>nx40, 
      a(2)=>nx39, a(1)=>nx38, a(0)=>nx37, d(10)=>inc_d_10, d(9)=>inc_d_9, 
      d(8)=>inc_d_8, d(7)=>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>
      inc_d_4, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, 
      cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_136 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_137 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_138 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_139 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_140 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_141 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_142 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_143 <= inc_d_7 AND NOT_sclear ;
   sclear_and_8_dup_144 <= inc_d_8 AND NOT_sclear ;
   sclear_and_9_dup_145 <= inc_d_9 AND NOT_sclear ;
   sclear_and_10_dup_146 <= inc_d_10 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity dual_seg7_notri is 
   port (
      p_o_char_2 : OUT std_logic_vector (7 DOWNTO 6) ;
      p_o_char_1 : OUT std_logic_vector (4 DOWNTO 2) ;
      p_i_pts : IN std_logic_vector (0 DOWNTO 0) ;
      p_clk : IN std_logic ;
      p_i_chars : IN std_logic_vector (13 DOWNTO 0) ;
      p_not_o_char_rtlc6_o_char_1_TE_rtlcGen0 : OUT std_logic ;
      p_not_o_char_rtlc6_o_char_5_TE_rtlcGen2 : OUT std_logic ;
      p_not_o_char_rtlc6_o_char_6_TE_rtlcGen4 : OUT std_logic ;
      p_reset : IN std_logic ;
      p_o_en : OUT std_logic_vector (1 DOWNTO 0)) ;
end dual_seg7_notri ;

architecture main_unfold_1719 of dual_seg7_notri is 
   component counter_up_sclear_clock_0_11_cx2_dual_seg7
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (10 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (10 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
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
   signal muxed_char: std_logic_vector (6 DOWNTO 0) ;
   
   signal o_char_rtlc6_o_char_1_TE_rtlcGen0, 
      o_char_rtlc6_o_char_5_TE_rtlcGen2, o_char_rtlc6_o_char_6_TE_rtlcGen4, 
      prev_reset, rtlc4n29, not_prev_reset, load_reg, prev_char0_en: 
   std_logic ;
   
   signal o_en: std_logic_vector (1 DOWNTO 0) ;
   
   signal GND, PWR: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   p_o_en(0) <= o_en(0) ;
   p_o_en(1) <= o_en(1) ;
   PWR <= '1' ;
   GND <= '0' ;
   o_en(0) <= NOT o_en(1) ;
   load_reg <= o_en(0) XOR prev_char0_en ;
   rtlc4n29 <= p_reset AND not_prev_reset ;
   not_prev_reset <= NOT prev_reset ;
   p_not_o_char_rtlc6_o_char_6_TE_rtlcGen4 <= NOT 
   o_char_rtlc6_o_char_6_TE_rtlcGen4 ;
   p_not_o_char_rtlc6_o_char_5_TE_rtlcGen2 <= NOT 
   o_char_rtlc6_o_char_5_TE_rtlcGen2 ;
   p_not_o_char_rtlc6_o_char_1_TE_rtlcGen0 <= NOT 
   o_char_rtlc6_o_char_1_TE_rtlcGen0 ;
   muxed_char(0) <= p_i_chars(1) when o_en(1) = '1' else p_i_chars(0) ;
   muxed_char(1) <= p_i_chars(3) when o_en(1) = '1' else p_i_chars(2) ;
   muxed_char(2) <= p_i_chars(5) when o_en(1) = '1' else p_i_chars(4) ;
   muxed_char(3) <= p_i_chars(7) when o_en(1) = '1' else p_i_chars(6) ;
   muxed_char(4) <= p_i_chars(9) when o_en(1) = '1' else p_i_chars(8) ;
   muxed_char(5) <= p_i_chars(11) when o_en(1) = '1' else p_i_chars(10) ;
   muxed_char(6) <= p_i_chars(13) when o_en(1) = '1' else p_i_chars(12) ;
   modgen_counter_count : counter_up_sclear_clock_0_11_cx2_dual_seg7
       port map ( clock=>p_clk, q(10)=>o_en(1), q(9)=>DANGLING(0,0), q(8)=>
      DANGLING(0,1), q(7)=>DANGLING(0,2), q(6)=>DANGLING(0,3), q(5)=>
      DANGLING(0,4), q(4)=>DANGLING(0,5), q(3)=>DANGLING(0,6), q(2)=>
      DANGLING(0,7), q(1)=>DANGLING(0,8), q(0)=>DANGLING(0,9), clk_en=>PWR, 
      aclear=>GND, sload=>GND, data(10)=>DANGLING(0,10), data(9)=>
      DANGLING(0,11), data(8)=>DANGLING(0,12), data(7)=>DANGLING(0,13), 
      data(6)=>DANGLING(0,14), data(5)=>DANGLING(0,15), data(4)=>
      DANGLING(0,16), data(3)=>DANGLING(0,17), data(2)=>DANGLING(0,18), 
      data(1)=>DANGLING(0,19), data(0)=>DANGLING(0,20), aset=>GND, sclear=>
      rtlc4n29, updn=>PWR, cnt_en=>PWR);
   DFFPC (p_reset,GND,GND,p_clk,prev_reset) ;
   DFFPC (o_en(0),GND,GND,p_clk,prev_char0_en) ;
   DFFPCE (p_i_pts(0),GND,GND,load_reg,p_clk,p_o_char_2(6)) ;
   DFFPCE (muxed_char(4),GND,GND,load_reg,p_clk,p_o_char_1(4)) ;
   DFFPCE (muxed_char(3),GND,GND,load_reg,p_clk,p_o_char_1(3)) ;
   DFFPCE (muxed_char(2),GND,GND,load_reg,p_clk,p_o_char_1(2)) ;
   DFFPCE (muxed_char(0),GND,GND,load_reg,p_clk,p_o_char_2(7)) ;
   DFFPCE (muxed_char(6),GND,GND,load_reg,p_clk,
   o_char_rtlc6_o_char_6_TE_rtlcGen4) ;
   DFFPCE (muxed_char(5),GND,GND,load_reg,p_clk,
   o_char_rtlc6_o_char_5_TE_rtlcGen2) ;
   DFFPCE (muxed_char(1),GND,GND,load_reg,p_clk,
   o_char_rtlc6_o_char_1_TE_rtlcGen0) ;
end main_unfold_1719 ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity num_seg7_notri is 
   port (
      p_o_en : OUT std_logic_vector (1 DOWNTO 0) ;
      p_reset : IN std_logic ;
      p_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4 : OUT std_logic ;
      p_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2 : OUT std_logic ;
      p_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0 : OUT std_logic ;
      p_clk : IN std_logic ;
      p_i_pts : IN std_logic_vector (0 DOWNTO 0) ;
      p_o_char_2 : OUT std_logic_vector (7 DOWNTO 6) ;
      p_o_char_1 : OUT std_logic_vector (4 DOWNTO 2) ;
      p_i_num : IN std_logic_vector (7 DOWNTO 0)) ;
end num_seg7_notri ;

architecture main_unfold_1345 of num_seg7_notri is 
   component mux_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component dual_seg7_notri
      port (
         p_o_char_2 : OUT std_logic_vector (7 DOWNTO 6) ;
         p_o_char_1 : OUT std_logic_vector (4 DOWNTO 2) ;
         p_i_pts : IN std_logic_vector (0 DOWNTO 0) ;
         p_clk : IN std_logic ;
         p_i_chars : IN std_logic_vector (13 DOWNTO 0) ;
         p_not_o_char_rtlc6_o_char_1_TE_rtlcGen0 : OUT std_logic ;
         p_not_o_char_rtlc6_o_char_5_TE_rtlcGen2 : OUT std_logic ;
         p_not_o_char_rtlc6_o_char_6_TE_rtlcGen4 : OUT std_logic ;
         p_reset : IN std_logic ;
         p_o_en : OUT std_logic_vector (1 DOWNTO 0)) ;
   end component ;
   signal rtlcP1: std_logic_vector (13 DOWNTO 0) ;
   
   signal rtlcs1, not_rtlcn77, rtlcn77, not_rtlcs1, not_rtlcn61, not_rtlcn64, 
      not_rtlcn58, rtlcn64, rtlcn61, not_i_num_4, rtlcn58, not_i_num_5, 
      rtlcs0, not_rtlcn20, rtlcn20, not_rtlcs0, not_rtlcn4, not_rtlcn7, 
      not_rtlcn1, GND, rtlcn7, rtlcn4, not_i_num_0, rtlcn1, not_i_num_1, PWR
   : std_logic ;

begin
   PWR <= '1' ;
   not_i_num_1 <= NOT p_i_num(1) ;
   rtlcn1 <= not_i_num_1 AND p_i_num(0) ;
   not_i_num_0 <= NOT p_i_num(0) ;
   rtlcn4 <= not_i_num_1 AND not_i_num_0 ;
   rtlcn7 <= p_i_num(1) AND p_i_num(0) ;
   GND <= '0' ;
   rtlcP1_muxBus1_0 : mux_4u_4u port map ( a(3)=>not_rtlcn1, a(2)=>
      not_rtlcn7, a(1)=>not_rtlcn4, a(0)=>not_rtlcn1, b(3)=>GND, b(2)=>GND, 
      b(1)=>p_i_num(3), b(0)=>p_i_num(2), d=>rtlcP1(0));
   rtlcP1_muxBus1_1 : mux_4u_4u port map ( a(3)=>rtlcn1, a(2)=>not_rtlcn7, 
      a(1)=>not_rtlcs0, a(0)=>PWR, b(3)=>GND, b(2)=>GND, b(1)=>p_i_num(3), 
      b(0)=>p_i_num(2), d=>rtlcP1(1));
   rtlcn20 <= p_i_num(1) AND not_i_num_0 ;
   rtlcP1_muxBus1_2 : mux_4u_4u port map ( a(3)=>rtlcn1, a(2)=>PWR, a(1)=>
      PWR, a(0)=>not_rtlcn20, b(3)=>GND, b(2)=>GND, b(1)=>p_i_num(3), b(0)=>
      p_i_num(2), d=>rtlcP1(2));
   rtlcP1_muxBus1_3 : mux_4u_4u port map ( a(3)=>not_rtlcn7, a(2)=>
      not_rtlcn20, a(1)=>rtlcs0, a(0)=>not_rtlcn1, b(3)=>GND, b(2)=>GND, 
      b(1)=>p_i_num(3), b(0)=>p_i_num(2), d=>rtlcP1(3));
   rtlcP1_muxBus1_4 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_rtlcn1, a(1)
      =>rtlcn20, a(0)=>not_i_num_0, b(3)=>GND, b(2)=>GND, b(1)=>p_i_num(3), 
      b(0)=>p_i_num(2), d=>rtlcP1(4));
   rtlcP1_muxBus1_5 : mux_4u_4u port map ( a(3)=>not_rtlcn1, a(2)=>PWR, a(1)
      =>not_rtlcn7, a(0)=>rtlcn4, b(3)=>GND, b(2)=>GND, b(1)=>p_i_num(3), 
      b(0)=>p_i_num(2), d=>rtlcP1(5));
   rtlcP1_muxBus1_6 : mux_4u_4u port map ( a(3)=>not_rtlcn4, a(2)=>PWR, a(1)
      =>not_rtlcn7, a(0)=>p_i_num(1), b(3)=>GND, b(2)=>GND, b(1)=>p_i_num(3), 
      b(0)=>p_i_num(2), d=>rtlcP1(6));
   not_i_num_5 <= NOT p_i_num(5) ;
   rtlcn58 <= not_i_num_5 AND p_i_num(4) ;
   not_i_num_4 <= NOT p_i_num(4) ;
   rtlcn61 <= not_i_num_5 AND not_i_num_4 ;
   rtlcn64 <= p_i_num(5) AND p_i_num(4) ;
   rtlcP1_muxBus1_7 : mux_4u_4u port map ( a(3)=>not_rtlcn58, a(2)=>
      not_rtlcn64, a(1)=>not_rtlcn61, a(0)=>not_rtlcn58, b(3)=>GND, b(2)=>
      GND, b(1)=>p_i_num(7), b(0)=>p_i_num(6), d=>rtlcP1(7));
   rtlcP1_muxBus1_8 : mux_4u_4u port map ( a(3)=>rtlcn58, a(2)=>not_rtlcn64, 
      a(1)=>not_rtlcs1, a(0)=>PWR, b(3)=>GND, b(2)=>GND, b(1)=>p_i_num(7), 
      b(0)=>p_i_num(6), d=>rtlcP1(8));
   rtlcn77 <= p_i_num(5) AND not_i_num_4 ;
   rtlcP1_muxBus1_9 : mux_4u_4u port map ( a(3)=>rtlcn58, a(2)=>PWR, a(1)=>
      PWR, a(0)=>not_rtlcn77, b(3)=>GND, b(2)=>GND, b(1)=>p_i_num(7), b(0)=>
      p_i_num(6), d=>rtlcP1(9));
   rtlcP1_muxBus1_10 : mux_4u_4u port map ( a(3)=>not_rtlcn64, a(2)=>
      not_rtlcn77, a(1)=>rtlcs1, a(0)=>not_rtlcn58, b(3)=>GND, b(2)=>GND, 
      b(1)=>p_i_num(7), b(0)=>p_i_num(6), d=>rtlcP1(10));
   rtlcP1_muxBus1_11 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_rtlcn58, 
      a(1)=>rtlcn77, a(0)=>not_i_num_4, b(3)=>GND, b(2)=>GND, b(1)=>
      p_i_num(7), b(0)=>p_i_num(6), d=>rtlcP1(11));
   rtlcP1_muxBus1_12 : mux_4u_4u port map ( a(3)=>not_rtlcn58, a(2)=>PWR, 
      a(1)=>not_rtlcn64, a(0)=>rtlcn61, b(3)=>GND, b(2)=>GND, b(1)=>
      p_i_num(7), b(0)=>p_i_num(6), d=>rtlcP1(12));
   rtlcP1_muxBus1_13 : mux_4u_4u port map ( a(3)=>not_rtlcn61, a(2)=>PWR, 
      a(1)=>not_rtlcn64, a(0)=>p_i_num(5), b(3)=>GND, b(2)=>GND, b(1)=>
      p_i_num(7), b(0)=>p_i_num(6), d=>rtlcP1(13));
   not_rtlcn1 <= NOT rtlcn1 ;
   not_rtlcn7 <= NOT rtlcn7 ;
   not_rtlcn4 <= NOT rtlcn4 ;
   not_rtlcs0 <= NOT rtlcs0 ;
   not_rtlcn20 <= NOT rtlcn20 ;
   not_rtlcn58 <= NOT rtlcn58 ;
   not_rtlcn64 <= NOT rtlcn64 ;
   not_rtlcn61 <= NOT rtlcn61 ;
   not_rtlcs1 <= NOT rtlcs1 ;
   not_rtlcn77 <= NOT rtlcn77 ;
   rtlcs0 <= p_i_num(1) XOR p_i_num(0) ;
   rtlcs1 <= p_i_num(5) XOR p_i_num(4) ;
   u_dual_seg7 : dual_seg7_notri port map ( p_o_char_2(7)=>p_o_char_2(6), 
      p_o_char_2(6)=>p_o_char_2(7), p_o_char_1(4)=>p_o_char_1(4), 
      p_o_char_1(3)=>p_o_char_1(3), p_o_char_1(2)=>p_o_char_1(2), p_i_pts(0)
      =>p_i_pts(0), p_clk=>p_clk, p_i_chars(13)=>rtlcP1(13), p_i_chars(12)=>
      rtlcP1(6), p_i_chars(11)=>rtlcP1(12), p_i_chars(10)=>rtlcP1(5), 
      p_i_chars(9)=>rtlcP1(11), p_i_chars(8)=>rtlcP1(4), p_i_chars(7)=>
      rtlcP1(10), p_i_chars(6)=>rtlcP1(3), p_i_chars(5)=>rtlcP1(9), 
      p_i_chars(4)=>rtlcP1(2), p_i_chars(3)=>rtlcP1(8), p_i_chars(2)=>
      rtlcP1(1), p_i_chars(1)=>rtlcP1(7), p_i_chars(0)=>rtlcP1(0), 
      p_not_o_char_rtlc6_o_char_1_TE_rtlcGen0=>
      p_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0, 
      p_not_o_char_rtlc6_o_char_5_TE_rtlcGen2=>
      p_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2, 
      p_not_o_char_rtlc6_o_char_6_TE_rtlcGen4=>
      p_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4, p_reset=>p_reset, 
      p_o_en(1)=>p_o_en(1), p_o_en(0)=>p_o_en(0));
end main_unfold_1345 ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity lab3_top is 
   port (
      reset_n : IN std_logic ;
      clk : IN std_logic ;
      uart_rx : IN std_logic ;
      uart_tx : OUT std_logic ;
      seg7_en : OUT std_logic_vector (1 DOWNTO 0) ;
      seg7_data : OUT std_logic_vector (7 DOWNTO 0) ;
      led : OUT std_logic_vector (7 DOWNTO 0) ;
      sw : IN std_logic_vector (7 DOWNTO 0)) ;
end lab3_top ;

architecture main of lab3_top is 
   component lab3
      port (
         clk : IN std_logic ;
         reset : IN std_logic ;
         i_valid : IN std_logic ;
         i_data : IN std_logic_vector (7 DOWNTO 0) ;
         o_done : OUT std_logic ;
         o_data : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   component uart
      port (
         CLK : IN std_logic ;
         RST : IN std_logic ;
         Din : IN std_logic_vector (7 DOWNTO 0) ;
         LD : IN std_logic ;
         Rx : IN std_logic ;
         Baud : IN std_logic ;
         Dout : OUT std_logic_vector (7 DOWNTO 0) ;
         Tx : OUT std_logic ;
         TxBusy : OUT std_logic ;
         RxErr : OUT std_logic ;
         RxRDY : OUT std_logic) ;
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
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component counter_up_sclear_clock_clk_en_0_8_cx8_lab3_top
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component num_seg7_notri
      port (
         p_o_en : OUT std_logic_vector (1 DOWNTO 0) ;
         p_reset : IN std_logic ;
         p_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4 : OUT std_logic
          ;
         p_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2 : OUT std_logic
          ;
         p_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0 : OUT std_logic
          ;
         p_clk : IN std_logic ;
         p_i_pts : IN std_logic_vector (0 DOWNTO 0) ;
         p_o_char_2 : OUT std_logic_vector (7 DOWNTO 6) ;
         p_o_char_1 : OUT std_logic_vector (4 DOWNTO 2) ;
         p_i_num : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal reset, i_valid: std_logic ;
   
   signal i_data: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_data: std_logic_vector (7 DOWNTO 0) ;
   
   signal byte_reg: std_logic_vector (7 DOWNTO 0) ;
   
   signal byte_count: std_logic_vector (7 DOWNTO 0) ;
   
   signal seg7_num: std_logic_vector (7 DOWNTO 0) ;
   
   signal seg7_pts_1, led_5_EXMPLR261, tx_busy, byte_valid, PWR: std_logic
    ;
   
   signal byte_reg_2n1ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal byte_valid_3n0r2, byte_valid_3n0r1, rtlcn21, rtlcn24, rtlcn27, 
      rtlcn30, rtlcn33, rtlcn36, rtlcn39, rtlcn42, nx103, 
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0, 
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2, 
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   led(6) <= led_5_EXMPLR261 ;
   led(5) <= led_5_EXMPLR261 ;
   led_5_EXMPLR261 <= '0' ;
   PWR <= '1' ;
   u_lab3 : lab3 port map ( clk=>clk, reset=>reset, i_valid=>i_valid, 
      i_data(7)=>i_data(7), i_data(6)=>i_data(6), i_data(5)=>i_data(5), 
      i_data(4)=>i_data(4), i_data(3)=>i_data(3), i_data(2)=>i_data(2), 
      i_data(1)=>i_data(1), i_data(0)=>i_data(0), o_done=>seg7_pts_1, 
      o_data(7)=>o_data(7), o_data(6)=>o_data(6), o_data(5)=>o_data(5), 
      o_data(4)=>o_data(4), o_data(3)=>o_data(3), o_data(2)=>o_data(2), 
      o_data(1)=>o_data(1), o_data(0)=>o_data(0));
   yes_uart_u_uart : uart port map ( CLK=>clk, RST=>reset, Din(7)=>
      byte_reg(7), Din(6)=>byte_reg(6), Din(5)=>byte_reg(5), Din(4)=>
      byte_reg(4), Din(3)=>byte_reg(3), Din(2)=>byte_reg(2), Din(1)=>
      byte_reg(1), Din(0)=>byte_reg(0), LD=>byte_valid, Rx=>uart_rx, Baud=>
      PWR, Dout(7)=>i_data(7), Dout(6)=>i_data(6), Dout(5)=>i_data(5), 
      Dout(4)=>i_data(4), Dout(3)=>i_data(3), Dout(2)=>i_data(2), Dout(1)=>
      i_data(1), Dout(0)=>i_data(0), Tx=>led(3), TxBusy=>tx_busy, RxErr=>
      DANGLING(0,0), RxRDY=>i_valid);
   uart_tx <= uart_rx ;
   led(0) <= sw(0) ;
   led(1) <= sw(1) ;
   led(2) <= sw(2) ;
   led(4) <= uart_rx ;
   led(7) <= sw(7) ;
   reset <= NOT reset_n ;
   byte_valid_3n0r1 <= i_valid OR byte_valid_3n0r2 ;
   byte_valid_3n0r2 <= byte_valid AND tx_busy ;
   byte_reg_2n1ss1(0) <= byte_count(0) when sw(7) = '1' else i_data(0) ;
   byte_reg_2n1ss1(1) <= byte_count(1) when sw(7) = '1' else i_data(1) ;
   byte_reg_2n1ss1(2) <= byte_count(2) when sw(7) = '1' else i_data(2) ;
   byte_reg_2n1ss1(3) <= byte_count(3) when sw(7) = '1' else i_data(3) ;
   byte_reg_2n1ss1(4) <= byte_count(4) when sw(7) = '1' else i_data(4) ;
   byte_reg_2n1ss1(5) <= byte_count(5) when sw(7) = '1' else i_data(5) ;
   byte_reg_2n1ss1(6) <= byte_count(6) when sw(7) = '1' else i_data(6) ;
   byte_reg_2n1ss1(7) <= byte_count(7) when sw(7) = '1' else i_data(7) ;
   rtlcn21 <= byte_reg(0) when sw(1) = '1' else byte_count(0) ;
   rtlcn24 <= byte_reg(1) when sw(1) = '1' else byte_count(1) ;
   rtlcn27 <= byte_reg(2) when sw(1) = '1' else byte_count(2) ;
   rtlcn30 <= byte_reg(3) when sw(1) = '1' else byte_count(3) ;
   rtlcn33 <= byte_reg(4) when sw(1) = '1' else byte_count(4) ;
   rtlcn36 <= byte_reg(5) when sw(1) = '1' else byte_count(5) ;
   rtlcn39 <= byte_reg(6) when sw(1) = '1' else byte_count(6) ;
   rtlcn42 <= byte_reg(7) when sw(1) = '1' else byte_count(7) ;
   seg7_num(0) <= rtlcn21 when sw(0) = '1' else o_data(0) ;
   seg7_num(1) <= rtlcn24 when sw(0) = '1' else o_data(1) ;
   seg7_num(2) <= rtlcn27 when sw(0) = '1' else o_data(2) ;
   seg7_num(3) <= rtlcn30 when sw(0) = '1' else o_data(3) ;
   seg7_num(4) <= rtlcn33 when sw(0) = '1' else o_data(4) ;
   seg7_num(5) <= rtlcn36 when sw(0) = '1' else o_data(5) ;
   seg7_num(6) <= rtlcn39 when sw(0) = '1' else o_data(6) ;
   seg7_num(7) <= rtlcn42 when sw(0) = '1' else o_data(7) ;
   DFFRSE (byte_reg_2n1ss1(7),led_5_EXMPLR261,reset,i_valid,clk,byte_reg(7))
    ;
   DFFRSE (byte_reg_2n1ss1(6),led_5_EXMPLR261,reset,i_valid,clk,byte_reg(6))
    ;
   DFFRSE (byte_reg_2n1ss1(5),led_5_EXMPLR261,reset,i_valid,clk,byte_reg(5))
    ;
   DFFRSE (byte_reg_2n1ss1(4),led_5_EXMPLR261,reset,i_valid,clk,byte_reg(4))
    ;
   DFFRSE (byte_reg_2n1ss1(3),led_5_EXMPLR261,reset,i_valid,clk,byte_reg(3))
    ;
   DFFRSE (byte_reg_2n1ss1(2),led_5_EXMPLR261,reset,i_valid,clk,byte_reg(2))
    ;
   DFFRSE (byte_reg_2n1ss1(1),led_5_EXMPLR261,reset,i_valid,clk,byte_reg(1))
    ;
   DFFRSE (byte_reg_2n1ss1(0),led_5_EXMPLR261,reset,i_valid,clk,byte_reg(0))
    ;
   DFFPC (byte_valid_3n0r1,led_5_EXMPLR261,led_5_EXMPLR261,clk,byte_valid) ;
   nx103 <= reset OR i_valid ;
   modgen_counter_byte_count : 
      counter_up_sclear_clock_clk_en_0_8_cx8_lab3_top port map ( clock=>clk, 
      q(7)=>byte_count(7), q(6)=>byte_count(6), q(5)=>byte_count(5), q(4)=>
      byte_count(4), q(3)=>byte_count(3), q(2)=>byte_count(2), q(1)=>
      byte_count(1), q(0)=>byte_count(0), clk_en=>nx103, aclear=>
      led_5_EXMPLR261, sload=>led_5_EXMPLR261, data(7)=>DANGLING(0,1), 
      data(6)=>DANGLING(0,2), data(5)=>DANGLING(0,3), data(4)=>DANGLING(0,4), 
      data(3)=>DANGLING(0,5), data(2)=>DANGLING(0,6), data(1)=>DANGLING(0,7), 
      data(0)=>DANGLING(0,8), aset=>led_5_EXMPLR261, sclear=>reset, updn=>
      PWR, cnt_en=>PWR);
   seg7_data(6) <= led_5_EXMPLR261 when 
   u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4 = '1' else 'Z' ;
   seg7_data(5) <= led_5_EXMPLR261 when 
   u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2 = '1' else 'Z' ;
   seg7_data(1) <= led_5_EXMPLR261 when 
   u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0 = '1' else 'Z' ;
   u_seg7 : num_seg7_notri port map ( p_o_en(1)=>seg7_en(1), p_o_en(0)=>
      seg7_en(0), p_reset=>reset, 
      p_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4=>
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4, 
      p_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2=>
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2, 
      p_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0=>
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0, p_clk=>clk, 
      p_i_pts(0)=>seg7_pts_1, p_o_char_2(7)=>seg7_data(7), p_o_char_2(6)=>
      seg7_data(0), p_o_char_1(4)=>seg7_data(4), p_o_char_1(3)=>seg7_data(3), 
      p_o_char_1(2)=>seg7_data(2), p_i_num(7)=>seg7_num(7), p_i_num(6)=>
      seg7_num(6), p_i_num(5)=>seg7_num(5), p_i_num(4)=>seg7_num(4), 
      p_i_num(3)=>seg7_num(3), p_i_num(2)=>seg7_num(2), p_i_num(1)=>
      seg7_num(1), p_i_num(0)=>seg7_num(0));
end main ;

