library ieee;
use ieee.std_logic_1164.all;

entity sum is
       port ( i_a, i_b, i_cin : in std_logic;
              o_sum :       out std_logic
       );
end sum;

architecture main of sum is
begin 
  process(i_a, i_b, i_cin)
  begin
    o_sum <= i_a xor i_b xor i_cin;	
  end process;
end architecture;

-- question 1
  -- Pins i_a, i_b, i_cin are synthesized. i_cin and i_a are connected to a XOR gate, then the resulting signal is feed into a second XOR gate with i_b together. 
  -- In the end, the result of the second XOR gate is written into o_sum


