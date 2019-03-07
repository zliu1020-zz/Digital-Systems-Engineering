
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab3 is
  port (
    clk       : in  std_logic;             -- the system clock
    reset     : in  std_logic;             -- reset
    i_valid   : in  std_logic;             -- input data is valid
    i_data    : in  unsigned(7 downto 0);  -- input data
    o_done    : out std_logic;             -- done processing
    o_data    : out unsigned(7 downto 0)   -- output data
  );
end entity lab3;

architecture main of lab3 is

	type states is (Rst,  Init, Slt, Compute, Complete);
	type int_array is array(natural range <>) of integer;
	signal state: states;
	signal row, column: integer;
	signal p: integer;
	signal minuend, subtrahend, addend: int_array(15 downto 0);
	signal stage: unsigned(2 downto 0);
	signal flag: std_logic;
	signal compute_flag: std_logic;

	begin
	run_stmc: process
	  begin

	  if(reset ='1') then
		state <= Rst;
		end if;
		wait until rising_edge(clk);

	  case(state) is
		when Rst =>
		-- report "in Rst row = " & integer'image(row) & " column = " & integer'image(column);
		  if(reset = '0' and i_valid = '1') then
			state <= Init;
		  else 
			state <= Rst;
		  end if;

		when Init =>
		-- report "in Init row = " & integer'image(row) & " column = " & integer'image(column) & " a(column) value is:" & integer'image(a(column));
		  if(row = 1 and column = 15 and flag = '1') then
			state <= Slt;
		  elsif(row /= 1 and column /= 15 and flag = '0') then
			state <= Init;
		  else
			state <= Init;
		  end if;	

		when Slt =>
		-- report "in Slt row = " & integer'image(row) & "column = " & integer'image(column);
		  state <= Compute;

		when Compute => 
		-- report "in Compute row = " & integer'image(row) & "column = " & integer'image(column);
		  if(column /= 15 and row /= 15 and compute_flag = '0') then
			state <= Compute;
		  elsif(column = 15 and row /= 15 and compute_flag = '1') then
			state <= Slt;
		  elsif(column = 15 and row = 15 and compute_flag = '1') then
			state <= Complete;
		  else 
			state <= Compute;
   		  end if;

		when Complete => 
		-- report "in Complete row = " & integer'image(row) & "column = " & integer'image(column);
		  if(i_valid /= '1' and reset /= '1') then
			state <= Complete;
		  elsif(i_valid = '1' or reset = '1') then
			state <= Rst;
	   	else 
			state <= Complete;
		  end if;

	  end case;
	end process;

	run_compute: process
		begin

	  wait until rising_edge(clk);

		case(state) is
			when Rst =>
				row <= 0;
				column <= 0;
				o_data <= to_unsigned(0, 8);
				o_done <= '0';
				p <= 0;
				flag <= '0';
				compute_flag <= '0';
				for i in 0 to 15 loop 
					minuend(i) <= 0;	
					subtrahend(i) <= 0;	
					addend(i) <= 0;
				end loop;
				stage <= to_unsigned(1, 3);
				if i_valid = '1' then
					minuend(column) <= to_integer(i_data);	
					column <= column + 1;
					-- report "column = " & integer'image(column)&" minuend = " & integer'image(to_integer(i_data));
				end if ;
			
			when Init =>
				if(row = 0 and i_valid = '1') then 				
					minuend(column) <= to_integer(i_data);	
				--report "column = " & integer'image(column)&" minuend = " & integer'image(to_integer(i_data));
					if(column = 15) then
						column <= 0;
						row <= 1;
					else
						column <= column + 1;
					end if;

				elsif(row /= 0 and i_valid = '1') then
					subtrahend(column) <= to_integer(i_data);
					--report "column = " & integer'image(column)&" subtrahend = " & integer'image(to_integer(i_data));
					if(column = 15) then
						flag <= '1';
					else
						column <= column + 1;
						flag <= '0';
					end if;				
				end if;

			when Slt =>
				column <= 0;
				row <= row + 1;
				
				case(stage) is
					when to_unsigned(1, 3) =>
						stage <= to_unsigned(2, 3);
					when to_unsigned(2, 3) =>
						stage <= to_unsigned(2, 3);
						minuend(15 downto 0) <= subtrahend(15 downto 0);
						subtrahend(15 downto 0) <= addend(15 downto 0);		
					when others =>
							
					end case;

			when Compute =>
				if(i_valid = '1') then 
					addend(column) <= to_integer(i_data);
					p <= minuend(column) - subtrahend(column) + to_integer(i_data);

					if(p >= 0 ) then 
						o_data <= o_data + 1;
					end if;
					--report "minuend = " & integer'image(minuend(column)) & " subtrahend = " & integer'image(subtrahend(column)) &" addend = " & integer'image(to_integer(i_data)) &" p = " & integer'image(p);
					if(column = 15) then
						compute_flag <= '1';
					else
						column <= column + 1;
						compute_flag <= '0';
					end if;							
				end if;

			when Complete =>
				o_done <= '1';

			end case;
		end process;

end architecture main;

-- Q1: number of flip flops and lookup tables?
-- There are 54 flip flops and 647 luts

-- Q2: maximum clock frequency?
-- 104 MHZ

-- Q3: source and destination signals of critical path?
-- The source is i_data/clk. The destination is o_data.

-- Q4: does your implementation function correctly?  If not,
-- explain the bug and how you would fix it if you had more time.
-- Our implementation is working correctly and passed all tests. No bug found.
