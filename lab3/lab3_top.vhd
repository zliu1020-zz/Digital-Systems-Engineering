-------------------------------------------------------------------------------
-- lab3_top.vhd
-- top level code for lab3
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab3_top is
  port ( reset_n    : in  std_logic;  -- reset 
         clk        : in  std_logic;  -- clock
         uart_rx    : in  std_logic;  -- uart receive
         uart_tx    : out std_logic;  -- uart transmit
         seg7_en    : out std_logic_vector( 1 downto 0 ); 
         seg7_data  : out std_logic_vector( 7 downto 0 );
         led        : out std_logic_vector( 7 downto 0 );
         sw         : in  std_logic_vector( 7 downto 0 )
  );
end entity;


architecture main of lab3_top is

  signal reset
       , i_valid
       , o_done
       : std_logic;
  
  signal i_data
       , o_data
       , byte_reg
       , byte_count
       , seg7_num
       : unsigned(7 downto 0);

  signal seg7_pts : std_logic_vector( 1 downto 0 );

  signal tx_busy
       , rx_error
       , uart_rx_tmp
       , uart_tx_tmp
       , byte_valid
       : std_logic;
  
begin

  ------------------------------------------------------------
  -- flip polarity of reset
  ------------------------------------------------------------
  
  reset <= not( reset_n );
 
  ------------------------------------------------------------
  -- uart
  ------------------------------------------------------------

  yes_uart : if true generate 
  u_uart: entity work.uart( main )
    port map (
      ----------------------------------------      
      clk      => clk,
      rst      => reset,
      baud     => '1', -- baud = 115 kbps
      ----------------------------------------      
      rx       => uart_rx_tmp,
      rxrdy    => i_valid,
      rxerr    => rx_error,
      unsigned( dout )    => i_data,
      ----------------------------------------      
      din      => std_logic_vector( byte_reg ),
      ld       => byte_valid,
      tx       => uart_tx_tmp,
      txbusy  => tx_busy
      ----------------------------------------      
    );
  end generate;


uart_tx <= uart_rx_tmp;
uart_rx_tmp <= uart_rx;
led(4) <= uart_rx_tmp;
led(3) <= uart_tx_tmp;

  ------------------------------------------------------------
  -- incoming byte counter and register
  ------------------------------------------------------------

  process begin
    wait until rising_edge( clk );
    if reset = '1' then
      byte_count <= ( others => '0' );
      byte_reg   <= ( others => '0' );
    elsif i_valid = '1' then
      byte_count <= byte_count + 1;
      if sw(7) = '1' then 
        byte_reg   <= byte_count;
      else
        byte_reg   <= i_data;
      end if;
    end if;
  end process;

  process begin
    wait until rising_edge( clk );
    byte_valid <= i_valid or ( byte_valid and tx_busy );
  end process;
  
  ------------------------------------------------------------
  -- core (students' code)
  ------------------------------------------------------------
  
  u_lab3: entity work.lab3( main )
    port map (
      clk      => clk,
      reset    => reset,
      i_valid  => i_valid, 
      i_data   => i_data,
      o_done   => o_done,
      o_data   => o_data
    );

  ------------------------------------------------------------
  -- leds and seven-segment display
  ------------------------------------------------------------

  seg7_pts <= ( others => o_done );

  led( 7 )          <= sw( 7 );
  --led( 6 downto 3 ) <= ( others => '0' );
  led( 6 downto 5 ) <= ( others => '0' );
  led( 2 downto 0 ) <= sw( 2 downto 0 );
  
  seg7_num  <=   o_data     when sw(0) = '0'
            else byte_count when sw( 1 downto 0 ) = "01"
            else byte_reg   when sw( 1 downto 0 ) = "11"
            else (others => '0');
  
  u_seg7 : entity work.num_seg7( main )
    port map
      ( clk    => clk
      , reset  => reset
      , i_num  => unsigned( seg7_num )
      , i_pts  => seg7_pts
      , o_en   => seg7_en
      , o_char => seg7_data
      );
  
  ------------------------------------------------------------
  
end main;
