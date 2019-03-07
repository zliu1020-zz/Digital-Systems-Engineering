----------------------------------------------------------------------
-- begin uw-generated entity for gate shim 
----------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.heat_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity heatingsys is
  port (
      reset  : in STD_LOGIC
    ; clk  : in STD_LOGIC
    ; i_cur_temp  : in SIGNED (7 downto 0)
    ; i_des_temp  : in SIGNED (7 downto 0)
    ; o_heatmode  : out STD_LOGIC_VECTOR (1 downto 0)
  );
end entity;

----------------------------------------------------------------------
-- begin uw-generated architecture for gate shim
----------------------------------------------------------------------

architecture gate_shim of heatingsys is
  signal VDD, VSS : std_logic; 
begin
  gate : entity work.heatingsys_gate
    port map (
        reset => reset
      , clk => clk
      , i_cur_temp(7) => i_cur_temp(7)
      , i_cur_temp(6) => i_cur_temp(6)
      , i_cur_temp(5) => i_cur_temp(5)
      , i_cur_temp(4) => i_cur_temp(4)
      , i_cur_temp(3) => i_cur_temp(3)
      , i_cur_temp(2) => i_cur_temp(2)
      , i_cur_temp(1) => i_cur_temp(1)
      , i_cur_temp(0) => i_cur_temp(0)
      , i_des_temp(7) => i_des_temp(7)
      , i_des_temp(6) => i_des_temp(6)
      , i_des_temp(5) => i_des_temp(5)
      , i_des_temp(4) => i_des_temp(4)
      , i_des_temp(3) => i_des_temp(3)
      , i_des_temp(2) => i_des_temp(2)
      , i_des_temp(1) => i_des_temp(1)
      , i_des_temp(0) => i_des_temp(0)
      , o_heatmode(1) => o_heatmode(1)
      , o_heatmode(0) => o_heatmode(0)
    );
end architecture;

----------------------------------------------------------------------
-- begin uw-generated entity for gate shim 
----------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.heat_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity heatingsys is
  port (
      i_cur_temp  : in SIGNED (7 downto 0)
    ; i_des_temp  : in SIGNED (7 downto 0)
    ; i_reset  : in STD_LOGIC
    ; i_clock  : in STD_LOGIC
    ; o_heatmode  : out STD_LOGIC_VECTOR (1 downto 0)
  );
end entity;

----------------------------------------------------------------------
-- begin uw-generated architecture for gate shim
----------------------------------------------------------------------

architecture gate_shim of heatingsys is
  signal VDD, VSS : std_logic; 
begin
  gate : entity work.heatingsys_gate
    port map (
        i_cur_temp(7) => i_cur_temp(7)
      , i_cur_temp(6) => i_cur_temp(6)
      , i_cur_temp(5) => i_cur_temp(5)
      , i_cur_temp(4) => i_cur_temp(4)
      , i_cur_temp(3) => i_cur_temp(3)
      , i_cur_temp(2) => i_cur_temp(2)
      , i_cur_temp(1) => i_cur_temp(1)
      , i_cur_temp(0) => i_cur_temp(0)
      , i_des_temp(7) => i_des_temp(7)
      , i_des_temp(6) => i_des_temp(6)
      , i_des_temp(5) => i_des_temp(5)
      , i_des_temp(4) => i_des_temp(4)
      , i_des_temp(3) => i_des_temp(3)
      , i_des_temp(2) => i_des_temp(2)
      , i_des_temp(1) => i_des_temp(1)
      , i_des_temp(0) => i_des_temp(0)
      , i_reset => i_reset
      , i_clock => i_clock
      , o_heatmode(1) => o_heatmode(1)
      , o_heatmode(0) => o_heatmode(0)
    );
end architecture;

----------------------------------------------------------------------
-- begin uw-generated entity for gate shim 
----------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.heat_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity heatingsys is
  port (
      i_cur_temp  : in SIGNED (7 downto 0)
    ; i_des_temp  : in SIGNED (7 downto 0)
    ; i_reset  : in STD_LOGIC
    ; i_clock  : in STD_LOGIC
    ; o_heatmode  : out STD_LOGIC_VECTOR (1 downto 0)
  );
end entity;

----------------------------------------------------------------------
-- begin uw-generated architecture for gate shim
----------------------------------------------------------------------

architecture gate_shim of heatingsys is
  signal VDD, VSS : std_logic; 
begin
  gate : entity work.heatingsys_gate
    port map (
        i_cur_temp(7) => i_cur_temp(7)
      , i_cur_temp(6) => i_cur_temp(6)
      , i_cur_temp(5) => i_cur_temp(5)
      , i_cur_temp(4) => i_cur_temp(4)
      , i_cur_temp(3) => i_cur_temp(3)
      , i_cur_temp(2) => i_cur_temp(2)
      , i_cur_temp(1) => i_cur_temp(1)
      , i_cur_temp(0) => i_cur_temp(0)
      , i_des_temp(7) => i_des_temp(7)
      , i_des_temp(6) => i_des_temp(6)
      , i_des_temp(5) => i_des_temp(5)
      , i_des_temp(4) => i_des_temp(4)
      , i_des_temp(3) => i_des_temp(3)
      , i_des_temp(2) => i_des_temp(2)
      , i_des_temp(1) => i_des_temp(1)
      , i_des_temp(0) => i_des_temp(0)
      , i_reset => i_reset
      , i_clock => i_clock
      , o_heatmode(1) => o_heatmode(1)
      , o_heatmode(0) => o_heatmode(0)
    );
end architecture;

----------------------------------------------------------------------
-- begin uw-generated entity for gate shim 
----------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.heat_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity heatingsys is
  port (
      reset  : in STD_LOGIC
    ; clk  : in STD_LOGIC
    ; i_cur_temp  : in SIGNED (7 downto 0)
    ; i_des_temp  : in SIGNED (7 downto 0)
    ; o_heatmode  : out STD_LOGIC_VECTOR (1 downto 0)
  );
end entity;

----------------------------------------------------------------------
-- begin uw-generated architecture for gate shim
----------------------------------------------------------------------

architecture gate_shim of heatingsys is
  signal VDD, VSS : std_logic; 
begin
  gate : entity work.heatingsys_gate
    port map (
        reset => reset
      , clk => clk
      , i_cur_temp(7) => i_cur_temp(7)
      , i_cur_temp(6) => i_cur_temp(6)
      , i_cur_temp(5) => i_cur_temp(5)
      , i_cur_temp(4) => i_cur_temp(4)
      , i_cur_temp(3) => i_cur_temp(3)
      , i_cur_temp(2) => i_cur_temp(2)
      , i_cur_temp(1) => i_cur_temp(1)
      , i_cur_temp(0) => i_cur_temp(0)
      , i_des_temp(7) => i_des_temp(7)
      , i_des_temp(6) => i_des_temp(6)
      , i_des_temp(5) => i_des_temp(5)
      , i_des_temp(4) => i_des_temp(4)
      , i_des_temp(3) => i_des_temp(3)
      , i_des_temp(2) => i_des_temp(2)
      , i_des_temp(1) => i_des_temp(1)
      , i_des_temp(0) => i_des_temp(0)
      , o_heatmode(1) => o_heatmode(1)
      , o_heatmode(0) => o_heatmode(0)
    );
end architecture;

----------------------------------------------------------------------
-- begin uw-generated entity for gate shim 
----------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.heat_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity heatingsys is
  port (
      reset  : in STD_LOGIC
    ; clk  : in STD_LOGIC
    ; i_cur_temp  : in SIGNED (7 downto 0)
    ; i_des_temp  : in SIGNED (7 downto 0)
    ; o_heatmode  : out STD_LOGIC_VECTOR (1 downto 0)
  );
end entity;

----------------------------------------------------------------------
-- begin uw-generated architecture for gate shim
----------------------------------------------------------------------

architecture gate_shim of heatingsys is
  signal VDD, VSS : std_logic; 
begin
  gate : entity work.heatingsys_gate
    port map (
        reset => reset
      , clk => clk
      , i_cur_temp(7) => i_cur_temp(7)
      , i_cur_temp(6) => i_cur_temp(6)
      , i_cur_temp(5) => i_cur_temp(5)
      , i_cur_temp(4) => i_cur_temp(4)
      , i_cur_temp(3) => i_cur_temp(3)
      , i_cur_temp(2) => i_cur_temp(2)
      , i_cur_temp(1) => i_cur_temp(1)
      , i_cur_temp(0) => i_cur_temp(0)
      , i_des_temp(7) => i_des_temp(7)
      , i_des_temp(6) => i_des_temp(6)
      , i_des_temp(5) => i_des_temp(5)
      , i_des_temp(4) => i_des_temp(4)
      , i_des_temp(3) => i_des_temp(3)
      , i_des_temp(2) => i_des_temp(2)
      , i_des_temp(1) => i_des_temp(1)
      , i_des_temp(0) => i_des_temp(0)
      , o_heatmode(1) => o_heatmode(1)
      , o_heatmode(0) => o_heatmode(0)
    );
end architecture;

----------------------------------------------------------------------
-- begin uw-generated entity for gate shim 
----------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.heat_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity heatingsys is
  port (
      reset  : in STD_LOGIC
    ; clk  : in STD_LOGIC
    ; i_cur_temp  : in SIGNED (7 downto 0)
    ; i_des_temp  : in SIGNED (7 downto 0)
    ; o_heatmode  : out STD_LOGIC_VECTOR (1 downto 0)
  );
end entity;

----------------------------------------------------------------------
-- begin uw-generated architecture for gate shim
----------------------------------------------------------------------

architecture gate_shim of heatingsys is
  signal VDD, VSS : std_logic; 
begin
  gate : entity work.heatingsys_gate
    port map (
        reset => reset
      , clk => clk
      , i_cur_temp(7) => i_cur_temp(7)
      , i_cur_temp(6) => i_cur_temp(6)
      , i_cur_temp(5) => i_cur_temp(5)
      , i_cur_temp(4) => i_cur_temp(4)
      , i_cur_temp(3) => i_cur_temp(3)
      , i_cur_temp(2) => i_cur_temp(2)
      , i_cur_temp(1) => i_cur_temp(1)
      , i_cur_temp(0) => i_cur_temp(0)
      , i_des_temp(7) => i_des_temp(7)
      , i_des_temp(6) => i_des_temp(6)
      , i_des_temp(5) => i_des_temp(5)
      , i_des_temp(4) => i_des_temp(4)
      , i_des_temp(3) => i_des_temp(3)
      , i_des_temp(2) => i_des_temp(2)
      , i_des_temp(1) => i_des_temp(1)
      , i_des_temp(0) => i_des_temp(0)
      , o_heatmode(1) => o_heatmode(1)
      , o_heatmode(0) => o_heatmode(0)
    );
end architecture;

----------------------------------------------------------------------
-- begin uw-generated entity for gate shim 
----------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.heat_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity heatingsys is
  port (
      reset  : in STD_LOGIC
    ; clk  : in STD_LOGIC
    ; i_cur_temp  : in SIGNED (7 downto 0)
    ; i_des_temp  : in SIGNED (7 downto 0)
    ; o_heatmode  : out STD_LOGIC_VECTOR (1 downto 0)
  );
end entity;

----------------------------------------------------------------------
-- begin uw-generated architecture for gate shim
----------------------------------------------------------------------

architecture gate_shim of heatingsys is
  signal VDD, VSS : std_logic; 
begin
  gate : entity work.heatingsys_gate
    port map (
        reset => reset
      , clk => clk
      , i_cur_temp(7) => i_cur_temp(7)
      , i_cur_temp(6) => i_cur_temp(6)
      , i_cur_temp(5) => i_cur_temp(5)
      , i_cur_temp(4) => i_cur_temp(4)
      , i_cur_temp(3) => i_cur_temp(3)
      , i_cur_temp(2) => i_cur_temp(2)
      , i_cur_temp(1) => i_cur_temp(1)
      , i_cur_temp(0) => i_cur_temp(0)
      , i_des_temp(7) => i_des_temp(7)
      , i_des_temp(6) => i_des_temp(6)
      , i_des_temp(5) => i_des_temp(5)
      , i_des_temp(4) => i_des_temp(4)
      , i_des_temp(3) => i_des_temp(3)
      , i_des_temp(2) => i_des_temp(2)
      , i_des_temp(1) => i_des_temp(1)
      , i_des_temp(0) => i_des_temp(0)
      , o_heatmode(1) => o_heatmode(1)
      , o_heatmode(0) => o_heatmode(0)
    );
end architecture;

----------------------------------------------------------------------
-- begin uw-generated entity for gate shim 
----------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.heat_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity heatingsys is
  port (
      i_cur_temp  : in SIGNED (7 downto 0)
    ; i_des_temp  : in SIGNED (7 downto 0)
    ; i_reset  : in STD_LOGIC
    ; i_clock  : in STD_LOGIC
    ; o_heatmode  : out STD_LOGIC_VECTOR (1 downto 0)
  );
end entity;

----------------------------------------------------------------------
-- begin uw-generated architecture for gate shim
----------------------------------------------------------------------

architecture gate_shim of heatingsys is
  signal VDD, VSS : std_logic; 
begin
  gate : entity work.heatingsys_gate
    port map (
        i_cur_temp(7) => i_cur_temp(7)
      , i_cur_temp(6) => i_cur_temp(6)
      , i_cur_temp(5) => i_cur_temp(5)
      , i_cur_temp(4) => i_cur_temp(4)
      , i_cur_temp(3) => i_cur_temp(3)
      , i_cur_temp(2) => i_cur_temp(2)
      , i_cur_temp(1) => i_cur_temp(1)
      , i_cur_temp(0) => i_cur_temp(0)
      , i_des_temp(7) => i_des_temp(7)
      , i_des_temp(6) => i_des_temp(6)
      , i_des_temp(5) => i_des_temp(5)
      , i_des_temp(4) => i_des_temp(4)
      , i_des_temp(3) => i_des_temp(3)
      , i_des_temp(2) => i_des_temp(2)
      , i_des_temp(1) => i_des_temp(1)
      , i_des_temp(0) => i_des_temp(0)
      , i_reset => i_reset
      , i_clock => i_clock
      , o_heatmode(1) => o_heatmode(1)
      , o_heatmode(0) => o_heatmode(0)
    );
end architecture;

----------------------------------------------------------------------
-- begin uw-generated entity for gate shim 
----------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.heat_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity heatingsys is
  port (
      reset  : in STD_LOGIC
    ; clk  : in STD_LOGIC
    ; i_cur_temp  : in SIGNED (7 downto 0)
    ; i_des_temp  : in SIGNED (7 downto 0)
    ; o_heatmode  : out STD_LOGIC_VECTOR (1 downto 0)
  );
end entity;

----------------------------------------------------------------------
-- begin uw-generated architecture for gate shim
----------------------------------------------------------------------

architecture gate_shim of heatingsys is
  signal VDD, VSS : std_logic; 
begin
  gate : entity work.heatingsys_gate
    port map (
        reset => reset
      , clk => clk
      , i_cur_temp(7) => i_cur_temp(7)
      , i_cur_temp(6) => i_cur_temp(6)
      , i_cur_temp(5) => i_cur_temp(5)
      , i_cur_temp(4) => i_cur_temp(4)
      , i_cur_temp(3) => i_cur_temp(3)
      , i_cur_temp(2) => i_cur_temp(2)
      , i_cur_temp(1) => i_cur_temp(1)
      , i_cur_temp(0) => i_cur_temp(0)
      , i_des_temp(7) => i_des_temp(7)
      , i_des_temp(6) => i_des_temp(6)
      , i_des_temp(5) => i_des_temp(5)
      , i_des_temp(4) => i_des_temp(4)
      , i_des_temp(3) => i_des_temp(3)
      , i_des_temp(2) => i_des_temp(2)
      , i_des_temp(1) => i_des_temp(1)
      , i_des_temp(0) => i_des_temp(0)
      , o_heatmode(1) => o_heatmode(1)
      , o_heatmode(0) => o_heatmode(0)
    );
end architecture;

