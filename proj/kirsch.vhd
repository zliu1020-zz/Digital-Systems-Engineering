library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.util.all;
use work.kirsch_synth_pkg.all;

entity kirsch is
  port(
    clk        : in  std_logic;                      
    reset      : in  std_logic;                      
    i_valid    : in  std_logic;                 
    i_pixel    : in  unsigned(7 downto 0);
    o_valid    : out std_logic;                 
    o_edge     : out std_logic;                      
    o_dir      : out direction_ty;
    o_mode     : out mode_ty;
    o_row      : out unsigned(7 downto 0);
    o_col      : out unsigned(7 downto 0)
  );  
end entity;

architecture main of kirsch is
  type state_ty is (init, calculate);
  signal result: unsigned(11 downto 0) := to_unsigned(0, 12);
  signal index : std_logic_vector(7 downto 0);
  signal dir, dir0, dir1, dir_s_sw, dir_e_se, dir_n_ne, dir_w_nw   : direction_ty;
  signal sum, sum0, sum1, sum_s_sw, sum_e_se, sum_n_ne, sum_w_nw, acc, acc_temp   : unsigned(11 downto 0) := to_unsigned(0, 12);
  signal col  : unsigned(7 downto 0) := to_unsigned(0, 8);
  signal row  : unsigned(7 downto 0) := to_unsigned(0, 8);
  signal mem_num : std_logic_vector(2 downto 0) := "001";
  signal mem0_data : std_logic_vector(7 downto 0);
  signal mem1_data : std_logic_vector(7 downto 0);
  signal mem2_data : std_logic_vector(7 downto 0);
  signal mem0_wren : std_logic;
  signal mem1_wren : std_logic;
  signal mem2_wren : std_logic;
  signal STATE : state_ty;
  signal a, b, c, d, e, f, g, h, i : unsigned(11 downto 0);
begin  
  mem0 : entity work.mem(main) 
  port map (
      clock => clk,
      wren => mem0_wren,
      address => col,
      data => std_logic_vector(i_pixel),
      q => mem0_data
    );
    
    mem1 : entity work.mem(main)
    port map (
      clock => clk,
      wren => mem1_wren,
      address => col,
      data => std_logic_vector(i_pixel),
      q => mem1_data
    );
    
    mem2 : entity work.mem(main)
    port map (
      clock => clk,
      wren => mem2_wren,
      address => col,
      data => std_logic_vector(i_pixel),
      q => mem2_data
    );

  mem0_wren <= '1' when mem_num = "001" else '0';
  mem1_wren <= '1' when mem_num = "010" else '0';
  mem2_wren <= '1' when mem_num = "100" else '0';

  o_mode <= "01" when reset = '1' else
            "10" when row = to_unsigned(0, 8) and col = to_unsigned(0, 8) else
            "11";

  index(0) <= i_valid when (col >= 2 and row >= 2) else
              '0';
              
  valid_for : for i in 1 to 7 generate
    process begin
        wait until rising_edge(clk);
        index(i) <= index(i-1);
    end process;
  end generate;

  process
  begin
    wait until rising_edge(clk);

    if (index(0) = '1') then -- a+b
      if (e >= h) then
        sum_s_sw <= f+g+e;
        dir_s_sw <= "011"; -- s
      else
        sum_s_sw <= f+g+h;
        dir_s_sw <= "111"; -- s west
      end if;
    end if;

    if (index(1) = '1') then -- c+d 
      if ( c > f) then
        sum_e_se <= d+e+f;
        dir_e_se <= "101"; -- s east
      else
        sum_e_se <= d+e+c;
        dir_e_se <= "000"; -- east
      end if;
    end if;

    if (index(2) = '1') then -- e+f
      if (d > a) then
        sum_n_ne <= b+c+d;
        dir_n_ne <= "110"; -- ne
      else
        sum_n_ne <= b+c+a;
        dir_n_ne <= "010"; -- n
      end if;
    end if;

    if (index(3) = '1') then -- g+h
        acc <= a+b+c+d+e+f+g+h;
      if (b > g) then
        sum_w_nw <= a+h+b;
        dir_w_nw <= "100"; -- nw
      else
        sum_w_nw <= a+h+g;
        dir_w_nw <= "001"; -- west
      end if;
    end if;
  end process;

  process
  begin 
    wait until rising_edge(clk);
    if (index(4) = '1') then
      if (sum_s_sw > sum_e_se) then
        sum0 <= sum_s_sw;
        dir0 <= dir_s_sw;
      elsif (sum_s_sw <= sum_e_se) then
        sum0 <= sum_e_se;
        dir0 <= dir_e_se;
      elsif (sum_n_ne > sum_w_nw) then
        sum1 <= sum_n_ne;
        dir1 <= dir_n_ne;
      elsif (sum_n_ne <= sum_w_nw) then
        sum1 <= sum_w_nw;
        dir1 <= dir_w_nw;
      else
        sum <= sum1;
        dir <= dir1;
      end if;
    end if;

    if (index(5) = '1') then
      if (sum1 >= sum0) then
        sum <= sum1;
        dir <= dir1;
      else
        sum <= sum0;
        dir <= dir0;
      end if;
    end if;

    if (index(6) = '1') then

      sum <= shift_left(sum, 3);
      dir <= dir;
      acc_temp <= acc;
      acc <= shift_left(acc, 1);
    end if;

    if (index(7) = '1') then
      if ((sum - acc - acc_temp) > 383) then
        o_valid <= '1';
        o_edge <= '1';
        o_dir <= dir;
        sum <= to_unsigned(0, 12);
      else
        o_valid <= '1';
        o_edge <= '0';
        o_dir <= "000";
        sum <= to_unsigned(0, 12);
      end if;
    else 
      o_valid <= '0';
      o_edge <= '0';         
      o_dir <= "000";
    end if;
  end process;
      
  process
  begin 
    wait until rising_edge(clk);
    if (reset = '1') then
      a <= "000000000000";
      b <= "000000000000";
      c <= "000000000000";
      d <= "000000000000";
      e <= "000000000000";
      f <= "000000000000";
      g <= "000000000000";
      h <= "000000000000";
      i <= "000000000000";
      col <= to_unsigned(0, 8);
      row <= to_unsigned(0, 8);
      mem_num(2 downto 0) <= "001";
      STATE <= init;
    else
      case(STATE) is
        when init => 
          o_row <= to_unsigned(0, 8);
          o_col <= to_unsigned(0, 8);
          STATE <= calculate;
        when calculate =>
          if (i_valid='1') then
            b <= c;
            a <= b;
            i <= d;
            h <= i;
            f <= e;
            g <= f;
            e <= unsigned("0000" & i_pixel);
            case(mem_num) is
              when "001" =>
                c <= unsigned("0000" & mem1_data);
                d <= unsigned("0000" & mem2_data);
              when "010" =>
                c <= unsigned("0000" & mem2_data);
                d <= unsigned("0000" & mem0_data);
              when "100" =>
                c <= unsigned("0000" & mem0_data);
                d <= unsigned("0000" & mem1_data);
              when others =>
                c <= to_unsigned(0, 12);
                d <= to_unsigned(0, 12);
            end case;

            o_row <= row;
            o_col <= col;
            
            if (col = 255) then
              if (row = 255) then
                STATE <= init;
              else
                mem_num <= mem_num rol 1;
                row <= row + 1;
              end if;
              col <= to_unsigned(0,8);
            else
              col <= col + 1;
            end if;
          end if;
      end case;
    end if;
  end process;
end architecture;