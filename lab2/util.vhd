library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package util is

  -- convert a boolean to std_logic
  function to_std_logic( b : boolean ) return std_logic;

  -- rotate left (rol) a vector by n bits
  -- Usage: z <= a rol 2;
  function "rol" ( a : std_logic_vector; n : natural )
    return std_logic_vector;
  
  -- shift logical left (lol) a vector by n bits
  -- Usage: z <= a sll 2;
  function "sll" ( a : std_logic_vector; n : natural )
    return std_logic_vector;
  
end package;


package body util is

  function to_std_logic ( b : boolean ) return std_logic is
  begin
    if b then
      return '1';
    else
      return '0';
    end if;
  end function;

  function "rol" ( a : std_logic_vector; n : natural )
    return std_logic_vector
  is
  begin
    return std_logic_vector( unsigned(a) rol n );
  end function;

  function "sll" ( a : std_logic_vector; n : natural )
    return std_logic_vector
  is
  begin
    return std_logic_vector( unsigned(a) sll n );
  end function;

  
end package body;
