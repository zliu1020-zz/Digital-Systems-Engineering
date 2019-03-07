
-- 
-- Definition of  kirsch
-- 
--      Fri Jul 13 20:10:02 2018
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

entity and_8u_8u is 
   port (
      a : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_8u_8u ;

architecture BEHAVIORAL of and_8u_8u is 
   component sim_and
      generic (size : integer := 8) ;
      
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix13 : sim_and
      generic map (size => 8) 
       port map ( a=>a, d=>d);
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
   ix23 : sim_eq
      generic map (size => 9) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity gt_10u_10u is 
   port (
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_10u_10u ;

architecture BEHAVIORAL of gt_10u_10u is 
   component sim_gt
      generic (size : integer := 10;
         is_signed : string := "false") ;
      
      port (
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix25 : sim_gt
      generic map (size => 10,
         is_signed => "false") 
       port map ( a=>a, b=>b, d=>d);
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

entity sub_10u_10u_10u_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_10u_10u_10u_0 ;

architecture BEHAVIORAL of sub_10u_10u_10u_0 is 
   component sim_sub
      generic (size : integer := 10) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix34 : sim_sub
      generic map (size => 10) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
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
library modgen_sim; 
use  modgen_sim.all; 

entity and_17u_17u is 
   port (
      a : IN std_logic_vector (16 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_17u_17u ;

architecture BEHAVIORAL of and_17u_17u is 
   component sim_and
      generic (size : integer := 17) ;
      
      port (
         a : IN std_logic_vector (16 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix22 : sim_and
      generic map (size => 17) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_clock_0_8_cx0_kirsch is 
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
end counter_up_cnt_en_clock_0_8_cx0_kirsch ;

architecture INTERFACE of counter_up_cnt_en_clock_0_8_cx0_kirsch is 
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
   signal GND, PWR, nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, inc_d_0, 
      inc_d_1, inc_d_2, inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7: 
   std_logic ;
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
   DFFPCE (inc_d_7,GND,GND,cnt_en,clock,nx35) ;
   DFFPCE (inc_d_6,GND,GND,cnt_en,clock,nx34) ;
   DFFPCE (inc_d_5,GND,GND,cnt_en,clock,nx33) ;
   DFFPCE (inc_d_4,GND,GND,cnt_en,clock,nx32) ;
   DFFPCE (inc_d_3,GND,GND,cnt_en,clock,nx31) ;
   DFFPCE (inc_d_2,GND,GND,cnt_en,clock,nx30) ;
   DFFPCE (inc_d_1,GND,GND,cnt_en,clock,nx29) ;
   DFFPCE (inc_d_0,GND,GND,cnt_en,clock,nx28) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx35, a(6)=>nx34, a(5)=>
      nx33, a(4)=>nx32, a(3)=>nx31, a(2)=>nx30, a(1)=>nx29, a(0)=>nx28, d(7)
      =>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>inc_d_4, d(3)=>inc_d_3, 
      d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, cout=>DANGLING(0,0));

end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_clock_clk_en_0_8_cx1_kirsch is 
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
end counter_up_sclear_clock_clk_en_0_8_cx1_kirsch ;

architecture INTERFACE of counter_up_sclear_clock_clk_en_0_8_cx1_kirsch is 
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

entity kirsch is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      i_valid : IN std_logic ;
      i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
      o_valid : OUT std_logic ;
      o_edge : OUT std_logic ;
      o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
      o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      o_row : OUT std_logic_vector (7 DOWNTO 0) ;
      o_col : OUT std_logic_vector (7 DOWNTO 0)) ;
end kirsch ;

architecture main of kirsch is 
   component or_5u_5u
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component eq_9u_9u
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component gt_10u_10u
      port (
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_cnt_en_clock_0_8_cx0_kirsch
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
   component counter_up_sclear_clock_clk_en_0_8_cx1_kirsch
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
   component add_8u_8u_8u_0_0
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
   component sub_10u_10u_10u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component or_7u_7u
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_17u_17u
      port (
         a : IN std_logic_vector (16 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal o_mode_1_EXMPLR68: std_logic ;
   
   signal index: std_logic_vector (7 DOWNTO 1) ;
   
   signal GND: std_logic ;
   
   signal dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal dir_s_se: std_logic_vector (2 DOWNTO 1) ;
   
   signal dir_w_sw_2: std_logic ;
   
   signal sum: std_logic_vector (9 DOWNTO 0) ;
   
   signal sum_e_ne: std_logic_vector (7 DOWNTO 0) ;
   
   signal sum_s_se: std_logic_vector (9 DOWNTO 0) ;
   
   signal sum_w_sw: std_logic_vector (8 DOWNTO 0) ;
   
   signal acc: std_logic_vector (9 DOWNTO 0) ;
   
   signal col: std_logic_vector (7 DOWNTO 0) ;
   
   signal row: std_logic_vector (7 DOWNTO 0) ;
   
   signal STATE: std_logic ;
   
   signal e: std_logic_vector (7 DOWNTO 0) ;
   
   signal f: std_logic_vector (7 DOWNTO 0) ;
   
   signal g: std_logic_vector (7 DOWNTO 0) ;
   
   signal PWR, rtlc10_P5_SS0_n59, rtlc11n49: std_logic ;
   
   signal sum_s_se_12n5s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal sum_s_se_12n5s3: std_logic_vector (9 DOWNTO 0) ;
   
   signal sum_w_sw_12n7s4: std_logic_vector (8 DOWNTO 0) ;
   
   signal sum_w_sw_12n7s3: std_logic_vector (8 DOWNTO 0) ;
   
   signal acc_12n7s2: std_logic_vector (9 DOWNTO 0) ;
   
   signal not_rtlcn1227: std_logic ;
   
   signal sum_13n1ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal sum_13n4ss1_9, sum_13n4ss1_8, dir_13n4ss1_1: std_logic ;
   
   signal sum_13n8ss1: std_logic_vector (9 DOWNTO 0) ;
   
   signal dir_13n8ss1: std_logic_vector (2 DOWNTO 1) ;
   
   signal not_index_4, not_dir_w_sw_2, not_rtlcs2, rtlc13n258, rtlc13n260, 
      rtlc13n262: std_logic ;
   
   signal rtlc13n285: std_logic_vector (11 DOWNTO 2) ;
   
   signal rtlc13n295_11, rtlc13n295_10, rtlc13n295_9, rtlc13n295_8, 
      rtlc13n295_7, not_index_7, rtlc13n323, not_rtlcn1192, rtlc13n332, 
      rtlc13n335, not_rtlc13n491, not_rtlc13n262, rtlc13n489, rtlc13n490, 
      rtlc13n491, not_STATE, not_i_valid, not_rtlcs4, rtlc14n307, rtlc14n342, 
      not_rtlc14n342, rtlc14n359, not_rtlc14n359, rtlc14n391, rtlc14n399, 
      rtlc14n415, not_rtlcn988, rtlcn41, rtlcn42, rtlcn715, rtlcn726, 
      rtlcn929, rtlcn971, not_index_5, rtlcn974, not_rtlcn715, rtlcn986, 
      rtlcs2, rtlcs3, rtlcs4, rtlcn988, rtlcn1023, rtlcn1192, rtlcn1227, 
      not_rtlcn726, not_sum_9, rtlcn1284, not_row_7, not_row_6, not_row_5, 
      not_row_4, not_row_3, not_row_2, not_row_1, not_row_0, not_col_7, 
      not_col_6, not_col_5, not_col_4, not_col_3, not_col_2, not_col_1, 
      not_col_0, rtlcn6828, rtlcn6834, rtlcn6835, rtlcn6837: std_logic ;
   
   signal sum_s_se_12n5s3f1: std_logic_vector (8 DOWNTO 0) ;
   
   signal sum_s_se_12n5s3f2: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx231, not_rtlc13n335, rtlc13_318_or_3_nx0, rtlc_140_or_4_nx0, 
      rtlc_1109_and_6_nx0, NOT_acc_1, NOT_acc_0, nx918, nx926, nx932, nx938, 
      nx944, nx950, nx956, nx962, nx968, nx974: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_mode(1) <= o_mode_1_EXMPLR68 ;
   GND <= '0' ;
   PWR <= '1' ;
   rtlc11n49 <= rtlcn41 AND rtlcn42 ;
   rtlc13n260 <= rtlc13n258 AND rtlc13n335 ;
   rtlc13n323 <= not_index_7 OR not_rtlc13n491 ;
   rtlc13n258 <= not_rtlcs2 OR dir_w_sw_2 ;
   not_index_4 <= NOT index(4) ;
   not_rtlc13n491 <= NOT rtlc13n491 ;
   rtlc13n490 <= rtlc13n295_7 AND rtlc13n295_8 ;
   rtlc13n491 <= rtlc13n490 OR rtlc13n489 ;
   rtlc14n391 <= not_STATE AND o_mode_1_EXMPLR68 ;
   not_rtlc14n359 <= NOT rtlc14n359 ;
   not_rtlc14n342 <= NOT rtlc14n342 ;
   rtlc_141_or_5 : or_5u_5u port map ( a(4)=>reset, a(3)=>not_STATE, a(2)=>
      not_i_valid, a(1)=>not_rtlcs4, a(0)=>rtlcs3, d=>rtlc14n342);
   not_rtlcs2 <= NOT rtlcs2 ;
   o_mode_1_EXMPLR68 <= NOT reset ;
   not_STATE <= NOT STATE ;
   not_index_5 <= NOT index(5) ;
   rtlcn715 <= not_index_5 OR rtlc13n332 ;
   rtlcn974 <= not_dir_w_sw_2 AND rtlcs2 ;
   rtlcn971 <= not_rtlc13n335 OR rtlcn974 ;
   rtlcn726 <= index(6) AND rtlcn971 ;
   not_rtlcn715 <= NOT rtlcn715 ;
   rtlcn929 <= not_rtlcn715 OR rtlcn726 ;
   o_mode(0) <= NOT rtlc10_P5_SS0_n59 ;
   sum_w_sw_12n7s3(7) <= sum_w_sw_12n7s4(7) when rtlcn1023 = '1' else g(7) ;
   sum_w_sw_12n7s3(6) <= sum_w_sw_12n7s4(6) when rtlcn1023 = '1' else g(6) ;
   sum_w_sw_12n7s3(5) <= sum_w_sw_12n7s4(5) when rtlcn1023 = '1' else g(5) ;
   sum_w_sw_12n7s3(4) <= sum_w_sw_12n7s4(4) when rtlcn1023 = '1' else g(4) ;
   sum_w_sw_12n7s3(3) <= sum_w_sw_12n7s4(3) when rtlcn1023 = '1' else g(3) ;
   sum_w_sw_12n7s3(2) <= sum_w_sw_12n7s4(2) when rtlcn1023 = '1' else g(2) ;
   sum_w_sw_12n7s3(1) <= sum_w_sw_12n7s4(1) when rtlcn1023 = '1' else g(1) ;
   sum_w_sw_12n7s3(0) <= sum_w_sw_12n7s4(0) when rtlcn1023 = '1' else g(0) ;
   sum_s_se_12n5s3f1(7) <= sum_s_se_12n5s2(7) when rtlcn1227 = '1' else e(7)
    ;
   sum_s_se_12n5s3f1(6) <= sum_s_se_12n5s2(6) when rtlcn1227 = '1' else e(6)
    ;
   sum_s_se_12n5s3f1(5) <= sum_s_se_12n5s2(5) when rtlcn1227 = '1' else e(5)
    ;
   sum_s_se_12n5s3f1(4) <= sum_s_se_12n5s2(4) when rtlcn1227 = '1' else e(4)
    ;
   sum_s_se_12n5s3f1(3) <= sum_s_se_12n5s2(3) when rtlcn1227 = '1' else e(3)
    ;
   sum_s_se_12n5s3f1(2) <= sum_s_se_12n5s2(2) when rtlcn1227 = '1' else e(2)
    ;
   sum_s_se_12n5s3f1(1) <= sum_s_se_12n5s2(1) when rtlcn1227 = '1' else e(1)
    ;
   sum_s_se_12n5s3f1(0) <= sum_s_se_12n5s2(0) when rtlcn1227 = '1' else e(0)
    ;
   sum_s_se_12n5s3f2(7) <= g(7) when rtlcn1227 = '1' else f(7) ;
   sum_s_se_12n5s3f2(6) <= g(6) when rtlcn1227 = '1' else f(6) ;
   sum_s_se_12n5s3f2(5) <= g(5) when rtlcn1227 = '1' else f(5) ;
   sum_s_se_12n5s3f2(4) <= g(4) when rtlcn1227 = '1' else f(4) ;
   sum_s_se_12n5s3f2(3) <= g(3) when rtlcn1227 = '1' else f(3) ;
   sum_s_se_12n5s3f2(2) <= g(2) when rtlcn1227 = '1' else f(2) ;
   sum_s_se_12n5s3f2(1) <= g(1) when rtlcn1227 = '1' else f(1) ;
   sum_s_se_12n5s3f2(0) <= g(0) when rtlcn1227 = '1' else f(0) ;
   sum_13n8ss1(8) <= sum_w_sw(8) when rtlcn726 = '1' else sum_13n4ss1_8 ;
   dir_13n8ss1(1) <= dir_w_sw_2 when rtlcn726 = '1' else dir_13n4ss1_1 ;
   not_rtlc13n262 <= NOT rtlc13n262 ;
   not_index_7 <= NOT index(7) ;
   rtlc14n415 <= o_mode_1_EXMPLR68 AND i_valid ;
   not_i_valid <= NOT i_valid ;
   rtlc14n399 <= not_STATE OR rtlcn986 ;
   not_rtlcs4 <= NOT rtlcs4 ;
   rtlc_1114_and_7 : and_8u_8u port map ( a(7)=>col(7), a(6)=>col(6), a(5)=>
      col(5), a(4)=>col(4), a(3)=>col(3), a(2)=>col(2), a(1)=>col(1), a(0)=>
      col(0), d=>rtlcs4);
   rtlc_1115_and_8 : and_8u_8u port map ( a(7)=>row(7), a(6)=>row(6), a(5)=>
      row(5), a(4)=>row(4), a(3)=>row(3), a(2)=>row(2), a(1)=>row(1), a(0)=>
      row(0), d=>rtlcs3);
   rtlc14n307 <= not_i_valid OR not_STATE ;
   not_rtlcn988 <= NOT rtlcn988 ;
   rtlc_1134_or_9 : or_8u_8u port map ( a(7)=>f(0), a(6)=>f(1), a(5)=>f(2), 
      a(4)=>f(3), a(3)=>f(4), a(2)=>f(5), a(1)=>f(6), a(0)=>f(7), d=>
      rtlcn1023);
   not_rtlcn1192 <= NOT rtlcn1192 ;
   not_rtlcn1227 <= NOT rtlcn1227 ;
   rtlc_1308_or_10 : or_8u_8u port map ( a(7)=>g(0), a(6)=>g(1), a(5)=>g(2), 
      a(4)=>g(3), a(3)=>g(4), a(2)=>g(5), a(1)=>g(6), a(0)=>g(7), d=>
      rtlcn1227);
   sum_13n4ss1_9 <= sum_s_se(9) AND not_rtlcn715 ;
   not_rtlcn726 <= NOT rtlcn726 ;
   sum_13n8ss1(9) <= sum_13n4ss1_9 AND not_rtlcn726 ;
   sum_13n1ss1(7) <= sum_e_ne(7) AND rtlcn1192 ;
   sum_13n1ss1(6) <= sum_e_ne(6) AND rtlcn1192 ;
   sum_13n1ss1(5) <= sum_e_ne(5) AND rtlcn1192 ;
   sum_13n1ss1(4) <= sum_e_ne(4) AND rtlcn1192 ;
   sum_13n1ss1(3) <= sum_e_ne(3) AND rtlcn1192 ;
   sum_13n1ss1(2) <= sum_e_ne(2) AND rtlcn1192 ;
   sum_13n1ss1(1) <= sum_e_ne(1) AND rtlcn1192 ;
   sum_13n1ss1(0) <= sum_e_ne(0) AND rtlcn1192 ;
   not_sum_9 <= NOT sum(9) ;
   rtlc_1353_eq_11 : eq_9u_9u port map ( a(8)=>sum_w_sw(8), a(7)=>
      sum_w_sw(7), a(6)=>sum_w_sw(6), a(5)=>sum_w_sw(5), a(4)=>sum_w_sw(4), 
      a(3)=>sum_w_sw(3), a(2)=>sum_w_sw(2), a(1)=>sum_w_sw(1), a(0)=>
      sum_w_sw(0), b(8)=>sum(8), b(7)=>sum(7), b(6)=>sum(6), b(5)=>sum(5), 
      b(4)=>sum(4), b(3)=>sum(3), b(2)=>sum(2), b(1)=>sum(1), b(0)=>sum(0), 
      d=>rtlcn1284);
   not_dir_w_sw_2 <= NOT dir_w_sw_2 ;
   rtlc_1370_gt_12 : gt_10u_10u port map ( a(9)=>sum_s_se(9), a(8)=>
      sum_s_se(8), a(7)=>sum_s_se(7), a(6)=>sum_s_se(6), a(5)=>sum_s_se(5), 
      a(4)=>sum_s_se(4), a(3)=>sum_s_se(3), a(2)=>sum_s_se(2), a(1)=>
      sum_s_se(1), a(0)=>sum_s_se(0), b(9)=>sum(9), b(8)=>sum(8), b(7)=>
      sum(7), b(6)=>sum(6), b(5)=>sum(5), b(4)=>sum(4), b(3)=>sum(3), b(2)=>
      sum(2), b(1)=>sum(1), b(0)=>sum(0), d=>nx231);
   rtlc13n332 <= NOT nx231 ;
   dir_13n4ss1_1 <= dir_s_se(1) AND not_rtlcn715 ;
   not_row_7 <= NOT row(7) ;
   not_row_6 <= NOT row(6) ;
   not_row_5 <= NOT row(5) ;
   not_row_4 <= NOT row(4) ;
   not_row_3 <= NOT row(3) ;
   not_row_2 <= NOT row(2) ;
   not_row_1 <= NOT row(1) ;
   not_row_0 <= NOT row(0) ;
   not_col_7 <= NOT col(7) ;
   not_col_6 <= NOT col(6) ;
   not_col_5 <= NOT col(5) ;
   not_col_4 <= NOT col(4) ;
   not_col_3 <= NOT col(3) ;
   not_col_2 <= NOT col(2) ;
   not_col_1 <= NOT col(1) ;
   not_col_0 <= NOT col(0) ;
   rtlcn988 <= reset OR rtlc14n307 ;
   rtlcs2 <= not_sum_9 AND rtlcn1284 ;
   rtlc_1484_gt_16 : gt_10u_10u port map ( a(9)=>GND, a(8)=>sum_w_sw(8), 
      a(7)=>sum_w_sw(7), a(6)=>sum_w_sw(6), a(5)=>sum_w_sw(5), a(4)=>
      sum_w_sw(4), a(3)=>sum_w_sw(3), a(2)=>sum_w_sw(2), a(1)=>sum_w_sw(1), 
      a(0)=>sum_w_sw(0), b(9)=>sum(9), b(8)=>sum(8), b(7)=>sum(7), b(6)=>
      sum(6), b(5)=>sum(5), b(4)=>sum(4), b(3)=>sum(3), b(2)=>sum(2), b(1)=>
      sum(1), b(0)=>sum(0), d=>not_rtlc13n335);
   rtlc13n335 <= NOT not_rtlc13n335 ;
   modgen_counter_row : counter_up_cnt_en_clock_0_8_cx0_kirsch port map ( 
      clock=>clk, q(7)=>row(7), q(6)=>row(6), q(5)=>row(5), q(4)=>row(4), 
      q(3)=>row(3), q(2)=>row(2), q(1)=>row(1), q(0)=>row(0), clk_en=>PWR, 
      aclear=>GND, sload=>GND, data(7)=>DANGLING(0,0), data(6)=>
      DANGLING(0,1), data(5)=>DANGLING(0,2), data(4)=>DANGLING(0,3), data(3)
      =>DANGLING(0,4), data(2)=>DANGLING(0,5), data(1)=>DANGLING(0,6), 
      data(0)=>DANGLING(0,7), aset=>GND, sclear=>GND, updn=>PWR, cnt_en=>
      not_rtlc14n342);
   modgen_counter_col : counter_up_sclear_clock_clk_en_0_8_cx1_kirsch
       port map ( clock=>clk, q(7)=>col(7), q(6)=>col(6), q(5)=>col(5), q(4)
      =>col(4), q(3)=>col(3), q(2)=>col(2), q(1)=>col(1), q(0)=>col(0), 
      clk_en=>not_rtlc14n359, aclear=>GND, sload=>GND, data(7)=>
      DANGLING(0,8), data(6)=>DANGLING(0,9), data(5)=>DANGLING(0,10), 
      data(4)=>DANGLING(0,11), data(3)=>DANGLING(0,12), data(2)=>
      DANGLING(0,13), data(1)=>DANGLING(0,14), data(0)=>DANGLING(0,15), aset
      =>GND, sclear=>rtlcs4, updn=>PWR, cnt_en=>PWR);
   sum_w_sw_12n7s3(8) <= sum_w_sw_12n7s4(8) AND rtlcn1023 ;
   rtlc_2365_or_17 : or_8u_8u port map ( a(7)=>sum_e_ne(0), a(6)=>
      sum_e_ne(1), a(5)=>sum_e_ne(2), a(4)=>sum_e_ne(3), a(3)=>sum_e_ne(4), 
      a(2)=>sum_e_ne(5), a(1)=>sum_e_ne(6), a(0)=>sum_e_ne(7), d=>rtlcn1192
   );
   sum_s_se_12n5s3f1(8) <= sum_s_se_12n5s2(8) AND rtlcn1227 ;
   sum_13n4ss1_8 <= sum_s_se(8) AND not_rtlcn715 ;
   sum_w_sw_add8_12i25 : add_8u_8u_8u_0_0 port map ( cin=>GND, a(7)=>f(7), 
      a(6)=>f(6), a(5)=>f(5), a(4)=>f(4), a(3)=>f(3), a(2)=>f(2), a(1)=>f(1), 
      a(0)=>f(0), b(7)=>g(7), b(6)=>g(6), b(5)=>g(5), b(4)=>g(4), b(3)=>g(3), 
      b(2)=>g(2), b(1)=>g(1), b(0)=>g(0), d(7)=>sum_w_sw_12n7s4(7), d(6)=>
      sum_w_sw_12n7s4(6), d(5)=>sum_w_sw_12n7s4(5), d(4)=>sum_w_sw_12n7s4(4), 
      d(3)=>sum_w_sw_12n7s4(3), d(2)=>sum_w_sw_12n7s4(2), d(1)=>
      sum_w_sw_12n7s4(1), d(0)=>sum_w_sw_12n7s4(0), cout=>sum_w_sw_12n7s4(8)
   );
   sum_s_se_add8_12i26 : add_8u_8u_8u_0_0 port map ( cin=>GND, a(7)=>e(7), 
      a(6)=>e(6), a(5)=>e(5), a(4)=>e(4), a(3)=>e(3), a(2)=>e(2), a(1)=>e(1), 
      a(0)=>e(0), b(7)=>f(7), b(6)=>f(6), b(5)=>f(5), b(4)=>f(4), b(3)=>f(3), 
      b(2)=>f(2), b(1)=>f(1), b(0)=>f(0), d(7)=>sum_s_se_12n5s2(7), d(6)=>
      sum_s_se_12n5s2(6), d(5)=>sum_s_se_12n5s2(5), d(4)=>sum_s_se_12n5s2(4), 
      d(3)=>sum_s_se_12n5s2(3), d(2)=>sum_s_se_12n5s2(2), d(1)=>
      sum_s_se_12n5s2(1), d(0)=>sum_s_se_12n5s2(0), cout=>sum_s_se_12n5s2(8)
   );
   sum_s_se_add9_12i27 : add_9u_9u_9u_0_0 port map ( cin=>GND, a(8)=>
      sum_s_se_12n5s3f1(8), a(7)=>sum_s_se_12n5s3f1(7), a(6)=>
      sum_s_se_12n5s3f1(6), a(5)=>sum_s_se_12n5s3f1(5), a(4)=>
      sum_s_se_12n5s3f1(4), a(3)=>sum_s_se_12n5s3f1(3), a(2)=>
      sum_s_se_12n5s3f1(2), a(1)=>sum_s_se_12n5s3f1(1), a(0)=>
      sum_s_se_12n5s3f1(0), b(8)=>GND, b(7)=>sum_s_se_12n5s3f2(7), b(6)=>
      sum_s_se_12n5s3f2(6), b(5)=>sum_s_se_12n5s3f2(5), b(4)=>
      sum_s_se_12n5s3f2(4), b(3)=>sum_s_se_12n5s3f2(3), b(2)=>
      sum_s_se_12n5s3f2(2), b(1)=>sum_s_se_12n5s3f2(1), b(0)=>
      sum_s_se_12n5s3f2(0), d(8)=>sum_s_se_12n5s3(8), d(7)=>
      sum_s_se_12n5s3(7), d(6)=>sum_s_se_12n5s3(6), d(5)=>sum_s_se_12n5s3(5), 
      d(4)=>sum_s_se_12n5s3(4), d(3)=>sum_s_se_12n5s3(3), d(2)=>
      sum_s_se_12n5s3(2), d(1)=>sum_s_se_12n5s3(1), d(0)=>sum_s_se_12n5s3(0), 
      cout=>sum_s_se_12n5s3(9));
   acc_add9_12i28 : add_9u_9u_9u_0_0 port map ( cin=>GND, a(8)=>
      sum_s_se_12n5s2(8), a(7)=>sum_s_se_12n5s2(7), a(6)=>sum_s_se_12n5s2(6), 
      a(5)=>sum_s_se_12n5s2(5), a(4)=>sum_s_se_12n5s2(4), a(3)=>
      sum_s_se_12n5s2(3), a(2)=>sum_s_se_12n5s2(2), a(1)=>sum_s_se_12n5s2(1), 
      a(0)=>sum_s_se_12n5s2(0), b(8)=>GND, b(7)=>g(7), b(6)=>g(6), b(5)=>
      g(5), b(4)=>g(4), b(3)=>g(3), b(2)=>g(2), b(1)=>g(1), b(0)=>g(0), d(8)
      =>acc_12n7s2(8), d(7)=>acc_12n7s2(7), d(6)=>acc_12n7s2(6), d(5)=>
      acc_12n7s2(5), d(4)=>acc_12n7s2(4), d(3)=>acc_12n7s2(3), d(2)=>
      acc_12n7s2(2), d(1)=>acc_12n7s2(1), d(0)=>acc_12n7s2(0), cout=>
      acc_12n7s2(9));
   rtlcn6828 <= rtlc13n491 AND index(7) ;
   rtlcn6834 <= rtlc14n399 OR reset ;
   rtlcn6835 <= rtlc11n49 AND i_valid ;
   rtlcn6837 <= rtlc14n391 when rtlcn6834 = '1' else STATE ;
   DFFPC (index(1),GND,GND,clk,index(2)) ;
   DFFPC (index(2),GND,GND,clk,index(3)) ;
   DFFPC (index(3),GND,GND,clk,index(4)) ;
   DFFPC (index(4),GND,GND,clk,index(5)) ;
   DFFPC (index(5),GND,GND,clk,index(6)) ;
   DFFPC (index(6),GND,GND,clk,index(7)) ;
   DFFPCE (rtlcn1023,GND,GND,index(3),clk,dir_w_sw_2) ;
   DFFPCE (sum_w_sw_12n7s3(8),GND,GND,index(3),clk,sum_w_sw(8)) ;
   DFFPCE (sum_w_sw_12n7s3(7),GND,GND,index(3),clk,sum_w_sw(7)) ;
   DFFPCE (sum_w_sw_12n7s3(6),GND,GND,index(3),clk,sum_w_sw(6)) ;
   DFFPCE (sum_w_sw_12n7s3(5),GND,GND,index(3),clk,sum_w_sw(5)) ;
   DFFPCE (sum_w_sw_12n7s3(4),GND,GND,index(3),clk,sum_w_sw(4)) ;
   DFFPCE (sum_w_sw_12n7s3(3),GND,GND,index(3),clk,sum_w_sw(3)) ;
   DFFPCE (sum_w_sw_12n7s3(2),GND,GND,index(3),clk,sum_w_sw(2)) ;
   DFFPCE (sum_w_sw_12n7s3(1),GND,GND,index(3),clk,sum_w_sw(1)) ;
   DFFPCE (sum_w_sw_12n7s3(0),GND,GND,index(3),clk,sum_w_sw(0)) ;
   DFFPCE (acc_12n7s2(9),GND,GND,index(3),clk,acc(9)) ;
   DFFPCE (acc_12n7s2(8),GND,GND,index(3),clk,acc(8)) ;
   DFFPCE (acc_12n7s2(7),GND,GND,index(3),clk,acc(7)) ;
   DFFPCE (acc_12n7s2(6),GND,GND,index(3),clk,acc(6)) ;
   DFFPCE (acc_12n7s2(5),GND,GND,index(3),clk,acc(5)) ;
   DFFPCE (acc_12n7s2(4),GND,GND,index(3),clk,acc(4)) ;
   DFFPCE (acc_12n7s2(3),GND,GND,index(3),clk,acc(3)) ;
   DFFPCE (acc_12n7s2(2),GND,GND,index(3),clk,acc(2)) ;
   DFFPCE (acc_12n7s2(1),GND,GND,index(3),clk,acc(1)) ;
   DFFPCE (acc_12n7s2(0),GND,GND,index(3),clk,acc(0)) ;
   DFFPCE (not_rtlcn1227,GND,GND,index(2),clk,dir_s_se(2)) ;
   DFFPCE (rtlcn1227,GND,GND,index(2),clk,dir_s_se(1)) ;
   DFFPCE (sum_s_se_12n5s3(9),GND,GND,index(2),clk,sum_s_se(9)) ;
   DFFPCE (sum_s_se_12n5s3(8),GND,GND,index(2),clk,sum_s_se(8)) ;
   DFFPCE (sum_s_se_12n5s3(7),GND,GND,index(2),clk,sum_s_se(7)) ;
   DFFPCE (sum_s_se_12n5s3(6),GND,GND,index(2),clk,sum_s_se(6)) ;
   DFFPCE (sum_s_se_12n5s3(5),GND,GND,index(2),clk,sum_s_se(5)) ;
   DFFPCE (sum_s_se_12n5s3(4),GND,GND,index(2),clk,sum_s_se(4)) ;
   DFFPCE (sum_s_se_12n5s3(3),GND,GND,index(2),clk,sum_s_se(3)) ;
   DFFPCE (sum_s_se_12n5s3(2),GND,GND,index(2),clk,sum_s_se(2)) ;
   DFFPCE (sum_s_se_12n5s3(1),GND,GND,index(2),clk,sum_s_se(1)) ;
   DFFPCE (sum_s_se_12n5s3(0),GND,GND,index(2),clk,sum_s_se(0)) ;
   DFFPCE (e(7),GND,GND,index(1),clk,sum_e_ne(7)) ;
   DFFPCE (e(6),GND,GND,index(1),clk,sum_e_ne(6)) ;
   DFFPCE (e(5),GND,GND,index(1),clk,sum_e_ne(5)) ;
   DFFPCE (e(4),GND,GND,index(1),clk,sum_e_ne(4)) ;
   DFFPCE (e(3),GND,GND,index(1),clk,sum_e_ne(3)) ;
   DFFPCE (e(2),GND,GND,index(1),clk,sum_e_ne(2)) ;
   DFFPCE (e(1),GND,GND,index(1),clk,sum_e_ne(1)) ;
   DFFPCE (e(0),GND,GND,index(1),clk,sum_e_ne(0)) ;
   DFFRSE (dir(2),GND,rtlc13n323,PWR,clk,o_dir(2)) ;
   DFFRSE (dir(1),GND,rtlc13n323,PWR,clk,o_dir(1)) ;
   DFFRSE (dir(0),GND,rtlc13n323,PWR,clk,o_dir(0)) ;
   DFFRSE (rtlcn6828,GND,GND,PWR,clk,o_edge) ;
   DFFRSE (index(7),GND,GND,PWR,clk,o_valid) ;
   DFFPCE (dir_13n8ss1(2),GND,GND,not_rtlc13n262,clk,dir(2)) ;
   DFFPCE (dir_13n8ss1(1),GND,GND,not_rtlc13n262,clk,dir(1)) ;
   DFFPCE (rtlcn929,GND,GND,not_rtlc13n262,clk,dir(0)) ;
   DFFRSE (sum_13n8ss1(9),GND,index(7),not_rtlc13n262,clk,sum(9)) ;
   DFFRSE (sum_13n8ss1(8),GND,index(7),not_rtlc13n262,clk,sum(8)) ;
   DFFRSE (sum_13n8ss1(7),GND,index(7),not_rtlc13n262,clk,sum(7)) ;
   DFFRSE (sum_13n8ss1(6),GND,index(7),not_rtlc13n262,clk,sum(6)) ;
   DFFRSE (sum_13n8ss1(5),GND,index(7),not_rtlc13n262,clk,sum(5)) ;
   DFFRSE (sum_13n8ss1(4),GND,index(7),not_rtlc13n262,clk,sum(4)) ;
   DFFRSE (sum_13n8ss1(3),GND,index(7),not_rtlc13n262,clk,sum(3)) ;
   DFFRSE (sum_13n8ss1(2),GND,index(7),not_rtlc13n262,clk,sum(2)) ;
   DFFRSE (sum_13n8ss1(1),GND,index(7),not_rtlc13n262,clk,sum(1)) ;
   DFFRSE (sum_13n8ss1(0),GND,index(7),not_rtlc13n262,clk,sum(0)) ;
   DFFPCE (i_pixel(7),GND,GND,not_rtlcn988,clk,e(7)) ;
   DFFPCE (i_pixel(6),GND,GND,not_rtlcn988,clk,e(6)) ;
   DFFPCE (i_pixel(5),GND,GND,not_rtlcn988,clk,e(5)) ;
   DFFPCE (i_pixel(4),GND,GND,not_rtlcn988,clk,e(4)) ;
   DFFPCE (i_pixel(3),GND,GND,not_rtlcn988,clk,e(3)) ;
   DFFPCE (i_pixel(2),GND,GND,not_rtlcn988,clk,e(2)) ;
   DFFPCE (i_pixel(1),GND,GND,not_rtlcn988,clk,e(1)) ;
   DFFPCE (i_pixel(0),GND,GND,not_rtlcn988,clk,e(0)) ;
   DFFPCE (f(7),GND,GND,not_rtlcn988,clk,g(7)) ;
   DFFPCE (f(6),GND,GND,not_rtlcn988,clk,g(6)) ;
   DFFPCE (f(5),GND,GND,not_rtlcn988,clk,g(5)) ;
   DFFPCE (f(4),GND,GND,not_rtlcn988,clk,g(4)) ;
   DFFPCE (f(3),GND,GND,not_rtlcn988,clk,g(3)) ;
   DFFPCE (f(2),GND,GND,not_rtlcn988,clk,g(2)) ;
   DFFPCE (f(1),GND,GND,not_rtlcn988,clk,g(1)) ;
   DFFPCE (f(0),GND,GND,not_rtlcn988,clk,g(0)) ;
   DFFPCE (e(7),GND,GND,not_rtlcn988,clk,f(7)) ;
   DFFPCE (e(6),GND,GND,not_rtlcn988,clk,f(6)) ;
   DFFPCE (e(5),GND,GND,not_rtlcn988,clk,f(5)) ;
   DFFPCE (e(4),GND,GND,not_rtlcn988,clk,f(4)) ;
   DFFPCE (e(3),GND,GND,not_rtlcn988,clk,f(3)) ;
   DFFPCE (e(2),GND,GND,not_rtlcn988,clk,f(2)) ;
   DFFPCE (e(1),GND,GND,not_rtlcn988,clk,f(1)) ;
   DFFPCE (e(0),GND,GND,not_rtlcn988,clk,f(0)) ;
   DFFRSE (col(7),GND,rtlc14n391,rtlc14n415,clk,o_col(7)) ;
   DFFRSE (col(6),GND,rtlc14n391,rtlc14n415,clk,o_col(6)) ;
   DFFRSE (col(5),GND,rtlc14n391,rtlc14n415,clk,o_col(5)) ;
   DFFRSE (col(4),GND,rtlc14n391,rtlc14n415,clk,o_col(4)) ;
   DFFRSE (col(3),GND,rtlc14n391,rtlc14n415,clk,o_col(3)) ;
   DFFRSE (col(2),GND,rtlc14n391,rtlc14n415,clk,o_col(2)) ;
   DFFRSE (col(1),GND,rtlc14n391,rtlc14n415,clk,o_col(1)) ;
   DFFRSE (col(0),GND,rtlc14n391,rtlc14n415,clk,o_col(0)) ;
   DFFRSE (row(7),GND,rtlc14n391,rtlc14n415,clk,o_row(7)) ;
   DFFRSE (row(6),GND,rtlc14n391,rtlc14n415,clk,o_row(6)) ;
   DFFRSE (row(5),GND,rtlc14n391,rtlc14n415,clk,o_row(5)) ;
   DFFRSE (row(4),GND,rtlc14n391,rtlc14n415,clk,o_row(4)) ;
   DFFRSE (row(3),GND,rtlc14n391,rtlc14n415,clk,o_row(3)) ;
   DFFRSE (row(2),GND,rtlc14n391,rtlc14n415,clk,o_row(2)) ;
   DFFRSE (row(1),GND,rtlc14n391,rtlc14n415,clk,o_row(1)) ;
   DFFRSE (row(0),GND,rtlc14n391,rtlc14n415,clk,o_row(0)) ;
   DFFRSE (rtlcn6835,GND,GND,PWR,clk,index(1)) ;
   DFFRSE (rtlcn6837,GND,GND,PWR,clk,STATE) ;
   rtlc13_318_or_3_nx0 <= rtlc13n295_9 OR rtlc13n295_10 ;
   rtlc13n489 <= rtlc13_318_or_3_nx0 OR rtlc13n295_11 ;
   rtlc_140_or_4_nx0 <= reset OR not_STATE ;
   rtlc14n359 <= rtlc_140_or_4_nx0 OR not_i_valid ;
   rtlc_1109_and_6_nx0 <= i_valid AND rtlcs3 ;
   rtlcn986 <= rtlc_1109_and_6_nx0 AND rtlcs4 ;
   NOT_acc_1 <= NOT acc(1) ;
   NOT_acc_0 <= NOT acc(0) ;
   rtlc_1399_sub_13 : sub_10u_10u_10u_0 port map ( cin=>NOT_acc_0, a(9)=>
      sum(8), a(8)=>sum(7), a(7)=>sum(6), a(6)=>sum(5), a(5)=>sum(4), a(4)=>
      sum(3), a(3)=>sum(2), a(2)=>sum(1), a(1)=>sum(0), a(0)=>GND, b(9)=>GND, 
      b(8)=>acc(9), b(7)=>acc(8), b(6)=>acc(7), b(5)=>acc(6), b(4)=>acc(5), 
      b(3)=>acc(4), b(2)=>acc(3), b(1)=>acc(2), b(0)=>acc(1), d(9)=>
      rtlc13n285(11), d(8)=>rtlc13n285(10), d(7)=>rtlc13n285(9), d(6)=>
      rtlc13n285(8), d(5)=>rtlc13n285(7), d(4)=>rtlc13n285(6), d(3)=>
      rtlc13n285(5), d(2)=>rtlc13n285(4), d(1)=>rtlc13n285(3), d(0)=>
      rtlc13n285(2), cout=>DANGLING(0,16));
   rtlc13_193_sub_2 : sub_10u_10u_10u_0 port map ( cin=>NOT_acc_1, a(9)=>
      rtlc13n285(11), a(8)=>rtlc13n285(10), a(7)=>rtlc13n285(9), a(6)=>
      rtlc13n285(8), a(5)=>rtlc13n285(7), a(4)=>rtlc13n285(6), a(3)=>
      rtlc13n285(5), a(2)=>rtlc13n285(4), a(1)=>rtlc13n285(3), a(0)=>
      rtlc13n285(2), b(9)=>GND, b(8)=>GND, b(7)=>acc(9), b(6)=>acc(8), b(5)
      =>acc(7), b(4)=>acc(6), b(3)=>acc(5), b(2)=>acc(4), b(1)=>acc(3), b(0)
      =>acc(2), d(9)=>rtlc13n295_11, d(8)=>rtlc13n295_10, d(7)=>rtlc13n295_9, 
      d(6)=>rtlc13n295_8, d(5)=>rtlc13n295_7, d(4)=>DANGLING(0,17), d(3)=>
      DANGLING(0,18), d(2)=>DANGLING(0,19), d(1)=>DANGLING(0,20), d(0)=>
      DANGLING(0,21), cout=>DANGLING(0,22));
   rtlc13n262 <= rtlc13n260 when index(6) = '1' else nx918 ;
   nx918 <= rtlc13n332 when index(5) = '1' else not_index_4 ;
   sum_13n8ss1(7) <= sum_w_sw(7) when rtlcn726 = '1' else nx926 ;
   nx926 <= sum_13n1ss1(7) when rtlcn715 = '1' else sum_s_se(7) ;
   sum_13n8ss1(6) <= sum_w_sw(6) when rtlcn726 = '1' else nx932 ;
   nx932 <= sum_13n1ss1(6) when rtlcn715 = '1' else sum_s_se(6) ;
   sum_13n8ss1(5) <= sum_w_sw(5) when rtlcn726 = '1' else nx938 ;
   nx938 <= sum_13n1ss1(5) when rtlcn715 = '1' else sum_s_se(5) ;
   sum_13n8ss1(4) <= sum_w_sw(4) when rtlcn726 = '1' else nx944 ;
   nx944 <= sum_13n1ss1(4) when rtlcn715 = '1' else sum_s_se(4) ;
   sum_13n8ss1(3) <= sum_w_sw(3) when rtlcn726 = '1' else nx950 ;
   nx950 <= sum_13n1ss1(3) when rtlcn715 = '1' else sum_s_se(3) ;
   sum_13n8ss1(2) <= sum_w_sw(2) when rtlcn726 = '1' else nx956 ;
   nx956 <= sum_13n1ss1(2) when rtlcn715 = '1' else sum_s_se(2) ;
   sum_13n8ss1(1) <= sum_w_sw(1) when rtlcn726 = '1' else nx962 ;
   nx962 <= sum_13n1ss1(1) when rtlcn715 = '1' else sum_s_se(1) ;
   sum_13n8ss1(0) <= sum_w_sw(0) when rtlcn726 = '1' else nx968 ;
   nx968 <= sum_13n1ss1(0) when rtlcn715 = '1' else sum_s_se(0) ;
   dir_13n8ss1(2) <= dir_w_sw_2 when rtlcn726 = '1' else nx974 ;
   nx974 <= not_rtlcn1192 when rtlcn715 = '1' else dir_s_se(2) ;
   modgen_or_12 : or_7u_7u port map ( a(6)=>col(2), a(5)=>col(3), a(4)=>
      col(4), a(3)=>col(5), a(2)=>col(6), a(1)=>col(7), a(0)=>col(1), d=>
      rtlcn41);
   modgen_or_13 : or_7u_7u port map ( a(6)=>row(2), a(5)=>row(3), a(4)=>
      row(4), a(3)=>row(5), a(2)=>row(6), a(1)=>row(7), a(0)=>row(1), d=>
      rtlcn42);
   modgen_and_15 : and_17u_17u port map ( a(16)=>not_row_7, a(15)=>not_row_6, 
      a(14)=>not_row_5, a(13)=>not_row_4, a(12)=>not_row_3, a(11)=>not_row_2, 
      a(10)=>not_row_1, a(9)=>not_row_0, a(8)=>not_col_7, a(7)=>not_col_6, 
      a(6)=>not_col_5, a(5)=>not_col_4, a(4)=>not_col_3, a(3)=>not_col_2, 
      a(2)=>not_col_1, a(1)=>not_col_0, a(0)=>o_mode_1_EXMPLR68, d=>
      rtlc10_P5_SS0_n59);
end main ;

