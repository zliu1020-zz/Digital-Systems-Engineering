library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package util_unsynth is

  function to_string( v : unsigned ) return string;
  
end package;


package body util_unsynth is

  function to_string( v : unsigned ) return string is
  begin
    return integer'image( to_integer( v ) );
  end function;
  
end package body;
