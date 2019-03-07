----------------------------------------------------------------------
-- begin uw-generated entity for gate shim 
----------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use ieee.std_logic_1164.all;
entity add2 is
  port (
      i_a  : in STD_LOGIC_VECTOR (1 downto 0)
    ; i_b  : in STD_LOGIC_VECTOR (1 downto 0)
    ; i_cin  : in STD_LOGIC
    ; o_sum  : out STD_LOGIC_VECTOR (1 downto 0)
    ; o_cout  : out STD_LOGIC
  );
end entity;

----------------------------------------------------------------------
-- begin uw-generated architecture for gate shim
----------------------------------------------------------------------

architecture gate_shim of add2 is
  signal VDD, VSS : std_logic; 
begin
  gate : entity work.add2_gate
    port map (
        i_a(1) => i_a(1)
      , i_a(0) => i_a(0)
      , i_b(1) => i_b(1)
      , i_b(0) => i_b(0)
      , i_cin => i_cin
      , o_sum(1) => o_sum(1)
      , o_sum(0) => o_sum(0)
      , o_cout => o_cout
    );
end architecture;

----------------------------------------------------------------------
-- begin uw-generated entity for gate shim 
----------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use ieee.std_logic_1164.all;
entity add2 is
  port (
      i_a  : in STD_LOGIC_VECTOR (1 downto 0)
    ; i_b  : in STD_LOGIC_VECTOR (1 downto 0)
    ; i_cin  : in STD_LOGIC
    ; o_sum  : out STD_LOGIC_VECTOR (1 downto 0)
    ; o_cout  : out STD_LOGIC
  );
end entity;

----------------------------------------------------------------------
-- begin uw-generated architecture for gate shim
----------------------------------------------------------------------

architecture gate_shim of add2 is
  signal VDD, VSS : std_logic; 
begin
  gate : entity work.add2_gate
    port map (
        i_a(1) => i_a(1)
      , i_a(0) => i_a(0)
      , i_b(1) => i_b(1)
      , i_b(0) => i_b(0)
      , i_cin => i_cin
      , o_sum(1) => o_sum(1)
      , o_sum(0) => o_sum(0)
      , o_cout => o_cout
    );
end architecture;

