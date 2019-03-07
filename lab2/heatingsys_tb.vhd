------------------------------------------------------------------------
-- heating system testbench
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.heat_pkg.all;

entity heatingsys_tb is
end entity;

architecture main of heatingsys_tb is
	signal cur_temp: signed(7 downto 0);
	signal des_temp: signed(7 downto 0);
	signal heatmode: heat_ty;
	signal clk: std_logic := '0';
	signal rst: std_logic;
begin
	uut: entity work.heatingsys(main)
	  port map(
	  	i_cur_temp => cur_temp,
		i_des_temp => des_temp,
		o_heatmode => heatmode,
		clk => clk,
		reset => rst
	  );
	  clk_process: process
	  begin
	    clk <= NOT clk;
	    wait for 10 ns;
	  end process;

	  test_process: process
	  begin
		wait until rising_edge(clk);
		rst <= '1'; cur_temp <= "00000000"; des_temp <= "00000000"; -- off
	
		wait until rising_edge(clk);
		rst <= '0'; cur_temp <= "00000100"; des_temp <= "00001000"; -- des_temp = 8, cur_temp = 4, expect to enter LOW state from OFF
		
		wait until rising_edge(clk);
		rst <= '0'; cur_temp <= "00000100"; des_temp <= "00001100"; -- des_temp = 12, cur_temp = 4, expect to enter HIGH state from LOW

		wait until rising_edge(clk);
		rst <= '0'; cur_temp <= "00001000"; des_temp <= "00000010"; -- des_temp = 2, cur_temp = 8, expect to enter LOW state from HIGH
		
		wait until rising_edge(clk);
		rst <= '0'; cur_temp <= "00001000"; des_temp <= "00000010"; -- des_temp = 2, cur_temp = 8, expect to enter OFF state from LOW

		wait until rising_edge(clk);
		rst <= '0'; cur_temp <= "00000001"; des_temp <= "00001000"; -- des_temp = 8, cur_temp = 1, expect to enter HIGH from OFF

	   end process;
		
end architecture;
