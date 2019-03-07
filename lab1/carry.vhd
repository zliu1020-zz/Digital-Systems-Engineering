library ieee;
use ieee.std_logic_1164.all;

-- insert your code here

entity carry is
	port(i_x, i_y, i_cin: in std_logic;
	     o_cout: 	out std_logic
);
end carry;

architecture main of carry is
  begin 
   process(i_x, i_y, i_cin)
   begin
	o_cout <= (i_x and i_y) or (i_x and i_cin) or (i_y and i_cin);
    end process;
end architecture;


