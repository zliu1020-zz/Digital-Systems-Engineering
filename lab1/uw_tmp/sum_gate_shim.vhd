----------------------------------------------------------------------
-- begin uw-generated entity for gate shim 
----------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use ieee.std_logic_1164.all;
entity sum is
  port (
      i_a  : in STD_LOGIC
    ; i_b  : in STD_LOGIC
    ; i_cin  : in STD_LOGIC
    ; o_sum  : out STD_LOGIC
  );
end entity;

----------------------------------------------------------------------
-- begin uw-generated architecture for gate shim
----------------------------------------------------------------------

architecture gate_shim of sum is
  signal VDD, VSS : std_logic; 
begin
  gate : entity work.sum_gate
    port map (
        i_a => i_a
      , i_b => i_b
      , i_cin => i_cin
      , o_sum => o_sum
    );
end architecture;

