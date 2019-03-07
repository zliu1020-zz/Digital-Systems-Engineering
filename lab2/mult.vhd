library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.util.all;

entity mult is
  port ( clk, reset, i_valid : in std_logic;
         i_a, i_b : in unsigned( 7 downto 0 );
         o_valid : out std_logic;
         o_z : out unsigned( 7 downto 0 )
       );
end entity;

architecture main of mult is
  -- for full implementation, change the array bounds
  signal v    : std_logic_vector( 0 to 3 );
  signal a, b : unsigned( 7 downto 0 );

begin

  v(0) <= i_valid;
  
  process 
    begin
    wait until rising_edge(clk);

    -- state 5
    if reset = '1' then
  
      v(1) <= '0';
      v(2) <= '0'; 
      v(3) <= '0';

    end if;



    -- state 2
    if v(1) = '1' then

      if a(0) = '1' then
        o_z <= o_z + b;
      end if;
	  
	  -- go to state 3
      v(1) <= '0';
      v(2) <= '1'; 
      v(3) <= '0';

    end if;


    --state 3
    if v(2) = '1' then
	  -- bit shift
      a <= a srl 1;
      b <= b sll 1;

	  -- go to state 4
      v(1) <= '0';
      v(2) <= '0'; 
      v(3) <= '1';

    end if;


    --state 4
    if v(3) = '1' then
     if a <= 0 then
	  -- go to state 5, end while loop
      o_valid <= '1';
      v(1) <= '0';
     else
	  -- go to state 2, loop again
      o_valid <= '0';
      v(1) <= '1';
    end if;
      v(2) <= '0';
      v(3) <= '0';


  
    end if;

    -- state 1
    if v(0) = '1' then
	  -- init
      a <= i_a;
      b <= i_b;
      o_z <= "00000000";
      o_valid <= '0';

      -- go to state 2
      v(1) <= '1';
      v(2) <= '0';
      v(3) <= '0';

    end if;


  end process;

end architecture;

