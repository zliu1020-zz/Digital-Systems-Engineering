----------------------------------------------------------------------
-- begin uw-generated entity for chip shim 
----------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity lab3_top is
  port (
      reset_n  : in STD_LOGIC
    ; clk  : in STD_LOGIC
    ; uart_rx  : in STD_LOGIC
    ; uart_tx  : out STD_LOGIC
    ; seg7_en  : out STD_LOGIC_VECTOR (1 downto 0)
    ; seg7_data  : out STD_LOGIC_VECTOR (7 downto 0)
    ; led  : out STD_LOGIC_VECTOR (7 downto 0)
    ; sw  : in STD_LOGIC_VECTOR (7 downto 0)
  );
end entity;

----------------------------------------------------------------------
-- begin uw-generated architecture for chip shim
----------------------------------------------------------------------

architecture chip_shim of lab3_top is
  signal VDD, VSS : std_logic; 
begin
  chip : entity work.lab3_top_chip
    port map (
        reset_n => reset_n
      , clk => clk
      , uart_rx => uart_rx
      , uart_tx => uart_tx
      , seg7_en(1) => seg7_en(1)
      , seg7_en(0) => seg7_en(0)
      , seg7_data(7) => seg7_data(7)
      , seg7_data(6) => seg7_data(6)
      , seg7_data(5) => seg7_data(5)
      , seg7_data(4) => seg7_data(4)
      , seg7_data(3) => seg7_data(3)
      , seg7_data(2) => seg7_data(2)
      , seg7_data(1) => seg7_data(1)
      , seg7_data(0) => seg7_data(0)
      , led(7) => led(7)
      , led(6) => led(6)
      , led(5) => led(5)
      , led(4) => led(4)
      , led(3) => led(3)
      , led(2) => led(2)
      , led(1) => led(1)
      , led(0) => led(0)
      , sw(7) => sw(7)
      , sw(6) => sw(6)
      , sw(5) => sw(5)
      , sw(4) => sw(4)
      , sw(3) => sw(3)
      , sw(2) => sw(2)
      , sw(1) => sw(1)
      , sw(0) => sw(0)
    );
end architecture;

