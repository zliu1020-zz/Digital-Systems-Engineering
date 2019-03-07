
-- 
-- Definition of  kirsch
-- 
--      Fri Jul 13 20:10:08 2018
--      
--      Precision RTL Synthesis, 64-bit 2015.2.16
-- 

library IEEE;library altera_mf;library lpm;library altera; 
	use IEEE.STD_LOGIC_1164.ALL;
	use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixiv ;
use stratixiv.stratixiv_components.all;

entity kirsch is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      i_valid : IN std_logic ;
      i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
      o_valid : OUT std_logic ;
      o_edge : OUT std_logic ;
      o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
      o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      o_row : OUT std_logic_vector (7 DOWNTO 0) ;
      o_col : OUT std_logic_vector (7 DOWNTO 0)) ;
end kirsch ;

architecture main of kirsch is 
   signal o_row_EXMPLR40: std_logic_vector (7 DOWNTO 7) ;
   
   signal index: std_logic_vector (7 DOWNTO 1) ;
   
   signal dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal dir_s_se: std_logic_vector (2 DOWNTO 1) ;
   
   signal dir_w_sw_2: std_logic ;
   
   signal sum: std_logic_vector (9 DOWNTO 0) ;
   
   signal sum_e_ne: std_logic_vector (7 DOWNTO 0) ;
   
   signal sum_s_se: std_logic_vector (9 DOWNTO 0) ;
   
   signal sum_w_sw: std_logic_vector (8 DOWNTO 0) ;
   
   signal acc: std_logic_vector (9 DOWNTO 0) ;
   
   signal col: std_logic_vector (7 DOWNTO 0) ;
   
   signal STATE: std_logic ;
   
   signal e: std_logic_vector (7 DOWNTO 0) ;
   
   signal f: std_logic_vector (7 DOWNTO 0) ;
   
   signal g: std_logic_vector (7 DOWNTO 0) ;
   
   signal sum_s_se_12n5s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal sum_s_se_12n5s3: std_logic_vector (9 DOWNTO 0) ;
   
   signal sum_w_sw_12n7s4: std_logic_vector (8 DOWNTO 0) ;
   
   signal acc_12n7s2: std_logic_vector (9 DOWNTO 0) ;
   
   signal rtlc13n285: std_logic_vector (11 DOWNTO 2) ;
   
   signal nx1448z36, nx1448z49, nx1448z51, nx1448z2, nx1448z50, 
      inc_d_0_dup_1156, inc_d_1_dup_1157, inc_d_2_dup_1158, inc_d_3_dup_1159, 
      inc_d_4_dup_1160, inc_d_5_dup_1161, inc_d_6_dup_1162, inc_d_7_dup_1163, 
      nx12707z2, nx8437z2, nx8437z1, nx35955z2, nx35955z1, nx50725z2, 
      nx50725z1, nx56842z7, nx56842z6, nx56842z5, nx56842z4, nx55845z2, 
      nx53851z3, nx53851z2, nx40598z8, nx40598z7, nx40598z6, nx40598z5, 
      nx40598z4, nx40598z3, nx40598z2, nx41892z10, nx41892z9, nx41892z8, 
      nx41892z7, nx41892z6, nx41892z5, nx41892z4, nx41892z1, nx12364z7, 
      nx12364z6, nx12364z5, nx12364z4, nx12364z3, nx12364z2, nx12364z1, 
      nx11367z1, nx1448z16, nx1448z15, nx1448z14, nx1448z13, nx1448z12, 
      nx1448z11, nx1448z10, nx1448z9, nx1448z8, nx1448z7, nx1448z6, nx1448z5, 
      nx1448z4, nx1448z42, nx1448z41, nx1448z40, nx1448z39, nx1448z38, 
      nx1448z35, nx1448z33, nx1448z32, nx1448z30, nx1448z29, nx1448z27, 
      nx1448z26, nx1448z24, nx1448z23, nx1448z21, nx1448z20, nx1448z18, 
      nx1448z17, nx1448z48, nx1448z47, nx1448z45, nx1448z43, GND_EXMPLR36, 
      o_mode_0_EXMPLR37, sum_w_sw_12n7s3_8, nx31920z1, nx524z3, nx9489z1, 
      nx57087z2, nx56842z2, sum_s_se_12n5s3f1_0: std_logic ;
   
   signal sum_s_se_12n5s3f2: std_logic_vector (7 DOWNTO 0) ;
   
   signal NOT_acc_1, NOT_acc_0, nx524z2, nx53851z1, nx54848z1, nx55845z1, 
      nx56842z1, nx57839z1, nx58836z1, nx59833z1, nx60830z1, nx65063z1, 
      nx64066z1, nx63069z1, nx62072z1, nx61075z1, nx60078z1, nx59081z1, 
      nx58084z1, nx57087z1, nx2194z1, nx1197z1, nx3191z1, nx524z22, nx524z21, 
      nx524z6, nx33317z1, nx32320z1, nx31323z1, nx53402z2, nx1448z1, 
      nx19528z1, nx58205z1, nx62072z4, nx524z1, nx524z18, nx524z11, nx524z5, 
      nx524z9, nx524z19, nx524z4, nx49868z1, nx524z17, nx58205z2, nx58205z3, 
      nx524z13, nx524z8, nx524z10, nx524z16, nx41892z3, nx16341z1, nx33317z2, 
      nx62072z2, nx524z14, nx57087z3, nx524z23, nx524z20, nx62072z3, nx524z7, 
      nx524z12, nx56842z3, nx53402z1, nx19528z2, nx41892z2, nx524z15, 
      nx1197z2, nx1197z3, nx1197z4, index_7_repl, nx1925_repl, index_3_repl, 
      index_2_repl, index_1_repl, nx62411z1, nx54539z1, nx40598z1, nx38871z1
   : std_logic ;

begin
   o_mode(0) <= o_mode_0_EXMPLR37 ;
   o_row(7) <= o_row_EXMPLR40(7) ;
   o_row(6) <= o_row_EXMPLR40(7) ;
   o_row(5) <= o_row_EXMPLR40(7) ;
   o_row(4) <= o_row_EXMPLR40(7) ;
   o_row(3) <= o_row_EXMPLR40(7) ;
   o_row(2) <= o_row_EXMPLR40(7) ;
   o_row(1) <= o_row_EXMPLR40(7) ;
   o_row(0) <= o_row_EXMPLR40(7) ;
   nx1448z16 <= NOT acc(1);
   nx1448z14 <= NOT acc(2);
   nx1448z12 <= NOT acc(3);
   nx1448z10 <= NOT acc(4);
   nx1448z8 <= NOT acc(5);
   nx1448z6 <= NOT acc(6);
   nx1448z4 <= NOT acc(7);
   nx1448z41 <= NOT acc(8);
   nx1448z39 <= NOT acc(9);
   nx1448z35 <= NOT acc(2);
   nx1448z32 <= NOT acc(3);
   nx1448z29 <= NOT acc(4);
   nx1448z26 <= NOT acc(5);
   nx1448z23 <= NOT acc(6);
   nx1448z20 <= NOT acc(7);
   nx1448z17 <= NOT acc(8);
   nx1448z47 <= NOT acc(9);
   o_mode(1) <= NOT reset;
   GND_EXMPLR36 <= '0';
   o_mode_0_EXMPLR37 <= '1';
   NOT_acc_1 <= NOT acc(1);
   NOT_acc_0 <= NOT acc(0);
   nx19528z2 <= NOT STATE;
   ix12707z17676 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_0_dup_1156, cout=>nx12707z2, datad=>col(0), 
      dataf=>GND_EXMPLR36, cin=>o_mode_0_EXMPLR37);
   ix12707z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_1_dup_1157, cout=>nx8437z2, datad=>col(1), 
      dataf=>GND_EXMPLR36, cin=>nx12707z2);
   ix8437z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_2_dup_1158, cout=>nx8437z1, datad=>col(2), 
      dataf=>GND_EXMPLR36, cin=>nx8437z2);
   ix8437z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_3_dup_1159, cout=>nx35955z2, datad=>col(3), 
      dataf=>GND_EXMPLR36, cin=>nx8437z1);
   ix35955z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_4_dup_1160, cout=>nx35955z1, datad=>col(4), 
      dataf=>GND_EXMPLR36, cin=>nx35955z2);
   ix35955z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_5_dup_1161, cout=>nx50725z2, datad=>col(5), 
      dataf=>GND_EXMPLR36, cin=>nx35955z1);
   ix50725z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_6_dup_1162, cout=>nx50725z1, datad=>col(6), 
      dataf=>GND_EXMPLR36, cin=>nx50725z2);
   ix50725z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_7_dup_1163, datad=>col(7), dataf=>
      GND_EXMPLR36, cin=>nx50725z1);
   sum_w_sw_add8_12i25_ix56842z17681 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>sum_w_sw_12n7s4(0), cout=>nx56842z7, datad=>f(0), 
      dataf=>g(0), cin=>GND_EXMPLR36);
   sum_w_sw_add8_12i25_ix56842z17680 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>sum_w_sw_12n7s4(1), cout=>nx56842z6, datad=>f(1), 
      dataf=>g(1), cin=>nx56842z7);
   sum_w_sw_add8_12i25_ix56842z17679 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>sum_w_sw_12n7s4(2), cout=>nx56842z5, datad=>f(2), 
      dataf=>g(2), cin=>nx56842z6);
   sum_w_sw_add8_12i25_ix56842z17678 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>sum_w_sw_12n7s4(3), cout=>nx56842z4, datad=>f(3), 
      dataf=>g(3), cin=>nx56842z5);
   sum_w_sw_add8_12i25_ix56842z17677 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>sum_w_sw_12n7s4(4), cout=>nx55845z2, datad=>f(4), 
      dataf=>g(4), cin=>nx56842z4);
   sum_w_sw_add8_12i25_ix55845z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>sum_w_sw_12n7s4(5), cout=>nx53851z3, datad=>f(5), 
      dataf=>g(5), cin=>nx55845z2);
   sum_w_sw_add8_12i25_ix53851z17676 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>sum_w_sw_12n7s4(6), cout=>nx53851z2, datad=>f(6), 
      dataf=>g(6), cin=>nx53851z3);
   sum_w_sw_add8_12i25_ix53851z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>sum_w_sw_12n7s4(7), cout=>nx62411z1, datad=>f(7), 
      dataf=>g(7), cin=>nx53851z2);
   sum_s_se_add8_12i26_ix49868z17676 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>sum_s_se_12n5s2(0), cout=>nx40598z8, datad=>e(0), 
      dataf=>f(0), cin=>GND_EXMPLR36);
   sum_s_se_add8_12i26_ix40598z17680 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>sum_s_se_12n5s2(1), cout=>nx40598z7, datad=>e(1), 
      dataf=>f(1), cin=>nx40598z8);
   sum_s_se_add8_12i26_ix40598z17679 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>sum_s_se_12n5s2(2), cout=>nx40598z6, datad=>e(2), 
      dataf=>f(2), cin=>nx40598z7);
   sum_s_se_add8_12i26_ix40598z17678 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>sum_s_se_12n5s2(3), cout=>nx40598z5, datad=>e(3), 
      dataf=>f(3), cin=>nx40598z6);
   sum_s_se_add8_12i26_ix40598z17677 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>sum_s_se_12n5s2(4), cout=>nx40598z4, datad=>e(4), 
      dataf=>f(4), cin=>nx40598z5);
   sum_s_se_add8_12i26_ix40598z17676 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>sum_s_se_12n5s2(5), cout=>nx40598z3, datad=>e(5), 
      dataf=>f(5), cin=>nx40598z4);
   sum_s_se_add8_12i26_ix40598z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>sum_s_se_12n5s2(6), cout=>nx40598z2, datad=>e(6), 
      dataf=>f(6), cin=>nx40598z3);
   sum_s_se_add8_12i26_ix40598z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>sum_s_se_12n5s2(7), cout=>nx40598z1, datad=>e(7), 
      dataf=>f(7), cin=>nx40598z2);
   sum_s_se_add9_12i27_ix49868z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>sum_s_se_12n5s3(0), cout=>nx41892z10, datad=>
      sum_s_se_12n5s3f1_0, dataf=>sum_s_se_12n5s3f2(0), cin=>GND_EXMPLR36);
   sum_s_se_add9_12i27_ix41892z17689 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000f0cc") 
       port map ( sumout=>sum_s_se_12n5s3(1), cout=>nx41892z9, datab=>e(1), 
      datac=>sum_s_se_12n5s2(1), datad=>nx41892z2, dataf=>
      sum_s_se_12n5s3f2(1), cin=>nx41892z10);
   sum_s_se_add9_12i27_ix41892z17687 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000fa50") 
       port map ( sumout=>sum_s_se_12n5s3(2), cout=>nx41892z8, dataa=>
      nx41892z2, datac=>e(2), datad=>sum_s_se_12n5s2(2), dataf=>
      sum_s_se_12n5s3f2(2), cin=>nx41892z9);
   sum_s_se_add9_12i27_ix41892z17685 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000fa50") 
       port map ( sumout=>sum_s_se_12n5s3(3), cout=>nx41892z7, dataa=>
      nx41892z2, datac=>e(3), datad=>sum_s_se_12n5s2(3), dataf=>
      sum_s_se_12n5s3f2(3), cin=>nx41892z8);
   sum_s_se_add9_12i27_ix41892z17683 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000fa50") 
       port map ( sumout=>sum_s_se_12n5s3(4), cout=>nx41892z6, dataa=>
      nx41892z2, datac=>e(4), datad=>sum_s_se_12n5s2(4), dataf=>
      sum_s_se_12n5s3f2(4), cin=>nx41892z7);
   sum_s_se_add9_12i27_ix41892z17681 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000fa50") 
       port map ( sumout=>sum_s_se_12n5s3(5), cout=>nx41892z5, dataa=>
      nx41892z2, datac=>e(5), datad=>sum_s_se_12n5s2(5), dataf=>
      sum_s_se_12n5s3f2(5), cin=>nx41892z6);
   sum_s_se_add9_12i27_ix41892z17679 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000fa50") 
       port map ( sumout=>sum_s_se_12n5s3(6), cout=>nx41892z4, dataa=>
      nx41892z2, datac=>e(6), datad=>sum_s_se_12n5s2(6), dataf=>
      sum_s_se_12n5s3f2(6), cin=>nx41892z5);
   sum_s_se_add9_12i27_ix41892z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000fa50") 
       port map ( sumout=>sum_s_se_12n5s3(7), cout=>nx41892z1, dataa=>
      nx41892z2, datac=>e(7), datad=>sum_s_se_12n5s2(7), dataf=>
      sum_s_se_12n5s3f2(7), cin=>nx41892z4);
   sum_s_se_add9_12i27_ix41892z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000f0e0") 
       port map ( sumout=>sum_s_se_12n5s3(8), cout=>nx54539z1, dataa=>g(6), 
      datab=>nx49868z1, datac=>sum_s_se_12n5s2(8), datad=>g(7), dataf=>
      GND_EXMPLR36, cin=>nx41892z1);
   sum_s_se_add9_12i27_ix109_buf : stratixiv_lcell_comb
      generic map (lut_mask => X"00000f0f0000f0f0") 
       port map ( sumout=>sum_s_se_12n5s3(9), datac=>GND_EXMPLR36, cin=>
      nx54539z1);
   acc_add9_12i28_ix12364z17681 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>acc_12n7s2(0), cout=>nx12364z7, datad=>
      sum_s_se_12n5s2(0), dataf=>g(0), cin=>GND_EXMPLR36);
   acc_add9_12i28_ix12364z17680 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>acc_12n7s2(1), cout=>nx12364z6, datad=>
      sum_s_se_12n5s2(1), dataf=>g(1), cin=>nx12364z7);
   acc_add9_12i28_ix12364z17679 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>acc_12n7s2(2), cout=>nx12364z5, datad=>
      sum_s_se_12n5s2(2), dataf=>g(2), cin=>nx12364z6);
   acc_add9_12i28_ix12364z17678 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>acc_12n7s2(3), cout=>nx12364z4, datad=>
      sum_s_se_12n5s2(3), dataf=>g(3), cin=>nx12364z5);
   acc_add9_12i28_ix12364z17677 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>acc_12n7s2(4), cout=>nx12364z3, datad=>
      sum_s_se_12n5s2(4), dataf=>g(4), cin=>nx12364z4);
   acc_add9_12i28_ix12364z17676 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>acc_12n7s2(5), cout=>nx12364z2, datad=>
      sum_s_se_12n5s2(5), dataf=>g(5), cin=>nx12364z3);
   acc_add9_12i28_ix12364z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>acc_12n7s2(6), cout=>nx12364z1, datad=>
      sum_s_se_12n5s2(6), dataf=>g(6), cin=>nx12364z2);
   acc_add9_12i28_ix12364z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>acc_12n7s2(7), cout=>nx11367z1, datad=>
      sum_s_se_12n5s2(7), dataf=>g(7), cin=>nx12364z1);
   acc_add9_12i28_ix11367z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>acc_12n7s2(8), cout=>nx38871z1, datad=>
      sum_s_se_12n5s2(8), dataf=>GND_EXMPLR36, cin=>nx11367z1);
   acc_add9_12i28_ix109_buf : stratixiv_lcell_comb
      generic map (lut_mask => X"00000f0f0000f0f0") 
       port map ( sumout=>acc_12n7s2(9), datac=>GND_EXMPLR36, cin=>nx38871z1
   );
   ix1448z17688 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlc13n285(2), cout=>nx1448z15, datad=>
      GND_EXMPLR36, dataf=>nx1448z16, cin=>NOT_acc_0);
   ix1448z17686 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlc13n285(3), cout=>nx1448z13, datad=>sum(0), 
      dataf=>nx1448z14, cin=>nx1448z15);
   ix1448z17684 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlc13n285(4), cout=>nx1448z11, datad=>sum(1), 
      dataf=>nx1448z12, cin=>nx1448z13);
   ix1448z17682 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlc13n285(5), cout=>nx1448z9, datad=>sum(2), 
      dataf=>nx1448z10, cin=>nx1448z11);
   ix1448z17680 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlc13n285(6), cout=>nx1448z7, datad=>sum(3), 
      dataf=>nx1448z8, cin=>nx1448z9);
   ix1448z17678 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlc13n285(7), cout=>nx1448z5, datad=>sum(4), 
      dataf=>nx1448z6, cin=>nx1448z7);
   ix1448z17676 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlc13n285(8), cout=>nx1448z42, datad=>sum(5), 
      dataf=>nx1448z4, cin=>nx1448z5);
   ix1448z17709 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlc13n285(9), cout=>nx1448z40, datad=>sum(6), 
      dataf=>nx1448z41, cin=>nx1448z42);
   ix1448z17707 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlc13n285(10), cout=>nx1448z38, datad=>sum(7), 
      dataf=>nx1448z39, cin=>nx1448z40);
   ix1448z17706 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlc13n285(11), datad=>sum(8), dataf=>
      o_mode_0_EXMPLR37, cin=>nx1448z38);
   ix1448z17702 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( cout=>nx1448z33, datad=>rtlc13n285(2), dataf=>nx1448z35, 
      cin=>NOT_acc_1);
   ix1448z17700 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( cout=>nx1448z30, datad=>rtlc13n285(3), dataf=>nx1448z32, 
      cin=>nx1448z33);
   ix1448z17698 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( cout=>nx1448z27, datad=>rtlc13n285(4), dataf=>nx1448z29, 
      cin=>nx1448z30);
   ix1448z17696 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( cout=>nx1448z24, datad=>rtlc13n285(5), dataf=>nx1448z26, 
      cin=>nx1448z27);
   ix1448z17694 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( cout=>nx1448z21, datad=>rtlc13n285(6), dataf=>nx1448z23, 
      cin=>nx1448z24);
   ix1448z17692 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx1448z50, cout=>nx1448z18, datad=>rtlc13n285(7), 
      dataf=>nx1448z20, cin=>nx1448z21);
   ix1448z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx1448z2, cout=>nx1448z48, datad=>rtlc13n285(8), 
      dataf=>nx1448z17, cin=>nx1448z18);
   ix1448z17712 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx1448z51, cout=>nx1448z45, datad=>rtlc13n285(9), 
      dataf=>nx1448z47, cin=>nx1448z48);
   ix1448z17711 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx1448z49, cout=>nx1448z43, datad=>rtlc13n285(10), 
      dataf=>o_mode_0_EXMPLR37, cin=>nx1448z45);
   ix1448z17705 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx1448z36, datad=>rtlc13n285(11), dataf=>
      o_mode_0_EXMPLR37, cin=>nx1448z43);
   sum_w_sw_add8_12i25_ix98_buf : stratixiv_lcell_comb
      generic map (lut_mask => X"00000f0f0000f0f0") 
       port map ( sumout=>sum_w_sw_12n7s4(8), datac=>GND_EXMPLR36, cin=>
      nx62411z1);
   sum_s_se_add8_12i26_ix98_buf : stratixiv_lcell_comb
      generic map (lut_mask => X"00000f0f0000f0f0") 
       port map ( sumout=>sum_s_se_12n5s2(8), datac=>GND_EXMPLR36, cin=>
      nx40598z1);
   ix57087z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"7757775755555555",
         extended_lut => "on") 
       port map ( combout=>nx57087z2, dataa=>index(5), datab=>nx57087z3, 
      datac=>nx524z17, datad=>nx524z19, datae=>nx524z22, dataf=>nx524z23, 
      datag=>sum_s_se(4));
   ix524z17686 : stratixiv_lcell_comb
      generic map (lut_mask => X"7757775755555555",
         extended_lut => "on") 
       port map ( combout=>nx524z13, dataa=>nx524z14, datab=>nx524z15, datac
      =>nx524z17, datad=>nx524z19, datae=>nx524z22, dataf=>nx524z23, datag=>
      sum_s_se(4));
   reg_sum_w_sw_7 : dffeas port map ( q=>sum_w_sw(7), d=>nx53851z1, clk=>clk, 
      ena=>index_3_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36);
   reg_sum_w_sw_6 : dffeas port map ( q=>sum_w_sw(6), d=>nx54848z1, clk=>clk, 
      ena=>index_3_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36);
   reg_sum_w_sw_5 : dffeas port map ( q=>sum_w_sw(5), d=>nx55845z1, clk=>clk, 
      ena=>index_3_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36);
   reg_sum_w_sw_4 : dffeas port map ( q=>sum_w_sw(4), d=>nx56842z1, clk=>clk, 
      ena=>index_3_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36);
   reg_sum_w_sw_3 : dffeas port map ( q=>sum_w_sw(3), d=>nx57839z1, clk=>clk, 
      ena=>index_3_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36);
   reg_sum_w_sw_2 : dffeas port map ( q=>sum_w_sw(2), d=>nx58836z1, clk=>clk, 
      ena=>index_3_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36);
   reg_sum_w_sw_1 : dffeas port map ( q=>sum_w_sw(1), d=>nx59833z1, clk=>clk, 
      ena=>index_3_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36);
   reg_sum_w_sw_0 : dffeas port map ( q=>sum_w_sw(0), d=>nx60830z1, clk=>clk, 
      ena=>index_3_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36);
   reg_sum_8 : dffeas port map ( q=>sum(8), d=>nx65063z1, clk=>clk, ena=>
      nx524z2, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, asdata=>
      GND_EXMPLR36, sclr=>index_7_repl, sload=>GND_EXMPLR36);
   reg_sum_7 : dffeas port map ( q=>sum(7), d=>nx64066z1, clk=>clk, ena=>
      nx524z2, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, asdata=>
      GND_EXMPLR36, sclr=>index_7_repl, sload=>GND_EXMPLR36);
   reg_sum_6 : dffeas port map ( q=>sum(6), d=>nx63069z1, clk=>clk, ena=>
      nx524z2, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, asdata=>
      GND_EXMPLR36, sclr=>index_7_repl, sload=>GND_EXMPLR36);
   reg_sum_5 : dffeas port map ( q=>sum(5), d=>nx62072z1, clk=>clk, ena=>
      nx524z2, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, asdata=>
      GND_EXMPLR36, sclr=>index_7_repl, sload=>GND_EXMPLR36);
   reg_sum_4 : dffeas port map ( q=>sum(4), d=>nx61075z1, clk=>clk, ena=>
      nx524z2, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, asdata=>
      GND_EXMPLR36, sclr=>index_7_repl, sload=>GND_EXMPLR36);
   reg_sum_3 : dffeas port map ( q=>sum(3), d=>nx60078z1, clk=>clk, ena=>
      nx524z2, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, asdata=>
      GND_EXMPLR36, sclr=>index_7_repl, sload=>GND_EXMPLR36);
   reg_sum_2 : dffeas port map ( q=>sum(2), d=>nx59081z1, clk=>clk, ena=>
      nx524z2, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, asdata=>
      GND_EXMPLR36, sclr=>index_7_repl, sload=>GND_EXMPLR36);
   reg_sum_1 : dffeas port map ( q=>sum(1), d=>nx58084z1, clk=>clk, ena=>
      nx524z2, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, asdata=>
      GND_EXMPLR36, sclr=>index_7_repl, sload=>GND_EXMPLR36);
   reg_sum_0 : dffeas port map ( q=>sum(0), d=>nx57087z1, clk=>clk, ena=>
      nx524z2, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, asdata=>
      GND_EXMPLR36, sclr=>index_7_repl, sload=>GND_EXMPLR36);
   reg_dir_0 : dffeas port map ( q=>dir(0), d=>nx3191z1, clk=>clk, ena=>
      o_mode_0_EXMPLR37, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36);
   reg_sum_9 : dffeas port map ( q=>sum(9), d=>nx524z1, clk=>clk, ena=>
      nx524z2, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, asdata=>
      GND_EXMPLR36, sclr=>index_7_repl, sload=>GND_EXMPLR36);
   reg_dir_2 : dffeas port map ( q=>dir(2), d=>nx1197z1, clk=>clk, ena=>
      o_mode_0_EXMPLR37, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36);
   reg_dir_1 : dffeas port map ( q=>dir(1), d=>nx2194z1, clk=>clk, ena=>
      o_mode_0_EXMPLR37, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36);
   reg_o_dir_2 : dffeas port map ( q=>o_dir(2), d=>nx33317z1, clk=>clk, ena
      =>o_mode_0_EXMPLR37, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36);
   reg_o_dir_1 : dffeas port map ( q=>o_dir(1), d=>nx32320z1, clk=>clk, ena
      =>o_mode_0_EXMPLR37, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36);
   reg_o_dir_0 : dffeas port map ( q=>o_dir(0), d=>nx31323z1, clk=>clk, ena
      =>o_mode_0_EXMPLR37, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36);
   reg_q_7_dup_0 : dffeas port map ( q=>col(7), d=>inc_d_7_dup_1163, clk=>
      clk, ena=>nx9489z1, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36, sclr=>nx1925_repl, sload=>GND_EXMPLR36);
   reg_q_6_dup_1 : dffeas port map ( q=>col(6), d=>inc_d_6_dup_1162, clk=>
      clk, ena=>nx9489z1, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36, sclr=>nx1925_repl, sload=>GND_EXMPLR36);
   reg_q_5_dup_2 : dffeas port map ( q=>col(5), d=>inc_d_5_dup_1161, clk=>
      clk, ena=>nx9489z1, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36, sclr=>nx1925_repl, sload=>GND_EXMPLR36);
   reg_q_4_dup_3 : dffeas port map ( q=>col(4), d=>inc_d_4_dup_1160, clk=>
      clk, ena=>nx9489z1, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36, sclr=>nx1925_repl, sload=>GND_EXMPLR36);
   reg_q_3_dup_4 : dffeas port map ( q=>col(3), d=>inc_d_3_dup_1159, clk=>
      clk, ena=>nx9489z1, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36, sclr=>nx1925_repl, sload=>GND_EXMPLR36);
   reg_q_2_dup_5 : dffeas port map ( q=>col(2), d=>inc_d_2_dup_1158, clk=>
      clk, ena=>nx9489z1, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36, sclr=>nx1925_repl, sload=>GND_EXMPLR36);
   reg_q_1_dup_6 : dffeas port map ( q=>col(1), d=>inc_d_1_dup_1157, clk=>
      clk, ena=>nx9489z1, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36, sclr=>nx1925_repl, sload=>GND_EXMPLR36);
   reg_q_0_dup_7 : dffeas port map ( q=>col(0), d=>inc_d_0_dup_1156, clk=>
      clk, ena=>nx9489z1, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36, sclr=>nx1925_repl, sload=>GND_EXMPLR36);
   reg_o_edge : dffeas port map ( q=>o_edge, d=>nx1448z1, clk=>clk, ena=>
      o_mode_0_EXMPLR37, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36);
   reg_o_valid : dffeas port map ( q=>o_valid, d=>index(7), clk=>clk, ena=>
      o_mode_0_EXMPLR37, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36);
   reg_o_col_7 : dffeas port map ( q=>o_col(7), d=>col(7), clk=>clk, ena=>
      nx19528z1, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, asdata=>
      GND_EXMPLR36, sclr=>nx19528z2, sload=>GND_EXMPLR36);
   reg_o_col_6 : dffeas port map ( q=>o_col(6), d=>col(6), clk=>clk, ena=>
      nx19528z1, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, asdata=>
      GND_EXMPLR36, sclr=>nx19528z2, sload=>GND_EXMPLR36);
   reg_o_col_5 : dffeas port map ( q=>o_col(5), d=>col(5), clk=>clk, ena=>
      nx19528z1, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, asdata=>
      GND_EXMPLR36, sclr=>nx19528z2, sload=>GND_EXMPLR36);
   reg_o_col_4 : dffeas port map ( q=>o_col(4), d=>col(4), clk=>clk, ena=>
      nx19528z1, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, asdata=>
      GND_EXMPLR36, sclr=>nx19528z2, sload=>GND_EXMPLR36);
   reg_o_col_3 : dffeas port map ( q=>o_col(3), d=>col(3), clk=>clk, ena=>
      nx19528z1, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, asdata=>
      GND_EXMPLR36, sclr=>nx19528z2, sload=>GND_EXMPLR36);
   reg_o_col_2 : dffeas port map ( q=>o_col(2), d=>col(2), clk=>clk, ena=>
      nx19528z1, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, asdata=>
      GND_EXMPLR36, sclr=>nx19528z2, sload=>GND_EXMPLR36);
   reg_o_col_1 : dffeas port map ( q=>o_col(1), d=>col(1), clk=>clk, ena=>
      nx19528z1, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, asdata=>
      GND_EXMPLR36, sclr=>nx19528z2, sload=>GND_EXMPLR36);
   reg_o_col_0 : dffeas port map ( q=>o_col(0), d=>col(0), clk=>clk, ena=>
      nx19528z1, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, asdata=>
      GND_EXMPLR36, sclr=>nx19528z2, sload=>GND_EXMPLR36);
   reg_o_row_0 : dffeas port map ( q=>o_row_EXMPLR40(7), d=>
      o_mode_0_EXMPLR37, clk=>clk, ena=>nx19528z1, clrn=>o_mode_0_EXMPLR37, 
      prn=>o_mode_0_EXMPLR37, asdata=>GND_EXMPLR36, sclr=>nx19528z2, sload=>
      GND_EXMPLR36);
   reg_index_1 : dffeas port map ( q=>index(1), d=>nx58205z1, clk=>clk, ena
      =>o_mode_0_EXMPLR37, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36);
   reg_STATE : dffeas port map ( q=>STATE, d=>nx53402z1, clk=>clk, ena=>
      o_mode_0_EXMPLR37, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37, 
      asdata=>GND_EXMPLR36);
   ix52854z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffff000000000000") 
       port map ( combout=>sum_w_sw_12n7s3_8, datae=>sum_w_sw_12n7s4(8), 
      dataf=>nx56842z2);
   ix31920z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"00000000000000ff") 
       port map ( combout=>nx31920z1, datad=>g(7), datae=>g(6), dataf=>
      nx49868z1);
   ix524z17676 : stratixiv_lcell_comb
      generic map (lut_mask => X"0c080c08ffff0000") 
       port map ( combout=>nx524z3, dataa=>nx62072z3, datab=>nx524z4, datac
      =>nx524z7, datad=>nx524z12, datae=>nx524z13, dataf=>index(6));
   ix9489z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"00ff000000000000") 
       port map ( combout=>nx9489z1, datad=>reset, datae=>i_valid, dataf=>
      STATE);
   ix56842z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffffffffffffffc") 
       port map ( combout=>nx56842z2, datab=>f(1), datac=>f(7), datad=>f(6), 
      datae=>f(0), dataf=>nx56842z3);
   ix49868z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0f0f3f0f0f0c0") 
       port map ( combout=>sum_s_se_12n5s3f1_0, datab=>g(7), datac=>
      sum_s_se_12n5s2(0), datad=>nx49868z1, datae=>g(6), dataf=>e(0));
   ix41892z17678 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffff0000ffff0f00") 
       port map ( combout=>sum_s_se_12n5s3f2(7), datac=>nx49868z1, datad=>
      f(7), datae=>g(7), dataf=>g(6));
   ix41892z17680 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffff0000ffff0f00") 
       port map ( combout=>sum_s_se_12n5s3f2(6), datac=>nx49868z1, datad=>
      f(6), datae=>g(6), dataf=>g(7));
   ix41892z17682 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0f0f3f0f0f0f0") 
       port map ( combout=>sum_s_se_12n5s3f2(5), datab=>nx49868z1, datac=>
      g(5), datad=>g(6), datae=>g(7), dataf=>f(5));
   ix41892z17684 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0f0f3f0f0f0f0") 
       port map ( combout=>sum_s_se_12n5s3f2(4), datab=>nx49868z1, datac=>
      g(4), datad=>g(6), datae=>g(7), dataf=>f(4));
   ix41892z17686 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0f0f3f0f0f0f0") 
       port map ( combout=>sum_s_se_12n5s3f2(3), datab=>nx49868z1, datac=>
      g(3), datad=>g(6), datae=>g(7), dataf=>f(3));
   ix41892z17688 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0f0f3f0f0f0f0") 
       port map ( combout=>sum_s_se_12n5s3f2(2), datab=>nx49868z1, datac=>
      g(2), datad=>g(6), datae=>g(7), dataf=>f(2));
   ix41892z17690 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0f0f3f0f0f0f0") 
       port map ( combout=>sum_s_se_12n5s3f2(1), datab=>nx49868z1, datac=>
      g(1), datad=>g(6), datae=>g(7), dataf=>f(1));
   ix49868z17678 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0f0f3f0f0f0f0") 
       port map ( combout=>sum_s_se_12n5s3f2(0), datab=>nx49868z1, datac=>
      g(0), datad=>g(6), datae=>g(7), dataf=>f(0));
   ix524z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffff0000ffffffff") 
       port map ( combout=>nx524z2, datae=>index(7), dataf=>nx524z3);
   ix53851z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx53851z1, datad=>nx56842z2, datae=>
      sum_w_sw_12n7s4(7), dataf=>g(7));
   ix54848z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx54848z1, datad=>nx56842z2, datae=>
      sum_w_sw_12n7s4(6), dataf=>g(6));
   ix55845z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx55845z1, datad=>nx56842z2, datae=>
      sum_w_sw_12n7s4(5), dataf=>g(5));
   ix56842z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx56842z1, datad=>nx56842z2, datae=>
      sum_w_sw_12n7s4(4), dataf=>g(4));
   ix57839z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx57839z1, datad=>nx56842z2, datae=>
      sum_w_sw_12n7s4(3), dataf=>g(3));
   ix58836z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx58836z1, datad=>nx56842z2, datae=>
      sum_w_sw_12n7s4(2), dataf=>g(2));
   ix59833z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx59833z1, datad=>nx56842z2, datae=>
      sum_w_sw_12n7s4(1), dataf=>g(1));
   ix60830z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx60830z1, datad=>nx56842z2, datae=>
      sum_w_sw_12n7s4(0), dataf=>g(0));
   ix65063z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"0f0f0000ff0ff000") 
       port map ( combout=>nx65063z1, datac=>nx62072z2, datad=>sum_s_se(8), 
      datae=>sum_w_sw(8), dataf=>nx57087z2);
   ix64066z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"cfcfff0fc0c0f000") 
       port map ( combout=>nx64066z1, datab=>sum_e_ne(7), datac=>nx62072z2, 
      datad=>sum_s_se(7), datae=>nx57087z2, dataf=>sum_w_sw(7));
   ix63069z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"cfcfff0fc0c0f000") 
       port map ( combout=>nx63069z1, datab=>sum_e_ne(6), datac=>nx62072z2, 
      datad=>sum_s_se(6), datae=>nx57087z2, dataf=>sum_w_sw(6));
   ix62072z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"cfcfff0fc0c0f000") 
       port map ( combout=>nx62072z1, datab=>sum_e_ne(5), datac=>nx62072z2, 
      datad=>sum_s_se(5), datae=>nx57087z2, dataf=>sum_w_sw(5));
   ix61075z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"cfcfff0fc0c0f000") 
       port map ( combout=>nx61075z1, datab=>sum_e_ne(4), datac=>nx62072z2, 
      datad=>sum_s_se(4), datae=>nx57087z2, dataf=>sum_w_sw(4));
   ix60078z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"cfcfff0fc0c0f000") 
       port map ( combout=>nx60078z1, datab=>sum_e_ne(3), datac=>nx62072z2, 
      datad=>sum_s_se(3), datae=>nx57087z2, dataf=>sum_w_sw(3));
   ix59081z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"cfcfff0fc0c0f000") 
       port map ( combout=>nx59081z1, datab=>sum_e_ne(2), datac=>nx62072z2, 
      datad=>sum_s_se(2), datae=>nx57087z2, dataf=>sum_w_sw(2));
   ix58084z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"cfcfff0fc0c0f000") 
       port map ( combout=>nx58084z1, datab=>sum_e_ne(1), datac=>nx62072z2, 
      datad=>sum_s_se(1), datae=>nx57087z2, dataf=>sum_w_sw(1));
   ix57087z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"cfcfff0fc0c0f000") 
       port map ( combout=>nx57087z1, datab=>sum_e_ne(0), datac=>nx62072z2, 
      datad=>sum_s_se(0), datae=>nx57087z2, dataf=>sum_w_sw(0));
   ix2194z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffff000050d850d8") 
       port map ( combout=>nx2194z1, dataa=>nx62072z2, datab=>dir_s_se(1), 
      datac=>dir_w_sw_2, datad=>nx57087z2, datae=>dir(1), dataf=>nx524z3);
   ix1197z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0f0f0ffcc00cc") 
       port map ( combout=>nx1197z1, datab=>dir_w_sw_2, datac=>dir(2), datad
      =>nx62072z2, datae=>nx1197z2, dataf=>nx524z3);
   ix3191z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ff0f000fffff00ff") 
       port map ( combout=>nx3191z1, datac=>nx57087z2, datad=>nx524z3, datae
      =>dir(0), dataf=>nx62072z2);
   ix524z17695 : stratixiv_lcell_comb
      generic map (lut_mask => X"0000ffffffff0000") 
       port map ( combout=>nx524z22, datae=>sum(4), dataf=>sum_s_se(4));
   ix524z17694 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffff00000000ffff") 
       port map ( combout=>nx524z21, datae=>sum(7), dataf=>sum_s_se(7));
   ix524z17679 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffff00000000ffff") 
       port map ( combout=>nx524z6, datae=>sum(7), dataf=>sum_w_sw(7));
   ix33317z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0f0c000000000") 
       port map ( combout=>nx33317z1, datab=>nx1448z36, datac=>index(7), 
      datad=>nx33317z2, datae=>nx1448z49, dataf=>dir(2));
   ix32320z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0f0c000000000") 
       port map ( combout=>nx32320z1, datab=>nx1448z36, datac=>index(7), 
      datad=>nx33317z2, datae=>nx1448z49, dataf=>dir(1));
   ix31323z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"f0f0f0c000000000") 
       port map ( combout=>nx31323z1, datab=>nx1448z36, datac=>index(7), 
      datad=>nx33317z2, datae=>nx1448z49, dataf=>dir(0));
   ix53402z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"00000000c0000000") 
       port map ( combout=>nx53402z2, datab=>col(3), datac=>col(1), datad=>
      col(0), datae=>col(2), dataf=>nx16341z1);
   ix1448z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffffefc00000000") 
       port map ( combout=>nx1448z1, dataa=>nx1448z2, datab=>nx1448z36, 
      datac=>nx1448z49, datad=>nx1448z50, datae=>nx1448z51, dataf=>index(7)
   );
   ix19528z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"00000000ff00ffff") 
       port map ( combout=>nx19528z1, datad=>i_valid, datae=>STATE, dataf=>
      reset);
   ix62072z17677 : stratixiv_lcell_comb
      generic map (lut_mask => X"0fffff0ff0fffff0") 
       port map ( combout=>nx62072z4, datac=>sum(0), datad=>sum(1), datae=>
      sum_w_sw(1), dataf=>sum_w_sw(0));
   ix524z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"00ff000000000000") 
       port map ( combout=>nx524z1, datad=>nx57087z2, datae=>nx62072z2, 
      dataf=>sum_s_se(9));
   ix524z17691 : stratixiv_lcell_comb
      generic map (lut_mask => X"0f00ff0f0000ff00") 
       port map ( combout=>nx524z18, datac=>sum(0), datad=>sum_s_se(1), 
      datae=>sum(1), dataf=>sum_s_se(0));
   ix524z17684 : stratixiv_lcell_comb
      generic map (lut_mask => X"0f00ff0f0000ff00") 
       port map ( combout=>nx524z11, datac=>sum(0), datad=>sum_w_sw(1), 
      datae=>sum(1), dataf=>sum_w_sw(0));
   ix524z17678 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffffff7fdff7fd") 
       port map ( combout=>nx524z5, dataa=>nx524z6, datab=>sum_w_sw(6), 
      datac=>sum_w_sw(8), datad=>sum(6), datae=>sum(8), dataf=>sum(9));
   ix524z17682 : stratixiv_lcell_comb
      generic map (lut_mask => X"0fffff0ff0fffff0") 
       port map ( combout=>nx524z9, datac=>sum(5), datad=>sum(4), datae=>
      sum_w_sw(4), dataf=>sum_w_sw(5));
   ix524z17692 : stratixiv_lcell_comb
      generic map (lut_mask => X"dfefffffffffdfef") 
       port map ( combout=>nx524z19, dataa=>sum(6), datab=>nx524z20, datac=>
      nx524z21, datad=>sum_s_se(6), datae=>sum_s_se(5), dataf=>sum(5));
   ix524z17677 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffffffff0f3f03") 
       port map ( combout=>nx524z4, datab=>sum_w_sw(4), datac=>sum_w_sw(5), 
      datad=>sum(5), datae=>sum(4), dataf=>nx524z5);
   ix49868z17677 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffffffffffffffe") 
       port map ( combout=>nx49868z1, dataa=>g(3), datab=>g(5), datac=>g(4), 
      datad=>g(2), datae=>g(0), dataf=>g(1));
   ix524z17690 : stratixiv_lcell_comb
      generic map (lut_mask => X"cf0fffcf0c000f0c") 
       port map ( combout=>nx524z17, datab=>sum_s_se(2), datac=>sum(3), 
      datad=>nx524z18, datae=>sum(2), dataf=>sum_s_se(3));
   ix58205z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx58205z2, datae=>col(7), dataf=>col(6));
   ix58205z17676 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffffffffffffff0") 
       port map ( combout=>nx58205z3, datac=>col(3), datad=>col(5), datae=>
      col(4), dataf=>col(2));
   ix524z17681 : stratixiv_lcell_comb
      generic map (lut_mask => X"0c8effff00000c8e") 
       port map ( combout=>nx524z8, dataa=>sum_w_sw(6), datab=>sum_w_sw(7), 
      datac=>sum(7), datad=>sum(6), datae=>sum(8), dataf=>sum_w_sw(8));
   ix524z17683 : stratixiv_lcell_comb
      generic map (lut_mask => X"c0fcf0ff00f0c0fc") 
       port map ( combout=>nx524z10, datab=>sum_w_sw(2), datac=>sum_w_sw(3), 
      datad=>sum(3), datae=>sum(2), dataf=>nx524z11);
   ix524z17689 : stratixiv_lcell_comb
      generic map (lut_mask => X"0000ff00f000fff0") 
       port map ( combout=>nx524z16, datac=>sum_s_se(6), datad=>sum_s_se(7), 
      datae=>sum(7), dataf=>sum(6));
   ix41892z17677 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffffffffffffff0") 
       port map ( combout=>nx41892z3, datac=>g(3), datad=>g(5), datae=>g(4), 
      dataf=>g(2));
   ix16341z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"0fffffffffffffff") 
       port map ( combout=>nx16341z1, datac=>col(5), datad=>col(7), datae=>
      col(6), dataf=>col(4));
   ix33317z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffffffff000000") 
       port map ( combout=>nx33317z2, datad=>nx1448z2, datae=>nx1448z50, 
      dataf=>nx1448z51);
   ix62072z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"0f000c00ffffffff") 
       port map ( combout=>nx62072z2, datab=>nx62072z3, datac=>nx524z7, 
      datad=>nx524z4, datae=>nx524z12, dataf=>index(6));
   ix524z17687 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx524z14, datae=>index(5), dataf=>index(4));
   ix57087z17676 : stratixiv_lcell_comb
      generic map (lut_mask => X"c0fcf0ff00f0c0fc") 
       port map ( combout=>nx57087z3, datab=>sum_s_se(8), datac=>sum_s_se(9), 
      datad=>sum(9), datae=>sum(8), dataf=>nx524z16);
   ix524z17696 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffffffff7fbffff") 
       port map ( combout=>nx524z23, dataa=>sum(6), datab=>nx524z21, datac=>
      sum(5), datad=>sum_s_se(6), datae=>sum_s_se(5), dataf=>nx524z20);
   ix524z17693 : stratixiv_lcell_comb
      generic map (lut_mask => X"0fffff0ff0fffff0") 
       port map ( combout=>nx524z20, datac=>sum(9), datad=>sum(8), datae=>
      sum_s_se(8), dataf=>sum_s_se(9));
   ix62072z17676 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffffffbfeffbfe") 
       port map ( combout=>nx62072z3, dataa=>nx62072z4, datab=>sum_w_sw(2), 
      datac=>sum_w_sw(3), datad=>sum(2), datae=>sum(3), dataf=>dir_w_sw_2);
   ix524z17680 : stratixiv_lcell_comb
      generic map (lut_mask => X"0f003f330f000f00") 
       port map ( combout=>nx524z7, datab=>nx524z5, datac=>sum(9), datad=>
      nx524z8, datae=>nx524z9, dataf=>nx524z10);
   ix524z17685 : stratixiv_lcell_comb
      generic map (lut_mask => X"ffffffff3ff3cffc") 
       port map ( combout=>nx524z12, datab=>sum(5), datac=>sum(4), datad=>
      sum_w_sw(4), datae=>sum_w_sw(5), dataf=>nx524z5);
   ix56842z17676 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffffffffffffff0") 
       port map ( combout=>nx56842z3, datac=>f(3), datad=>f(5), datae=>f(4), 
      dataf=>f(2));
   ix41892z17676 : stratixiv_lcell_comb
      generic map (lut_mask => X"fffffffffffffffc") 
       port map ( combout=>nx41892z2, datab=>g(1), datac=>g(7), datad=>g(6), 
      datae=>g(0), dataf=>nx41892z3);
   ix524z17688 : stratixiv_lcell_comb
      generic map (lut_mask => X"f751ffff7510ffff") 
       port map ( combout=>nx524z15, dataa=>sum(9), datab=>sum(8), datac=>
      sum_s_se(8), datad=>sum_s_se(9), datae=>index(5), dataf=>nx524z16);
   ix1197z17675 : stratixiv_lcell_comb
      generic map (lut_mask => X"0f000f00cfcc0f00") 
       port map ( combout=>nx1197z2, datab=>nx1197z3, datac=>nx57087z2, 
      datad=>dir_s_se(2), datae=>nx1197z4, dataf=>sum_e_ne(5));
   ix1197z17676 : stratixiv_lcell_comb
      generic map (lut_mask => X"0000000000000f00") 
       port map ( combout=>nx1197z3, datac=>sum_e_ne(0), datad=>nx57087z2, 
      datae=>sum_e_ne(1), dataf=>sum_e_ne(2));
   ix1197z17677 : stratixiv_lcell_comb
      generic map (lut_mask => X"000000000000000f") 
       port map ( combout=>nx1197z4, datac=>sum_e_ne(6), datad=>sum_e_ne(3), 
      datae=>sum_e_ne(4), dataf=>sum_e_ne(7));
   reg_index_2 : dffeas port map ( q=>index(2), d=>index(1), clk=>clk, clrn
      =>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_index_3 : dffeas port map ( q=>index(3), d=>index(2), clk=>clk, clrn
      =>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_index_4 : dffeas port map ( q=>index(4), d=>index(3), clk=>clk, clrn
      =>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_index_5 : dffeas port map ( q=>index(5), d=>index(4), clk=>clk, clrn
      =>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_index_6 : dffeas port map ( q=>index(6), d=>index(5), clk=>clk, clrn
      =>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_index_7 : dffeas port map ( q=>index(7), d=>index(6), clk=>clk, clrn
      =>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_dir_w_sw_2 : dffeas port map ( q=>dir_w_sw_2, d=>nx56842z2, clk=>clk, 
      ena=>index_3_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_sum_w_sw_8 : dffeas port map ( q=>sum_w_sw(8), d=>sum_w_sw_12n7s3_8, 
      clk=>clk, ena=>index_3_repl, clrn=>o_mode_0_EXMPLR37, prn=>
      o_mode_0_EXMPLR37);
   reg_acc_9 : dffeas port map ( q=>acc(9), d=>acc_12n7s2(9), clk=>clk, ena
      =>index_3_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_acc_8 : dffeas port map ( q=>acc(8), d=>acc_12n7s2(8), clk=>clk, ena
      =>index_3_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_acc_7 : dffeas port map ( q=>acc(7), d=>acc_12n7s2(7), clk=>clk, ena
      =>index_3_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_acc_6 : dffeas port map ( q=>acc(6), d=>acc_12n7s2(6), clk=>clk, ena
      =>index_3_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_acc_5 : dffeas port map ( q=>acc(5), d=>acc_12n7s2(5), clk=>clk, ena
      =>index_3_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_acc_4 : dffeas port map ( q=>acc(4), d=>acc_12n7s2(4), clk=>clk, ena
      =>index_3_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_acc_3 : dffeas port map ( q=>acc(3), d=>acc_12n7s2(3), clk=>clk, ena
      =>index_3_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_acc_2 : dffeas port map ( q=>acc(2), d=>acc_12n7s2(2), clk=>clk, ena
      =>index_3_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_acc_1 : dffeas port map ( q=>acc(1), d=>acc_12n7s2(1), clk=>clk, ena
      =>index_3_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_acc_0 : dffeas port map ( q=>acc(0), d=>acc_12n7s2(0), clk=>clk, ena
      =>index_3_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_dir_s_se_2 : dffeas port map ( q=>dir_s_se(2), d=>nx31920z1, clk=>clk, 
      ena=>index_2_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_dir_s_se_1 : dffeas port map ( q=>dir_s_se(1), d=>nx41892z2, clk=>clk, 
      ena=>index_2_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_sum_s_se_9 : dffeas port map ( q=>sum_s_se(9), d=>sum_s_se_12n5s3(9), 
      clk=>clk, ena=>index_2_repl, clrn=>o_mode_0_EXMPLR37, prn=>
      o_mode_0_EXMPLR37);
   reg_sum_s_se_8 : dffeas port map ( q=>sum_s_se(8), d=>sum_s_se_12n5s3(8), 
      clk=>clk, ena=>index_2_repl, clrn=>o_mode_0_EXMPLR37, prn=>
      o_mode_0_EXMPLR37);
   reg_sum_s_se_7 : dffeas port map ( q=>sum_s_se(7), d=>sum_s_se_12n5s3(7), 
      clk=>clk, ena=>index_2_repl, clrn=>o_mode_0_EXMPLR37, prn=>
      o_mode_0_EXMPLR37);
   reg_sum_s_se_6 : dffeas port map ( q=>sum_s_se(6), d=>sum_s_se_12n5s3(6), 
      clk=>clk, ena=>index_2_repl, clrn=>o_mode_0_EXMPLR37, prn=>
      o_mode_0_EXMPLR37);
   reg_sum_s_se_5 : dffeas port map ( q=>sum_s_se(5), d=>sum_s_se_12n5s3(5), 
      clk=>clk, ena=>index_2_repl, clrn=>o_mode_0_EXMPLR37, prn=>
      o_mode_0_EXMPLR37);
   reg_sum_s_se_4 : dffeas port map ( q=>sum_s_se(4), d=>sum_s_se_12n5s3(4), 
      clk=>clk, ena=>index_2_repl, clrn=>o_mode_0_EXMPLR37, prn=>
      o_mode_0_EXMPLR37);
   reg_sum_s_se_3 : dffeas port map ( q=>sum_s_se(3), d=>sum_s_se_12n5s3(3), 
      clk=>clk, ena=>index_2_repl, clrn=>o_mode_0_EXMPLR37, prn=>
      o_mode_0_EXMPLR37);
   reg_sum_s_se_2 : dffeas port map ( q=>sum_s_se(2), d=>sum_s_se_12n5s3(2), 
      clk=>clk, ena=>index_2_repl, clrn=>o_mode_0_EXMPLR37, prn=>
      o_mode_0_EXMPLR37);
   reg_sum_s_se_1 : dffeas port map ( q=>sum_s_se(1), d=>sum_s_se_12n5s3(1), 
      clk=>clk, ena=>index_2_repl, clrn=>o_mode_0_EXMPLR37, prn=>
      o_mode_0_EXMPLR37);
   reg_sum_s_se_0 : dffeas port map ( q=>sum_s_se(0), d=>sum_s_se_12n5s3(0), 
      clk=>clk, ena=>index_2_repl, clrn=>o_mode_0_EXMPLR37, prn=>
      o_mode_0_EXMPLR37);
   reg_sum_e_ne_7 : dffeas port map ( q=>sum_e_ne(7), d=>e(7), clk=>clk, ena
      =>index_1_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_sum_e_ne_6 : dffeas port map ( q=>sum_e_ne(6), d=>e(6), clk=>clk, ena
      =>index_1_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_sum_e_ne_5 : dffeas port map ( q=>sum_e_ne(5), d=>e(5), clk=>clk, ena
      =>index_1_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_sum_e_ne_4 : dffeas port map ( q=>sum_e_ne(4), d=>e(4), clk=>clk, ena
      =>index_1_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_sum_e_ne_3 : dffeas port map ( q=>sum_e_ne(3), d=>e(3), clk=>clk, ena
      =>index_1_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_sum_e_ne_2 : dffeas port map ( q=>sum_e_ne(2), d=>e(2), clk=>clk, ena
      =>index_1_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_sum_e_ne_1 : dffeas port map ( q=>sum_e_ne(1), d=>e(1), clk=>clk, ena
      =>index_1_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_sum_e_ne_0 : dffeas port map ( q=>sum_e_ne(0), d=>e(0), clk=>clk, ena
      =>index_1_repl, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_e_7 : dffeas port map ( q=>e(7), d=>i_pixel(7), clk=>clk, ena=>
      nx9489z1, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_e_6 : dffeas port map ( q=>e(6), d=>i_pixel(6), clk=>clk, ena=>
      nx9489z1, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_e_5 : dffeas port map ( q=>e(5), d=>i_pixel(5), clk=>clk, ena=>
      nx9489z1, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_e_4 : dffeas port map ( q=>e(4), d=>i_pixel(4), clk=>clk, ena=>
      nx9489z1, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_e_3 : dffeas port map ( q=>e(3), d=>i_pixel(3), clk=>clk, ena=>
      nx9489z1, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_e_2 : dffeas port map ( q=>e(2), d=>i_pixel(2), clk=>clk, ena=>
      nx9489z1, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_e_1 : dffeas port map ( q=>e(1), d=>i_pixel(1), clk=>clk, ena=>
      nx9489z1, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_e_0 : dffeas port map ( q=>e(0), d=>i_pixel(0), clk=>clk, ena=>
      nx9489z1, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_g_7 : dffeas port map ( q=>g(7), d=>f(7), clk=>clk, ena=>nx9489z1, 
      clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_g_6 : dffeas port map ( q=>g(6), d=>f(6), clk=>clk, ena=>nx9489z1, 
      clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_g_5 : dffeas port map ( q=>g(5), d=>f(5), clk=>clk, ena=>nx9489z1, 
      clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_g_4 : dffeas port map ( q=>g(4), d=>f(4), clk=>clk, ena=>nx9489z1, 
      clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_g_3 : dffeas port map ( q=>g(3), d=>f(3), clk=>clk, ena=>nx9489z1, 
      clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_g_2 : dffeas port map ( q=>g(2), d=>f(2), clk=>clk, ena=>nx9489z1, 
      clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_g_1 : dffeas port map ( q=>g(1), d=>f(1), clk=>clk, ena=>nx9489z1, 
      clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_g_0 : dffeas port map ( q=>g(0), d=>f(0), clk=>clk, ena=>nx9489z1, 
      clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_f_7 : dffeas port map ( q=>f(7), d=>e(7), clk=>clk, ena=>nx9489z1, 
      clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_f_6 : dffeas port map ( q=>f(6), d=>e(6), clk=>clk, ena=>nx9489z1, 
      clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_f_5 : dffeas port map ( q=>f(5), d=>e(5), clk=>clk, ena=>nx9489z1, 
      clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_f_4 : dffeas port map ( q=>f(4), d=>e(4), clk=>clk, ena=>nx9489z1, 
      clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_f_3 : dffeas port map ( q=>f(3), d=>e(3), clk=>clk, ena=>nx9489z1, 
      clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_f_2 : dffeas port map ( q=>f(2), d=>e(2), clk=>clk, ena=>nx9489z1, 
      clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_f_1 : dffeas port map ( q=>f(1), d=>e(1), clk=>clk, ena=>nx9489z1, 
      clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_f_0 : dffeas port map ( q=>f(0), d=>e(0), clk=>clk, ena=>nx9489z1, 
      clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   ix58205z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"ff00ff00ff00f000") 
       port map ( combout=>nx58205z1, datac=>col(1), datad=>i_valid, datae=>
      nx58205z2, dataf=>nx58205z3);
   reg_index_7_repl : dffeas port map ( q=>index_7_repl, d=>index(6), clk=>
      clk, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   ix1799_repl : stratixiv_lcell_comb
      generic map (lut_mask => X"00000000c0000000") 
       port map ( combout=>nx1925_repl, datab=>col(3), datac=>col(1), datad
      =>col(0), datae=>col(2), dataf=>nx16341z1);
   reg_index_3_repl : dffeas port map ( q=>index_3_repl, d=>index(2), clk=>
      clk, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_index_2_repl : dffeas port map ( q=>index_2_repl, d=>index(1), clk=>
      clk, clrn=>o_mode_0_EXMPLR37, prn=>o_mode_0_EXMPLR37);
   reg_index_1_repl : dffeas port map ( q=>index_1_repl, d=>nx58205z1, clk=>
      clk, ena=>o_mode_0_EXMPLR37, clrn=>o_mode_0_EXMPLR37, prn=>
      o_mode_0_EXMPLR37, asdata=>GND_EXMPLR36);
   ix53402z17674 : stratixiv_lcell_comb
      generic map (lut_mask => X"000f00ff00ff00ff") 
       port map ( combout=>nx53402z1, datac=>i_valid, datad=>reset, datae=>
      nx53402z2, dataf=>STATE);
end main ;

