library std;
use std.textio.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package util_unsynth is

  function to_string( v : unsigned ) return string;
  
  procedure write_file  ( filename : in string; msg : in string);
  procedure append_file ( filename : in string; msg : in string);
  procedure append_file ( filename : in string; msg : in integer);

end package;


package body util_unsynth is

  function to_string( v : unsigned ) return string is
  begin
    return integer'image( to_integer( v ) );
  end function;
  
  --------------------------------------------------------------
  -- write a string to a file
  
  procedure write_file ( filename : in string; msg : in string) is
    file wr_file       : text open write_mode is filename;
    variable textline  : line;
  begin
    write( textline, msg );
    writeline(wr_file, textline);
  end write_file;

  --------------------------------------------------------------
  -- append a string to a file
  
  procedure append_file ( filename : in string; msg : in string) is
    file wr_file       : text open append_mode is filename;
    variable textline  : line;
  begin
    write( textline, msg );
    writeline(wr_file, textline);
  end append_file;

  --------------------------------------------------------------
  -- append an integer to a file
  
  procedure append_file ( filename : in string; msg : in integer) is
    file wr_file       : text open append_mode is filename;
    variable textline  : line;
  begin
    write( textline, msg );
    writeline(wr_file, textline);
  end append_file;

end package body;
