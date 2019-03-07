library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- util_unsynth.vhd defines "to_string" to convert unsigned to a string
use work.util_unsynth.all;

----------------------------------------------------------------------
-- entity
----------------------------------------------------------------------

entity mult_tb is
end entity;

----------------------------------------------------------------------
-- archicture
----------------------------------------------------------------------

architecture main of mult_tb is
  -- clock period
  constant period : time := 10 ns;

  -- signals to connect to mult
  signal a, b, z                : unsigned(  7 downto 0 );
  signal clk, reset,
         i_valid, o_valid       : std_logic;

  -- instrumentation signals
  signal old_a, old_b           : unsigned(  7 downto 0 );
  signal tmp_z                  : unsigned( 15 downto 0 );
  

  -- constant array for test vectors
  type test_ty is
    record
      a, b : natural;
  end record;
  type test_vector_ty is array( natural range <> ) of test_ty;
  constant test_vector : test_vector_ty
    := ( ( a => 13, b =>  5 )
       , ( a => 10, b =>  2 )
       , ( a =>  2, b => 20 )
       );
  
begin

  ------------------------------------------------------------
  -- clk process
  -- start clk=0, get rising edge on multiple of period
  process begin
    clk <= '0';
    wait for period;
    loop
      clk <= not clk;
      wait for 0.5 * period;
    end loop;
  end process;

  ------------------------------------------------------------
  -- drive input data and check result
  process begin
    --------------------------------------------------
    -- initialization / reset
    reset   <= '1';
    i_valid <= '0';
    --------------------------------------------------
    wait until rising_edge(clk);
    wait for 2 * period;
    --------------------------------------------------
    -- run mode, loop through test vector
    reset <= '0';
    for i in test_vector'range loop
      ----------------------------------------
      -- there is a problem with one of the next two lines
      wait until rising_edge( clk );
      wait for 3.5 * period;
      -- drive input data
      i_valid <= '1';
      a       <= to_unsigned( test_vector(i).a, 8 );
      b       <= to_unsigned( test_vector(i).b, 8 );
      ----------------------------------------
      wait for period;
      -- store a, b, and expected result in instrumentation signals
      old_a   <= a;
      old_b   <= b;
      tmp_z   <= a * b;
      -- drive inputs with bubbles
      i_valid <= '0';
      a       <= (others => 'X' );
      b       <= (others => 'X' );
      ----------------------------------------
      -- wait until result is ready
      wait until rising_edge( clk ) and o_valid = '1';
      -- report whether answer is correct
      if z = tmp_z( 7 downto 0 ) then
        report  "ok: " & to_string( old_a )
               &" * "  & to_string( old_b )
               &" -> " & to_string( z) ;
      else
        report "FAIL: " & to_string( old_a )
               &" * "   & to_string( old_b )
               &" -> "  & to_string( z) 
               &" != "  & to_string( tmp_z( 7 downto 0 ) );
      end if;
      ----------------------------------------
    end loop;
    --------------------------------------------------
    -- done with test, wait for forever
    wait;
    --------------------------------------------------
  end process;

  ------------------------------------------------------------
  -- unit under test (mult)
  uut : entity work.mult
    port map ( clk => clk
             , reset => reset
             , i_valid => i_valid
             , i_a => a
             , i_b => b
             , o_valid => o_valid
             , o_z => z
             );
  
  ------------------------------------------------------------
  
end architecture;  
    
-- question 1: explain the bug in the testbench and why your change
-- fix the problem.
-- The bug happens because there is no clock rising edge before X is assigned to a and b.
-- The process that assigned a and b to i_a and i_b happens only on a rising edge of the clock.
-- By changing 3 periods to 3.5 periods, out code makes sure that a rising edge is about to happen, so that values of a and b are updated correctly
