library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package util is

  -- convert a boolean to std_logic
  function to_std_logic( b : boolean ) return std_logic;

  -- convert an unsigned number into seven-segment display
  function to_seg7( digit : unsigned( 3 downto 0 ) )
    return std_logic_vector;
  
end package;


package body util is

  ------------------------------------------------------------
  
  function to_std_logic ( b : boolean ) return std_logic is
  begin
    if b then
      return '1';
    else
      return '0';
    end if;
  end function;

  ------------------------------------------------------------
  
  function to_seg7( digit : unsigned(3 downto 0) ) return std_logic_vector
  is
    -- location of bits on display
    --   +-0-+ 
    --   5   1
    --   +-6-+
    --   4   2
    --   +-3-+
    -- 
    -- 
    -- 
    -- 
    --
    type num_to_seg7_ty is array( 0 to 15 ) of std_logic_vector( 6 downto 0 );
    constant num_to_seg7 : num_to_seg7_ty :=
      (
           -- 6543210
        0 => "0111111",
        1 => "0000110",
        2 => "1011011",
        3 => "1001111",
        4 => "1100110",
        5 => "1101101",
        6 => "1111101",
        7 => "0000111",
        8 => "1111111",
        9 => "1101111",
       10 => "1110111",
       11 => "1111100",
       12 => "0111001",
       13 => "1011110",
       14 => "1111001",
       15 => "1110001"
     );
  begin
    return num_to_seg7( to_integer( digit ) );
  end function;
  
end package body;
