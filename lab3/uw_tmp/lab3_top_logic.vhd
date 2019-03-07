
-- 
-- Definition of  lab3_top
-- 
--      Sun Jun 24 15:42:23 2018
--      
--      Precision RTL Synthesis, 64-bit 2015.2.16
-- 

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library fiftyfivenm ;
use fiftyfivenm.fiftyfivenm_components.all;

entity modgen_counter_32_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (31 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (31 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_32_0 ;

architecture IMPLEMENTATION of modgen_counter_32_0 is 
   signal GND_EXMPLR14, nx61451z1, nx27063z1, nx39256z1, nx57428z1, 
      nx23040z1, nx58827z1, nx37857z1, nx21526z1, nx12862z1, nx47250z1, 
      nx1955z1, nx32433z1, nx48764z1, nx47920z1, nx13532z1, nx2799z1, 
      nx28349z1, nx12018z1, nx22370z1, nx56758z1, nx57983z1, nx41941z1, 
      nx58272z1, nx38412z1, nx61512z1, nx36406z1, nx63518z1, nx14313z1, 
      nx16835z1, nx17553z1, nx33884z1, nx46558z1, sload_mux_0_dup_365, 
      sload_mux_1_dup_366, sload_mux_2_dup_367, sload_mux_3_dup_368, 
      sload_mux_4_dup_369, sload_mux_5_dup_370, sload_mux_6_dup_371, 
      sload_mux_7_dup_372, sload_mux_8_dup_373, sload_mux_9_dup_374, 
      sload_mux_10_dup_375, sload_mux_11_dup_376, sload_mux_12_dup_377, 
      sload_mux_13_dup_378, sload_mux_14_dup_379, sload_mux_15_dup_380, 
      sload_mux_16_dup_381, sload_mux_17_dup_382, sload_mux_18_dup_383, 
      sload_mux_19_dup_384, sload_mux_20_dup_385, sload_mux_21_dup_386, 
      sload_mux_22_dup_387, sload_mux_23_dup_388, sload_mux_24_dup_389, 
      sload_mux_25_dup_390, sload_mux_26_dup_391, sload_mux_27_dup_392, 
      sload_mux_28_dup_393, sload_mux_29_dup_394, sload_mux_30_dup_395, 
      sload_mux_31_dup_396, nx27063z2, nx39256z2, nx57428z2, nx23040z2, 
      nx58827z2, nx37857z2, nx21526z2, nx12862z2, nx47250z2, nx1955z2, 
      nx32433z2, nx48764z2, nx47920z2, nx13532z2, nx2799z2, nx28349z2, 
      nx12018z2, nx22370z2, nx56758z2, nx57983z2, nx41941z2, nx58272z2, 
      nx38412z2, nx61512z2, nx36406z2, nx63518z2, nx14313z2, nx16835z2, 
      nx17553z2, nx33884z2, nx18310z2, nx18310z1: std_logic ;

begin
   q(31) <= nx46558z1 ;
   q(30) <= nx33884z1 ;
   q(29) <= nx17553z1 ;
   q(28) <= nx16835z1 ;
   q(27) <= nx14313z1 ;
   q(26) <= nx63518z1 ;
   q(25) <= nx36406z1 ;
   q(24) <= nx61512z1 ;
   q(23) <= nx38412z1 ;
   q(22) <= nx58272z1 ;
   q(21) <= nx41941z1 ;
   q(20) <= nx57983z1 ;
   q(19) <= nx56758z1 ;
   q(18) <= nx22370z1 ;
   q(17) <= nx12018z1 ;
   q(16) <= nx28349z1 ;
   q(15) <= nx2799z1 ;
   q(14) <= nx13532z1 ;
   q(13) <= nx47920z1 ;
   q(12) <= nx48764z1 ;
   q(11) <= nx32433z1 ;
   q(10) <= nx1955z1 ;
   q(9) <= nx47250z1 ;
   q(8) <= nx12862z1 ;
   q(7) <= nx21526z1 ;
   q(6) <= nx37857z1 ;
   q(5) <= nx58827z1 ;
   q(4) <= nx23040z1 ;
   q(3) <= nx57428z1 ;
   q(2) <= nx39256z1 ;
   q(1) <= nx27063z1 ;
   q(0) <= nx61451z1 ;
   GND_EXMPLR14 <= '0';
   ix2_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00aa") 
       port map ( cout=>nx27063z2, dataa=>nx61451z1, datad=>nx18310z1);
   ix6_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_1_dup_366, cout=>nx39256z2, dataa=>
      nx27063z1, datab=>sload, datad=>nx18310z1, cin=>nx27063z2);
   ix10_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_2_dup_367, cout=>nx57428z2, dataa=>
      nx39256z1, datab=>sload, datad=>nx18310z1, cin=>nx39256z2);
   ix14_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_3_dup_368, cout=>nx23040z2, dataa=>
      nx57428z1, datab=>sload, datad=>nx18310z1, cin=>nx57428z2);
   ix18_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_4_dup_369, cout=>nx58827z2, dataa=>
      nx23040z1, datab=>sload, datad=>nx18310z1, cin=>nx23040z2);
   ix22_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_5_dup_370, cout=>nx37857z2, dataa=>
      nx58827z1, datab=>sload, datad=>nx18310z1, cin=>nx58827z2);
   ix26_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_6_dup_371, cout=>nx21526z2, dataa=>
      nx37857z1, datab=>sload, datad=>nx18310z1, cin=>nx37857z2);
   ix30_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_7_dup_372, cout=>nx12862z2, dataa=>
      nx21526z1, datab=>sload, datad=>nx18310z1, cin=>nx21526z2);
   ix34_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_8_dup_373, cout=>nx47250z2, dataa=>
      nx12862z1, datab=>sload, datad=>nx18310z1, cin=>nx12862z2);
   ix38_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_9_dup_374, cout=>nx1955z2, dataa=>
      nx47250z1, datab=>sload, datad=>nx18310z1, cin=>nx47250z2);
   ix42_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_10_dup_375, cout=>nx32433z2, dataa=>
      nx1955z1, datab=>sload, datad=>nx18310z1, cin=>nx1955z2);
   ix46_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_11_dup_376, cout=>nx48764z2, dataa=>
      nx32433z1, datab=>sload, datad=>nx18310z1, cin=>nx32433z2);
   ix50_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_12_dup_377, cout=>nx47920z2, dataa=>
      nx48764z1, datab=>sload, datad=>nx18310z1, cin=>nx48764z2);
   ix54_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_13_dup_378, cout=>nx13532z2, dataa=>
      nx47920z1, datab=>sload, datad=>nx18310z1, cin=>nx47920z2);
   ix58_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_14_dup_379, cout=>nx2799z2, dataa=>
      nx13532z1, datab=>sload, datad=>nx18310z1, cin=>nx13532z2);
   ix62_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_15_dup_380, cout=>nx28349z2, dataa=>
      nx2799z1, datab=>sload, datad=>nx18310z1, cin=>nx2799z2);
   ix66_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_16_dup_381, cout=>nx12018z2, dataa=>
      nx28349z1, datab=>sload, datad=>nx18310z1, cin=>nx28349z2);
   ix70_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_17_dup_382, cout=>nx22370z2, dataa=>
      nx12018z1, datab=>sload, datad=>nx18310z1, cin=>nx12018z2);
   ix74_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_18_dup_383, cout=>nx56758z2, dataa=>
      nx22370z1, datab=>sload, datad=>nx18310z1, cin=>nx22370z2);
   ix78_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_19_dup_384, cout=>nx57983z2, dataa=>
      nx56758z1, datab=>sload, datad=>nx18310z1, cin=>nx56758z2);
   ix82_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_20_dup_385, cout=>nx41941z2, dataa=>
      nx57983z1, datab=>sload, datad=>nx18310z1, cin=>nx57983z2);
   ix86_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_21_dup_386, cout=>nx58272z2, dataa=>
      nx41941z1, datab=>sload, datad=>nx18310z1, cin=>nx41941z2);
   ix90_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_22_dup_387, cout=>nx38412z2, dataa=>
      nx58272z1, datab=>sload, datad=>nx18310z1, cin=>nx58272z2);
   ix94_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_23_dup_388, cout=>nx61512z2, dataa=>
      nx38412z1, datab=>sload, datad=>nx18310z1, cin=>nx38412z2);
   ix98_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_24_dup_389, cout=>nx36406z2, dataa=>
      nx61512z1, datab=>sload, datad=>nx18310z1, cin=>nx61512z2);
   ix133_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_25_dup_390, cout=>nx63518z2, dataa=>
      nx36406z1, datab=>sload, datad=>nx18310z1, cin=>nx36406z2);
   ix137_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_26_dup_391, cout=>nx14313z2, dataa=>
      nx63518z1, datab=>sload, datad=>nx18310z1, cin=>nx63518z2);
   ix141_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_27_dup_392, cout=>nx16835z2, dataa=>
      nx14313z1, datab=>sload, datad=>nx18310z1, cin=>nx14313z2);
   ix145_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_28_dup_393, cout=>nx17553z2, dataa=>
      nx16835z1, datab=>sload, datad=>nx18310z1, cin=>nx16835z2);
   ix149_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_29_dup_394, cout=>nx33884z2, dataa=>
      nx17553z1, datab=>sload, datad=>nx18310z1, cin=>nx17553z2);
   ix153_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"12a0",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_30_dup_395, cout=>nx18310z2, dataa=>
      nx33884z1, datab=>sload, datad=>nx18310z1, cin=>nx33884z2);
   ix155_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"1414",
         sum_lutc_input => "cin") 
       port map ( combout=>sload_mux_31_dup_396, dataa=>sload, datab=>
      nx46558z1, datad=>nx18310z1, cin=>nx18310z2);
   nx18310z1 <= '1';
   ix51271z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0ff") 
       port map ( combout=>sload_mux_0_dup_365, datac=>sload, datad=>
      nx61451z1);
   reg_q_31 : dffeas port map ( q=>nx46558z1, d=>sload_mux_31_dup_396, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_30 : dffeas port map ( q=>nx33884z1, d=>sload_mux_30_dup_395, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_29 : dffeas port map ( q=>nx17553z1, d=>sload_mux_29_dup_394, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_28 : dffeas port map ( q=>nx16835z1, d=>sload_mux_28_dup_393, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_27 : dffeas port map ( q=>nx14313z1, d=>sload_mux_27_dup_392, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_26 : dffeas port map ( q=>nx63518z1, d=>sload_mux_26_dup_391, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_25 : dffeas port map ( q=>nx36406z1, d=>sload_mux_25_dup_390, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_24 : dffeas port map ( q=>nx61512z1, d=>sload_mux_24_dup_389, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_23 : dffeas port map ( q=>nx38412z1, d=>sload_mux_23_dup_388, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_22 : dffeas port map ( q=>nx58272z1, d=>sload_mux_22_dup_387, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_21 : dffeas port map ( q=>nx41941z1, d=>sload_mux_21_dup_386, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_20 : dffeas port map ( q=>nx57983z1, d=>sload_mux_20_dup_385, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_19 : dffeas port map ( q=>nx56758z1, d=>sload_mux_19_dup_384, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_18 : dffeas port map ( q=>nx22370z1, d=>sload_mux_18_dup_383, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_17 : dffeas port map ( q=>nx12018z1, d=>sload_mux_17_dup_382, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_16 : dffeas port map ( q=>nx28349z1, d=>sload_mux_16_dup_381, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_15 : dffeas port map ( q=>nx2799z1, d=>sload_mux_15_dup_380, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_14 : dffeas port map ( q=>nx13532z1, d=>sload_mux_14_dup_379, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_13 : dffeas port map ( q=>nx47920z1, d=>sload_mux_13_dup_378, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_12 : dffeas port map ( q=>nx48764z1, d=>sload_mux_12_dup_377, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_11 : dffeas port map ( q=>nx32433z1, d=>sload_mux_11_dup_376, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_10 : dffeas port map ( q=>nx1955z1, d=>sload_mux_10_dup_375, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_9 : dffeas port map ( q=>nx47250z1, d=>sload_mux_9_dup_374, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_8 : dffeas port map ( q=>nx12862z1, d=>sload_mux_8_dup_373, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_7 : dffeas port map ( q=>nx21526z1, d=>sload_mux_7_dup_372, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_6 : dffeas port map ( q=>nx37857z1, d=>sload_mux_6_dup_371, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_5 : dffeas port map ( q=>nx58827z1, d=>sload_mux_5_dup_370, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_4 : dffeas port map ( q=>nx23040z1, d=>sload_mux_4_dup_369, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_3 : dffeas port map ( q=>nx57428z1, d=>sload_mux_3_dup_368, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_2 : dffeas port map ( q=>nx39256z1, d=>sload_mux_2_dup_367, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_1 : dffeas port map ( q=>nx27063z1, d=>sload_mux_1_dup_366, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
   reg_q_0 : dffeas port map ( q=>nx61451z1, d=>sload_mux_0_dup_365, clk=>
      clock, ena=>clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>
      GND_EXMPLR14, sclr=>sclear, sload=>GND_EXMPLR14);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library fiftyfivenm ;
use fiftyfivenm.fiftyfivenm_components.all;

entity modgen_counter_32_1 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (31 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (31 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_32_1 ;

architecture IMPLEMENTATION of modgen_counter_32_1 is 
   signal nx39034z1, nx61451z1, nx27063z1, nx39256z1, nx57428z1, nx23040z1, 
      nx58827z1, nx37857z1, nx21526z1, nx12862z1, nx47250z1, nx1955z1, 
      nx32433z1, nx48764z1, nx47920z1, nx13532z1, nx2799z1, nx28349z1, 
      nx12018z1, nx22370z1, nx56758z1, nx57983z1, nx41941z1, nx58272z1, 
      nx38412z1, nx61512z1, nx36406z1, nx63518z1, nx14313z1, nx16835z1, 
      nx17553z1, nx33884z1, nx46558z1, inc_d_0, nx27063z2, inc_d_1, 
      nx39256z2, inc_d_2, nx57428z2, inc_d_3, nx23040z2, inc_d_4, nx58827z2, 
      inc_d_5, nx37857z2, inc_d_6, nx21526z2, inc_d_7, nx12862z2, inc_d_8, 
      nx47250z2, inc_d_9, nx1955z2, inc_d_10, nx32433z2, inc_d_11, nx48764z2, 
      inc_d_12, nx47920z2, inc_d_13, nx13532z2, inc_d_14, nx2799z2, inc_d_15, 
      nx28349z2, inc_d_16, nx12018z2, inc_d_17, nx22370z2, inc_d_18, 
      nx56758z2, inc_d_19, nx57983z2, inc_d_20, nx41941z2, inc_d_21, 
      nx58272z2, inc_d_22, nx38412z2, inc_d_23, nx61512z2, inc_d_24, 
      nx36406z2, inc_d_25, nx63518z2, inc_d_26, nx14313z2, inc_d_27, 
      nx16835z2, inc_d_28, nx17553z2, inc_d_29, nx33884z2, inc_d_30, 
      nx18310z2, inc_d_31, nx18310z1: std_logic ;

begin
   q(31) <= nx46558z1 ;
   q(30) <= nx33884z1 ;
   q(29) <= nx17553z1 ;
   q(28) <= nx16835z1 ;
   q(27) <= nx14313z1 ;
   q(26) <= nx63518z1 ;
   q(25) <= nx36406z1 ;
   q(24) <= nx61512z1 ;
   q(23) <= nx38412z1 ;
   q(22) <= nx58272z1 ;
   q(21) <= nx41941z1 ;
   q(20) <= nx57983z1 ;
   q(19) <= nx56758z1 ;
   q(18) <= nx22370z1 ;
   q(17) <= nx12018z1 ;
   q(16) <= nx28349z1 ;
   q(15) <= nx2799z1 ;
   q(14) <= nx13532z1 ;
   q(13) <= nx47920z1 ;
   q(12) <= nx48764z1 ;
   q(11) <= nx32433z1 ;
   q(10) <= nx1955z1 ;
   q(9) <= nx47250z1 ;
   q(8) <= nx12862z1 ;
   q(7) <= nx21526z1 ;
   q(6) <= nx37857z1 ;
   q(5) <= nx58827z1 ;
   q(4) <= nx23040z1 ;
   q(3) <= nx57428z1 ;
   q(2) <= nx39256z1 ;
   q(1) <= nx27063z1 ;
   q(0) <= nx61451z1 ;
   nx39034z1 <= '0';
   ix2_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0, cout=>nx27063z2, dataa=>nx61451z1, datad
      =>nx18310z1);
   ix6_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1, cout=>nx39256z2, dataa=>nx27063z1, datad
      =>nx18310z1, cin=>nx27063z2);
   ix10_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2, cout=>nx57428z2, dataa=>nx39256z1, datad
      =>nx18310z1, cin=>nx39256z2);
   ix14_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3, cout=>nx23040z2, dataa=>nx57428z1, datad
      =>nx18310z1, cin=>nx57428z2);
   ix18_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4, cout=>nx58827z2, dataa=>nx23040z1, datad
      =>nx18310z1, cin=>nx23040z2);
   ix22_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5, cout=>nx37857z2, dataa=>nx58827z1, datad
      =>nx18310z1, cin=>nx58827z2);
   ix26_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6, cout=>nx21526z2, dataa=>nx37857z1, datad
      =>nx18310z1, cin=>nx37857z2);
   ix30_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7, cout=>nx12862z2, dataa=>nx21526z1, datad
      =>nx18310z1, cin=>nx21526z2);
   ix34_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_8, cout=>nx47250z2, dataa=>nx12862z1, datad
      =>nx18310z1, cin=>nx12862z2);
   ix38_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_9, cout=>nx1955z2, dataa=>nx47250z1, datad
      =>nx18310z1, cin=>nx47250z2);
   ix42_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_10, cout=>nx32433z2, dataa=>nx1955z1, datad
      =>nx18310z1, cin=>nx1955z2);
   ix46_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_11, cout=>nx48764z2, dataa=>nx32433z1, 
      datad=>nx18310z1, cin=>nx32433z2);
   ix50_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_12, cout=>nx47920z2, dataa=>nx48764z1, 
      datad=>nx18310z1, cin=>nx48764z2);
   ix54_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_13, cout=>nx13532z2, dataa=>nx47920z1, 
      datad=>nx18310z1, cin=>nx47920z2);
   ix58_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_14, cout=>nx2799z2, dataa=>nx13532z1, datad
      =>nx18310z1, cin=>nx13532z2);
   ix62_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_15, cout=>nx28349z2, dataa=>nx2799z1, datad
      =>nx18310z1, cin=>nx2799z2);
   ix66_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_16, cout=>nx12018z2, dataa=>nx28349z1, 
      datad=>nx18310z1, cin=>nx28349z2);
   ix70_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_17, cout=>nx22370z2, dataa=>nx12018z1, 
      datad=>nx18310z1, cin=>nx12018z2);
   ix74_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_18, cout=>nx56758z2, dataa=>nx22370z1, 
      datad=>nx18310z1, cin=>nx22370z2);
   ix78_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_19, cout=>nx57983z2, dataa=>nx56758z1, 
      datad=>nx18310z1, cin=>nx56758z2);
   ix82_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_20, cout=>nx41941z2, dataa=>nx57983z1, 
      datad=>nx18310z1, cin=>nx57983z2);
   ix86_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_21, cout=>nx58272z2, dataa=>nx41941z1, 
      datad=>nx18310z1, cin=>nx41941z2);
   ix90_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_22, cout=>nx38412z2, dataa=>nx58272z1, 
      datad=>nx18310z1, cin=>nx58272z2);
   ix94_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_23, cout=>nx61512z2, dataa=>nx38412z1, 
      datad=>nx18310z1, cin=>nx38412z2);
   ix98_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_24, cout=>nx36406z2, dataa=>nx61512z1, 
      datad=>nx18310z1, cin=>nx61512z2);
   ix133_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_25, cout=>nx63518z2, dataa=>nx36406z1, 
      datad=>nx18310z1, cin=>nx36406z2);
   ix137_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_26, cout=>nx14313z2, dataa=>nx63518z1, 
      datad=>nx18310z1, cin=>nx63518z2);
   ix141_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_27, cout=>nx16835z2, dataa=>nx14313z1, 
      datad=>nx18310z1, cin=>nx14313z2);
   ix145_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_28, cout=>nx17553z2, dataa=>nx16835z1, 
      datad=>nx18310z1, cin=>nx16835z2);
   ix149_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_29, cout=>nx33884z2, dataa=>nx17553z1, 
      datad=>nx18310z1, cin=>nx17553z2);
   ix153_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_30, cout=>nx18310z2, dataa=>nx33884z1, 
      datad=>nx18310z1, cin=>nx33884z2);
   ix155_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_31, dataa=>nx46558z1, datad=>nx18310z1, cin
      =>nx18310z2);
   nx18310z1 <= '1';
   reg_q_31 : dffeas port map ( q=>nx46558z1, d=>inc_d_31, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_30 : dffeas port map ( q=>nx33884z1, d=>inc_d_30, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_29 : dffeas port map ( q=>nx17553z1, d=>inc_d_29, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_28 : dffeas port map ( q=>nx16835z1, d=>inc_d_28, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_27 : dffeas port map ( q=>nx14313z1, d=>inc_d_27, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_26 : dffeas port map ( q=>nx63518z1, d=>inc_d_26, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_25 : dffeas port map ( q=>nx36406z1, d=>inc_d_25, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_24 : dffeas port map ( q=>nx61512z1, d=>inc_d_24, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_23 : dffeas port map ( q=>nx38412z1, d=>inc_d_23, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_22 : dffeas port map ( q=>nx58272z1, d=>inc_d_22, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_21 : dffeas port map ( q=>nx41941z1, d=>inc_d_21, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_20 : dffeas port map ( q=>nx57983z1, d=>inc_d_20, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_19 : dffeas port map ( q=>nx56758z1, d=>inc_d_19, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_18 : dffeas port map ( q=>nx22370z1, d=>inc_d_18, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_17 : dffeas port map ( q=>nx12018z1, d=>inc_d_17, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_16 : dffeas port map ( q=>nx28349z1, d=>inc_d_16, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_15 : dffeas port map ( q=>nx2799z1, d=>inc_d_15, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_14 : dffeas port map ( q=>nx13532z1, d=>inc_d_14, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_13 : dffeas port map ( q=>nx47920z1, d=>inc_d_13, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_12 : dffeas port map ( q=>nx48764z1, d=>inc_d_12, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_11 : dffeas port map ( q=>nx32433z1, d=>inc_d_11, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_10 : dffeas port map ( q=>nx1955z1, d=>inc_d_10, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_9 : dffeas port map ( q=>nx47250z1, d=>inc_d_9, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_8 : dffeas port map ( q=>nx12862z1, d=>inc_d_8, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_7 : dffeas port map ( q=>nx21526z1, d=>inc_d_7, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_6 : dffeas port map ( q=>nx37857z1, d=>inc_d_6, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_5 : dffeas port map ( q=>nx58827z1, d=>inc_d_5, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_4 : dffeas port map ( q=>nx23040z1, d=>inc_d_4, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_3 : dffeas port map ( q=>nx57428z1, d=>inc_d_3, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_2 : dffeas port map ( q=>nx39256z1, d=>inc_d_2, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_1 : dffeas port map ( q=>nx27063z1, d=>inc_d_1, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
   reg_q_0 : dffeas port map ( q=>nx61451z1, d=>inc_d_0, clk=>clock, ena=>
      clk_en, clrn=>nx18310z1, prn=>nx18310z1, asdata=>nx39034z1, sclr=>
      sclear, sload=>nx39034z1);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library fiftyfivenm ;
use fiftyfivenm.fiftyfivenm_components.all;

entity lab3_top is 
   port (
      reset_n : IN std_logic ;
      clk : IN std_logic ;
      uart_rx : IN std_logic ;
      uart_tx : OUT std_logic ;
      seg7_en : OUT std_logic_vector (1 DOWNTO 0) ;
      seg7_data : OUT std_logic_vector (7 DOWNTO 0) ;
      led : OUT std_logic_vector (7 DOWNTO 0) ;
      sw : IN std_logic_vector (7 DOWNTO 0)) ;
end lab3_top ;

architecture main of lab3_top is 
   component modgen_counter_32_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (31 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (31 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component modgen_counter_32_1
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (31 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (31 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   signal seg7_en_EXMPLR38: std_logic_vector (1 DOWNTO 0) ;
   
   signal i_valid: std_logic ;
   
   signal i_data: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_data: std_logic_vector (7 DOWNTO 0) ;
   
   signal byte_reg: std_logic_vector (7 DOWNTO 0) ;
   
   signal byte_count: std_logic_vector (7 DOWNTO 0) ;
   
   signal seg7_pts_1, tx_busy, byte_valid, 
      u_seg7_u_dual_seg7_o_char_rtlc6_o_char_1_TE_rtlcGen0, 
      u_seg7_u_dual_seg7_o_char_rtlc6_o_char_5_TE_rtlcGen2, 
      u_seg7_u_dual_seg7_o_char_rtlc6_o_char_6_TE_rtlcGen4, 
      u_seg7_u_dual_seg7_prev_reset, u_seg7_u_dual_seg7_prev_char0_en: 
   std_logic ;
   
   signal yes_uart_u_uart_Rx_Reg: std_logic_vector (7 DOWNTO 0) ;
   
   signal yes_uart_u_uart_RxDivisor_4: std_logic ;
   
   signal yes_uart_u_uart_RxDiv: std_logic_vector (10 DOWNTO 0) ;
   
   signal yes_uart_u_uart_TxDiv: std_logic_vector (11 DOWNTO 0) ;
   
   signal yes_uart_u_uart_TopTx, yes_uart_u_uart_TopRx: std_logic ;
   
   signal yes_uart_u_uart_TxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal yes_uart_u_uart_RxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal yes_uart_u_uart_Rx_r: std_logic ;
   
   signal yes_uart_u_uart_RxFSM: std_logic_vector (5 DOWNTO 0) ;
   
   signal yes_uart_u_uart_TxFSM: std_logic_vector (1 DOWNTO 0) ;
   
   signal u_lab3_row: std_logic_vector (31 DOWNTO 0) ;
   
   signal u_lab3_column: std_logic_vector (31 DOWNTO 0) ;
   
   signal u_lab3_p_31, u_lab3_stage_1, u_lab3_flag, u_lab3_compute_flag: 
   std_logic ;
   
   signal u_lab3_state: std_logic_vector (4 DOWNTO 0) ;
   
   signal u_lab3_p_1n7s3_9, u_lab3_p_1n7s3_7, u_lab3_p_1n7s3_6, 
      u_lab3_p_1n7s3_5, u_lab3_p_1n7s3_4, u_lab3_p_1n7s3_3, u_lab3_p_1n7s3_2, 
      u_lab3_p_1n7s3_1, u_lab3_p_1n7s3_0, nx49424z1: std_logic ;
   
   signal u_lab3_minuend_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_minuend_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_minuend_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_minuend_3: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_minuend_4: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_minuend_5: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_minuend_6: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_minuend_7: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_minuend_8: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_minuend_9: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_minuend_10: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_minuend_11: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_minuend_12: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_minuend_13: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_minuend_14: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_minuend_15: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_subtrahend_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_subtrahend_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_subtrahend_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_subtrahend_3: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_subtrahend_4: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_subtrahend_5: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_subtrahend_6: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_subtrahend_7: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_subtrahend_8: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_subtrahend_9: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_subtrahend_10: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_subtrahend_11: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_subtrahend_12: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_subtrahend_13: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_subtrahend_14: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_subtrahend_15: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_addend_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_addend_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_addend_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_addend_3: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_addend_4: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_addend_5: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_addend_6: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_addend_7: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_addend_8: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_addend_9: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_addend_10: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_addend_11: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_addend_12: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_addend_13: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_addend_14: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_addend_15: std_logic_vector (7 DOWNTO 0) ;
   
   signal inc_d_0, nx27063z1, inc_d_1, nx39256z1, inc_d_2, nx57428z1, 
      inc_d_3, nx23040z1, inc_d_4, nx58827z1, inc_d_5, nx37857z1, inc_d_6, 
      nx53431z1, inc_d_7, nx47005z1, nx13374z1, nx63336z1, nx62824z1, 
      nx28436z1, nx55549z1, nx25561z1, nx41135z1, nx9230z1, nx24804z1, 
      inc_d_0_dup_2773, nx9230z2, inc_d_1_dup_2774, nx41135z2, 
      inc_d_2_dup_2775, nx25561z2, inc_d_3_dup_2776, nx55549z2, 
      inc_d_4_dup_2777, nx28436z2, inc_d_5_dup_2778, nx62824z2, 
      inc_d_6_dup_2779, nx63336z2, inc_d_7_dup_2780, nx13374z2, inc_d_8, 
      nx47005z2, inc_d_9, nx10744z1, inc_d_10, inc_d_0_dup_2818, nx49129z1, 
      inc_d_1_dup_2820, nx50038z1, inc_d_2_dup_2822, nx76z1, 
      inc_d_3_dup_2824, nx15650z1, inc_d_4_dup_2826, nx34312z1, 
      inc_d_5_dup_2828, nx18738z1, inc_d_6_dup_2830, nx4678z1, 
      inc_d_7_dup_2832, nx10896z1, inc_d_8_dup_2833, nx26470z1, 
      inc_d_9_dup_2834, nx34257z1, inc_d_10_dup_2835, inc_d_0_dup_2867, 
      nx47817z1, inc_d_1_dup_2869, nx51350z1, inc_d_2_dup_2871, nx1388z1, 
      inc_d_3_dup_2873, nx16962z1, inc_d_4_dup_2875, nx32536z1, 
      inc_d_5_dup_2877, nx17426z1, inc_d_6_dup_2879, nx49331z1, 
      inc_d_7_dup_2881, nx33757z1, inc_d_8_dup_2883, nx47250z1, 
      inc_d_9_dup_2885, nx47353z1, inc_d_10_dup_2887, nx55140z1, inc_d_11, 
      inc_d_0_dup_3036, nx18768z1, inc_d_1_dup_3038, nx52399z1, 
      inc_d_2_dup_3040, nx2437z1, inc_d_3_dup_3042, nx47525z1, 
      inc_d_4_dup_3044, nx31951z1, inc_d_5_dup_3046, nx16377z1, 
      inc_d_6_dup_3048, nx56069z1, inc_d_7_dup_3050, nx63011z19, nx13806z19, 
      nx17342z19, nx64525z19, nx33377z19, nx63307z19, nx46976z19, nx43842z1, 
      nx59416z1, nx27511z1, nx43085z1, nx6877z1, nx56839z1, nx41265z1, 
      nx57902z1, u_lab3_p_1n7s2_31, nx17564z1, nx19195z1, nx46918z2: 
   std_logic ;
   
   signal u_lab3_p_1n7s3f1: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_lab3_p_1n7s3f2: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx46918z5, nx36913z8, nx36913z6, nx36913z4, nx36913z2, nx36913z3, 
      nx36913z5, nx36913z7, nx36913z9, nx36913z1, nx63011z8, nx63011z6, 
      nx63011z4, nx63011z2, nx63011z3, nx63011z5, nx63011z7, nx63011z9, 
      nx63011z1, nx13806z8, nx13806z6, nx13806z4, nx13806z2, nx13806z3, 
      nx13806z5, nx13806z7, nx13806z9, nx13806z1, nx17342z8, nx17342z6, 
      nx17342z4, nx17342z2, nx17342z3, nx17342z5, nx17342z7, nx17342z9, 
      nx17342z1, nx64525z8, nx64525z6, nx64525z4, nx64525z2, nx64525z3, 
      nx64525z5, nx64525z7, nx64525z9, nx64525z1, nx33377z8, nx33377z6, 
      nx33377z4, nx33377z2, nx33377z3, nx33377z5, nx33377z7, nx33377z9, 
      nx33377z1, nx63307z8, nx63307z6, nx63307z4, nx63307z2, nx63307z3, 
      nx63307z5, nx63307z7, nx63307z9, nx63307z1, nx46976z8, nx46976z6, 
      nx46976z4, nx46976z2, nx46976z3, nx46976z5, nx46976z7, nx46976z9, 
      nx46976z1, nx36913z17, nx36913z15, nx36913z13, nx36913z11, nx36913z12, 
      nx36913z14, nx36913z16, nx36913z18, nx36913z10, nx63011z17, nx63011z15, 
      nx63011z13, nx63011z11, nx63011z12, nx63011z14, nx63011z16, nx63011z18, 
      nx63011z10, nx13806z17, nx13806z15, nx13806z13, nx13806z11, nx13806z12, 
      nx13806z14, nx13806z16, nx13806z18, nx13806z10, nx17342z17, nx17342z15, 
      nx17342z13, nx17342z11, nx17342z12, nx17342z14, nx17342z16, nx17342z18, 
      nx17342z10, nx64525z17, nx64525z15, nx64525z13, nx64525z11, nx64525z12, 
      nx64525z14, nx64525z16, nx64525z18, nx64525z10, nx33377z17, nx33377z15, 
      nx33377z13, nx33377z11, nx33377z12, nx33377z14, nx33377z16, nx33377z18, 
      nx33377z10, nx63307z17, nx63307z15, nx63307z13, nx63307z11, nx63307z12, 
      nx63307z14, nx63307z16, nx63307z18, nx63307z10, nx46976z17, nx46976z15, 
      nx46976z13, nx46976z11, nx46976z12, nx46976z14, nx46976z16, nx46976z18, 
      nx46976z10, reset: std_logic ;
   
   signal seg7_num: std_logic_vector (7 DOWNTO 0) ;
   
   signal led_5_EXMPLR37, PWR: std_logic ;
   
   signal byte_reg_2n1ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal byte_valid_3n0r1, nx51544z3, nx51544z4, nx51544z5, nx51544z6, 
      nx51544z8, nx51544z9, nx51544z10, nx51544z11, 
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0, 
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2, 
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4: std_logic ;
   
   signal u_seg7_rtlcP1: std_logic_vector (13 DOWNTO 0) ;
   
   signal u_seg7_u_dual_seg7_muxed_char_4, u_seg7_u_dual_seg7_muxed_char_3, 
      u_seg7_u_dual_seg7_muxed_char_2, u_seg7_u_dual_seg7_muxed_char_0, 
      nx60244z1, u_seg7_u_dual_seg7_load_reg, nx22863z1: std_logic ;
   
   signal yes_uart_u_uart_Tx_Reg_14n6ss1: std_logic_vector (0 DOWNTO 0) ;
   
   signal nx46918z3, nx21131z1, nx49278z2, nx46463z1, nx2098z1, nx29107z2, 
      nx64005z1, nx463z1, nx65002z1, nx1460z1, nx60456z1, nx2457z1, 
      nx46262z1, nx60456z2, nx62450z1, nx1460z2, nx60357z7, nx63348z2, 
      u_lab3_rtlc0_PS25_n202, nx62976z4, u_lab3_minuend_1n10ss1_487, 
      u_lab3_minuend_1n10ss1_486, u_lab3_minuend_1n10ss1_485, 
      u_lab3_minuend_1n10ss1_484, u_lab3_minuend_1n10ss1_483, 
      u_lab3_minuend_1n10ss1_482, u_lab3_minuend_1n10ss1_481, 
      u_lab3_minuend_1n10ss1_480, u_lab3_minuend_1n10ss1_455, 
      u_lab3_minuend_1n10ss1_454, u_lab3_minuend_1n10ss1_453, 
      u_lab3_minuend_1n10ss1_452, u_lab3_minuend_1n10ss1_451, 
      u_lab3_minuend_1n10ss1_450, u_lab3_minuend_1n10ss1_449, 
      u_lab3_minuend_1n10ss1_448, u_lab3_minuend_1n10ss1_423, 
      u_lab3_minuend_1n10ss1_422, u_lab3_minuend_1n10ss1_421, 
      u_lab3_minuend_1n10ss1_420, u_lab3_minuend_1n10ss1_419, 
      u_lab3_minuend_1n10ss1_418, u_lab3_minuend_1n10ss1_417, 
      u_lab3_minuend_1n10ss1_416, u_lab3_minuend_1n10ss1_391, 
      u_lab3_minuend_1n10ss1_390, u_lab3_minuend_1n10ss1_389, 
      u_lab3_minuend_1n10ss1_388, u_lab3_minuend_1n10ss1_387, 
      u_lab3_minuend_1n10ss1_386, u_lab3_minuend_1n10ss1_385, 
      u_lab3_minuend_1n10ss1_384, u_lab3_minuend_1n10ss1_359, 
      u_lab3_minuend_1n10ss1_358, u_lab3_minuend_1n10ss1_357, 
      u_lab3_minuend_1n10ss1_356, u_lab3_minuend_1n10ss1_355, 
      u_lab3_minuend_1n10ss1_354, u_lab3_minuend_1n10ss1_353, 
      u_lab3_minuend_1n10ss1_352, u_lab3_minuend_1n10ss1_327, 
      u_lab3_minuend_1n10ss1_326, u_lab3_minuend_1n10ss1_325, 
      u_lab3_minuend_1n10ss1_324, u_lab3_minuend_1n10ss1_323, 
      u_lab3_minuend_1n10ss1_322, u_lab3_minuend_1n10ss1_321, 
      u_lab3_minuend_1n10ss1_320, u_lab3_minuend_1n10ss1_295, 
      u_lab3_minuend_1n10ss1_294, u_lab3_minuend_1n10ss1_293, 
      u_lab3_minuend_1n10ss1_292, u_lab3_minuend_1n10ss1_291, 
      u_lab3_minuend_1n10ss1_290, u_lab3_minuend_1n10ss1_289, 
      u_lab3_minuend_1n10ss1_288, u_lab3_minuend_1n10ss1_263, 
      u_lab3_minuend_1n10ss1_262, u_lab3_minuend_1n10ss1_261, 
      u_lab3_minuend_1n10ss1_260, u_lab3_minuend_1n10ss1_259, 
      u_lab3_minuend_1n10ss1_258, u_lab3_minuend_1n10ss1_257, 
      u_lab3_minuend_1n10ss1_256, u_lab3_minuend_1n10ss1_231, 
      u_lab3_minuend_1n10ss1_230, u_lab3_minuend_1n10ss1_229, 
      u_lab3_minuend_1n10ss1_228, u_lab3_minuend_1n10ss1_227, 
      u_lab3_minuend_1n10ss1_226, u_lab3_minuend_1n10ss1_225, 
      u_lab3_minuend_1n10ss1_224, u_lab3_minuend_1n10ss1_199, 
      u_lab3_minuend_1n10ss1_198, u_lab3_minuend_1n10ss1_197, 
      u_lab3_minuend_1n10ss1_196, u_lab3_minuend_1n10ss1_195, 
      u_lab3_minuend_1n10ss1_194, u_lab3_minuend_1n10ss1_193, 
      u_lab3_minuend_1n10ss1_192, u_lab3_minuend_1n10ss1_167, 
      u_lab3_minuend_1n10ss1_166, u_lab3_minuend_1n10ss1_165, 
      u_lab3_minuend_1n10ss1_164, u_lab3_minuend_1n10ss1_163, 
      u_lab3_minuend_1n10ss1_162, u_lab3_minuend_1n10ss1_161, 
      u_lab3_minuend_1n10ss1_160, u_lab3_minuend_1n10ss1_135, 
      u_lab3_minuend_1n10ss1_134, u_lab3_minuend_1n10ss1_133, 
      u_lab3_minuend_1n10ss1_132, u_lab3_minuend_1n10ss1_131, 
      u_lab3_minuend_1n10ss1_130, u_lab3_minuend_1n10ss1_129, 
      u_lab3_minuend_1n10ss1_128, u_lab3_minuend_1n10ss1_103, 
      u_lab3_minuend_1n10ss1_102, u_lab3_minuend_1n10ss1_101, 
      u_lab3_minuend_1n10ss1_100, u_lab3_minuend_1n10ss1_99, 
      u_lab3_minuend_1n10ss1_98, u_lab3_minuend_1n10ss1_97, 
      u_lab3_minuend_1n10ss1_96, u_lab3_minuend_1n10ss1_71, 
      u_lab3_minuend_1n10ss1_70, u_lab3_minuend_1n10ss1_69, 
      u_lab3_minuend_1n10ss1_68, u_lab3_minuend_1n10ss1_67, 
      u_lab3_minuend_1n10ss1_66, u_lab3_minuend_1n10ss1_65, 
      u_lab3_minuend_1n10ss1_64, u_lab3_minuend_1n10ss1_39, 
      u_lab3_minuend_1n10ss1_38, u_lab3_minuend_1n10ss1_37, 
      u_lab3_minuend_1n10ss1_36, u_lab3_minuend_1n10ss1_35, 
      u_lab3_minuend_1n10ss1_34, u_lab3_minuend_1n10ss1_33, 
      u_lab3_minuend_1n10ss1_32, u_lab3_minuend_1n10ss1_7, 
      u_lab3_minuend_1n10ss1_6, u_lab3_minuend_1n10ss1_5, 
      u_lab3_minuend_1n10ss1_4, u_lab3_minuend_1n10ss1_3, 
      u_lab3_minuend_1n10ss1_2, u_lab3_minuend_1n10ss1_1, 
      u_lab3_minuend_1n10ss1_0, nx48923z6, nx53092z2, nx41843z3, nx41843z1, 
      nx19416z1, nx16929z1, nx13001z2, nx47763z2, nx22064z1, nx18136z2, 
      nx42628z2, nx27199z1, nx23271z2, nx37493z2, nx32334z1, nx28406z2, 
      nx32358z2, nx37469z1, nx33541z2, nx27223z2, nx42604z1, nx38676z2, 
      nx22088z2, nx64440z1, nx34864z2, nx41564z2, nx6231z1, nx29729z2, 
      nx36429z2, nx11366z1, nx40942z2, nx31294z2, nx16501z1, nx46077z2, 
      nx26159z2, nx21636z1, nx51212z2, nx21024z2, nx26771z1, nx56347z2, 
      nx15889z2, nx31906z1, nx61482z2, nx54782z2, nx37041z1, nx1081z2, 
      nx59917z2, nx42176z1, nx6216z2, nx65052z2, nx47311z1, nx11351z2, 
      nx4651z2, nx63348z1, nx61354z1, nx60357z1, nx48923z4, nx48923z5, 
      nx62351z2, u_lab3_not_state_3, nx47763z1, nx42628z1, nx4651z1, 
      nx65052z1, nx59917z1, nx54782z1, nx15889z1, nx21024z1, nx26159z1, 
      nx31294z1, nx36429z1, nx41564z1, nx22088z1, nx27223z1, nx32358z1, 
      nx37493z1, nx11351z3, nx11351z5, nx48923z3, nx62976z3, nx62351z3, 
      nx41843z5, nx60357z2, nx63348z3, nx11351z4, nx48923z2, nx48923z1, 
      nx4372z1, nx5369z1, nx6366z1, nx7363z1, nx8360z1, nx9357z1, nx10354z1, 
      nx11351z1, nx64773z1, nx234z1, nx1231z1, nx2228z1, nx3225z1, nx4222z1, 
      nx5219z1, nx6216z1, nx59638z1, nx60635z1, nx61632z1, nx62629z1, 
      nx63626z1, nx64623z1, nx84z1, nx1081z1, nx54503z1, nx55500z1, 
      nx56497z1, nx57494z1, nx58491z1, nx59488z1, nx60485z1, nx61482z1, 
      nx49368z1, nx50365z1, nx51362z1, nx52359z1, nx53356z1, nx54353z1, 
      nx55350z1, nx56347z1, nx44233z1, nx45230z1, nx46227z1, nx47224z1, 
      nx48221z1, nx49218z1, nx50215z1, nx51212z1, nx39098z1, nx40095z1, 
      nx41092z1, nx42089z1, nx43086z1, nx44083z1, nx45080z1, nx46077z1, 
      nx33963z1, nx34960z1, nx35957z1, nx36954z1, nx37951z1, nx38948z1, 
      nx39945z1, nx40942z1, nx36708z1, nx35711z1, nx34714z1, nx33717z1, 
      nx32720z1, nx31723z1, nx30726z1, nx29729z1, nx41843z14, nx40846z1, 
      nx39849z1, nx38852z1, nx37855z1, nx36858z1, nx35861z1, nx34864z1, 
      nx31697z1, nx32694z1, nx33691z1, nx34688z1, nx35685z1, nx36682z1, 
      nx37679z1, nx38676z1, nx26562z1, nx27559z1, nx28556z1, nx29553z1, 
      nx30550z1, nx31547z1, nx32544z1, nx33541z1, nx21427z1, nx22424z1, 
      nx23421z1, nx24418z1, nx25415z1, nx26412z1, nx27409z1, nx28406z1, 
      nx16292z1, nx17289z1, nx18286z1, nx19283z1, nx20280z1, nx21277z1, 
      nx22274z1, nx23271z1, nx11157z1, nx12154z1, nx13151z1, nx14148z1, 
      nx15145z1, nx16142z1, nx17139z1, nx18136z1, nx6022z1, nx7019z1, 
      nx8016z1, nx9013z1, nx10010z1, nx11007z1, nx12004z1, nx13001z1, 
      nx18625z1, nx28027z1, nx51544z1, nx62976z2, nx6634z1, nx3960z1, 
      nx62976z1, nx46918z1, nx45921z1, nx31891z1, nx53092z1, nx64005z2, 
      nx46918z4, nx51272z2, nx51272z1, nx50275z1, nx49278z1, nx48281z1, 
      nx48281z2, nx46026z3, nx46026z1, nx45029z1, nx44032z1, nx43035z1, 
      nx43035z2, nx41843z2, u_lab3_not_minuend_1n1s2_14, 
      u_lab3_not_minuend_1n1s2_13, u_lab3_not_minuend_1n1s2_12, 
      u_lab3_not_minuend_1n1s2_11, u_lab3_not_minuend_1n1s2_10, 
      u_lab3_not_minuend_1n1s2_9, u_lab3_not_minuend_1n1s2_8, 
      u_lab3_not_minuend_1n1s2_7, u_lab3_not_minuend_1n1s2_6, 
      u_lab3_not_minuend_1n1s2_5, u_lab3_not_minuend_1n1s2_4, 
      u_lab3_not_minuend_1n1s2_3, u_lab3_not_minuend_1n1s2_2, 
      u_lab3_not_minuend_1n1s2_1, u_lab3_not_minuend_1n1s2_0, nx41843z4, 
      nx63348z13, nx63348z12, nx63348z11, nx63348z10, nx63348z9, nx63348z8, 
      nx63348z7, nx63348z6, nx63348z5, nx63348z4, nx41843z13, nx41843z12, 
      nx41843z11, nx41843z10, nx41843z9, nx41843z8, nx60357z6, nx41843z7, 
      nx60357z5, nx41843z6, nx62351z4, nx60357z4, nx60357z3, nx62351z1, 
      nx60456z5, nx60456z6, nx60456z4, nx60456z3, nx62450z4, nx62450z3, 
      nx62450z2, nx62450z6, nx62450z5, nx57589z1, nx29107z1, NOT_led_5, 
      nx6634z2, nx59360z1, nx64005z3, NOT_led_4, nx22128z1, 
      NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_8, nx23125z1, 
      NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_7, nx24122z1, 
      NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_6, nx25119z1, 
      NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_5, nx26116z1, 
      NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_4, nx27113z1, 
      NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_3, nx28110z1, 
      NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_2, nx29107z3, 
      NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_1, nx46026z2, nx63008z1: std_logic
    ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   uart_tx <= uart_rx ;
   seg7_en(1) <= seg7_en_EXMPLR38(1) ;
   seg7_en(0) <= seg7_en_EXMPLR38(0) ;
   led(7) <= sw(7) ;
   led(6) <= led_5_EXMPLR37 ;
   led(5) <= led_5_EXMPLR37 ;
   led(4) <= uart_rx ;
   led(2) <= sw(2) ;
   led(1) <= sw(1) ;
   led(0) <= sw(0) ;
   u_lab3_modgen_counter_row : modgen_counter_32_0 port map ( clock=>clk, 
      q(31)=>u_lab3_row(31), q(30)=>u_lab3_row(30), q(29)=>u_lab3_row(29), 
      q(28)=>u_lab3_row(28), q(27)=>u_lab3_row(27), q(26)=>u_lab3_row(26), 
      q(25)=>u_lab3_row(25), q(24)=>u_lab3_row(24), q(23)=>u_lab3_row(23), 
      q(22)=>u_lab3_row(22), q(21)=>u_lab3_row(21), q(20)=>u_lab3_row(20), 
      q(19)=>u_lab3_row(19), q(18)=>u_lab3_row(18), q(17)=>u_lab3_row(17), 
      q(16)=>u_lab3_row(16), q(15)=>u_lab3_row(15), q(14)=>u_lab3_row(14), 
      q(13)=>u_lab3_row(13), q(12)=>u_lab3_row(12), q(11)=>u_lab3_row(11), 
      q(10)=>u_lab3_row(10), q(9)=>u_lab3_row(9), q(8)=>u_lab3_row(8), q(7)
      =>u_lab3_row(7), q(6)=>u_lab3_row(6), q(5)=>u_lab3_row(5), q(4)=>
      u_lab3_row(4), q(3)=>u_lab3_row(3), q(2)=>u_lab3_row(2), q(1)=>
      u_lab3_row(1), q(0)=>u_lab3_row(0), clk_en=>nx41843z1, aclear=>
      DANGLING(0,0), sload=>u_lab3_state(1), data(31)=>DANGLING(0,1), 
      data(30)=>DANGLING(0,2), data(29)=>DANGLING(0,3), data(28)=>
      DANGLING(0,4), data(27)=>DANGLING(0,5), data(26)=>DANGLING(0,6), 
      data(25)=>DANGLING(0,7), data(24)=>DANGLING(0,8), data(23)=>
      DANGLING(0,9), data(22)=>DANGLING(0,10), data(21)=>DANGLING(0,11), 
      data(20)=>DANGLING(0,12), data(19)=>DANGLING(0,13), data(18)=>
      DANGLING(0,14), data(17)=>DANGLING(0,15), data(16)=>DANGLING(0,16), 
      data(15)=>DANGLING(0,17), data(14)=>DANGLING(0,18), data(13)=>
      DANGLING(0,19), data(12)=>DANGLING(0,20), data(11)=>DANGLING(0,21), 
      data(10)=>DANGLING(0,22), data(9)=>DANGLING(0,23), data(8)=>
      DANGLING(0,24), data(7)=>DANGLING(0,25), data(6)=>DANGLING(0,26), 
      data(5)=>DANGLING(0,27), data(4)=>DANGLING(0,28), data(3)=>
      DANGLING(0,29), data(2)=>DANGLING(0,30), data(1)=>DANGLING(0,31), 
      data(0)=>DANGLING(0,32), aset=>DANGLING(0,33), sclear=>u_lab3_state(0), 
      updn=>DANGLING(0,34), cnt_en=>DANGLING(0,35));
   u_lab3_modgen_counter_column : modgen_counter_32_1 port map ( clock=>clk, 
      q(31)=>u_lab3_column(31), q(30)=>u_lab3_column(30), q(29)=>
      u_lab3_column(29), q(28)=>u_lab3_column(28), q(27)=>u_lab3_column(27), 
      q(26)=>u_lab3_column(26), q(25)=>u_lab3_column(25), q(24)=>
      u_lab3_column(24), q(23)=>u_lab3_column(23), q(22)=>u_lab3_column(22), 
      q(21)=>u_lab3_column(21), q(20)=>u_lab3_column(20), q(19)=>
      u_lab3_column(19), q(18)=>u_lab3_column(18), q(17)=>u_lab3_column(17), 
      q(16)=>u_lab3_column(16), q(15)=>u_lab3_column(15), q(14)=>
      u_lab3_column(14), q(13)=>u_lab3_column(13), q(12)=>u_lab3_column(12), 
      q(11)=>u_lab3_column(11), q(10)=>u_lab3_column(10), q(9)=>
      u_lab3_column(9), q(8)=>u_lab3_column(8), q(7)=>u_lab3_column(7), q(6)
      =>u_lab3_column(6), q(5)=>u_lab3_column(5), q(4)=>u_lab3_column(4), 
      q(3)=>u_lab3_column(3), q(2)=>u_lab3_column(2), q(1)=>u_lab3_column(1), 
      q(0)=>u_lab3_column(0), clk_en=>nx48923z1, aclear=>DANGLING(0,36), 
      sload=>DANGLING(0,37), data(31)=>DANGLING(0,38), data(30)=>
      DANGLING(0,39), data(29)=>DANGLING(0,40), data(28)=>DANGLING(0,41), 
      data(27)=>DANGLING(0,42), data(26)=>DANGLING(0,43), data(25)=>
      DANGLING(0,44), data(24)=>DANGLING(0,45), data(23)=>DANGLING(0,46), 
      data(22)=>DANGLING(0,47), data(21)=>DANGLING(0,48), data(20)=>
      DANGLING(0,49), data(19)=>DANGLING(0,50), data(18)=>DANGLING(0,51), 
      data(17)=>DANGLING(0,52), data(16)=>DANGLING(0,53), data(15)=>
      DANGLING(0,54), data(14)=>DANGLING(0,55), data(13)=>DANGLING(0,56), 
      data(12)=>DANGLING(0,57), data(11)=>DANGLING(0,58), data(10)=>
      DANGLING(0,59), data(9)=>DANGLING(0,60), data(8)=>DANGLING(0,61), 
      data(7)=>DANGLING(0,62), data(6)=>DANGLING(0,63), data(5)=>
      DANGLING(0,64), data(4)=>DANGLING(0,65), data(3)=>DANGLING(0,66), 
      data(2)=>DANGLING(0,67), data(1)=>DANGLING(0,68), data(0)=>
      DANGLING(0,69), aset=>DANGLING(0,70), sclear=>nx48923z4, updn=>
      DANGLING(0,71), cnt_en=>DANGLING(0,72));
   u_seg7_u_dual_seg7_o_char_triBus3_6 : TRI port map ( a_OUT=>seg7_data(6), 
      a_IN=>led_5_EXMPLR37, OE=>
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4);
   u_seg7_u_dual_seg7_o_char_triBus3_5 : TRI port map ( a_OUT=>seg7_data(5), 
      a_IN=>led_5_EXMPLR37, OE=>
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2);
   u_seg7_u_dual_seg7_ix36127z20184 : TRI port map ( a_OUT=>seg7_data(1), 
      a_IN=>led_5_EXMPLR37, OE=>
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0);
   seg7_en_EXMPLR38(0) <= NOT seg7_en_EXMPLR38(1);
   reset <= NOT reset_n;
   led_5_EXMPLR37 <= '0';
   PWR <= '1';
   u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0 <= NOT 
   u_seg7_u_dual_seg7_o_char_rtlc6_o_char_1_TE_rtlcGen0;
   u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2 <= NOT 
   u_seg7_u_dual_seg7_o_char_rtlc6_o_char_5_TE_rtlcGen2;
   u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4 <= NOT 
   u_seg7_u_dual_seg7_o_char_rtlc6_o_char_6_TE_rtlcGen4;
   u_lab3_not_state_3 <= NOT u_lab3_state(3);
   led(3) <= NOT nx57589z1;
   NOT_led_5 <= NOT led_5_EXMPLR37;
   u_lab3_state(0) <= NOT nx6634z2;
   yes_uart_u_uart_Rx_r <= NOT nx64005z3;
   NOT_led_4 <= NOT uart_rx;
   yes_uart_u_uart_RxFSM(0) <= NOT nx46026z2;
   ix2_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0, cout=>nx27063z1, dataa=>byte_count(0), 
      datad=>PWR);
   ix6_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1, cout=>nx39256z1, dataa=>byte_count(1), 
      datad=>PWR, cin=>nx27063z1);
   ix10_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2, cout=>nx57428z1, dataa=>byte_count(2), 
      datad=>PWR, cin=>nx39256z1);
   ix14_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3, cout=>nx23040z1, dataa=>byte_count(3), 
      datad=>PWR, cin=>nx57428z1);
   ix18_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4, cout=>nx58827z1, dataa=>byte_count(4), 
      datad=>PWR, cin=>nx23040z1);
   ix22_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5, cout=>nx37857z1, dataa=>byte_count(5), 
      datad=>PWR, cin=>nx58827z1);
   ix26_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6, cout=>nx53431z1, dataa=>byte_count(6), 
      datad=>PWR, cin=>nx37857z1);
   ix28_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7, dataa=>byte_count(7), datad=>PWR, cin=>
      nx53431z1);
   ix2757_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0_dup_2773, cout=>nx9230z2, dataa=>
      nx24804z1, datad=>PWR);
   ix2759_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_2774, cout=>nx41135z2, dataa=>
      nx9230z1, datad=>PWR, cin=>nx9230z2);
   ix2761_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_2775, cout=>nx25561z2, dataa=>
      nx41135z1, datad=>PWR, cin=>nx41135z2);
   ix2763_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_2776, cout=>nx55549z2, dataa=>
      nx25561z1, datad=>PWR, cin=>nx25561z2);
   ix2765_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_2777, cout=>nx28436z2, dataa=>
      nx55549z1, datad=>PWR, cin=>nx55549z2);
   ix32_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_2778, cout=>nx62824z2, dataa=>
      nx28436z1, datad=>PWR, cin=>nx28436z2);
   ix36_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_2779, cout=>nx63336z2, dataa=>
      nx62824z1, datad=>PWR, cin=>nx62824z2);
   ix2766_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_2780, cout=>nx13374z2, dataa=>
      nx63336z1, datad=>PWR, cin=>nx63336z2);
   ix2768_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_8, cout=>nx47005z2, dataa=>nx13374z1, datad
      =>PWR, cin=>nx13374z2);
   ix2770_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_9, cout=>nx10744z1, dataa=>nx47005z1, datad
      =>PWR, cin=>nx47005z2);
   ix2771_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_10, dataa=>seg7_en_EXMPLR38(1), datad=>PWR, 
      cin=>nx10744z1);
   ix2787_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0_dup_2818, cout=>nx49129z1, dataa=>
      yes_uart_u_uart_RxDiv(0), datad=>PWR);
   ix2789_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_2820, cout=>nx50038z1, dataa=>
      yes_uart_u_uart_RxDiv(1), datad=>PWR, cin=>nx49129z1);
   ix2791_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_2822, cout=>nx76z1, dataa=>
      yes_uart_u_uart_RxDiv(2), datad=>PWR, cin=>nx50038z1);
   ix2793_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_2824, cout=>nx15650z1, dataa=>
      yes_uart_u_uart_RxDiv(3), datad=>PWR, cin=>nx76z1);
   ix2795_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_2826, cout=>nx34312z1, dataa=>
      yes_uart_u_uart_RxDiv(4), datad=>PWR, cin=>nx15650z1);
   ix2797_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_2828, cout=>nx18738z1, dataa=>
      yes_uart_u_uart_RxDiv(5), datad=>PWR, cin=>nx34312z1);
   ix2799_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_2830, cout=>nx4678z1, dataa=>
      yes_uart_u_uart_RxDiv(6), datad=>PWR, cin=>nx18738z1);
   ix2801_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_2832, cout=>nx10896z1, dataa=>
      yes_uart_u_uart_RxDiv(7), datad=>PWR, cin=>nx4678z1);
   ix2803_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_8_dup_2833, cout=>nx26470z1, dataa=>
      yes_uart_u_uart_RxDiv(8), datad=>PWR, cin=>nx10896z1);
   ix2805_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_9_dup_2834, cout=>nx34257z1, dataa=>
      yes_uart_u_uart_RxDiv(9), datad=>PWR, cin=>nx26470z1);
   ix2806_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_10_dup_2835, dataa=>
      yes_uart_u_uart_RxDiv(10), datad=>PWR, cin=>nx34257z1);
   ix2837_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0_dup_2867, cout=>nx47817z1, dataa=>
      yes_uart_u_uart_TxDiv(0), datad=>PWR);
   ix2839_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_2869, cout=>nx51350z1, dataa=>
      yes_uart_u_uart_TxDiv(1), datad=>PWR, cin=>nx47817z1);
   ix2841_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_2871, cout=>nx1388z1, dataa=>
      yes_uart_u_uart_TxDiv(2), datad=>PWR, cin=>nx51350z1);
   ix2843_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_2873, cout=>nx16962z1, dataa=>
      yes_uart_u_uart_TxDiv(3), datad=>PWR, cin=>nx1388z1);
   ix2845_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_2875, cout=>nx32536z1, dataa=>
      yes_uart_u_uart_TxDiv(4), datad=>PWR, cin=>nx16962z1);
   ix2847_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_2877, cout=>nx17426z1, dataa=>
      yes_uart_u_uart_TxDiv(5), datad=>PWR, cin=>nx32536z1);
   ix2849_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_2879, cout=>nx49331z1, dataa=>
      yes_uart_u_uart_TxDiv(6), datad=>PWR, cin=>nx17426z1);
   ix2851_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_2881, cout=>nx33757z1, dataa=>
      yes_uart_u_uart_TxDiv(7), datad=>PWR, cin=>nx49331z1);
   ix2853_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_8_dup_2883, cout=>nx47250z1, dataa=>
      yes_uart_u_uart_TxDiv(8), datad=>PWR, cin=>nx33757z1);
   ix38_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_9_dup_2885, cout=>nx47353z1, dataa=>
      yes_uart_u_uart_TxDiv(9), datad=>PWR, cin=>nx47250z1);
   ix2855_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_10_dup_2887, cout=>nx55140z1, dataa=>
      yes_uart_u_uart_TxDiv(10), datad=>PWR, cin=>nx47353z1);
   ix2856_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_11, dataa=>yes_uart_u_uart_TxDiv(11), datad
      =>PWR, cin=>nx55140z1);
   ix3017_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0_dup_3036, cout=>nx18768z1, dataa=>
      o_data(0), datad=>PWR);
   ix3019_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_3038, cout=>nx52399z1, dataa=>
      o_data(1), datad=>PWR, cin=>nx18768z1);
   ix3021_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_3040, cout=>nx2437z1, dataa=>
      o_data(2), datad=>PWR, cin=>nx52399z1);
   ix3023_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_3042, cout=>nx47525z1, dataa=>
      o_data(3), datad=>PWR, cin=>nx2437z1);
   ix3025_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_3044, cout=>nx31951z1, dataa=>
      o_data(4), datad=>PWR, cin=>nx47525z1);
   ix3027_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_3046, cout=>nx16377z1, dataa=>
      o_data(5), datad=>PWR, cin=>nx31951z1);
   ix3029_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_3048, cout=>nx56069z1, dataa=>
      o_data(6), datad=>PWR, cin=>nx16377z1);
   ix3030_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_3050, dataa=>o_data(7), datad=>PWR, 
      cin=>nx56069z1);
   u_lab3_p_sub8_1i275_ix35_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"66bb") 
       port map ( combout=>u_lab3_p_1n7s3_0, cout=>nx63011z19, dataa=>
      u_lab3_p_1n7s3f1(0), datab=>u_lab3_p_1n7s3f2(0), datad=>PWR);
   u_lab3_p_sub8_1i275_ix39_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>u_lab3_p_1n7s3_1, cout=>nx13806z19, dataa=>
      u_lab3_p_1n7s3f1(1), datab=>u_lab3_p_1n7s3f2(1), datad=>PWR, cin=>
      nx63011z19);
   u_lab3_p_sub8_1i275_ix43_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>u_lab3_p_1n7s3_2, cout=>nx17342z19, dataa=>
      u_lab3_p_1n7s3f1(2), datab=>u_lab3_p_1n7s3f2(2), datad=>PWR, cin=>
      nx13806z19);
   u_lab3_p_sub8_1i275_ix47_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>u_lab3_p_1n7s3_3, cout=>nx64525z19, dataa=>
      u_lab3_p_1n7s3f1(3), datab=>u_lab3_p_1n7s3f2(3), datad=>PWR, cin=>
      nx17342z19);
   u_lab3_p_sub8_1i275_ix51_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>u_lab3_p_1n7s3_4, cout=>nx33377z19, dataa=>
      u_lab3_p_1n7s3f1(4), datab=>u_lab3_p_1n7s3f2(4), datad=>PWR, cin=>
      nx64525z19);
   u_lab3_p_sub8_1i275_ix55_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>u_lab3_p_1n7s3_5, cout=>nx63307z19, dataa=>
      u_lab3_p_1n7s3f1(5), datab=>u_lab3_p_1n7s3f2(5), datad=>PWR, cin=>
      nx33377z19);
   u_lab3_p_sub8_1i275_ix59_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>u_lab3_p_1n7s3_6, cout=>nx46976z19, dataa=>
      u_lab3_p_1n7s3f1(6), datab=>u_lab3_p_1n7s3f2(6), datad=>PWR, cin=>
      nx63307z19);
   u_lab3_p_sub8_1i275_ix63_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"694d",
         sum_lutc_input => "cin") 
       port map ( combout=>u_lab3_p_1n7s3_7, cout=>nx17564z1, dataa=>
      u_lab3_p_1n7s3f1(7), datab=>u_lab3_p_1n7s3f2(7), datad=>PWR, cin=>
      nx46976z19);
   u_lab3_p_add9_1i276_ix60_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"005f",
         sum_lutc_input => "cin") 
       port map ( cout=>nx49424z1, dataa=>nx57902z1, datad=>PWR, cin=>
      u_lab3_p_1n7s3_9);
   ix3639_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"a0a0",
         sum_lutc_input => "cin") 
       port map ( combout=>u_lab3_p_1n7s2_31, dataa=>u_lab3_p_1n7s3_9, datad
      =>PWR, cin=>nx49424z1);
   u_lab3_p_add9_1i276_ix44_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx43842z1, dataa=>u_lab3_p_1n7s3_0, datab=>i_data(0), 
      datad=>PWR);
   u_lab3_p_add9_1i276_ix46_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx59416z1, dataa=>u_lab3_p_1n7s3_1, datab=>i_data(1), 
      datad=>PWR, cin=>nx43842z1);
   u_lab3_p_add9_1i276_ix48_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx27511z1, dataa=>u_lab3_p_1n7s3_2, datab=>i_data(2), 
      datad=>PWR, cin=>nx59416z1);
   u_lab3_p_add9_1i276_ix50_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx43085z1, dataa=>u_lab3_p_1n7s3_3, datab=>i_data(3), 
      datad=>PWR, cin=>nx27511z1);
   u_lab3_p_add9_1i276_ix52_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx6877z1, dataa=>u_lab3_p_1n7s3_4, datab=>i_data(4), 
      datad=>PWR, cin=>nx43085z1);
   u_lab3_p_add9_1i276_ix54_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx56839z1, dataa=>u_lab3_p_1n7s3_5, datab=>i_data(5), 
      datad=>PWR, cin=>nx6877z1);
   u_lab3_p_add9_1i276_ix56_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx41265z1, dataa=>u_lab3_p_1n7s3_6, datab=>i_data(6), 
      datad=>PWR, cin=>nx56839z1);
   u_lab3_p_add9_1i276_ix58_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx19195z1, dataa=>u_lab3_p_1n7s3_7, datab=>i_data(7), 
      datad=>PWR, cin=>nx41265z1);
   u_lab3_p_sub8_1i275_ix63_fadd_buf : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0f0",
         sum_lutc_input => "cin") 
       port map ( combout=>u_lab3_p_1n7s3_9, datad=>PWR, cin=>nx17564z1);
   u_lab3_p_add9_1i276_ix58_fadd_buf : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0f0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57902z1, datad=>PWR, cin=>nx19195z1);
   u_lab3_reg_addend_15_7 : dffeas port map ( q=>u_lab3_addend_15(7), d=>
      i_data(7), clk=>clk, ena=>nx16929z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_15_7 : dffeas port map ( q=>u_lab3_subtrahend_15(7), 
      d=>nx13001z1, clk=>clk, ena=>nx13001z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_14_7 : dffeas port map ( q=>u_lab3_addend_14(7), d=>
      i_data(7), clk=>clk, ena=>nx22064z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_14_7 : dffeas port map ( q=>u_lab3_subtrahend_14(7), 
      d=>nx18136z1, clk=>clk, ena=>nx18136z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_13_7 : dffeas port map ( q=>u_lab3_addend_13(7), d=>
      i_data(7), clk=>clk, ena=>nx27199z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_13_7 : dffeas port map ( q=>u_lab3_subtrahend_13(7), 
      d=>nx23271z1, clk=>clk, ena=>nx23271z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_12_7 : dffeas port map ( q=>u_lab3_addend_12(7), d=>
      i_data(7), clk=>clk, ena=>nx32334z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_12_7 : dffeas port map ( q=>u_lab3_subtrahend_12(7), 
      d=>nx28406z1, clk=>clk, ena=>nx28406z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_11_7 : dffeas port map ( q=>u_lab3_addend_11(7), d=>
      i_data(7), clk=>clk, ena=>nx37469z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_11_7 : dffeas port map ( q=>u_lab3_subtrahend_11(7), 
      d=>nx33541z1, clk=>clk, ena=>nx33541z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_10_7 : dffeas port map ( q=>u_lab3_addend_10(7), d=>
      i_data(7), clk=>clk, ena=>nx42604z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_10_7 : dffeas port map ( q=>u_lab3_subtrahend_10(7), 
      d=>nx38676z1, clk=>clk, ena=>nx38676z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_9_7 : dffeas port map ( q=>u_lab3_addend_9(7), d=>
      i_data(7), clk=>clk, ena=>nx64440z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_9_7 : dffeas port map ( q=>u_lab3_subtrahend_9(7), 
      d=>nx34864z1, clk=>clk, ena=>nx34864z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_8_7 : dffeas port map ( q=>u_lab3_addend_8(7), d=>
      i_data(7), clk=>clk, ena=>nx6231z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_8_7 : dffeas port map ( q=>u_lab3_subtrahend_8(7), 
      d=>nx29729z1, clk=>clk, ena=>nx29729z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_7_7 : dffeas port map ( q=>u_lab3_addend_7(7), d=>
      i_data(7), clk=>clk, ena=>nx11366z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_7_7 : dffeas port map ( q=>u_lab3_subtrahend_7(7), 
      d=>nx40942z1, clk=>clk, ena=>nx40942z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_6_7 : dffeas port map ( q=>u_lab3_addend_6(7), d=>
      i_data(7), clk=>clk, ena=>nx16501z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_6_7 : dffeas port map ( q=>u_lab3_subtrahend_6(7), 
      d=>nx46077z1, clk=>clk, ena=>nx46077z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_5_7 : dffeas port map ( q=>u_lab3_addend_5(7), d=>
      i_data(7), clk=>clk, ena=>nx21636z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_5_7 : dffeas port map ( q=>u_lab3_subtrahend_5(7), 
      d=>nx51212z1, clk=>clk, ena=>nx51212z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_4_7 : dffeas port map ( q=>u_lab3_addend_4(7), d=>
      i_data(7), clk=>clk, ena=>nx26771z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_4_7 : dffeas port map ( q=>u_lab3_subtrahend_4(7), 
      d=>nx56347z1, clk=>clk, ena=>nx56347z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_3_7 : dffeas port map ( q=>u_lab3_addend_3(7), d=>
      i_data(7), clk=>clk, ena=>nx31906z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_3_7 : dffeas port map ( q=>u_lab3_subtrahend_3(7), 
      d=>nx61482z1, clk=>clk, ena=>nx61482z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_2_7 : dffeas port map ( q=>u_lab3_addend_2(7), d=>
      i_data(7), clk=>clk, ena=>nx37041z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_2_7 : dffeas port map ( q=>u_lab3_subtrahend_2(7), 
      d=>nx1081z1, clk=>clk, ena=>nx1081z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_1_7 : dffeas port map ( q=>u_lab3_addend_1(7), d=>
      i_data(7), clk=>clk, ena=>nx42176z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_1_7 : dffeas port map ( q=>u_lab3_subtrahend_1(7), 
      d=>nx6216z1, clk=>clk, ena=>nx6216z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_0_7 : dffeas port map ( q=>u_lab3_addend_0(7), d=>
      i_data(7), clk=>clk, ena=>nx47311z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_0_7 : dffeas port map ( q=>u_lab3_subtrahend_0(7), 
      d=>nx11351z1, clk=>clk, ena=>nx11351z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_15_6 : dffeas port map ( q=>u_lab3_addend_15(6), d=>
      i_data(6), clk=>clk, ena=>nx16929z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_15_6 : dffeas port map ( q=>u_lab3_subtrahend_15(6), 
      d=>nx12004z1, clk=>clk, ena=>nx13001z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_14_6 : dffeas port map ( q=>u_lab3_addend_14(6), d=>
      i_data(6), clk=>clk, ena=>nx22064z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_14_6 : dffeas port map ( q=>u_lab3_subtrahend_14(6), 
      d=>nx17139z1, clk=>clk, ena=>nx18136z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_13_6 : dffeas port map ( q=>u_lab3_addend_13(6), d=>
      i_data(6), clk=>clk, ena=>nx27199z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_13_6 : dffeas port map ( q=>u_lab3_subtrahend_13(6), 
      d=>nx22274z1, clk=>clk, ena=>nx23271z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_12_6 : dffeas port map ( q=>u_lab3_addend_12(6), d=>
      i_data(6), clk=>clk, ena=>nx32334z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_12_6 : dffeas port map ( q=>u_lab3_subtrahend_12(6), 
      d=>nx27409z1, clk=>clk, ena=>nx28406z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_11_6 : dffeas port map ( q=>u_lab3_addend_11(6), d=>
      i_data(6), clk=>clk, ena=>nx37469z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_11_6 : dffeas port map ( q=>u_lab3_subtrahend_11(6), 
      d=>nx32544z1, clk=>clk, ena=>nx33541z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_10_6 : dffeas port map ( q=>u_lab3_addend_10(6), d=>
      i_data(6), clk=>clk, ena=>nx42604z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_10_6 : dffeas port map ( q=>u_lab3_subtrahend_10(6), 
      d=>nx37679z1, clk=>clk, ena=>nx38676z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_9_6 : dffeas port map ( q=>u_lab3_addend_9(6), d=>
      i_data(6), clk=>clk, ena=>nx64440z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_9_6 : dffeas port map ( q=>u_lab3_subtrahend_9(6), 
      d=>nx35861z1, clk=>clk, ena=>nx34864z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_8_6 : dffeas port map ( q=>u_lab3_addend_8(6), d=>
      i_data(6), clk=>clk, ena=>nx6231z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_8_6 : dffeas port map ( q=>u_lab3_subtrahend_8(6), 
      d=>nx30726z1, clk=>clk, ena=>nx29729z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_7_6 : dffeas port map ( q=>u_lab3_addend_7(6), d=>
      i_data(6), clk=>clk, ena=>nx11366z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_7_6 : dffeas port map ( q=>u_lab3_subtrahend_7(6), 
      d=>nx39945z1, clk=>clk, ena=>nx40942z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_6_6 : dffeas port map ( q=>u_lab3_addend_6(6), d=>
      i_data(6), clk=>clk, ena=>nx16501z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_6_6 : dffeas port map ( q=>u_lab3_subtrahend_6(6), 
      d=>nx45080z1, clk=>clk, ena=>nx46077z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_5_6 : dffeas port map ( q=>u_lab3_addend_5(6), d=>
      i_data(6), clk=>clk, ena=>nx21636z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_5_6 : dffeas port map ( q=>u_lab3_subtrahend_5(6), 
      d=>nx50215z1, clk=>clk, ena=>nx51212z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_4_6 : dffeas port map ( q=>u_lab3_addend_4(6), d=>
      i_data(6), clk=>clk, ena=>nx26771z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_4_6 : dffeas port map ( q=>u_lab3_subtrahend_4(6), 
      d=>nx55350z1, clk=>clk, ena=>nx56347z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_3_6 : dffeas port map ( q=>u_lab3_addend_3(6), d=>
      i_data(6), clk=>clk, ena=>nx31906z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_3_6 : dffeas port map ( q=>u_lab3_subtrahend_3(6), 
      d=>nx60485z1, clk=>clk, ena=>nx61482z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_2_6 : dffeas port map ( q=>u_lab3_addend_2(6), d=>
      i_data(6), clk=>clk, ena=>nx37041z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_2_6 : dffeas port map ( q=>u_lab3_subtrahend_2(6), 
      d=>nx84z1, clk=>clk, ena=>nx1081z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_1_6 : dffeas port map ( q=>u_lab3_addend_1(6), d=>
      i_data(6), clk=>clk, ena=>nx42176z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_1_6 : dffeas port map ( q=>u_lab3_subtrahend_1(6), 
      d=>nx5219z1, clk=>clk, ena=>nx6216z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_0_6 : dffeas port map ( q=>u_lab3_addend_0(6), d=>
      i_data(6), clk=>clk, ena=>nx47311z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_0_6 : dffeas port map ( q=>u_lab3_subtrahend_0(6), 
      d=>nx10354z1, clk=>clk, ena=>nx11351z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_15_5 : dffeas port map ( q=>u_lab3_addend_15(5), d=>
      i_data(5), clk=>clk, ena=>nx16929z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_15_5 : dffeas port map ( q=>u_lab3_subtrahend_15(5), 
      d=>nx11007z1, clk=>clk, ena=>nx13001z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_14_5 : dffeas port map ( q=>u_lab3_addend_14(5), d=>
      i_data(5), clk=>clk, ena=>nx22064z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_14_5 : dffeas port map ( q=>u_lab3_subtrahend_14(5), 
      d=>nx16142z1, clk=>clk, ena=>nx18136z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_13_5 : dffeas port map ( q=>u_lab3_addend_13(5), d=>
      i_data(5), clk=>clk, ena=>nx27199z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_13_5 : dffeas port map ( q=>u_lab3_subtrahend_13(5), 
      d=>nx21277z1, clk=>clk, ena=>nx23271z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_12_5 : dffeas port map ( q=>u_lab3_addend_12(5), d=>
      i_data(5), clk=>clk, ena=>nx32334z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_12_5 : dffeas port map ( q=>u_lab3_subtrahend_12(5), 
      d=>nx26412z1, clk=>clk, ena=>nx28406z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_11_5 : dffeas port map ( q=>u_lab3_addend_11(5), d=>
      i_data(5), clk=>clk, ena=>nx37469z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_11_5 : dffeas port map ( q=>u_lab3_subtrahend_11(5), 
      d=>nx31547z1, clk=>clk, ena=>nx33541z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_10_5 : dffeas port map ( q=>u_lab3_addend_10(5), d=>
      i_data(5), clk=>clk, ena=>nx42604z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_10_5 : dffeas port map ( q=>u_lab3_subtrahend_10(5), 
      d=>nx36682z1, clk=>clk, ena=>nx38676z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_9_5 : dffeas port map ( q=>u_lab3_addend_9(5), d=>
      i_data(5), clk=>clk, ena=>nx64440z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_9_5 : dffeas port map ( q=>u_lab3_subtrahend_9(5), 
      d=>nx36858z1, clk=>clk, ena=>nx34864z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_8_5 : dffeas port map ( q=>u_lab3_addend_8(5), d=>
      i_data(5), clk=>clk, ena=>nx6231z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_8_5 : dffeas port map ( q=>u_lab3_subtrahend_8(5), 
      d=>nx31723z1, clk=>clk, ena=>nx29729z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_7_5 : dffeas port map ( q=>u_lab3_addend_7(5), d=>
      i_data(5), clk=>clk, ena=>nx11366z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_7_5 : dffeas port map ( q=>u_lab3_subtrahend_7(5), 
      d=>nx38948z1, clk=>clk, ena=>nx40942z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_6_5 : dffeas port map ( q=>u_lab3_addend_6(5), d=>
      i_data(5), clk=>clk, ena=>nx16501z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_6_5 : dffeas port map ( q=>u_lab3_subtrahend_6(5), 
      d=>nx44083z1, clk=>clk, ena=>nx46077z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_5_5 : dffeas port map ( q=>u_lab3_addend_5(5), d=>
      i_data(5), clk=>clk, ena=>nx21636z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_5_5 : dffeas port map ( q=>u_lab3_subtrahend_5(5), 
      d=>nx49218z1, clk=>clk, ena=>nx51212z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_4_5 : dffeas port map ( q=>u_lab3_addend_4(5), d=>
      i_data(5), clk=>clk, ena=>nx26771z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_4_5 : dffeas port map ( q=>u_lab3_subtrahend_4(5), 
      d=>nx54353z1, clk=>clk, ena=>nx56347z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_3_5 : dffeas port map ( q=>u_lab3_addend_3(5), d=>
      i_data(5), clk=>clk, ena=>nx31906z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_3_5 : dffeas port map ( q=>u_lab3_subtrahend_3(5), 
      d=>nx59488z1, clk=>clk, ena=>nx61482z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_2_5 : dffeas port map ( q=>u_lab3_addend_2(5), d=>
      i_data(5), clk=>clk, ena=>nx37041z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_2_5 : dffeas port map ( q=>u_lab3_subtrahend_2(5), 
      d=>nx64623z1, clk=>clk, ena=>nx1081z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_1_5 : dffeas port map ( q=>u_lab3_addend_1(5), d=>
      i_data(5), clk=>clk, ena=>nx42176z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_1_5 : dffeas port map ( q=>u_lab3_subtrahend_1(5), 
      d=>nx4222z1, clk=>clk, ena=>nx6216z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_0_5 : dffeas port map ( q=>u_lab3_addend_0(5), d=>
      i_data(5), clk=>clk, ena=>nx47311z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_0_5 : dffeas port map ( q=>u_lab3_subtrahend_0(5), 
      d=>nx9357z1, clk=>clk, ena=>nx11351z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_15_4 : dffeas port map ( q=>u_lab3_addend_15(4), d=>
      i_data(4), clk=>clk, ena=>nx16929z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_15_4 : dffeas port map ( q=>u_lab3_subtrahend_15(4), 
      d=>nx10010z1, clk=>clk, ena=>nx13001z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_14_4 : dffeas port map ( q=>u_lab3_addend_14(4), d=>
      i_data(4), clk=>clk, ena=>nx22064z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_14_4 : dffeas port map ( q=>u_lab3_subtrahend_14(4), 
      d=>nx15145z1, clk=>clk, ena=>nx18136z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_13_4 : dffeas port map ( q=>u_lab3_addend_13(4), d=>
      i_data(4), clk=>clk, ena=>nx27199z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_13_4 : dffeas port map ( q=>u_lab3_subtrahend_13(4), 
      d=>nx20280z1, clk=>clk, ena=>nx23271z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_12_4 : dffeas port map ( q=>u_lab3_addend_12(4), d=>
      i_data(4), clk=>clk, ena=>nx32334z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_12_4 : dffeas port map ( q=>u_lab3_subtrahend_12(4), 
      d=>nx25415z1, clk=>clk, ena=>nx28406z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_11_4 : dffeas port map ( q=>u_lab3_addend_11(4), d=>
      i_data(4), clk=>clk, ena=>nx37469z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_11_4 : dffeas port map ( q=>u_lab3_subtrahend_11(4), 
      d=>nx30550z1, clk=>clk, ena=>nx33541z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_10_4 : dffeas port map ( q=>u_lab3_addend_10(4), d=>
      i_data(4), clk=>clk, ena=>nx42604z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_10_4 : dffeas port map ( q=>u_lab3_subtrahend_10(4), 
      d=>nx35685z1, clk=>clk, ena=>nx38676z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_9_4 : dffeas port map ( q=>u_lab3_addend_9(4), d=>
      i_data(4), clk=>clk, ena=>nx64440z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_9_4 : dffeas port map ( q=>u_lab3_subtrahend_9(4), 
      d=>nx37855z1, clk=>clk, ena=>nx34864z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_8_4 : dffeas port map ( q=>u_lab3_addend_8(4), d=>
      i_data(4), clk=>clk, ena=>nx6231z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_8_4 : dffeas port map ( q=>u_lab3_subtrahend_8(4), 
      d=>nx32720z1, clk=>clk, ena=>nx29729z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_7_4 : dffeas port map ( q=>u_lab3_addend_7(4), d=>
      i_data(4), clk=>clk, ena=>nx11366z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_7_4 : dffeas port map ( q=>u_lab3_subtrahend_7(4), 
      d=>nx37951z1, clk=>clk, ena=>nx40942z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_6_4 : dffeas port map ( q=>u_lab3_addend_6(4), d=>
      i_data(4), clk=>clk, ena=>nx16501z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_6_4 : dffeas port map ( q=>u_lab3_subtrahend_6(4), 
      d=>nx43086z1, clk=>clk, ena=>nx46077z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_5_4 : dffeas port map ( q=>u_lab3_addend_5(4), d=>
      i_data(4), clk=>clk, ena=>nx21636z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_5_4 : dffeas port map ( q=>u_lab3_subtrahend_5(4), 
      d=>nx48221z1, clk=>clk, ena=>nx51212z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_4_4 : dffeas port map ( q=>u_lab3_addend_4(4), d=>
      i_data(4), clk=>clk, ena=>nx26771z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_4_4 : dffeas port map ( q=>u_lab3_subtrahend_4(4), 
      d=>nx53356z1, clk=>clk, ena=>nx56347z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_3_4 : dffeas port map ( q=>u_lab3_addend_3(4), d=>
      i_data(4), clk=>clk, ena=>nx31906z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_3_4 : dffeas port map ( q=>u_lab3_subtrahend_3(4), 
      d=>nx58491z1, clk=>clk, ena=>nx61482z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_2_4 : dffeas port map ( q=>u_lab3_addend_2(4), d=>
      i_data(4), clk=>clk, ena=>nx37041z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_2_4 : dffeas port map ( q=>u_lab3_subtrahend_2(4), 
      d=>nx63626z1, clk=>clk, ena=>nx1081z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_1_4 : dffeas port map ( q=>u_lab3_addend_1(4), d=>
      i_data(4), clk=>clk, ena=>nx42176z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_1_4 : dffeas port map ( q=>u_lab3_subtrahend_1(4), 
      d=>nx3225z1, clk=>clk, ena=>nx6216z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_0_4 : dffeas port map ( q=>u_lab3_addend_0(4), d=>
      i_data(4), clk=>clk, ena=>nx47311z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_0_4 : dffeas port map ( q=>u_lab3_subtrahend_0(4), 
      d=>nx8360z1, clk=>clk, ena=>nx11351z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_15_3 : dffeas port map ( q=>u_lab3_addend_15(3), d=>
      i_data(3), clk=>clk, ena=>nx16929z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_15_3 : dffeas port map ( q=>u_lab3_subtrahend_15(3), 
      d=>nx9013z1, clk=>clk, ena=>nx13001z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_14_3 : dffeas port map ( q=>u_lab3_addend_14(3), d=>
      i_data(3), clk=>clk, ena=>nx22064z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_14_3 : dffeas port map ( q=>u_lab3_subtrahend_14(3), 
      d=>nx14148z1, clk=>clk, ena=>nx18136z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_13_3 : dffeas port map ( q=>u_lab3_addend_13(3), d=>
      i_data(3), clk=>clk, ena=>nx27199z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_13_3 : dffeas port map ( q=>u_lab3_subtrahend_13(3), 
      d=>nx19283z1, clk=>clk, ena=>nx23271z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_12_3 : dffeas port map ( q=>u_lab3_addend_12(3), d=>
      i_data(3), clk=>clk, ena=>nx32334z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_12_3 : dffeas port map ( q=>u_lab3_subtrahend_12(3), 
      d=>nx24418z1, clk=>clk, ena=>nx28406z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_11_3 : dffeas port map ( q=>u_lab3_addend_11(3), d=>
      i_data(3), clk=>clk, ena=>nx37469z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_11_3 : dffeas port map ( q=>u_lab3_subtrahend_11(3), 
      d=>nx29553z1, clk=>clk, ena=>nx33541z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_10_3 : dffeas port map ( q=>u_lab3_addend_10(3), d=>
      i_data(3), clk=>clk, ena=>nx42604z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_10_3 : dffeas port map ( q=>u_lab3_subtrahend_10(3), 
      d=>nx34688z1, clk=>clk, ena=>nx38676z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_9_3 : dffeas port map ( q=>u_lab3_addend_9(3), d=>
      i_data(3), clk=>clk, ena=>nx64440z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_9_3 : dffeas port map ( q=>u_lab3_subtrahend_9(3), 
      d=>nx38852z1, clk=>clk, ena=>nx34864z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_8_3 : dffeas port map ( q=>u_lab3_addend_8(3), d=>
      i_data(3), clk=>clk, ena=>nx6231z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_8_3 : dffeas port map ( q=>u_lab3_subtrahend_8(3), 
      d=>nx33717z1, clk=>clk, ena=>nx29729z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_7_3 : dffeas port map ( q=>u_lab3_addend_7(3), d=>
      i_data(3), clk=>clk, ena=>nx11366z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_7_3 : dffeas port map ( q=>u_lab3_subtrahend_7(3), 
      d=>nx36954z1, clk=>clk, ena=>nx40942z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_6_3 : dffeas port map ( q=>u_lab3_addend_6(3), d=>
      i_data(3), clk=>clk, ena=>nx16501z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_6_3 : dffeas port map ( q=>u_lab3_subtrahend_6(3), 
      d=>nx42089z1, clk=>clk, ena=>nx46077z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_5_3 : dffeas port map ( q=>u_lab3_addend_5(3), d=>
      i_data(3), clk=>clk, ena=>nx21636z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_5_3 : dffeas port map ( q=>u_lab3_subtrahend_5(3), 
      d=>nx47224z1, clk=>clk, ena=>nx51212z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_4_3 : dffeas port map ( q=>u_lab3_addend_4(3), d=>
      i_data(3), clk=>clk, ena=>nx26771z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_4_3 : dffeas port map ( q=>u_lab3_subtrahend_4(3), 
      d=>nx52359z1, clk=>clk, ena=>nx56347z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_3_3 : dffeas port map ( q=>u_lab3_addend_3(3), d=>
      i_data(3), clk=>clk, ena=>nx31906z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_3_3 : dffeas port map ( q=>u_lab3_subtrahend_3(3), 
      d=>nx57494z1, clk=>clk, ena=>nx61482z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_2_3 : dffeas port map ( q=>u_lab3_addend_2(3), d=>
      i_data(3), clk=>clk, ena=>nx37041z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_2_3 : dffeas port map ( q=>u_lab3_subtrahend_2(3), 
      d=>nx62629z1, clk=>clk, ena=>nx1081z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_1_3 : dffeas port map ( q=>u_lab3_addend_1(3), d=>
      i_data(3), clk=>clk, ena=>nx42176z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_1_3 : dffeas port map ( q=>u_lab3_subtrahend_1(3), 
      d=>nx2228z1, clk=>clk, ena=>nx6216z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_0_3 : dffeas port map ( q=>u_lab3_addend_0(3), d=>
      i_data(3), clk=>clk, ena=>nx47311z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_0_3 : dffeas port map ( q=>u_lab3_subtrahend_0(3), 
      d=>nx7363z1, clk=>clk, ena=>nx11351z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_15_2 : dffeas port map ( q=>u_lab3_addend_15(2), d=>
      i_data(2), clk=>clk, ena=>nx16929z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_15_2 : dffeas port map ( q=>u_lab3_subtrahend_15(2), 
      d=>nx8016z1, clk=>clk, ena=>nx13001z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_14_2 : dffeas port map ( q=>u_lab3_addend_14(2), d=>
      i_data(2), clk=>clk, ena=>nx22064z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_14_2 : dffeas port map ( q=>u_lab3_subtrahend_14(2), 
      d=>nx13151z1, clk=>clk, ena=>nx18136z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_13_2 : dffeas port map ( q=>u_lab3_addend_13(2), d=>
      i_data(2), clk=>clk, ena=>nx27199z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_13_2 : dffeas port map ( q=>u_lab3_subtrahend_13(2), 
      d=>nx18286z1, clk=>clk, ena=>nx23271z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_12_2 : dffeas port map ( q=>u_lab3_addend_12(2), d=>
      i_data(2), clk=>clk, ena=>nx32334z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_12_2 : dffeas port map ( q=>u_lab3_subtrahend_12(2), 
      d=>nx23421z1, clk=>clk, ena=>nx28406z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_11_2 : dffeas port map ( q=>u_lab3_addend_11(2), d=>
      i_data(2), clk=>clk, ena=>nx37469z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_11_2 : dffeas port map ( q=>u_lab3_subtrahend_11(2), 
      d=>nx28556z1, clk=>clk, ena=>nx33541z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_10_2 : dffeas port map ( q=>u_lab3_addend_10(2), d=>
      i_data(2), clk=>clk, ena=>nx42604z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_10_2 : dffeas port map ( q=>u_lab3_subtrahend_10(2), 
      d=>nx33691z1, clk=>clk, ena=>nx38676z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_9_2 : dffeas port map ( q=>u_lab3_addend_9(2), d=>
      i_data(2), clk=>clk, ena=>nx64440z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_9_2 : dffeas port map ( q=>u_lab3_subtrahend_9(2), 
      d=>nx39849z1, clk=>clk, ena=>nx34864z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_8_2 : dffeas port map ( q=>u_lab3_addend_8(2), d=>
      i_data(2), clk=>clk, ena=>nx6231z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_8_2 : dffeas port map ( q=>u_lab3_subtrahend_8(2), 
      d=>nx34714z1, clk=>clk, ena=>nx29729z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_7_2 : dffeas port map ( q=>u_lab3_addend_7(2), d=>
      i_data(2), clk=>clk, ena=>nx11366z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_7_2 : dffeas port map ( q=>u_lab3_subtrahend_7(2), 
      d=>nx35957z1, clk=>clk, ena=>nx40942z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_6_2 : dffeas port map ( q=>u_lab3_addend_6(2), d=>
      i_data(2), clk=>clk, ena=>nx16501z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_6_2 : dffeas port map ( q=>u_lab3_subtrahend_6(2), 
      d=>nx41092z1, clk=>clk, ena=>nx46077z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_5_2 : dffeas port map ( q=>u_lab3_addend_5(2), d=>
      i_data(2), clk=>clk, ena=>nx21636z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_5_2 : dffeas port map ( q=>u_lab3_subtrahend_5(2), 
      d=>nx46227z1, clk=>clk, ena=>nx51212z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_4_2 : dffeas port map ( q=>u_lab3_addend_4(2), d=>
      i_data(2), clk=>clk, ena=>nx26771z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_4_2 : dffeas port map ( q=>u_lab3_subtrahend_4(2), 
      d=>nx51362z1, clk=>clk, ena=>nx56347z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_3_2 : dffeas port map ( q=>u_lab3_addend_3(2), d=>
      i_data(2), clk=>clk, ena=>nx31906z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_3_2 : dffeas port map ( q=>u_lab3_subtrahend_3(2), 
      d=>nx56497z1, clk=>clk, ena=>nx61482z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_2_2 : dffeas port map ( q=>u_lab3_addend_2(2), d=>
      i_data(2), clk=>clk, ena=>nx37041z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_2_2 : dffeas port map ( q=>u_lab3_subtrahend_2(2), 
      d=>nx61632z1, clk=>clk, ena=>nx1081z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_1_2 : dffeas port map ( q=>u_lab3_addend_1(2), d=>
      i_data(2), clk=>clk, ena=>nx42176z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_1_2 : dffeas port map ( q=>u_lab3_subtrahend_1(2), 
      d=>nx1231z1, clk=>clk, ena=>nx6216z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_0_2 : dffeas port map ( q=>u_lab3_addend_0(2), d=>
      i_data(2), clk=>clk, ena=>nx47311z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_0_2 : dffeas port map ( q=>u_lab3_subtrahend_0(2), 
      d=>nx6366z1, clk=>clk, ena=>nx11351z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_15_1 : dffeas port map ( q=>u_lab3_addend_15(1), d=>
      i_data(1), clk=>clk, ena=>nx16929z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_15_1 : dffeas port map ( q=>u_lab3_subtrahend_15(1), 
      d=>nx7019z1, clk=>clk, ena=>nx13001z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_14_1 : dffeas port map ( q=>u_lab3_addend_14(1), d=>
      i_data(1), clk=>clk, ena=>nx22064z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_14_1 : dffeas port map ( q=>u_lab3_subtrahend_14(1), 
      d=>nx12154z1, clk=>clk, ena=>nx18136z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_13_1 : dffeas port map ( q=>u_lab3_addend_13(1), d=>
      i_data(1), clk=>clk, ena=>nx27199z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_13_1 : dffeas port map ( q=>u_lab3_subtrahend_13(1), 
      d=>nx17289z1, clk=>clk, ena=>nx23271z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_12_1 : dffeas port map ( q=>u_lab3_addend_12(1), d=>
      i_data(1), clk=>clk, ena=>nx32334z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_12_1 : dffeas port map ( q=>u_lab3_subtrahend_12(1), 
      d=>nx22424z1, clk=>clk, ena=>nx28406z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_11_1 : dffeas port map ( q=>u_lab3_addend_11(1), d=>
      i_data(1), clk=>clk, ena=>nx37469z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_11_1 : dffeas port map ( q=>u_lab3_subtrahend_11(1), 
      d=>nx27559z1, clk=>clk, ena=>nx33541z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_10_1 : dffeas port map ( q=>u_lab3_addend_10(1), d=>
      i_data(1), clk=>clk, ena=>nx42604z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_10_1 : dffeas port map ( q=>u_lab3_subtrahend_10(1), 
      d=>nx32694z1, clk=>clk, ena=>nx38676z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_9_1 : dffeas port map ( q=>u_lab3_addend_9(1), d=>
      i_data(1), clk=>clk, ena=>nx64440z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_9_1 : dffeas port map ( q=>u_lab3_subtrahend_9(1), 
      d=>nx40846z1, clk=>clk, ena=>nx34864z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_8_1 : dffeas port map ( q=>u_lab3_addend_8(1), d=>
      i_data(1), clk=>clk, ena=>nx6231z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_8_1 : dffeas port map ( q=>u_lab3_subtrahend_8(1), 
      d=>nx35711z1, clk=>clk, ena=>nx29729z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_7_1 : dffeas port map ( q=>u_lab3_addend_7(1), d=>
      i_data(1), clk=>clk, ena=>nx11366z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_7_1 : dffeas port map ( q=>u_lab3_subtrahend_7(1), 
      d=>nx34960z1, clk=>clk, ena=>nx40942z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_6_1 : dffeas port map ( q=>u_lab3_addend_6(1), d=>
      i_data(1), clk=>clk, ena=>nx16501z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_6_1 : dffeas port map ( q=>u_lab3_subtrahend_6(1), 
      d=>nx40095z1, clk=>clk, ena=>nx46077z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_5_1 : dffeas port map ( q=>u_lab3_addend_5(1), d=>
      i_data(1), clk=>clk, ena=>nx21636z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_5_1 : dffeas port map ( q=>u_lab3_subtrahend_5(1), 
      d=>nx45230z1, clk=>clk, ena=>nx51212z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_4_1 : dffeas port map ( q=>u_lab3_addend_4(1), d=>
      i_data(1), clk=>clk, ena=>nx26771z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_4_1 : dffeas port map ( q=>u_lab3_subtrahend_4(1), 
      d=>nx50365z1, clk=>clk, ena=>nx56347z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_3_1 : dffeas port map ( q=>u_lab3_addend_3(1), d=>
      i_data(1), clk=>clk, ena=>nx31906z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_3_1 : dffeas port map ( q=>u_lab3_subtrahend_3(1), 
      d=>nx55500z1, clk=>clk, ena=>nx61482z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_2_1 : dffeas port map ( q=>u_lab3_addend_2(1), d=>
      i_data(1), clk=>clk, ena=>nx37041z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_2_1 : dffeas port map ( q=>u_lab3_subtrahend_2(1), 
      d=>nx60635z1, clk=>clk, ena=>nx1081z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_1_1 : dffeas port map ( q=>u_lab3_addend_1(1), d=>
      i_data(1), clk=>clk, ena=>nx42176z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_1_1 : dffeas port map ( q=>u_lab3_subtrahend_1(1), 
      d=>nx234z1, clk=>clk, ena=>nx6216z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_0_1 : dffeas port map ( q=>u_lab3_addend_0(1), d=>
      i_data(1), clk=>clk, ena=>nx47311z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_0_1 : dffeas port map ( q=>u_lab3_subtrahend_0(1), 
      d=>nx5369z1, clk=>clk, ena=>nx11351z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_15_0 : dffeas port map ( q=>u_lab3_addend_15(0), d=>
      i_data(0), clk=>clk, ena=>nx16929z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_15_0 : dffeas port map ( q=>u_lab3_subtrahend_15(0), 
      d=>nx6022z1, clk=>clk, ena=>nx13001z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_14_0 : dffeas port map ( q=>u_lab3_addend_14(0), d=>
      i_data(0), clk=>clk, ena=>nx22064z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_14_0 : dffeas port map ( q=>u_lab3_subtrahend_14(0), 
      d=>nx11157z1, clk=>clk, ena=>nx18136z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_13_0 : dffeas port map ( q=>u_lab3_addend_13(0), d=>
      i_data(0), clk=>clk, ena=>nx27199z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_13_0 : dffeas port map ( q=>u_lab3_subtrahend_13(0), 
      d=>nx16292z1, clk=>clk, ena=>nx23271z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_12_0 : dffeas port map ( q=>u_lab3_addend_12(0), d=>
      i_data(0), clk=>clk, ena=>nx32334z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_12_0 : dffeas port map ( q=>u_lab3_subtrahend_12(0), 
      d=>nx21427z1, clk=>clk, ena=>nx28406z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_11_0 : dffeas port map ( q=>u_lab3_addend_11(0), d=>
      i_data(0), clk=>clk, ena=>nx37469z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_11_0 : dffeas port map ( q=>u_lab3_subtrahend_11(0), 
      d=>nx26562z1, clk=>clk, ena=>nx33541z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_10_0 : dffeas port map ( q=>u_lab3_addend_10(0), d=>
      i_data(0), clk=>clk, ena=>nx42604z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_10_0 : dffeas port map ( q=>u_lab3_subtrahend_10(0), 
      d=>nx31697z1, clk=>clk, ena=>nx38676z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_9_0 : dffeas port map ( q=>u_lab3_addend_9(0), d=>
      i_data(0), clk=>clk, ena=>nx64440z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_9_0 : dffeas port map ( q=>u_lab3_subtrahend_9(0), 
      d=>nx41843z14, clk=>clk, ena=>nx34864z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_8_0 : dffeas port map ( q=>u_lab3_addend_8(0), d=>
      i_data(0), clk=>clk, ena=>nx6231z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_8_0 : dffeas port map ( q=>u_lab3_subtrahend_8(0), 
      d=>nx36708z1, clk=>clk, ena=>nx29729z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_7_0 : dffeas port map ( q=>u_lab3_addend_7(0), d=>
      i_data(0), clk=>clk, ena=>nx11366z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_7_0 : dffeas port map ( q=>u_lab3_subtrahend_7(0), 
      d=>nx33963z1, clk=>clk, ena=>nx40942z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_6_0 : dffeas port map ( q=>u_lab3_addend_6(0), d=>
      i_data(0), clk=>clk, ena=>nx16501z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_6_0 : dffeas port map ( q=>u_lab3_subtrahend_6(0), 
      d=>nx39098z1, clk=>clk, ena=>nx46077z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_5_0 : dffeas port map ( q=>u_lab3_addend_5(0), d=>
      i_data(0), clk=>clk, ena=>nx21636z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_5_0 : dffeas port map ( q=>u_lab3_subtrahend_5(0), 
      d=>nx44233z1, clk=>clk, ena=>nx51212z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_4_0 : dffeas port map ( q=>u_lab3_addend_4(0), d=>
      i_data(0), clk=>clk, ena=>nx26771z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_4_0 : dffeas port map ( q=>u_lab3_subtrahend_4(0), 
      d=>nx49368z1, clk=>clk, ena=>nx56347z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_3_0 : dffeas port map ( q=>u_lab3_addend_3(0), d=>
      i_data(0), clk=>clk, ena=>nx31906z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_3_0 : dffeas port map ( q=>u_lab3_subtrahend_3(0), 
      d=>nx54503z1, clk=>clk, ena=>nx61482z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_2_0 : dffeas port map ( q=>u_lab3_addend_2(0), d=>
      i_data(0), clk=>clk, ena=>nx37041z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_2_0 : dffeas port map ( q=>u_lab3_subtrahend_2(0), 
      d=>nx59638z1, clk=>clk, ena=>nx1081z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_1_0 : dffeas port map ( q=>u_lab3_addend_1(0), d=>
      i_data(0), clk=>clk, ena=>nx42176z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_1_0 : dffeas port map ( q=>u_lab3_subtrahend_1(0), 
      d=>nx64773z1, clk=>clk, ena=>nx6216z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_addend_0_0 : dffeas port map ( q=>u_lab3_addend_0(0), d=>
      i_data(0), clk=>clk, ena=>nx47311z1, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_not_state_3, sload=>led_5_EXMPLR37);
   u_lab3_reg_subtrahend_0_0 : dffeas port map ( q=>u_lab3_subtrahend_0(0), 
      d=>nx4372z1, clk=>clk, ena=>nx11351z2, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   u_lab3_reg_compute_flag : dffeas port map ( q=>u_lab3_compute_flag, d=>
      nx53092z1, clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37);
   u_lab3_reg_p_31 : dffeas port map ( q=>u_lab3_p_31, d=>nx31891z1, clk=>
      clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37);
   yes_uart_u_uart_reg_TxFSM_1 : dffeas port map ( q=>
      yes_uart_u_uart_TxFSM(1), d=>nx45921z1, clk=>clk, ena=>PWR, clrn=>
      reset_n, prn=>PWR, asdata=>led_5_EXMPLR37);
   yes_uart_u_uart_reg_TxFSM_0 : dffeas port map ( q=>
      yes_uart_u_uart_TxFSM(0), d=>nx46918z1, clk=>clk, ena=>PWR, clrn=>
      reset_n, prn=>PWR, asdata=>led_5_EXMPLR37);
   yes_uart_u_uart_reg_Tx_Reg_0 : dffeas port map ( q=>nx57589z1, d=>
      nx29107z1, clk=>clk, ena=>PWR, clrn=>reset_n, prn=>PWR, asdata=>
      NOT_led_5);
   u_lab3_reg_stage_1 : dffeas port map ( q=>u_lab3_stage_1, d=>nx3960z1, 
      clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37);
   u_lab3_reg_o_done : dffeas port map ( q=>seg7_pts_1, d=>nx6634z1, clk=>
      clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37);
   u_lab3_reg_flag : dffeas port map ( q=>u_lab3_flag, d=>nx62976z1, clk=>
      clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37);
   u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4 : dffeas
       port map ( q=>u_seg7_u_dual_seg7_o_char_rtlc6_o_char_6_TE_rtlcGen4, d
      =>nx51544z1, clk=>clk, ena=>u_seg7_u_dual_seg7_load_reg, clrn=>PWR, 
      prn=>PWR, asdata=>led_5_EXMPLR37);
   u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2 : dffeas
       port map ( q=>u_seg7_u_dual_seg7_o_char_rtlc6_o_char_5_TE_rtlcGen2, d
      =>nx28027z1, clk=>clk, ena=>u_seg7_u_dual_seg7_load_reg, clrn=>PWR, 
      prn=>PWR, asdata=>led_5_EXMPLR37);
   u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0 : dffeas
       port map ( q=>u_seg7_u_dual_seg7_o_char_rtlc6_o_char_1_TE_rtlcGen0, d
      =>nx18625z1, clk=>clk, ena=>u_seg7_u_dual_seg7_load_reg, clrn=>PWR, 
      prn=>PWR, asdata=>led_5_EXMPLR37);
   reg_q_7 : dffeas port map ( q=>byte_count(7), d=>inc_d_7, clk=>clk, ena=>
      u_lab3_rtlc0_PS25_n202, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, 
      sclr=>reset, sload=>led_5_EXMPLR37);
   reg_q_6 : dffeas port map ( q=>byte_count(6), d=>inc_d_6, clk=>clk, ena=>
      u_lab3_rtlc0_PS25_n202, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, 
      sclr=>reset, sload=>led_5_EXMPLR37);
   reg_q_5 : dffeas port map ( q=>byte_count(5), d=>inc_d_5, clk=>clk, ena=>
      u_lab3_rtlc0_PS25_n202, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, 
      sclr=>reset, sload=>led_5_EXMPLR37);
   reg_q_4 : dffeas port map ( q=>byte_count(4), d=>inc_d_4, clk=>clk, ena=>
      u_lab3_rtlc0_PS25_n202, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, 
      sclr=>reset, sload=>led_5_EXMPLR37);
   reg_q_3 : dffeas port map ( q=>byte_count(3), d=>inc_d_3, clk=>clk, ena=>
      u_lab3_rtlc0_PS25_n202, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, 
      sclr=>reset, sload=>led_5_EXMPLR37);
   reg_q_2 : dffeas port map ( q=>byte_count(2), d=>inc_d_2, clk=>clk, ena=>
      u_lab3_rtlc0_PS25_n202, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, 
      sclr=>reset, sload=>led_5_EXMPLR37);
   reg_q_1 : dffeas port map ( q=>byte_count(1), d=>inc_d_1, clk=>clk, ena=>
      u_lab3_rtlc0_PS25_n202, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, 
      sclr=>reset, sload=>led_5_EXMPLR37);
   reg_q_0 : dffeas port map ( q=>byte_count(0), d=>inc_d_0, clk=>clk, ena=>
      u_lab3_rtlc0_PS25_n202, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, 
      sclr=>reset, sload=>led_5_EXMPLR37);
   reg_q_10 : dffeas port map ( q=>seg7_en_EXMPLR38(1), d=>inc_d_10, clk=>
      clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, sclr=>
      nx60244z1, sload=>led_5_EXMPLR37);
   reg_q_9 : dffeas port map ( q=>nx47005z1, d=>inc_d_9, clk=>clk, ena=>PWR, 
      clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, sclr=>nx60244z1, sload=>
      led_5_EXMPLR37);
   reg_q_8 : dffeas port map ( q=>nx13374z1, d=>inc_d_8, clk=>clk, ena=>PWR, 
      clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, sclr=>nx60244z1, sload=>
      led_5_EXMPLR37);
   reg_q_7_dup_0 : dffeas port map ( q=>nx63336z1, d=>inc_d_7_dup_2780, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, sclr=>
      nx60244z1, sload=>led_5_EXMPLR37);
   reg_q_6_dup_1 : dffeas port map ( q=>nx62824z1, d=>inc_d_6_dup_2779, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, sclr=>
      nx60244z1, sload=>led_5_EXMPLR37);
   reg_q_5_dup_2 : dffeas port map ( q=>nx28436z1, d=>inc_d_5_dup_2778, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, sclr=>
      nx60244z1, sload=>led_5_EXMPLR37);
   reg_q_4_dup_3 : dffeas port map ( q=>nx55549z1, d=>inc_d_4_dup_2777, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, sclr=>
      nx60244z1, sload=>led_5_EXMPLR37);
   reg_q_3_dup_4 : dffeas port map ( q=>nx25561z1, d=>inc_d_3_dup_2776, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, sclr=>
      nx60244z1, sload=>led_5_EXMPLR37);
   reg_q_2_dup_5 : dffeas port map ( q=>nx41135z1, d=>inc_d_2_dup_2775, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, sclr=>
      nx60244z1, sload=>led_5_EXMPLR37);
   reg_q_1_dup_6 : dffeas port map ( q=>nx9230z1, d=>inc_d_1_dup_2774, clk=>
      clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, sclr=>
      nx60244z1, sload=>led_5_EXMPLR37);
   reg_q_0_dup_7 : dffeas port map ( q=>nx24804z1, d=>inc_d_0_dup_2773, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, sclr=>
      nx60244z1, sload=>led_5_EXMPLR37);
   reg_q_10_dup_8 : dffeas port map ( q=>yes_uart_u_uart_RxDiv(10), d=>
      inc_d_10_dup_2835, clk=>clk, ena=>PWR, clrn=>reset_n, prn=>PWR, asdata
      =>led_5_EXMPLR37, sclr=>nx22863z1, sload=>led_5_EXMPLR37);
   reg_q_9_dup_9 : dffeas port map ( q=>yes_uart_u_uart_RxDiv(9), d=>
      inc_d_9_dup_2834, clk=>clk, ena=>PWR, clrn=>reset_n, prn=>PWR, asdata
      =>led_5_EXMPLR37, sclr=>nx22863z1, sload=>led_5_EXMPLR37);
   reg_q_8_dup_10 : dffeas port map ( q=>yes_uart_u_uart_RxDiv(8), d=>
      inc_d_8_dup_2833, clk=>clk, ena=>PWR, clrn=>reset_n, prn=>PWR, asdata
      =>led_5_EXMPLR37, sclr=>nx22863z1, sload=>led_5_EXMPLR37);
   reg_q_7_dup_11 : dffeas port map ( q=>yes_uart_u_uart_RxDiv(7), d=>
      inc_d_7_dup_2832, clk=>clk, ena=>PWR, clrn=>reset_n, prn=>PWR, asdata
      =>led_5_EXMPLR37, sclr=>nx22863z1, sload=>led_5_EXMPLR37);
   reg_q_6_dup_12 : dffeas port map ( q=>yes_uart_u_uart_RxDiv(6), d=>
      inc_d_6_dup_2830, clk=>clk, ena=>PWR, clrn=>reset_n, prn=>PWR, asdata
      =>led_5_EXMPLR37, sclr=>nx22863z1, sload=>led_5_EXMPLR37);
   reg_q_5_dup_13 : dffeas port map ( q=>yes_uart_u_uart_RxDiv(5), d=>
      inc_d_5_dup_2828, clk=>clk, ena=>PWR, clrn=>reset_n, prn=>PWR, asdata
      =>led_5_EXMPLR37, sclr=>nx22863z1, sload=>led_5_EXMPLR37);
   reg_q_4_dup_14 : dffeas port map ( q=>yes_uart_u_uart_RxDiv(4), d=>
      inc_d_4_dup_2826, clk=>clk, ena=>PWR, clrn=>reset_n, prn=>PWR, asdata
      =>led_5_EXMPLR37, sclr=>nx22863z1, sload=>led_5_EXMPLR37);
   reg_q_3_dup_15 : dffeas port map ( q=>yes_uart_u_uart_RxDiv(3), d=>
      inc_d_3_dup_2824, clk=>clk, ena=>PWR, clrn=>reset_n, prn=>PWR, asdata
      =>led_5_EXMPLR37, sclr=>nx22863z1, sload=>led_5_EXMPLR37);
   reg_q_2_dup_16 : dffeas port map ( q=>yes_uart_u_uart_RxDiv(2), d=>
      inc_d_2_dup_2822, clk=>clk, ena=>PWR, clrn=>reset_n, prn=>PWR, asdata
      =>led_5_EXMPLR37, sclr=>nx22863z1, sload=>led_5_EXMPLR37);
   reg_q_1_dup_17 : dffeas port map ( q=>yes_uart_u_uart_RxDiv(1), d=>
      inc_d_1_dup_2820, clk=>clk, ena=>PWR, clrn=>reset_n, prn=>PWR, asdata
      =>led_5_EXMPLR37, sclr=>nx22863z1, sload=>led_5_EXMPLR37);
   reg_q_0_dup_18 : dffeas port map ( q=>yes_uart_u_uart_RxDiv(0), d=>
      inc_d_0_dup_2818, clk=>clk, ena=>PWR, clrn=>reset_n, prn=>PWR, asdata
      =>led_5_EXMPLR37, sclr=>nx22863z1, sload=>led_5_EXMPLR37);
   reg_q_11 : dffeas port map ( q=>yes_uart_u_uart_TxDiv(11), d=>inc_d_11, 
      clk=>clk, ena=>PWR, clrn=>reset_n, prn=>PWR, asdata=>led_5_EXMPLR37, 
      sclr=>nx62450z1, sload=>led_5_EXMPLR37);
   reg_q_10_dup_19 : dffeas port map ( q=>yes_uart_u_uart_TxDiv(10), d=>
      inc_d_10_dup_2887, clk=>clk, ena=>PWR, clrn=>reset_n, prn=>PWR, asdata
      =>led_5_EXMPLR37, sclr=>nx62450z1, sload=>led_5_EXMPLR37);
   reg_q_9_dup_20 : dffeas port map ( q=>yes_uart_u_uart_TxDiv(9), d=>
      inc_d_9_dup_2885, clk=>clk, ena=>PWR, clrn=>reset_n, prn=>PWR, asdata
      =>led_5_EXMPLR37, sclr=>nx62450z1, sload=>led_5_EXMPLR37);
   reg_q_8_dup_21 : dffeas port map ( q=>yes_uart_u_uart_TxDiv(8), d=>
      inc_d_8_dup_2883, clk=>clk, ena=>PWR, clrn=>reset_n, prn=>PWR, asdata
      =>led_5_EXMPLR37, sclr=>nx62450z1, sload=>led_5_EXMPLR37);
   reg_q_7_dup_22 : dffeas port map ( q=>yes_uart_u_uart_TxDiv(7), d=>
      inc_d_7_dup_2881, clk=>clk, ena=>PWR, clrn=>reset_n, prn=>PWR, asdata
      =>led_5_EXMPLR37, sclr=>nx62450z1, sload=>led_5_EXMPLR37);
   reg_q_6_dup_23 : dffeas port map ( q=>yes_uart_u_uart_TxDiv(6), d=>
      inc_d_6_dup_2879, clk=>clk, ena=>PWR, clrn=>reset_n, prn=>PWR, asdata
      =>led_5_EXMPLR37, sclr=>nx62450z1, sload=>led_5_EXMPLR37);
   reg_q_5_dup_24 : dffeas port map ( q=>yes_uart_u_uart_TxDiv(5), d=>
      inc_d_5_dup_2877, clk=>clk, ena=>PWR, clrn=>reset_n, prn=>PWR, asdata
      =>led_5_EXMPLR37, sclr=>nx62450z1, sload=>led_5_EXMPLR37);
   reg_q_4_dup_25 : dffeas port map ( q=>yes_uart_u_uart_TxDiv(4), d=>
      inc_d_4_dup_2875, clk=>clk, ena=>PWR, clrn=>reset_n, prn=>PWR, asdata
      =>led_5_EXMPLR37, sclr=>nx62450z1, sload=>led_5_EXMPLR37);
   reg_q_3_dup_26 : dffeas port map ( q=>yes_uart_u_uart_TxDiv(3), d=>
      inc_d_3_dup_2873, clk=>clk, ena=>PWR, clrn=>reset_n, prn=>PWR, asdata
      =>led_5_EXMPLR37, sclr=>nx62450z1, sload=>led_5_EXMPLR37);
   reg_q_2_dup_27 : dffeas port map ( q=>yes_uart_u_uart_TxDiv(2), d=>
      inc_d_2_dup_2871, clk=>clk, ena=>PWR, clrn=>reset_n, prn=>PWR, asdata
      =>led_5_EXMPLR37, sclr=>nx62450z1, sload=>led_5_EXMPLR37);
   reg_q_1_dup_28 : dffeas port map ( q=>yes_uart_u_uart_TxDiv(1), d=>
      inc_d_1_dup_2869, clk=>clk, ena=>PWR, clrn=>reset_n, prn=>PWR, asdata
      =>led_5_EXMPLR37, sclr=>nx62450z1, sload=>led_5_EXMPLR37);
   reg_q_0_dup_29 : dffeas port map ( q=>yes_uart_u_uart_TxDiv(0), d=>
      inc_d_0_dup_2867, clk=>clk, ena=>PWR, clrn=>reset_n, prn=>PWR, asdata
      =>led_5_EXMPLR37, sclr=>nx62450z1, sload=>led_5_EXMPLR37);
   reg_q_7_dup_30 : dffeas port map ( q=>o_data(7), d=>inc_d_7_dup_3050, clk
      =>clk, ena=>nx19416z1, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, 
      sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   reg_q_6_dup_31 : dffeas port map ( q=>o_data(6), d=>inc_d_6_dup_3048, clk
      =>clk, ena=>nx19416z1, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, 
      sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   reg_q_5_dup_32 : dffeas port map ( q=>o_data(5), d=>inc_d_5_dup_3046, clk
      =>clk, ena=>nx19416z1, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, 
      sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   reg_q_4_dup_33 : dffeas port map ( q=>o_data(4), d=>inc_d_4_dup_3044, clk
      =>clk, ena=>nx19416z1, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, 
      sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   reg_q_3_dup_34 : dffeas port map ( q=>o_data(3), d=>inc_d_3_dup_3042, clk
      =>clk, ena=>nx19416z1, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, 
      sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   reg_q_2_dup_35 : dffeas port map ( q=>o_data(2), d=>inc_d_2_dup_3040, clk
      =>clk, ena=>nx19416z1, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, 
      sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   reg_q_1_dup_36 : dffeas port map ( q=>o_data(1), d=>inc_d_1_dup_3038, clk
      =>clk, ena=>nx19416z1, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, 
      sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   reg_q_0_dup_37 : dffeas port map ( q=>o_data(0), d=>inc_d_0_dup_3036, clk
      =>clk, ena=>nx19416z1, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, 
      sclr=>u_lab3_state(0), sload=>led_5_EXMPLR37);
   reg_byte_reg_7 : dffeas port map ( q=>byte_reg(7), d=>byte_reg_2n1ss1(7), 
      clk=>clk, ena=>u_lab3_rtlc0_PS25_n202, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>reset, sload=>led_5_EXMPLR37);
   reg_byte_reg_6 : dffeas port map ( q=>byte_reg(6), d=>byte_reg_2n1ss1(6), 
      clk=>clk, ena=>u_lab3_rtlc0_PS25_n202, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>reset, sload=>led_5_EXMPLR37);
   reg_byte_reg_5 : dffeas port map ( q=>byte_reg(5), d=>byte_reg_2n1ss1(5), 
      clk=>clk, ena=>u_lab3_rtlc0_PS25_n202, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>reset, sload=>led_5_EXMPLR37);
   reg_byte_reg_4 : dffeas port map ( q=>byte_reg(4), d=>byte_reg_2n1ss1(4), 
      clk=>clk, ena=>u_lab3_rtlc0_PS25_n202, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>reset, sload=>led_5_EXMPLR37);
   reg_byte_reg_3 : dffeas port map ( q=>byte_reg(3), d=>byte_reg_2n1ss1(3), 
      clk=>clk, ena=>u_lab3_rtlc0_PS25_n202, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>reset, sload=>led_5_EXMPLR37);
   reg_byte_reg_2 : dffeas port map ( q=>byte_reg(2), d=>byte_reg_2n1ss1(2), 
      clk=>clk, ena=>u_lab3_rtlc0_PS25_n202, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>reset, sload=>led_5_EXMPLR37);
   reg_byte_reg_1 : dffeas port map ( q=>byte_reg(1), d=>byte_reg_2n1ss1(1), 
      clk=>clk, ena=>u_lab3_rtlc0_PS25_n202, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>reset, sload=>led_5_EXMPLR37);
   reg_byte_reg_0 : dffeas port map ( q=>byte_reg(0), d=>byte_reg_2n1ss1(0), 
      clk=>clk, ena=>u_lab3_rtlc0_PS25_n202, clrn=>PWR, prn=>PWR, asdata=>
      led_5_EXMPLR37, sclr=>reset, sload=>led_5_EXMPLR37);
   u_lab3_reg_state_4 : dffeas port map ( q=>u_lab3_state(4), d=>nx63348z1, 
      clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, sclr
      =>reset, sload=>led_5_EXMPLR37);
   u_lab3_reg_state_3 : dffeas port map ( q=>u_lab3_state(3), d=>nx62351z1, 
      clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37);
   u_lab3_reg_state_2 : dffeas port map ( q=>u_lab3_state(2), d=>nx61354z1, 
      clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, sclr
      =>reset, sload=>led_5_EXMPLR37);
   u_lab3_reg_state_1 : dffeas port map ( q=>u_lab3_state(1), d=>nx60357z1, 
      clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>led_5_EXMPLR37, sclr
      =>reset, sload=>led_5_EXMPLR37);
   u_lab3_reg_state_0 : dffeas port map ( q=>nx6634z2, d=>nx59360z1, clk=>
      clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>NOT_led_5, sclr=>reset, 
      sload=>led_5_EXMPLR37);
   reg_byte_valid : dffeas port map ( q=>byte_valid, d=>byte_valid_3n0r1, 
      clk=>clk, clrn=>PWR, prn=>PWR);
   u_seg7_u_dual_seg7_reg_prev_reset : dffeas port map ( q=>
      u_seg7_u_dual_seg7_prev_reset, d=>reset, clk=>clk, clrn=>PWR, prn=>PWR
   );
   u_seg7_u_dual_seg7_reg_prev_char0_en : dffeas port map ( q=>
      u_seg7_u_dual_seg7_prev_char0_en, d=>seg7_en_EXMPLR38(0), clk=>clk, 
      clrn=>PWR, prn=>PWR);
   u_seg7_u_dual_seg7_reg_o_char_7 : dffeas port map ( q=>seg7_data(7), d=>
      seg7_pts_1, clk=>clk, ena=>u_seg7_u_dual_seg7_load_reg, clrn=>PWR, prn
      =>PWR);
   u_seg7_u_dual_seg7_reg_o_char_4 : dffeas port map ( q=>seg7_data(4), d=>
      u_seg7_u_dual_seg7_muxed_char_4, clk=>clk, ena=>
      u_seg7_u_dual_seg7_load_reg, clrn=>PWR, prn=>PWR);
   u_seg7_u_dual_seg7_reg_o_char_3 : dffeas port map ( q=>seg7_data(3), d=>
      u_seg7_u_dual_seg7_muxed_char_3, clk=>clk, ena=>
      u_seg7_u_dual_seg7_load_reg, clrn=>PWR, prn=>PWR);
   u_seg7_u_dual_seg7_reg_o_char_2 : dffeas port map ( q=>seg7_data(2), d=>
      u_seg7_u_dual_seg7_muxed_char_2, clk=>clk, ena=>
      u_seg7_u_dual_seg7_load_reg, clrn=>PWR, prn=>PWR);
   u_seg7_u_dual_seg7_reg_o_char_0 : dffeas port map ( q=>seg7_data(0), d=>
      u_seg7_u_dual_seg7_muxed_char_0, clk=>clk, ena=>
      u_seg7_u_dual_seg7_load_reg, clrn=>PWR, prn=>PWR);
   yes_uart_u_uart_reg_Rx_r : dffeas port map ( q=>nx64005z3, d=>NOT_led_4, 
      clk=>clk, clrn=>reset_n, prn=>PWR);
   yes_uart_u_uart_reg_RxDivisor_4 : dffeas port map ( q=>
      yes_uart_u_uart_RxDivisor_4, d=>PWR, clk=>clk, clrn=>reset_n, prn=>PWR
   );
   yes_uart_u_uart_reg_TopRx : dffeas port map ( q=>yes_uart_u_uart_TopRx, d
      =>nx60456z1, clk=>clk, clrn=>reset_n, prn=>PWR);
   yes_uart_u_uart_reg_TopTx : dffeas port map ( q=>yes_uart_u_uart_TopTx, d
      =>nx62450z1, clk=>clk, clrn=>reset_n, prn=>PWR);
   yes_uart_u_uart_reg_TxBusy : dffeas port map ( q=>tx_busy, d=>nx46262z1, 
      clk=>clk, clrn=>reset_n, prn=>PWR);
   yes_uart_u_uart_reg_Tx_Reg_8 : dffeas port map ( q=>nx22128z1, d=>
      NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_8, clk=>clk, ena=>nx21131z1, clrn=>
      reset_n, prn=>PWR);
   yes_uart_u_uart_reg_Tx_Reg_7 : dffeas port map ( q=>nx23125z1, d=>
      NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_7, clk=>clk, ena=>nx21131z1, clrn=>
      reset_n, prn=>PWR);
   yes_uart_u_uart_reg_Tx_Reg_6 : dffeas port map ( q=>nx24122z1, d=>
      NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_6, clk=>clk, ena=>nx21131z1, clrn=>
      reset_n, prn=>PWR);
   yes_uart_u_uart_reg_Tx_Reg_5 : dffeas port map ( q=>nx25119z1, d=>
      NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_5, clk=>clk, ena=>nx21131z1, clrn=>
      reset_n, prn=>PWR);
   yes_uart_u_uart_reg_Tx_Reg_4 : dffeas port map ( q=>nx26116z1, d=>
      NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_4, clk=>clk, ena=>nx21131z1, clrn=>
      reset_n, prn=>PWR);
   yes_uart_u_uart_reg_Tx_Reg_3 : dffeas port map ( q=>nx27113z1, d=>
      NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_3, clk=>clk, ena=>nx21131z1, clrn=>
      reset_n, prn=>PWR);
   yes_uart_u_uart_reg_Tx_Reg_2 : dffeas port map ( q=>nx28110z1, d=>
      NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_2, clk=>clk, ena=>nx21131z1, clrn=>
      reset_n, prn=>PWR);
   yes_uart_u_uart_reg_Tx_Reg_1 : dffeas port map ( q=>nx29107z3, d=>
      NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_1, clk=>clk, ena=>nx21131z1, clrn=>
      reset_n, prn=>PWR);
   yes_uart_u_uart_reg_RxFSM_5 : dffeas port map ( q=>
      yes_uart_u_uart_RxFSM(5), d=>nx2457z1, clk=>clk, ena=>nx64005z1, clrn
      =>reset_n, prn=>PWR);
   yes_uart_u_uart_reg_RxFSM_4 : dffeas port map ( q=>
      yes_uart_u_uart_RxFSM(4), d=>nx1460z1, clk=>clk, ena=>nx64005z1, clrn
      =>reset_n, prn=>PWR);
   yes_uart_u_uart_reg_RxFSM_3 : dffeas port map ( q=>
      yes_uart_u_uart_RxFSM(3), d=>nx463z1, clk=>clk, ena=>nx64005z1, clrn=>
      reset_n, prn=>PWR);
   yes_uart_u_uart_reg_RxFSM_2 : dffeas port map ( q=>
      yes_uart_u_uart_RxFSM(2), d=>nx65002z1, clk=>clk, ena=>nx64005z1, clrn
      =>reset_n, prn=>PWR);
   yes_uart_u_uart_reg_RxFSM_1 : dffeas port map ( q=>
      yes_uart_u_uart_RxFSM(1), d=>yes_uart_u_uart_RxFSM(0), clk=>clk, ena=>
      nx64005z1, clrn=>reset_n, prn=>PWR);
   yes_uart_u_uart_reg_RxFSM_0 : dffeas port map ( q=>nx46026z2, d=>
      nx63008z1, clk=>clk, ena=>nx64005z1, clrn=>reset_n, prn=>PWR);
   yes_uart_u_uart_reg_Dout_7 : dffeas port map ( q=>i_data(7), d=>
      yes_uart_u_uart_Rx_Reg(7), clk=>clk, ena=>nx46463z1, clrn=>reset_n, 
      prn=>PWR);
   yes_uart_u_uart_reg_Dout_6 : dffeas port map ( q=>i_data(6), d=>
      yes_uart_u_uart_Rx_Reg(6), clk=>clk, ena=>nx46463z1, clrn=>reset_n, 
      prn=>PWR);
   yes_uart_u_uart_reg_Dout_5 : dffeas port map ( q=>i_data(5), d=>
      yes_uart_u_uart_Rx_Reg(5), clk=>clk, ena=>nx46463z1, clrn=>reset_n, 
      prn=>PWR);
   yes_uart_u_uart_reg_Dout_4 : dffeas port map ( q=>i_data(4), d=>
      yes_uart_u_uart_Rx_Reg(4), clk=>clk, ena=>nx46463z1, clrn=>reset_n, 
      prn=>PWR);
   yes_uart_u_uart_reg_Dout_3 : dffeas port map ( q=>i_data(3), d=>
      yes_uart_u_uart_Rx_Reg(3), clk=>clk, ena=>nx46463z1, clrn=>reset_n, 
      prn=>PWR);
   yes_uart_u_uart_reg_Dout_2 : dffeas port map ( q=>i_data(2), d=>
      yes_uart_u_uart_Rx_Reg(2), clk=>clk, ena=>nx46463z1, clrn=>reset_n, 
      prn=>PWR);
   yes_uart_u_uart_reg_Dout_1 : dffeas port map ( q=>i_data(1), d=>
      yes_uart_u_uart_Rx_Reg(1), clk=>clk, ena=>nx46463z1, clrn=>reset_n, 
      prn=>PWR);
   yes_uart_u_uart_reg_Dout_0 : dffeas port map ( q=>i_data(0), d=>
      yes_uart_u_uart_Rx_Reg(0), clk=>clk, ena=>nx46463z1, clrn=>reset_n, 
      prn=>PWR);
   yes_uart_u_uart_reg_Rx_Reg_7 : dffeas port map ( q=>
      yes_uart_u_uart_Rx_Reg(7), d=>yes_uart_u_uart_Rx_r, clk=>clk, ena=>
      nx2098z1, clrn=>reset_n, prn=>PWR);
   yes_uart_u_uart_reg_Rx_Reg_6 : dffeas port map ( q=>
      yes_uart_u_uart_Rx_Reg(6), d=>yes_uart_u_uart_Rx_Reg(7), clk=>clk, ena
      =>nx2098z1, clrn=>reset_n, prn=>PWR);
   yes_uart_u_uart_reg_Rx_Reg_5 : dffeas port map ( q=>
      yes_uart_u_uart_Rx_Reg(5), d=>yes_uart_u_uart_Rx_Reg(6), clk=>clk, ena
      =>nx2098z1, clrn=>reset_n, prn=>PWR);
   yes_uart_u_uart_reg_Rx_Reg_4 : dffeas port map ( q=>
      yes_uart_u_uart_Rx_Reg(4), d=>yes_uart_u_uart_Rx_Reg(5), clk=>clk, ena
      =>nx2098z1, clrn=>reset_n, prn=>PWR);
   yes_uart_u_uart_reg_Rx_Reg_3 : dffeas port map ( q=>
      yes_uart_u_uart_Rx_Reg(3), d=>yes_uart_u_uart_Rx_Reg(4), clk=>clk, ena
      =>nx2098z1, clrn=>reset_n, prn=>PWR);
   yes_uart_u_uart_reg_Rx_Reg_2 : dffeas port map ( q=>
      yes_uart_u_uart_Rx_Reg(2), d=>yes_uart_u_uart_Rx_Reg(3), clk=>clk, ena
      =>nx2098z1, clrn=>reset_n, prn=>PWR);
   yes_uart_u_uart_reg_Rx_Reg_1 : dffeas port map ( q=>
      yes_uart_u_uart_Rx_Reg(1), d=>yes_uart_u_uart_Rx_Reg(2), clk=>clk, ena
      =>nx2098z1, clrn=>reset_n, prn=>PWR);
   yes_uart_u_uart_reg_Rx_Reg_0 : dffeas port map ( q=>
      yes_uart_u_uart_Rx_Reg(0), d=>yes_uart_u_uart_Rx_Reg(1), clk=>clk, ena
      =>nx2098z1, clrn=>reset_n, prn=>PWR);
   yes_uart_u_uart_reg_RxRDYi : dffeas port map ( q=>i_valid, d=>nx46463z1, 
      clk=>clk, clrn=>reset_n, prn=>PWR);
   u_lab3_reg_minuend_15_7 : dffeas port map ( q=>u_lab3_minuend_15(7), d=>
      u_lab3_minuend_1n10ss1_487, clk=>clk, ena=>nx47763z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_14_7 : dffeas port map ( q=>u_lab3_minuend_14(7), d=>
      u_lab3_minuend_1n10ss1_455, clk=>clk, ena=>nx42628z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_13_7 : dffeas port map ( q=>u_lab3_minuend_13(7), d=>
      u_lab3_minuend_1n10ss1_423, clk=>clk, ena=>nx37493z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_12_7 : dffeas port map ( q=>u_lab3_minuend_12(7), d=>
      u_lab3_minuend_1n10ss1_391, clk=>clk, ena=>nx32358z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_11_7 : dffeas port map ( q=>u_lab3_minuend_11(7), d=>
      u_lab3_minuend_1n10ss1_359, clk=>clk, ena=>nx27223z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_10_7 : dffeas port map ( q=>u_lab3_minuend_10(7), d=>
      u_lab3_minuend_1n10ss1_327, clk=>clk, ena=>nx22088z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_9_7 : dffeas port map ( q=>u_lab3_minuend_9(7), d=>
      u_lab3_minuend_1n10ss1_295, clk=>clk, ena=>nx41564z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_8_7 : dffeas port map ( q=>u_lab3_minuend_8(7), d=>
      u_lab3_minuend_1n10ss1_263, clk=>clk, ena=>nx36429z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_7_7 : dffeas port map ( q=>u_lab3_minuend_7(7), d=>
      u_lab3_minuend_1n10ss1_231, clk=>clk, ena=>nx31294z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_6_7 : dffeas port map ( q=>u_lab3_minuend_6(7), d=>
      u_lab3_minuend_1n10ss1_199, clk=>clk, ena=>nx26159z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_5_7 : dffeas port map ( q=>u_lab3_minuend_5(7), d=>
      u_lab3_minuend_1n10ss1_167, clk=>clk, ena=>nx21024z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_4_7 : dffeas port map ( q=>u_lab3_minuend_4(7), d=>
      u_lab3_minuend_1n10ss1_135, clk=>clk, ena=>nx15889z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_3_7 : dffeas port map ( q=>u_lab3_minuend_3(7), d=>
      u_lab3_minuend_1n10ss1_103, clk=>clk, ena=>nx54782z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_2_7 : dffeas port map ( q=>u_lab3_minuend_2(7), d=>
      u_lab3_minuend_1n10ss1_71, clk=>clk, ena=>nx59917z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_1_7 : dffeas port map ( q=>u_lab3_minuend_1(7), d=>
      u_lab3_minuend_1n10ss1_39, clk=>clk, ena=>nx65052z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_0_7 : dffeas port map ( q=>u_lab3_minuend_0(7), d=>
      u_lab3_minuend_1n10ss1_7, clk=>clk, ena=>nx4651z2, clrn=>PWR, prn=>PWR
   );
   u_lab3_reg_minuend_15_6 : dffeas port map ( q=>u_lab3_minuend_15(6), d=>
      u_lab3_minuend_1n10ss1_486, clk=>clk, ena=>nx47763z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_14_6 : dffeas port map ( q=>u_lab3_minuend_14(6), d=>
      u_lab3_minuend_1n10ss1_454, clk=>clk, ena=>nx42628z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_13_6 : dffeas port map ( q=>u_lab3_minuend_13(6), d=>
      u_lab3_minuend_1n10ss1_422, clk=>clk, ena=>nx37493z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_12_6 : dffeas port map ( q=>u_lab3_minuend_12(6), d=>
      u_lab3_minuend_1n10ss1_390, clk=>clk, ena=>nx32358z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_11_6 : dffeas port map ( q=>u_lab3_minuend_11(6), d=>
      u_lab3_minuend_1n10ss1_358, clk=>clk, ena=>nx27223z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_10_6 : dffeas port map ( q=>u_lab3_minuend_10(6), d=>
      u_lab3_minuend_1n10ss1_326, clk=>clk, ena=>nx22088z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_9_6 : dffeas port map ( q=>u_lab3_minuend_9(6), d=>
      u_lab3_minuend_1n10ss1_294, clk=>clk, ena=>nx41564z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_8_6 : dffeas port map ( q=>u_lab3_minuend_8(6), d=>
      u_lab3_minuend_1n10ss1_262, clk=>clk, ena=>nx36429z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_7_6 : dffeas port map ( q=>u_lab3_minuend_7(6), d=>
      u_lab3_minuend_1n10ss1_230, clk=>clk, ena=>nx31294z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_6_6 : dffeas port map ( q=>u_lab3_minuend_6(6), d=>
      u_lab3_minuend_1n10ss1_198, clk=>clk, ena=>nx26159z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_5_6 : dffeas port map ( q=>u_lab3_minuend_5(6), d=>
      u_lab3_minuend_1n10ss1_166, clk=>clk, ena=>nx21024z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_4_6 : dffeas port map ( q=>u_lab3_minuend_4(6), d=>
      u_lab3_minuend_1n10ss1_134, clk=>clk, ena=>nx15889z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_3_6 : dffeas port map ( q=>u_lab3_minuend_3(6), d=>
      u_lab3_minuend_1n10ss1_102, clk=>clk, ena=>nx54782z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_2_6 : dffeas port map ( q=>u_lab3_minuend_2(6), d=>
      u_lab3_minuend_1n10ss1_70, clk=>clk, ena=>nx59917z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_1_6 : dffeas port map ( q=>u_lab3_minuend_1(6), d=>
      u_lab3_minuend_1n10ss1_38, clk=>clk, ena=>nx65052z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_0_6 : dffeas port map ( q=>u_lab3_minuend_0(6), d=>
      u_lab3_minuend_1n10ss1_6, clk=>clk, ena=>nx4651z2, clrn=>PWR, prn=>PWR
   );
   u_lab3_reg_minuend_15_5 : dffeas port map ( q=>u_lab3_minuend_15(5), d=>
      u_lab3_minuend_1n10ss1_485, clk=>clk, ena=>nx47763z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_14_5 : dffeas port map ( q=>u_lab3_minuend_14(5), d=>
      u_lab3_minuend_1n10ss1_453, clk=>clk, ena=>nx42628z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_13_5 : dffeas port map ( q=>u_lab3_minuend_13(5), d=>
      u_lab3_minuend_1n10ss1_421, clk=>clk, ena=>nx37493z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_12_5 : dffeas port map ( q=>u_lab3_minuend_12(5), d=>
      u_lab3_minuend_1n10ss1_389, clk=>clk, ena=>nx32358z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_11_5 : dffeas port map ( q=>u_lab3_minuend_11(5), d=>
      u_lab3_minuend_1n10ss1_357, clk=>clk, ena=>nx27223z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_10_5 : dffeas port map ( q=>u_lab3_minuend_10(5), d=>
      u_lab3_minuend_1n10ss1_325, clk=>clk, ena=>nx22088z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_9_5 : dffeas port map ( q=>u_lab3_minuend_9(5), d=>
      u_lab3_minuend_1n10ss1_293, clk=>clk, ena=>nx41564z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_8_5 : dffeas port map ( q=>u_lab3_minuend_8(5), d=>
      u_lab3_minuend_1n10ss1_261, clk=>clk, ena=>nx36429z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_7_5 : dffeas port map ( q=>u_lab3_minuend_7(5), d=>
      u_lab3_minuend_1n10ss1_229, clk=>clk, ena=>nx31294z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_6_5 : dffeas port map ( q=>u_lab3_minuend_6(5), d=>
      u_lab3_minuend_1n10ss1_197, clk=>clk, ena=>nx26159z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_5_5 : dffeas port map ( q=>u_lab3_minuend_5(5), d=>
      u_lab3_minuend_1n10ss1_165, clk=>clk, ena=>nx21024z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_4_5 : dffeas port map ( q=>u_lab3_minuend_4(5), d=>
      u_lab3_minuend_1n10ss1_133, clk=>clk, ena=>nx15889z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_3_5 : dffeas port map ( q=>u_lab3_minuend_3(5), d=>
      u_lab3_minuend_1n10ss1_101, clk=>clk, ena=>nx54782z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_2_5 : dffeas port map ( q=>u_lab3_minuend_2(5), d=>
      u_lab3_minuend_1n10ss1_69, clk=>clk, ena=>nx59917z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_1_5 : dffeas port map ( q=>u_lab3_minuend_1(5), d=>
      u_lab3_minuend_1n10ss1_37, clk=>clk, ena=>nx65052z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_0_5 : dffeas port map ( q=>u_lab3_minuend_0(5), d=>
      u_lab3_minuend_1n10ss1_5, clk=>clk, ena=>nx4651z2, clrn=>PWR, prn=>PWR
   );
   u_lab3_reg_minuend_15_4 : dffeas port map ( q=>u_lab3_minuend_15(4), d=>
      u_lab3_minuend_1n10ss1_484, clk=>clk, ena=>nx47763z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_14_4 : dffeas port map ( q=>u_lab3_minuend_14(4), d=>
      u_lab3_minuend_1n10ss1_452, clk=>clk, ena=>nx42628z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_13_4 : dffeas port map ( q=>u_lab3_minuend_13(4), d=>
      u_lab3_minuend_1n10ss1_420, clk=>clk, ena=>nx37493z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_12_4 : dffeas port map ( q=>u_lab3_minuend_12(4), d=>
      u_lab3_minuend_1n10ss1_388, clk=>clk, ena=>nx32358z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_11_4 : dffeas port map ( q=>u_lab3_minuend_11(4), d=>
      u_lab3_minuend_1n10ss1_356, clk=>clk, ena=>nx27223z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_10_4 : dffeas port map ( q=>u_lab3_minuend_10(4), d=>
      u_lab3_minuend_1n10ss1_324, clk=>clk, ena=>nx22088z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_9_4 : dffeas port map ( q=>u_lab3_minuend_9(4), d=>
      u_lab3_minuend_1n10ss1_292, clk=>clk, ena=>nx41564z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_8_4 : dffeas port map ( q=>u_lab3_minuend_8(4), d=>
      u_lab3_minuend_1n10ss1_260, clk=>clk, ena=>nx36429z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_7_4 : dffeas port map ( q=>u_lab3_minuend_7(4), d=>
      u_lab3_minuend_1n10ss1_228, clk=>clk, ena=>nx31294z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_6_4 : dffeas port map ( q=>u_lab3_minuend_6(4), d=>
      u_lab3_minuend_1n10ss1_196, clk=>clk, ena=>nx26159z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_5_4 : dffeas port map ( q=>u_lab3_minuend_5(4), d=>
      u_lab3_minuend_1n10ss1_164, clk=>clk, ena=>nx21024z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_4_4 : dffeas port map ( q=>u_lab3_minuend_4(4), d=>
      u_lab3_minuend_1n10ss1_132, clk=>clk, ena=>nx15889z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_3_4 : dffeas port map ( q=>u_lab3_minuend_3(4), d=>
      u_lab3_minuend_1n10ss1_100, clk=>clk, ena=>nx54782z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_2_4 : dffeas port map ( q=>u_lab3_minuend_2(4), d=>
      u_lab3_minuend_1n10ss1_68, clk=>clk, ena=>nx59917z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_1_4 : dffeas port map ( q=>u_lab3_minuend_1(4), d=>
      u_lab3_minuend_1n10ss1_36, clk=>clk, ena=>nx65052z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_0_4 : dffeas port map ( q=>u_lab3_minuend_0(4), d=>
      u_lab3_minuend_1n10ss1_4, clk=>clk, ena=>nx4651z2, clrn=>PWR, prn=>PWR
   );
   u_lab3_reg_minuend_15_3 : dffeas port map ( q=>u_lab3_minuend_15(3), d=>
      u_lab3_minuend_1n10ss1_483, clk=>clk, ena=>nx47763z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_14_3 : dffeas port map ( q=>u_lab3_minuend_14(3), d=>
      u_lab3_minuend_1n10ss1_451, clk=>clk, ena=>nx42628z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_13_3 : dffeas port map ( q=>u_lab3_minuend_13(3), d=>
      u_lab3_minuend_1n10ss1_419, clk=>clk, ena=>nx37493z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_12_3 : dffeas port map ( q=>u_lab3_minuend_12(3), d=>
      u_lab3_minuend_1n10ss1_387, clk=>clk, ena=>nx32358z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_11_3 : dffeas port map ( q=>u_lab3_minuend_11(3), d=>
      u_lab3_minuend_1n10ss1_355, clk=>clk, ena=>nx27223z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_10_3 : dffeas port map ( q=>u_lab3_minuend_10(3), d=>
      u_lab3_minuend_1n10ss1_323, clk=>clk, ena=>nx22088z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_9_3 : dffeas port map ( q=>u_lab3_minuend_9(3), d=>
      u_lab3_minuend_1n10ss1_291, clk=>clk, ena=>nx41564z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_8_3 : dffeas port map ( q=>u_lab3_minuend_8(3), d=>
      u_lab3_minuend_1n10ss1_259, clk=>clk, ena=>nx36429z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_7_3 : dffeas port map ( q=>u_lab3_minuend_7(3), d=>
      u_lab3_minuend_1n10ss1_227, clk=>clk, ena=>nx31294z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_6_3 : dffeas port map ( q=>u_lab3_minuend_6(3), d=>
      u_lab3_minuend_1n10ss1_195, clk=>clk, ena=>nx26159z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_5_3 : dffeas port map ( q=>u_lab3_minuend_5(3), d=>
      u_lab3_minuend_1n10ss1_163, clk=>clk, ena=>nx21024z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_4_3 : dffeas port map ( q=>u_lab3_minuend_4(3), d=>
      u_lab3_minuend_1n10ss1_131, clk=>clk, ena=>nx15889z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_3_3 : dffeas port map ( q=>u_lab3_minuend_3(3), d=>
      u_lab3_minuend_1n10ss1_99, clk=>clk, ena=>nx54782z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_2_3 : dffeas port map ( q=>u_lab3_minuend_2(3), d=>
      u_lab3_minuend_1n10ss1_67, clk=>clk, ena=>nx59917z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_1_3 : dffeas port map ( q=>u_lab3_minuend_1(3), d=>
      u_lab3_minuend_1n10ss1_35, clk=>clk, ena=>nx65052z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_0_3 : dffeas port map ( q=>u_lab3_minuend_0(3), d=>
      u_lab3_minuend_1n10ss1_3, clk=>clk, ena=>nx4651z2, clrn=>PWR, prn=>PWR
   );
   u_lab3_reg_minuend_15_2 : dffeas port map ( q=>u_lab3_minuend_15(2), d=>
      u_lab3_minuend_1n10ss1_482, clk=>clk, ena=>nx47763z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_14_2 : dffeas port map ( q=>u_lab3_minuend_14(2), d=>
      u_lab3_minuend_1n10ss1_450, clk=>clk, ena=>nx42628z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_13_2 : dffeas port map ( q=>u_lab3_minuend_13(2), d=>
      u_lab3_minuend_1n10ss1_418, clk=>clk, ena=>nx37493z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_12_2 : dffeas port map ( q=>u_lab3_minuend_12(2), d=>
      u_lab3_minuend_1n10ss1_386, clk=>clk, ena=>nx32358z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_11_2 : dffeas port map ( q=>u_lab3_minuend_11(2), d=>
      u_lab3_minuend_1n10ss1_354, clk=>clk, ena=>nx27223z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_10_2 : dffeas port map ( q=>u_lab3_minuend_10(2), d=>
      u_lab3_minuend_1n10ss1_322, clk=>clk, ena=>nx22088z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_9_2 : dffeas port map ( q=>u_lab3_minuend_9(2), d=>
      u_lab3_minuend_1n10ss1_290, clk=>clk, ena=>nx41564z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_8_2 : dffeas port map ( q=>u_lab3_minuend_8(2), d=>
      u_lab3_minuend_1n10ss1_258, clk=>clk, ena=>nx36429z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_7_2 : dffeas port map ( q=>u_lab3_minuend_7(2), d=>
      u_lab3_minuend_1n10ss1_226, clk=>clk, ena=>nx31294z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_6_2 : dffeas port map ( q=>u_lab3_minuend_6(2), d=>
      u_lab3_minuend_1n10ss1_194, clk=>clk, ena=>nx26159z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_5_2 : dffeas port map ( q=>u_lab3_minuend_5(2), d=>
      u_lab3_minuend_1n10ss1_162, clk=>clk, ena=>nx21024z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_4_2 : dffeas port map ( q=>u_lab3_minuend_4(2), d=>
      u_lab3_minuend_1n10ss1_130, clk=>clk, ena=>nx15889z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_3_2 : dffeas port map ( q=>u_lab3_minuend_3(2), d=>
      u_lab3_minuend_1n10ss1_98, clk=>clk, ena=>nx54782z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_2_2 : dffeas port map ( q=>u_lab3_minuend_2(2), d=>
      u_lab3_minuend_1n10ss1_66, clk=>clk, ena=>nx59917z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_1_2 : dffeas port map ( q=>u_lab3_minuend_1(2), d=>
      u_lab3_minuend_1n10ss1_34, clk=>clk, ena=>nx65052z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_0_2 : dffeas port map ( q=>u_lab3_minuend_0(2), d=>
      u_lab3_minuend_1n10ss1_2, clk=>clk, ena=>nx4651z2, clrn=>PWR, prn=>PWR
   );
   u_lab3_reg_minuend_15_1 : dffeas port map ( q=>u_lab3_minuend_15(1), d=>
      u_lab3_minuend_1n10ss1_481, clk=>clk, ena=>nx47763z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_14_1 : dffeas port map ( q=>u_lab3_minuend_14(1), d=>
      u_lab3_minuend_1n10ss1_449, clk=>clk, ena=>nx42628z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_13_1 : dffeas port map ( q=>u_lab3_minuend_13(1), d=>
      u_lab3_minuend_1n10ss1_417, clk=>clk, ena=>nx37493z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_12_1 : dffeas port map ( q=>u_lab3_minuend_12(1), d=>
      u_lab3_minuend_1n10ss1_385, clk=>clk, ena=>nx32358z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_11_1 : dffeas port map ( q=>u_lab3_minuend_11(1), d=>
      u_lab3_minuend_1n10ss1_353, clk=>clk, ena=>nx27223z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_10_1 : dffeas port map ( q=>u_lab3_minuend_10(1), d=>
      u_lab3_minuend_1n10ss1_321, clk=>clk, ena=>nx22088z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_9_1 : dffeas port map ( q=>u_lab3_minuend_9(1), d=>
      u_lab3_minuend_1n10ss1_289, clk=>clk, ena=>nx41564z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_8_1 : dffeas port map ( q=>u_lab3_minuend_8(1), d=>
      u_lab3_minuend_1n10ss1_257, clk=>clk, ena=>nx36429z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_7_1 : dffeas port map ( q=>u_lab3_minuend_7(1), d=>
      u_lab3_minuend_1n10ss1_225, clk=>clk, ena=>nx31294z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_6_1 : dffeas port map ( q=>u_lab3_minuend_6(1), d=>
      u_lab3_minuend_1n10ss1_193, clk=>clk, ena=>nx26159z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_5_1 : dffeas port map ( q=>u_lab3_minuend_5(1), d=>
      u_lab3_minuend_1n10ss1_161, clk=>clk, ena=>nx21024z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_4_1 : dffeas port map ( q=>u_lab3_minuend_4(1), d=>
      u_lab3_minuend_1n10ss1_129, clk=>clk, ena=>nx15889z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_3_1 : dffeas port map ( q=>u_lab3_minuend_3(1), d=>
      u_lab3_minuend_1n10ss1_97, clk=>clk, ena=>nx54782z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_2_1 : dffeas port map ( q=>u_lab3_minuend_2(1), d=>
      u_lab3_minuend_1n10ss1_65, clk=>clk, ena=>nx59917z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_1_1 : dffeas port map ( q=>u_lab3_minuend_1(1), d=>
      u_lab3_minuend_1n10ss1_33, clk=>clk, ena=>nx65052z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_0_1 : dffeas port map ( q=>u_lab3_minuend_0(1), d=>
      u_lab3_minuend_1n10ss1_1, clk=>clk, ena=>nx4651z2, clrn=>PWR, prn=>PWR
   );
   u_lab3_reg_minuend_15_0 : dffeas port map ( q=>u_lab3_minuend_15(0), d=>
      u_lab3_minuend_1n10ss1_480, clk=>clk, ena=>nx47763z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_14_0 : dffeas port map ( q=>u_lab3_minuend_14(0), d=>
      u_lab3_minuend_1n10ss1_448, clk=>clk, ena=>nx42628z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_13_0 : dffeas port map ( q=>u_lab3_minuend_13(0), d=>
      u_lab3_minuend_1n10ss1_416, clk=>clk, ena=>nx37493z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_12_0 : dffeas port map ( q=>u_lab3_minuend_12(0), d=>
      u_lab3_minuend_1n10ss1_384, clk=>clk, ena=>nx32358z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_11_0 : dffeas port map ( q=>u_lab3_minuend_11(0), d=>
      u_lab3_minuend_1n10ss1_352, clk=>clk, ena=>nx27223z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_10_0 : dffeas port map ( q=>u_lab3_minuend_10(0), d=>
      u_lab3_minuend_1n10ss1_320, clk=>clk, ena=>nx22088z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_9_0 : dffeas port map ( q=>u_lab3_minuend_9(0), d=>
      u_lab3_minuend_1n10ss1_288, clk=>clk, ena=>nx41564z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_8_0 : dffeas port map ( q=>u_lab3_minuend_8(0), d=>
      u_lab3_minuend_1n10ss1_256, clk=>clk, ena=>nx36429z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_7_0 : dffeas port map ( q=>u_lab3_minuend_7(0), d=>
      u_lab3_minuend_1n10ss1_224, clk=>clk, ena=>nx31294z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_6_0 : dffeas port map ( q=>u_lab3_minuend_6(0), d=>
      u_lab3_minuend_1n10ss1_192, clk=>clk, ena=>nx26159z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_5_0 : dffeas port map ( q=>u_lab3_minuend_5(0), d=>
      u_lab3_minuend_1n10ss1_160, clk=>clk, ena=>nx21024z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_4_0 : dffeas port map ( q=>u_lab3_minuend_4(0), d=>
      u_lab3_minuend_1n10ss1_128, clk=>clk, ena=>nx15889z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_3_0 : dffeas port map ( q=>u_lab3_minuend_3(0), d=>
      u_lab3_minuend_1n10ss1_96, clk=>clk, ena=>nx54782z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_2_0 : dffeas port map ( q=>u_lab3_minuend_2(0), d=>
      u_lab3_minuend_1n10ss1_64, clk=>clk, ena=>nx59917z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_1_0 : dffeas port map ( q=>u_lab3_minuend_1(0), d=>
      u_lab3_minuend_1n10ss1_32, clk=>clk, ena=>nx65052z2, clrn=>PWR, prn=>
      PWR);
   u_lab3_reg_minuend_0_0 : dffeas port map ( q=>u_lab3_minuend_0(0), d=>
      u_lab3_minuend_1n10ss1_0, clk=>clk, ena=>nx4651z2, clrn=>PWR, prn=>PWR
   );
   yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_3 : dffeas port map ( q=>
      yes_uart_u_uart_TxBitCnt(3), d=>nx48281z1, clk=>clk, ena=>nx51272z2, 
      clrn=>reset_n, prn=>PWR);
   yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_2 : dffeas port map ( q=>
      yes_uart_u_uart_TxBitCnt(2), d=>nx49278z1, clk=>clk, ena=>nx51272z2, 
      clrn=>reset_n, prn=>PWR);
   yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1 : dffeas port map ( q=>
      yes_uart_u_uart_TxBitCnt(1), d=>nx50275z1, clk=>clk, ena=>nx51272z2, 
      clrn=>reset_n, prn=>PWR);
   yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0 : dffeas port map ( q=>
      yes_uart_u_uart_TxBitCnt(0), d=>nx51272z1, clk=>clk, ena=>nx51272z2, 
      clrn=>reset_n, prn=>PWR);
   yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_3 : dffeas port map ( q=>
      yes_uart_u_uart_RxBitCnt(3), d=>nx43035z1, clk=>clk, ena=>nx46026z3, 
      clrn=>reset_n, prn=>PWR);
   yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_2 : dffeas port map ( q=>
      yes_uart_u_uart_RxBitCnt(2), d=>nx44032z1, clk=>clk, ena=>nx46026z3, 
      clrn=>reset_n, prn=>PWR);
   yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1 : dffeas port map ( q=>
      yes_uart_u_uart_RxBitCnt(1), d=>nx45029z1, clk=>clk, ena=>nx46026z3, 
      clrn=>reset_n, prn=>PWR);
   yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0 : dffeas port map ( q=>
      yes_uart_u_uart_RxBitCnt(0), d=>nx46026z1, clk=>clk, ena=>nx46026z3, 
      clrn=>reset_n, prn=>PWR);
   ix46918z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"2cec") 
       port map ( combout=>nx46918z2, dataa=>nx46918z3, datab=>nx46918z5, 
      datac=>yes_uart_u_uart_TxFSM(1), datad=>yes_uart_u_uart_TopTx);
   ix46976z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_lab3_p_1n7s3f1(7), dataa=>nx46976z1, datab=>
      u_lab3_column(3), datac=>nx46976z6, datad=>nx46976z8);
   ix63307z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_lab3_p_1n7s3f1(6), dataa=>nx63307z1, datab=>
      u_lab3_column(3), datac=>nx63307z6, datad=>nx63307z8);
   ix33377z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_lab3_p_1n7s3f1(5), dataa=>nx33377z1, datab=>
      u_lab3_column(3), datac=>nx33377z6, datad=>nx33377z8);
   ix64525z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_lab3_p_1n7s3f1(4), dataa=>nx64525z1, datab=>
      u_lab3_column(3), datac=>nx64525z6, datad=>nx64525z8);
   ix17342z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_lab3_p_1n7s3f1(3), dataa=>nx17342z1, datab=>
      u_lab3_column(3), datac=>nx17342z6, datad=>nx17342z8);
   ix13806z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_lab3_p_1n7s3f1(2), dataa=>nx13806z1, datab=>
      u_lab3_column(3), datac=>nx13806z6, datad=>nx13806z8);
   ix63011z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_lab3_p_1n7s3f1(1), dataa=>nx63011z1, datab=>
      u_lab3_column(3), datac=>nx63011z6, datad=>nx63011z8);
   ix36913z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_lab3_p_1n7s3f1(0), dataa=>nx36913z1, datab=>
      u_lab3_column(3), datac=>nx36913z6, datad=>nx36913z8);
   ix46976z7105 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_lab3_p_1n7s3f2(7), dataa=>nx46976z10, datab=>
      u_lab3_column(3), datac=>nx46976z15, datad=>nx46976z17);
   ix63307z7105 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_lab3_p_1n7s3f2(6), dataa=>nx63307z10, datab=>
      u_lab3_column(3), datac=>nx63307z15, datad=>nx63307z17);
   ix33377z7105 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_lab3_p_1n7s3f2(5), dataa=>nx33377z10, datab=>
      u_lab3_column(3), datac=>nx33377z15, datad=>nx33377z17);
   ix64525z7105 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_lab3_p_1n7s3f2(4), dataa=>nx64525z10, datab=>
      u_lab3_column(3), datac=>nx64525z15, datad=>nx64525z17);
   ix17342z7105 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_lab3_p_1n7s3f2(3), dataa=>nx17342z10, datab=>
      u_lab3_column(3), datac=>nx17342z15, datad=>nx17342z17);
   ix13806z7105 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_lab3_p_1n7s3f2(2), dataa=>nx13806z10, datab=>
      u_lab3_column(3), datac=>nx13806z15, datad=>nx13806z17);
   ix63011z7105 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_lab3_p_1n7s3f2(1), dataa=>nx63011z10, datab=>
      u_lab3_column(3), datac=>nx63011z15, datad=>nx63011z17);
   ix36913z7105 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>u_lab3_p_1n7s3f2(0), dataa=>nx36913z10, datab=>
      u_lab3_column(3), datac=>nx36913z15, datad=>nx36913z17);
   ix46918z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8a9b") 
       port map ( combout=>nx46918z5, dataa=>yes_uart_u_uart_TxFSM(0), datab
      =>yes_uart_u_uart_TxFSM(1), datac=>yes_uart_u_uart_TopTx, datad=>
      byte_valid);
   ix36913z7103 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx36913z8, dataa=>nx36913z9, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_14(0), datad=>
      u_lab3_minuend_15(0));
   ix36913z7101 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx36913z6, dataa=>nx36913z7, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_10(0), datad=>
      u_lab3_minuend_11(0));
   ix36913z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx36913z4, dataa=>nx36913z5, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_6(0), datad=>
      u_lab3_minuend_7(0));
   ix36913z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx36913z2, dataa=>nx36913z3, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_2(0), datad=>
      u_lab3_minuend_3(0));
   ix36913z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx36913z3, dataa=>u_lab3_minuend_0(0), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_1(0)
   );
   ix36913z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx36913z5, dataa=>u_lab3_minuend_4(0), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_5(0)
   );
   ix36913z7102 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx36913z7, dataa=>u_lab3_minuend_8(0), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_9(0)
   );
   ix36913z7104 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx36913z9, dataa=>u_lab3_minuend_12(0), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_13(0)
   );
   ix36913z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx36913z1, dataa=>nx36913z2, datab=>
      u_lab3_column(2), datac=>u_lab3_column(3), datad=>nx36913z4);
   ix63011z7103 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx63011z8, dataa=>nx63011z9, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_14(1), datad=>
      u_lab3_minuend_15(1));
   ix63011z7101 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx63011z6, dataa=>nx63011z7, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_10(1), datad=>
      u_lab3_minuend_11(1));
   ix63011z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx63011z4, dataa=>nx63011z5, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_6(1), datad=>
      u_lab3_minuend_7(1));
   ix63011z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx63011z2, dataa=>nx63011z3, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_2(1), datad=>
      u_lab3_minuend_3(1));
   ix63011z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx63011z3, dataa=>u_lab3_minuend_0(1), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_1(1)
   );
   ix63011z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx63011z5, dataa=>u_lab3_minuend_4(1), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_5(1)
   );
   ix63011z7102 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx63011z7, dataa=>u_lab3_minuend_8(1), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_9(1)
   );
   ix63011z7104 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx63011z9, dataa=>u_lab3_minuend_12(1), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_13(1)
   );
   ix63011z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx63011z1, dataa=>nx63011z2, datab=>
      u_lab3_column(2), datac=>u_lab3_column(3), datad=>nx63011z4);
   ix13806z7103 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx13806z8, dataa=>nx13806z9, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_14(2), datad=>
      u_lab3_minuend_15(2));
   ix13806z7101 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx13806z6, dataa=>nx13806z7, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_10(2), datad=>
      u_lab3_minuend_11(2));
   ix13806z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx13806z4, dataa=>nx13806z5, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_6(2), datad=>
      u_lab3_minuend_7(2));
   ix13806z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx13806z2, dataa=>nx13806z3, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_2(2), datad=>
      u_lab3_minuend_3(2));
   ix13806z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx13806z3, dataa=>u_lab3_minuend_0(2), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_1(2)
   );
   ix13806z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx13806z5, dataa=>u_lab3_minuend_4(2), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_5(2)
   );
   ix13806z7102 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx13806z7, dataa=>u_lab3_minuend_8(2), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_9(2)
   );
   ix13806z7104 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx13806z9, dataa=>u_lab3_minuend_12(2), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_13(2)
   );
   ix13806z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx13806z1, dataa=>nx13806z2, datab=>
      u_lab3_column(2), datac=>u_lab3_column(3), datad=>nx13806z4);
   ix17342z7103 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx17342z8, dataa=>nx17342z9, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_14(3), datad=>
      u_lab3_minuend_15(3));
   ix17342z7101 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx17342z6, dataa=>nx17342z7, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_10(3), datad=>
      u_lab3_minuend_11(3));
   ix17342z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx17342z4, dataa=>nx17342z5, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_6(3), datad=>
      u_lab3_minuend_7(3));
   ix17342z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx17342z2, dataa=>nx17342z3, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_2(3), datad=>
      u_lab3_minuend_3(3));
   ix17342z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx17342z3, dataa=>u_lab3_minuend_0(3), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_1(3)
   );
   ix17342z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx17342z5, dataa=>u_lab3_minuend_4(3), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_5(3)
   );
   ix17342z7102 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx17342z7, dataa=>u_lab3_minuend_8(3), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_9(3)
   );
   ix17342z7104 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx17342z9, dataa=>u_lab3_minuend_12(3), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_13(3)
   );
   ix17342z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx17342z1, dataa=>nx17342z2, datab=>
      u_lab3_column(2), datac=>u_lab3_column(3), datad=>nx17342z4);
   ix64525z7103 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx64525z8, dataa=>nx64525z9, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_14(4), datad=>
      u_lab3_minuend_15(4));
   ix64525z7101 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx64525z6, dataa=>nx64525z7, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_10(4), datad=>
      u_lab3_minuend_11(4));
   ix64525z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx64525z4, dataa=>nx64525z5, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_6(4), datad=>
      u_lab3_minuend_7(4));
   ix64525z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx64525z2, dataa=>nx64525z3, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_2(4), datad=>
      u_lab3_minuend_3(4));
   ix64525z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx64525z3, dataa=>u_lab3_minuend_0(4), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_1(4)
   );
   ix64525z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx64525z5, dataa=>u_lab3_minuend_4(4), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_5(4)
   );
   ix64525z7102 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx64525z7, dataa=>u_lab3_minuend_8(4), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_9(4)
   );
   ix64525z7104 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx64525z9, dataa=>u_lab3_minuend_12(4), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_13(4)
   );
   ix64525z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx64525z1, dataa=>nx64525z2, datab=>
      u_lab3_column(2), datac=>u_lab3_column(3), datad=>nx64525z4);
   ix33377z7103 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx33377z8, dataa=>nx33377z9, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_14(5), datad=>
      u_lab3_minuend_15(5));
   ix33377z7101 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx33377z6, dataa=>nx33377z7, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_10(5), datad=>
      u_lab3_minuend_11(5));
   ix33377z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx33377z4, dataa=>nx33377z5, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_6(5), datad=>
      u_lab3_minuend_7(5));
   ix33377z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx33377z2, dataa=>nx33377z3, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_2(5), datad=>
      u_lab3_minuend_3(5));
   ix33377z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx33377z3, dataa=>u_lab3_minuend_0(5), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_1(5)
   );
   ix33377z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx33377z5, dataa=>u_lab3_minuend_4(5), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_5(5)
   );
   ix33377z7102 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx33377z7, dataa=>u_lab3_minuend_8(5), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_9(5)
   );
   ix33377z7104 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx33377z9, dataa=>u_lab3_minuend_12(5), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_13(5)
   );
   ix33377z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx33377z1, dataa=>nx33377z2, datab=>
      u_lab3_column(2), datac=>u_lab3_column(3), datad=>nx33377z4);
   ix63307z7103 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx63307z8, dataa=>nx63307z9, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_14(6), datad=>
      u_lab3_minuend_15(6));
   ix63307z7101 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx63307z6, dataa=>nx63307z7, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_10(6), datad=>
      u_lab3_minuend_11(6));
   ix63307z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx63307z4, dataa=>nx63307z5, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_6(6), datad=>
      u_lab3_minuend_7(6));
   ix63307z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx63307z2, dataa=>nx63307z3, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_2(6), datad=>
      u_lab3_minuend_3(6));
   ix63307z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx63307z3, dataa=>u_lab3_minuend_0(6), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_1(6)
   );
   ix63307z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx63307z5, dataa=>u_lab3_minuend_4(6), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_5(6)
   );
   ix63307z7102 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx63307z7, dataa=>u_lab3_minuend_8(6), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_9(6)
   );
   ix63307z7104 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx63307z9, dataa=>u_lab3_minuend_12(6), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_13(6)
   );
   ix63307z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx63307z1, dataa=>nx63307z2, datab=>
      u_lab3_column(2), datac=>u_lab3_column(3), datad=>nx63307z4);
   ix46976z7103 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx46976z8, dataa=>nx46976z9, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_14(7), datad=>
      u_lab3_minuend_15(7));
   ix46976z7101 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx46976z6, dataa=>nx46976z7, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_10(7), datad=>
      u_lab3_minuend_11(7));
   ix46976z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx46976z4, dataa=>nx46976z5, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_6(7), datad=>
      u_lab3_minuend_7(7));
   ix46976z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx46976z2, dataa=>nx46976z3, datab=>
      u_lab3_column(1), datac=>u_lab3_minuend_2(7), datad=>
      u_lab3_minuend_3(7));
   ix46976z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx46976z3, dataa=>u_lab3_minuend_0(7), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_1(7)
   );
   ix46976z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx46976z5, dataa=>u_lab3_minuend_4(7), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_5(7)
   );
   ix46976z7102 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx46976z7, dataa=>u_lab3_minuend_8(7), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_9(7)
   );
   ix46976z7104 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx46976z9, dataa=>u_lab3_minuend_12(7), datab=>
      u_lab3_column(0), datac=>u_lab3_column(1), datad=>u_lab3_minuend_13(7)
   );
   ix46976z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx46976z1, dataa=>nx46976z2, datab=>
      u_lab3_column(2), datac=>u_lab3_column(3), datad=>nx46976z4);
   ix36913z7113 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx36913z17, dataa=>nx36913z18, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_14(0), datad=>
      u_lab3_subtrahend_15(0));
   ix36913z7111 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx36913z15, dataa=>nx36913z16, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_10(0), datad=>
      u_lab3_subtrahend_11(0));
   ix36913z7109 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx36913z13, dataa=>nx36913z14, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_6(0), datad=>
      u_lab3_subtrahend_7(0));
   ix36913z7107 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx36913z11, dataa=>nx36913z12, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_2(0), datad=>
      u_lab3_subtrahend_3(0));
   ix36913z7108 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx36913z12, dataa=>u_lab3_subtrahend_0(0), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_1(0));
   ix36913z7110 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx36913z14, dataa=>u_lab3_subtrahend_4(0), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_5(0));
   ix36913z7112 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx36913z16, dataa=>u_lab3_subtrahend_8(0), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_9(0));
   ix36913z7114 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx36913z18, dataa=>u_lab3_subtrahend_12(0), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_13(0));
   ix36913z7106 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx36913z10, dataa=>nx36913z11, datab=>
      u_lab3_column(2), datac=>u_lab3_column(3), datad=>nx36913z13);
   ix63011z7113 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx63011z17, dataa=>nx63011z18, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_14(1), datad=>
      u_lab3_subtrahend_15(1));
   ix63011z7111 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx63011z15, dataa=>nx63011z16, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_10(1), datad=>
      u_lab3_subtrahend_11(1));
   ix63011z7109 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx63011z13, dataa=>nx63011z14, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_6(1), datad=>
      u_lab3_subtrahend_7(1));
   ix63011z7107 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx63011z11, dataa=>nx63011z12, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_2(1), datad=>
      u_lab3_subtrahend_3(1));
   ix63011z7108 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx63011z12, dataa=>u_lab3_subtrahend_0(1), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_1(1));
   ix63011z7110 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx63011z14, dataa=>u_lab3_subtrahend_4(1), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_5(1));
   ix63011z7112 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx63011z16, dataa=>u_lab3_subtrahend_8(1), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_9(1));
   ix63011z7114 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx63011z18, dataa=>u_lab3_subtrahend_12(1), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_13(1));
   ix63011z7106 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx63011z10, dataa=>nx63011z11, datab=>
      u_lab3_column(2), datac=>u_lab3_column(3), datad=>nx63011z13);
   ix13806z7113 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx13806z17, dataa=>nx13806z18, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_14(2), datad=>
      u_lab3_subtrahend_15(2));
   ix13806z7111 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx13806z15, dataa=>nx13806z16, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_10(2), datad=>
      u_lab3_subtrahend_11(2));
   ix13806z7109 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx13806z13, dataa=>nx13806z14, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_6(2), datad=>
      u_lab3_subtrahend_7(2));
   ix13806z7107 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx13806z11, dataa=>nx13806z12, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_2(2), datad=>
      u_lab3_subtrahend_3(2));
   ix13806z7108 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx13806z12, dataa=>u_lab3_subtrahend_0(2), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_1(2));
   ix13806z7110 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx13806z14, dataa=>u_lab3_subtrahend_4(2), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_5(2));
   ix13806z7112 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx13806z16, dataa=>u_lab3_subtrahend_8(2), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_9(2));
   ix13806z7114 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx13806z18, dataa=>u_lab3_subtrahend_12(2), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_13(2));
   ix13806z7106 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx13806z10, dataa=>nx13806z11, datab=>
      u_lab3_column(2), datac=>u_lab3_column(3), datad=>nx13806z13);
   ix17342z7113 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx17342z17, dataa=>nx17342z18, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_14(3), datad=>
      u_lab3_subtrahend_15(3));
   ix17342z7111 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx17342z15, dataa=>nx17342z16, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_10(3), datad=>
      u_lab3_subtrahend_11(3));
   ix17342z7109 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx17342z13, dataa=>nx17342z14, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_6(3), datad=>
      u_lab3_subtrahend_7(3));
   ix17342z7107 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx17342z11, dataa=>nx17342z12, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_2(3), datad=>
      u_lab3_subtrahend_3(3));
   ix17342z7108 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx17342z12, dataa=>u_lab3_subtrahend_0(3), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_1(3));
   ix17342z7110 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx17342z14, dataa=>u_lab3_subtrahend_4(3), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_5(3));
   ix17342z7112 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx17342z16, dataa=>u_lab3_subtrahend_8(3), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_9(3));
   ix17342z7114 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx17342z18, dataa=>u_lab3_subtrahend_12(3), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_13(3));
   ix17342z7106 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx17342z10, dataa=>nx17342z11, datab=>
      u_lab3_column(2), datac=>u_lab3_column(3), datad=>nx17342z13);
   ix64525z7113 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx64525z17, dataa=>nx64525z18, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_14(4), datad=>
      u_lab3_subtrahend_15(4));
   ix64525z7111 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx64525z15, dataa=>nx64525z16, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_10(4), datad=>
      u_lab3_subtrahend_11(4));
   ix64525z7109 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx64525z13, dataa=>nx64525z14, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_6(4), datad=>
      u_lab3_subtrahend_7(4));
   ix64525z7107 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx64525z11, dataa=>nx64525z12, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_2(4), datad=>
      u_lab3_subtrahend_3(4));
   ix64525z7108 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx64525z12, dataa=>u_lab3_subtrahend_0(4), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_1(4));
   ix64525z7110 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx64525z14, dataa=>u_lab3_subtrahend_4(4), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_5(4));
   ix64525z7112 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx64525z16, dataa=>u_lab3_subtrahend_8(4), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_9(4));
   ix64525z7114 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx64525z18, dataa=>u_lab3_subtrahend_12(4), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_13(4));
   ix64525z7106 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx64525z10, dataa=>nx64525z11, datab=>
      u_lab3_column(2), datac=>u_lab3_column(3), datad=>nx64525z13);
   ix33377z7113 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx33377z17, dataa=>nx33377z18, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_14(5), datad=>
      u_lab3_subtrahend_15(5));
   ix33377z7111 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx33377z15, dataa=>nx33377z16, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_10(5), datad=>
      u_lab3_subtrahend_11(5));
   ix33377z7109 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx33377z13, dataa=>nx33377z14, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_6(5), datad=>
      u_lab3_subtrahend_7(5));
   ix33377z7107 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx33377z11, dataa=>nx33377z12, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_2(5), datad=>
      u_lab3_subtrahend_3(5));
   ix33377z7108 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx33377z12, dataa=>u_lab3_subtrahend_0(5), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_1(5));
   ix33377z7110 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx33377z14, dataa=>u_lab3_subtrahend_4(5), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_5(5));
   ix33377z7112 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx33377z16, dataa=>u_lab3_subtrahend_8(5), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_9(5));
   ix33377z7114 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx33377z18, dataa=>u_lab3_subtrahend_12(5), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_13(5));
   ix33377z7106 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx33377z10, dataa=>nx33377z11, datab=>
      u_lab3_column(2), datac=>u_lab3_column(3), datad=>nx33377z13);
   ix63307z7113 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx63307z17, dataa=>nx63307z18, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_14(6), datad=>
      u_lab3_subtrahend_15(6));
   ix63307z7111 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx63307z15, dataa=>nx63307z16, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_10(6), datad=>
      u_lab3_subtrahend_11(6));
   ix63307z7109 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx63307z13, dataa=>nx63307z14, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_6(6), datad=>
      u_lab3_subtrahend_7(6));
   ix63307z7107 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx63307z11, dataa=>nx63307z12, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_2(6), datad=>
      u_lab3_subtrahend_3(6));
   ix63307z7108 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx63307z12, dataa=>u_lab3_subtrahend_0(6), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_1(6));
   ix63307z7110 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx63307z14, dataa=>u_lab3_subtrahend_4(6), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_5(6));
   ix63307z7112 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx63307z16, dataa=>u_lab3_subtrahend_8(6), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_9(6));
   ix63307z7114 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx63307z18, dataa=>u_lab3_subtrahend_12(6), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_13(6));
   ix63307z7106 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx63307z10, dataa=>nx63307z11, datab=>
      u_lab3_column(2), datac=>u_lab3_column(3), datad=>nx63307z13);
   ix46976z7113 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx46976z17, dataa=>nx46976z18, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_14(7), datad=>
      u_lab3_subtrahend_15(7));
   ix46976z7111 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx46976z15, dataa=>nx46976z16, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_10(7), datad=>
      u_lab3_subtrahend_11(7));
   ix46976z7109 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx46976z13, dataa=>nx46976z14, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_6(7), datad=>
      u_lab3_subtrahend_7(7));
   ix46976z7107 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ea62") 
       port map ( combout=>nx46976z11, dataa=>nx46976z12, datab=>
      u_lab3_column(1), datac=>u_lab3_subtrahend_2(7), datad=>
      u_lab3_subtrahend_3(7));
   ix46976z7108 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx46976z12, dataa=>u_lab3_subtrahend_0(7), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_1(7));
   ix46976z7110 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx46976z14, dataa=>u_lab3_subtrahend_4(7), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_5(7));
   ix46976z7112 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx46976z16, dataa=>u_lab3_subtrahend_8(7), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_9(7));
   ix46976z7114 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx46976z18, dataa=>u_lab3_subtrahend_12(7), datab
      =>u_lab3_column(0), datac=>u_lab3_column(1), datad=>
      u_lab3_subtrahend_13(7));
   ix46976z7106 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cec2") 
       port map ( combout=>nx46976z10, dataa=>nx46976z11, datab=>
      u_lab3_column(2), datac=>u_lab3_column(3), datad=>nx46976z13);
   ix51544z7112 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>seg7_num(7), datab=>nx51544z11, datac=>o_data(7), 
      datad=>sw(0));
   ix51544z7110 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>seg7_num(6), datab=>nx51544z10, datac=>o_data(6), 
      datad=>sw(0));
   ix51544z7108 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>seg7_num(5), datab=>nx51544z9, datac=>o_data(5), 
      datad=>sw(0));
   ix51544z7106 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>seg7_num(4), datab=>nx51544z8, datac=>o_data(4), 
      datad=>sw(0));
   ix51544z7103 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>seg7_num(3), datab=>nx51544z6, datac=>o_data(3), 
      datad=>sw(0));
   ix51544z7101 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>seg7_num(2), datab=>nx51544z5, datac=>o_data(2), 
      datad=>sw(0));
   ix51544z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>seg7_num(1), datab=>nx51544z4, datac=>o_data(1), 
      datad=>sw(0));
   ix51544z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>seg7_num(0), datab=>nx51544z3, datac=>o_data(0), 
      datad=>sw(0));
   ix8546z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>byte_reg_2n1ss1(7), datab=>byte_count(7), datac=>
      i_data(7), datad=>sw(7));
   ix9543z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>byte_reg_2n1ss1(6), datab=>byte_count(6), datac=>
      i_data(6), datad=>sw(7));
   ix10540z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>byte_reg_2n1ss1(5), datab=>byte_count(5), datac=>
      i_data(5), datad=>sw(7));
   ix11537z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>byte_reg_2n1ss1(4), datab=>byte_count(4), datac=>
      i_data(4), datad=>sw(7));
   ix12534z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>byte_reg_2n1ss1(3), datab=>byte_count(3), datac=>
      i_data(3), datad=>sw(7));
   ix13531z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>byte_reg_2n1ss1(2), datab=>byte_count(2), datac=>
      i_data(2), datad=>sw(7));
   ix14528z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>byte_reg_2n1ss1(1), datab=>byte_count(1), datac=>
      i_data(1), datad=>sw(7));
   ix15525z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>byte_reg_2n1ss1(0), datab=>byte_count(0), datac=>
      i_data(0), datad=>sw(7));
   ix60976z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ffc0") 
       port map ( combout=>byte_valid_3n0r1, datab=>byte_valid, datac=>
      tx_busy, datad=>i_valid);
   ix51544z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx51544z3, datab=>byte_count(0), datac=>
      byte_reg(0), datad=>sw(1));
   ix51544z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx51544z4, datab=>byte_count(1), datac=>
      byte_reg(1), datad=>sw(1));
   ix51544z7102 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx51544z5, datab=>byte_count(2), datac=>
      byte_reg(2), datad=>sw(1));
   ix51544z7104 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx51544z6, datab=>byte_count(3), datac=>
      byte_reg(3), datad=>sw(1));
   ix51544z7107 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx51544z8, datab=>byte_count(4), datac=>
      byte_reg(4), datad=>sw(1));
   ix51544z7109 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx51544z9, datab=>byte_count(5), datac=>
      byte_reg(5), datad=>sw(1));
   ix51544z7111 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx51544z10, datab=>byte_count(6), datac=>
      byte_reg(6), datad=>sw(1));
   ix51544z7113 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx51544z11, datab=>byte_count(7), datac=>
      byte_reg(7), datad=>sw(1));
   ix51544z7105 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ef7c") 
       port map ( combout=>u_seg7_rtlcP1(13), dataa=>seg7_num(4), datab=>
      seg7_num(5), datac=>seg7_num(6), datad=>seg7_num(7));
   ix28027z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"df71") 
       port map ( combout=>u_seg7_rtlcP1(12), dataa=>seg7_num(4), datab=>
      seg7_num(5), datac=>seg7_num(6), datad=>seg7_num(7));
   ix7365z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fd45") 
       port map ( combout=>u_seg7_rtlcP1(11), dataa=>seg7_num(4), datab=>
      seg7_num(5), datac=>seg7_num(6), datad=>seg7_num(7));
   ix6368z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"7b6d") 
       port map ( combout=>u_seg7_rtlcP1(10), dataa=>seg7_num(4), datab=>
      seg7_num(5), datac=>seg7_num(6), datad=>seg7_num(7));
   ix5371z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"2ffb") 
       port map ( combout=>u_seg7_rtlcP1(9), dataa=>seg7_num(4), datab=>
      seg7_num(5), datac=>seg7_num(6), datad=>seg7_num(7));
   ix18625z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"279f") 
       port map ( combout=>u_seg7_rtlcP1(8), dataa=>seg7_num(4), datab=>
      seg7_num(5), datac=>seg7_num(6), datad=>seg7_num(7));
   ix3377z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"d7ed") 
       port map ( combout=>u_seg7_rtlcP1(7), dataa=>seg7_num(4), datab=>
      seg7_num(5), datac=>seg7_num(6), datad=>seg7_num(7));
   ix51544z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ef7c") 
       port map ( combout=>u_seg7_rtlcP1(6), dataa=>seg7_num(0), datab=>
      seg7_num(1), datac=>seg7_num(2), datad=>seg7_num(3));
   ix28027z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"df71") 
       port map ( combout=>u_seg7_rtlcP1(5), dataa=>seg7_num(0), datab=>
      seg7_num(1), datac=>seg7_num(2), datad=>seg7_num(3));
   ix7365z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fd45") 
       port map ( combout=>u_seg7_rtlcP1(4), dataa=>seg7_num(0), datab=>
      seg7_num(1), datac=>seg7_num(2), datad=>seg7_num(3));
   ix6368z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"7b6d") 
       port map ( combout=>u_seg7_rtlcP1(3), dataa=>seg7_num(0), datab=>
      seg7_num(1), datac=>seg7_num(2), datad=>seg7_num(3));
   ix5371z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"2ffb") 
       port map ( combout=>u_seg7_rtlcP1(2), dataa=>seg7_num(0), datab=>
      seg7_num(1), datac=>seg7_num(2), datad=>seg7_num(3));
   ix18625z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"279f") 
       port map ( combout=>u_seg7_rtlcP1(1), dataa=>seg7_num(0), datab=>
      seg7_num(1), datac=>seg7_num(2), datad=>seg7_num(3));
   ix3377z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"d7ed") 
       port map ( combout=>u_seg7_rtlcP1(0), dataa=>seg7_num(0), datab=>
      seg7_num(1), datac=>seg7_num(2), datad=>seg7_num(3));
   ix7365z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>u_seg7_u_dual_seg7_muxed_char_4, datab=>
      u_seg7_rtlcP1(4), datac=>u_seg7_rtlcP1(11), datad=>seg7_en_EXMPLR38(1)
   );
   ix6368z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>u_seg7_u_dual_seg7_muxed_char_3, datab=>
      u_seg7_rtlcP1(3), datac=>u_seg7_rtlcP1(10), datad=>seg7_en_EXMPLR38(1)
   );
   ix5371z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>u_seg7_u_dual_seg7_muxed_char_2, datab=>
      u_seg7_rtlcP1(2), datac=>u_seg7_rtlcP1(9), datad=>seg7_en_EXMPLR38(1)
   );
   ix3377z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>u_seg7_u_dual_seg7_muxed_char_0, datab=>
      u_seg7_rtlcP1(0), datac=>u_seg7_rtlcP1(7), datad=>seg7_en_EXMPLR38(1)
   );
   ix60244z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"000f") 
       port map ( combout=>nx60244z1, datac=>u_seg7_u_dual_seg7_prev_reset, 
      datad=>reset_n);
   ix10356z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f00f") 
       port map ( combout=>u_seg7_u_dual_seg7_load_reg, datac=>
      u_seg7_u_dual_seg7_prev_char0_en, datad=>seg7_en_EXMPLR38(1));
   ix22863z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0ff") 
       port map ( combout=>nx22863z1, datac=>nx60456z2, datad=>nx46026z2);
   ix21131z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"000f") 
       port map ( combout=>NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_8, datac=>
      yes_uart_u_uart_TxFSM(1), datad=>byte_reg(7));
   ix22128z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c0f3") 
       port map ( combout=>NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_7, datab=>
      yes_uart_u_uart_TxFSM(1), datac=>nx22128z1, datad=>byte_reg(6));
   ix23125z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c0f3") 
       port map ( combout=>NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_6, datab=>
      yes_uart_u_uart_TxFSM(1), datac=>nx23125z1, datad=>byte_reg(5));
   ix24122z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c0f3") 
       port map ( combout=>NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_5, datab=>
      yes_uart_u_uart_TxFSM(1), datac=>nx24122z1, datad=>byte_reg(4));
   ix25119z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c0f3") 
       port map ( combout=>NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_4, datab=>
      yes_uart_u_uart_TxFSM(1), datac=>nx25119z1, datad=>byte_reg(3));
   ix26116z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c0f3") 
       port map ( combout=>NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_3, datab=>
      yes_uart_u_uart_TxFSM(1), datac=>nx26116z1, datad=>byte_reg(2));
   ix27113z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c0f3") 
       port map ( combout=>NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_2, datab=>
      yes_uart_u_uart_TxFSM(1), datac=>nx27113z1, datad=>byte_reg(1));
   ix28110z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c0f3") 
       port map ( combout=>NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_1, datab=>
      yes_uart_u_uart_TxFSM(1), datac=>nx28110z1, datad=>byte_reg(0));
   ix29107z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"03f3") 
       port map ( combout=>yes_uart_u_uart_Tx_Reg_14n6ss1(0), datab=>
      yes_uart_u_uart_TxFSM(0), datac=>yes_uart_u_uart_TxFSM(1), datad=>
      nx29107z3);
   ix46918z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f7ff") 
       port map ( combout=>nx46918z3, dataa=>nx46918z4, datab=>
      yes_uart_u_uart_TxBitCnt(0), datac=>yes_uart_u_uart_TxBitCnt(1), datad
      =>yes_uart_u_uart_TopTx);
   ix21131z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5140") 
       port map ( combout=>nx21131z1, dataa=>yes_uart_u_uart_TxFSM(0), datab
      =>yes_uart_u_uart_TxFSM(1), datac=>yes_uart_u_uart_TopTx, datad=>
      byte_valid);
   ix49278z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f00") 
       port map ( combout=>nx49278z2, datac=>yes_uart_u_uart_TxFSM(1), datad
      =>yes_uart_u_uart_TopTx);
   ix46463z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0c00") 
       port map ( combout=>nx46463z1, datab=>yes_uart_u_uart_RxFSM(4), datac
      =>nx64005z3, datad=>yes_uart_u_uart_TopRx);
   ix2098z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f000") 
       port map ( combout=>nx2098z1, datac=>yes_uart_u_uart_RxFSM(3), datad
      =>yes_uart_u_uart_TopRx);
   ix29107z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8e9f") 
       port map ( combout=>nx29107z2, dataa=>yes_uart_u_uart_TxFSM(0), datab
      =>yes_uart_u_uart_TxFSM(1), datac=>yes_uart_u_uart_TopTx, datad=>
      byte_valid);
   ix64005z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"3330") 
       port map ( combout=>nx64005z1, datab=>nx64005z2, datac=>nx46026z2, 
      datad=>nx64005z3);
   ix463z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f00") 
       port map ( combout=>nx463z1, datac=>nx1460z2, datad=>
      yes_uart_u_uart_RxFSM(2));
   ix65002z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fcf0") 
       port map ( combout=>nx65002z1, datab=>yes_uart_u_uart_RxFSM(1), datac
      =>yes_uart_u_uart_RxFSM(3), datad=>nx64005z3);
   ix63008z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f03") 
       port map ( combout=>nx63008z1, datab=>yes_uart_u_uart_RxFSM(4), datac
      =>yes_uart_u_uart_RxFSM(5), datad=>nx64005z3);
   ix1460z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f000") 
       port map ( combout=>nx1460z1, datac=>nx1460z2, datad=>
      yes_uart_u_uart_RxFSM(2));
   ix60456z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f000") 
       port map ( combout=>nx60456z1, datac=>nx60456z2, datad=>nx46026z2);
   ix2457z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx2457z1, datab=>yes_uart_u_uart_RxFSM(1), datac
      =>yes_uart_u_uart_RxFSM(4), datad=>nx64005z3);
   ix46262z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffc") 
       port map ( combout=>nx46262z1, datab=>yes_uart_u_uart_TxFSM(0), datac
      =>yes_uart_u_uart_TxFSM(1), datad=>byte_valid);
   ix60456z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"a0c0") 
       port map ( combout=>nx60456z2, dataa=>nx60456z3, datab=>nx60456z4, 
      datac=>nx60456z5, datad=>yes_uart_u_uart_RxDiv(6));
   ix62450z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0080") 
       port map ( combout=>nx62450z1, dataa=>nx62450z2, datab=>nx62450z3, 
      datac=>nx62450z4, datad=>yes_uart_u_uart_TxDiv(6));
   ix1460z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx1460z2, dataa=>yes_uart_u_uart_RxBitCnt(0), 
      datab=>yes_uart_u_uart_RxBitCnt(1), datac=>yes_uart_u_uart_RxBitCnt(2), 
      datad=>yes_uart_u_uart_RxBitCnt(3));
   ix60357z7101 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f000") 
       port map ( combout=>nx60357z7, datac=>i_valid, datad=>reset_n);
   ix63348z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c000") 
       port map ( combout=>nx63348z2, datab=>nx63348z3, datac=>nx62351z3, 
      datad=>u_lab3_compute_flag);
   ix63348z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0ff") 
       port map ( combout=>u_lab3_rtlc0_PS25_n202, datac=>i_valid, datad=>
      reset_n);
   ix62976z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ff0f") 
       port map ( combout=>nx62976z4, datac=>nx6634z2, datad=>
      u_lab3_state(1));
   ix47763z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_487, dataa=>
      u_lab3_subtrahend_15(7), datab=>nx47763z1, datac=>u_lab3_state(2), 
      datad=>i_data(7));
   ix48760z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_486, dataa=>
      u_lab3_subtrahend_15(6), datab=>nx47763z1, datac=>u_lab3_state(2), 
      datad=>i_data(6));
   ix49757z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_485, dataa=>
      u_lab3_subtrahend_15(5), datab=>nx47763z1, datac=>u_lab3_state(2), 
      datad=>i_data(5));
   ix50754z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_484, dataa=>
      u_lab3_subtrahend_15(4), datab=>nx47763z1, datac=>u_lab3_state(2), 
      datad=>i_data(4));
   ix51751z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_483, dataa=>
      u_lab3_subtrahend_15(3), datab=>nx47763z1, datac=>u_lab3_state(2), 
      datad=>i_data(3));
   ix52748z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_482, dataa=>
      u_lab3_subtrahend_15(2), datab=>nx47763z1, datac=>u_lab3_state(2), 
      datad=>i_data(2));
   ix53745z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_481, dataa=>
      u_lab3_subtrahend_15(1), datab=>nx47763z1, datac=>u_lab3_state(2), 
      datad=>i_data(1));
   ix54742z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_480, dataa=>
      u_lab3_subtrahend_15(0), datab=>nx47763z1, datac=>u_lab3_state(2), 
      datad=>i_data(0));
   ix42628z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_455, dataa=>
      u_lab3_subtrahend_14(7), datab=>nx42628z1, datac=>u_lab3_state(2), 
      datad=>i_data(7));
   ix43625z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_454, dataa=>
      u_lab3_subtrahend_14(6), datab=>nx42628z1, datac=>u_lab3_state(2), 
      datad=>i_data(6));
   ix44622z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_453, dataa=>
      u_lab3_subtrahend_14(5), datab=>nx42628z1, datac=>u_lab3_state(2), 
      datad=>i_data(5));
   ix45619z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_452, dataa=>
      u_lab3_subtrahend_14(4), datab=>nx42628z1, datac=>u_lab3_state(2), 
      datad=>i_data(4));
   ix46616z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_451, dataa=>
      u_lab3_subtrahend_14(3), datab=>nx42628z1, datac=>u_lab3_state(2), 
      datad=>i_data(3));
   ix47613z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_450, dataa=>
      u_lab3_subtrahend_14(2), datab=>nx42628z1, datac=>u_lab3_state(2), 
      datad=>i_data(2));
   ix48610z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_449, dataa=>
      u_lab3_subtrahend_14(1), datab=>nx42628z1, datac=>u_lab3_state(2), 
      datad=>i_data(1));
   ix49607z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_448, dataa=>
      u_lab3_subtrahend_14(0), datab=>nx42628z1, datac=>u_lab3_state(2), 
      datad=>i_data(0));
   ix37493z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_423, dataa=>
      u_lab3_subtrahend_13(7), datab=>nx37493z1, datac=>u_lab3_state(2), 
      datad=>i_data(7));
   ix38490z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_422, dataa=>
      u_lab3_subtrahend_13(6), datab=>nx37493z1, datac=>u_lab3_state(2), 
      datad=>i_data(6));
   ix39487z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_421, dataa=>
      u_lab3_subtrahend_13(5), datab=>nx37493z1, datac=>u_lab3_state(2), 
      datad=>i_data(5));
   ix40484z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_420, dataa=>
      u_lab3_subtrahend_13(4), datab=>nx37493z1, datac=>u_lab3_state(2), 
      datad=>i_data(4));
   ix41481z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_419, dataa=>
      u_lab3_subtrahend_13(3), datab=>nx37493z1, datac=>u_lab3_state(2), 
      datad=>i_data(3));
   ix42478z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_418, dataa=>
      u_lab3_subtrahend_13(2), datab=>nx37493z1, datac=>u_lab3_state(2), 
      datad=>i_data(2));
   ix43475z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_417, dataa=>
      u_lab3_subtrahend_13(1), datab=>nx37493z1, datac=>u_lab3_state(2), 
      datad=>i_data(1));
   ix44472z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_416, dataa=>
      u_lab3_subtrahend_13(0), datab=>nx37493z1, datac=>u_lab3_state(2), 
      datad=>i_data(0));
   ix32358z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_391, dataa=>
      u_lab3_subtrahend_12(7), datab=>nx32358z1, datac=>u_lab3_state(2), 
      datad=>i_data(7));
   ix33355z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_390, dataa=>
      u_lab3_subtrahend_12(6), datab=>nx32358z1, datac=>u_lab3_state(2), 
      datad=>i_data(6));
   ix34352z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_389, dataa=>
      u_lab3_subtrahend_12(5), datab=>nx32358z1, datac=>u_lab3_state(2), 
      datad=>i_data(5));
   ix35349z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_388, dataa=>
      u_lab3_subtrahend_12(4), datab=>nx32358z1, datac=>u_lab3_state(2), 
      datad=>i_data(4));
   ix36346z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_387, dataa=>
      u_lab3_subtrahend_12(3), datab=>nx32358z1, datac=>u_lab3_state(2), 
      datad=>i_data(3));
   ix37343z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_386, dataa=>
      u_lab3_subtrahend_12(2), datab=>nx32358z1, datac=>u_lab3_state(2), 
      datad=>i_data(2));
   ix38340z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_385, dataa=>
      u_lab3_subtrahend_12(1), datab=>nx32358z1, datac=>u_lab3_state(2), 
      datad=>i_data(1));
   ix39337z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_384, dataa=>
      u_lab3_subtrahend_12(0), datab=>nx32358z1, datac=>u_lab3_state(2), 
      datad=>i_data(0));
   ix27223z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_359, dataa=>
      u_lab3_subtrahend_11(7), datab=>nx27223z1, datac=>u_lab3_state(2), 
      datad=>i_data(7));
   ix28220z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_358, dataa=>
      u_lab3_subtrahend_11(6), datab=>nx27223z1, datac=>u_lab3_state(2), 
      datad=>i_data(6));
   ix29217z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_357, dataa=>
      u_lab3_subtrahend_11(5), datab=>nx27223z1, datac=>u_lab3_state(2), 
      datad=>i_data(5));
   ix30214z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_356, dataa=>
      u_lab3_subtrahend_11(4), datab=>nx27223z1, datac=>u_lab3_state(2), 
      datad=>i_data(4));
   ix31211z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_355, dataa=>
      u_lab3_subtrahend_11(3), datab=>nx27223z1, datac=>u_lab3_state(2), 
      datad=>i_data(3));
   ix32208z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_354, dataa=>
      u_lab3_subtrahend_11(2), datab=>nx27223z1, datac=>u_lab3_state(2), 
      datad=>i_data(2));
   ix33205z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_353, dataa=>
      u_lab3_subtrahend_11(1), datab=>nx27223z1, datac=>u_lab3_state(2), 
      datad=>i_data(1));
   ix34202z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_352, dataa=>
      u_lab3_subtrahend_11(0), datab=>nx27223z1, datac=>u_lab3_state(2), 
      datad=>i_data(0));
   ix22088z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_327, dataa=>
      u_lab3_subtrahend_10(7), datab=>nx22088z1, datac=>u_lab3_state(2), 
      datad=>i_data(7));
   ix23085z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_326, dataa=>
      u_lab3_subtrahend_10(6), datab=>nx22088z1, datac=>u_lab3_state(2), 
      datad=>i_data(6));
   ix24082z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_325, dataa=>
      u_lab3_subtrahend_10(5), datab=>nx22088z1, datac=>u_lab3_state(2), 
      datad=>i_data(5));
   ix25079z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_324, dataa=>
      u_lab3_subtrahend_10(4), datab=>nx22088z1, datac=>u_lab3_state(2), 
      datad=>i_data(4));
   ix26076z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_323, dataa=>
      u_lab3_subtrahend_10(3), datab=>nx22088z1, datac=>u_lab3_state(2), 
      datad=>i_data(3));
   ix27073z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_322, dataa=>
      u_lab3_subtrahend_10(2), datab=>nx22088z1, datac=>u_lab3_state(2), 
      datad=>i_data(2));
   ix28070z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_321, dataa=>
      u_lab3_subtrahend_10(1), datab=>nx22088z1, datac=>u_lab3_state(2), 
      datad=>i_data(1));
   ix29067z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_320, dataa=>
      u_lab3_subtrahend_10(0), datab=>nx22088z1, datac=>u_lab3_state(2), 
      datad=>i_data(0));
   ix41564z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_295, dataa=>
      u_lab3_subtrahend_9(7), datab=>nx41564z1, datac=>u_lab3_state(2), 
      datad=>i_data(7));
   ix42561z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_294, dataa=>
      u_lab3_subtrahend_9(6), datab=>nx41564z1, datac=>u_lab3_state(2), 
      datad=>i_data(6));
   ix43558z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_293, dataa=>
      u_lab3_subtrahend_9(5), datab=>nx41564z1, datac=>u_lab3_state(2), 
      datad=>i_data(5));
   ix44555z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_292, dataa=>
      u_lab3_subtrahend_9(4), datab=>nx41564z1, datac=>u_lab3_state(2), 
      datad=>i_data(4));
   ix45552z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_291, dataa=>
      u_lab3_subtrahend_9(3), datab=>nx41564z1, datac=>u_lab3_state(2), 
      datad=>i_data(3));
   ix46549z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_290, dataa=>
      u_lab3_subtrahend_9(2), datab=>nx41564z1, datac=>u_lab3_state(2), 
      datad=>i_data(2));
   ix47546z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_289, dataa=>
      u_lab3_subtrahend_9(1), datab=>nx41564z1, datac=>u_lab3_state(2), 
      datad=>i_data(1));
   ix48543z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_288, dataa=>
      u_lab3_subtrahend_9(0), datab=>nx41564z1, datac=>u_lab3_state(2), 
      datad=>i_data(0));
   ix36429z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_263, dataa=>
      u_lab3_subtrahend_8(7), datab=>nx36429z1, datac=>u_lab3_state(2), 
      datad=>i_data(7));
   ix37426z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_262, dataa=>
      u_lab3_subtrahend_8(6), datab=>nx36429z1, datac=>u_lab3_state(2), 
      datad=>i_data(6));
   ix38423z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_261, dataa=>
      u_lab3_subtrahend_8(5), datab=>nx36429z1, datac=>u_lab3_state(2), 
      datad=>i_data(5));
   ix39420z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_260, dataa=>
      u_lab3_subtrahend_8(4), datab=>nx36429z1, datac=>u_lab3_state(2), 
      datad=>i_data(4));
   ix40417z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_259, dataa=>
      u_lab3_subtrahend_8(3), datab=>nx36429z1, datac=>u_lab3_state(2), 
      datad=>i_data(3));
   ix41414z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_258, dataa=>
      u_lab3_subtrahend_8(2), datab=>nx36429z1, datac=>u_lab3_state(2), 
      datad=>i_data(2));
   ix42411z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_257, dataa=>
      u_lab3_subtrahend_8(1), datab=>nx36429z1, datac=>u_lab3_state(2), 
      datad=>i_data(1));
   ix43408z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_256, dataa=>
      u_lab3_subtrahend_8(0), datab=>nx36429z1, datac=>u_lab3_state(2), 
      datad=>i_data(0));
   ix31294z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_231, dataa=>
      u_lab3_subtrahend_7(7), datab=>nx31294z1, datac=>u_lab3_state(2), 
      datad=>i_data(7));
   ix32291z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_230, dataa=>
      u_lab3_subtrahend_7(6), datab=>nx31294z1, datac=>u_lab3_state(2), 
      datad=>i_data(6));
   ix33288z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_229, dataa=>
      u_lab3_subtrahend_7(5), datab=>nx31294z1, datac=>u_lab3_state(2), 
      datad=>i_data(5));
   ix34285z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_228, dataa=>
      u_lab3_subtrahend_7(4), datab=>nx31294z1, datac=>u_lab3_state(2), 
      datad=>i_data(4));
   ix35282z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_227, dataa=>
      u_lab3_subtrahend_7(3), datab=>nx31294z1, datac=>u_lab3_state(2), 
      datad=>i_data(3));
   ix36279z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_226, dataa=>
      u_lab3_subtrahend_7(2), datab=>nx31294z1, datac=>u_lab3_state(2), 
      datad=>i_data(2));
   ix37276z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_225, dataa=>
      u_lab3_subtrahend_7(1), datab=>nx31294z1, datac=>u_lab3_state(2), 
      datad=>i_data(1));
   ix38273z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_224, dataa=>
      u_lab3_subtrahend_7(0), datab=>nx31294z1, datac=>u_lab3_state(2), 
      datad=>i_data(0));
   ix26159z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_199, dataa=>
      u_lab3_subtrahend_6(7), datab=>nx26159z1, datac=>u_lab3_state(2), 
      datad=>i_data(7));
   ix27156z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_198, dataa=>
      u_lab3_subtrahend_6(6), datab=>nx26159z1, datac=>u_lab3_state(2), 
      datad=>i_data(6));
   ix28153z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_197, dataa=>
      u_lab3_subtrahend_6(5), datab=>nx26159z1, datac=>u_lab3_state(2), 
      datad=>i_data(5));
   ix29150z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_196, dataa=>
      u_lab3_subtrahend_6(4), datab=>nx26159z1, datac=>u_lab3_state(2), 
      datad=>i_data(4));
   ix30147z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_195, dataa=>
      u_lab3_subtrahend_6(3), datab=>nx26159z1, datac=>u_lab3_state(2), 
      datad=>i_data(3));
   ix31144z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_194, dataa=>
      u_lab3_subtrahend_6(2), datab=>nx26159z1, datac=>u_lab3_state(2), 
      datad=>i_data(2));
   ix32141z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_193, dataa=>
      u_lab3_subtrahend_6(1), datab=>nx26159z1, datac=>u_lab3_state(2), 
      datad=>i_data(1));
   ix33138z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_192, dataa=>
      u_lab3_subtrahend_6(0), datab=>nx26159z1, datac=>u_lab3_state(2), 
      datad=>i_data(0));
   ix21024z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_167, dataa=>
      u_lab3_subtrahend_5(7), datab=>nx21024z1, datac=>u_lab3_state(2), 
      datad=>i_data(7));
   ix22021z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_166, dataa=>
      u_lab3_subtrahend_5(6), datab=>nx21024z1, datac=>u_lab3_state(2), 
      datad=>i_data(6));
   ix23018z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_165, dataa=>
      u_lab3_subtrahend_5(5), datab=>nx21024z1, datac=>u_lab3_state(2), 
      datad=>i_data(5));
   ix24015z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_164, dataa=>
      u_lab3_subtrahend_5(4), datab=>nx21024z1, datac=>u_lab3_state(2), 
      datad=>i_data(4));
   ix25012z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_163, dataa=>
      u_lab3_subtrahend_5(3), datab=>nx21024z1, datac=>u_lab3_state(2), 
      datad=>i_data(3));
   ix26009z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_162, dataa=>
      u_lab3_subtrahend_5(2), datab=>nx21024z1, datac=>u_lab3_state(2), 
      datad=>i_data(2));
   ix27006z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_161, dataa=>
      u_lab3_subtrahend_5(1), datab=>nx21024z1, datac=>u_lab3_state(2), 
      datad=>i_data(1));
   ix28003z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_160, dataa=>
      u_lab3_subtrahend_5(0), datab=>nx21024z1, datac=>u_lab3_state(2), 
      datad=>i_data(0));
   ix15889z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_135, dataa=>
      u_lab3_subtrahend_4(7), datab=>nx15889z1, datac=>u_lab3_state(2), 
      datad=>i_data(7));
   ix16886z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_134, dataa=>
      u_lab3_subtrahend_4(6), datab=>nx15889z1, datac=>u_lab3_state(2), 
      datad=>i_data(6));
   ix17883z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_133, dataa=>
      u_lab3_subtrahend_4(5), datab=>nx15889z1, datac=>u_lab3_state(2), 
      datad=>i_data(5));
   ix18880z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_132, dataa=>
      u_lab3_subtrahend_4(4), datab=>nx15889z1, datac=>u_lab3_state(2), 
      datad=>i_data(4));
   ix19877z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_131, dataa=>
      u_lab3_subtrahend_4(3), datab=>nx15889z1, datac=>u_lab3_state(2), 
      datad=>i_data(3));
   ix20874z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_130, dataa=>
      u_lab3_subtrahend_4(2), datab=>nx15889z1, datac=>u_lab3_state(2), 
      datad=>i_data(2));
   ix21871z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_129, dataa=>
      u_lab3_subtrahend_4(1), datab=>nx15889z1, datac=>u_lab3_state(2), 
      datad=>i_data(1));
   ix22868z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_128, dataa=>
      u_lab3_subtrahend_4(0), datab=>nx15889z1, datac=>u_lab3_state(2), 
      datad=>i_data(0));
   ix54782z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_103, dataa=>
      u_lab3_subtrahend_3(7), datab=>nx54782z1, datac=>u_lab3_state(2), 
      datad=>i_data(7));
   ix53785z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_102, dataa=>
      u_lab3_subtrahend_3(6), datab=>nx54782z1, datac=>u_lab3_state(2), 
      datad=>i_data(6));
   ix52788z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_101, dataa=>
      u_lab3_subtrahend_3(5), datab=>nx54782z1, datac=>u_lab3_state(2), 
      datad=>i_data(5));
   ix51791z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_100, dataa=>
      u_lab3_subtrahend_3(4), datab=>nx54782z1, datac=>u_lab3_state(2), 
      datad=>i_data(4));
   ix50794z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_99, dataa=>
      u_lab3_subtrahend_3(3), datab=>nx54782z1, datac=>u_lab3_state(2), 
      datad=>i_data(3));
   ix49797z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_98, dataa=>
      u_lab3_subtrahend_3(2), datab=>nx54782z1, datac=>u_lab3_state(2), 
      datad=>i_data(2));
   ix48800z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_97, dataa=>
      u_lab3_subtrahend_3(1), datab=>nx54782z1, datac=>u_lab3_state(2), 
      datad=>i_data(1));
   ix47803z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_96, dataa=>
      u_lab3_subtrahend_3(0), datab=>nx54782z1, datac=>u_lab3_state(2), 
      datad=>i_data(0));
   ix59917z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_71, dataa=>
      u_lab3_subtrahend_2(7), datab=>nx59917z1, datac=>u_lab3_state(2), 
      datad=>i_data(7));
   ix58920z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_70, dataa=>
      u_lab3_subtrahend_2(6), datab=>nx59917z1, datac=>u_lab3_state(2), 
      datad=>i_data(6));
   ix57923z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_69, dataa=>
      u_lab3_subtrahend_2(5), datab=>nx59917z1, datac=>u_lab3_state(2), 
      datad=>i_data(5));
   ix56926z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_68, dataa=>
      u_lab3_subtrahend_2(4), datab=>nx59917z1, datac=>u_lab3_state(2), 
      datad=>i_data(4));
   ix55929z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_67, dataa=>
      u_lab3_subtrahend_2(3), datab=>nx59917z1, datac=>u_lab3_state(2), 
      datad=>i_data(3));
   ix54932z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_66, dataa=>
      u_lab3_subtrahend_2(2), datab=>nx59917z1, datac=>u_lab3_state(2), 
      datad=>i_data(2));
   ix53935z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_65, dataa=>
      u_lab3_subtrahend_2(1), datab=>nx59917z1, datac=>u_lab3_state(2), 
      datad=>i_data(1));
   ix52938z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_64, dataa=>
      u_lab3_subtrahend_2(0), datab=>nx59917z1, datac=>u_lab3_state(2), 
      datad=>i_data(0));
   ix65052z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_39, dataa=>
      u_lab3_subtrahend_1(7), datab=>nx65052z1, datac=>u_lab3_state(2), 
      datad=>i_data(7));
   ix64055z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_38, dataa=>
      u_lab3_subtrahend_1(6), datab=>nx65052z1, datac=>u_lab3_state(2), 
      datad=>i_data(6));
   ix63058z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_37, dataa=>
      u_lab3_subtrahend_1(5), datab=>nx65052z1, datac=>u_lab3_state(2), 
      datad=>i_data(5));
   ix62061z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_36, dataa=>
      u_lab3_subtrahend_1(4), datab=>nx65052z1, datac=>u_lab3_state(2), 
      datad=>i_data(4));
   ix61064z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_35, dataa=>
      u_lab3_subtrahend_1(3), datab=>nx65052z1, datac=>u_lab3_state(2), 
      datad=>i_data(3));
   ix60067z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_34, dataa=>
      u_lab3_subtrahend_1(2), datab=>nx65052z1, datac=>u_lab3_state(2), 
      datad=>i_data(2));
   ix59070z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_33, dataa=>
      u_lab3_subtrahend_1(1), datab=>nx65052z1, datac=>u_lab3_state(2), 
      datad=>i_data(1));
   ix58073z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_32, dataa=>
      u_lab3_subtrahend_1(0), datab=>nx65052z1, datac=>u_lab3_state(2), 
      datad=>i_data(0));
   ix4651z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_7, dataa=>
      u_lab3_subtrahend_0(7), datab=>nx4651z1, datac=>u_lab3_state(2), datad
      =>i_data(7));
   ix3654z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_6, dataa=>
      u_lab3_subtrahend_0(6), datab=>nx4651z1, datac=>u_lab3_state(2), datad
      =>i_data(6));
   ix2657z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_5, dataa=>
      u_lab3_subtrahend_0(5), datab=>nx4651z1, datac=>u_lab3_state(2), datad
      =>i_data(5));
   ix1660z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_4, dataa=>
      u_lab3_subtrahend_0(4), datab=>nx4651z1, datac=>u_lab3_state(2), datad
      =>i_data(4));
   ix663z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_3, dataa=>
      u_lab3_subtrahend_0(3), datab=>nx4651z1, datac=>u_lab3_state(2), datad
      =>i_data(3));
   ix65202z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_2, dataa=>
      u_lab3_subtrahend_0(2), datab=>nx4651z1, datac=>u_lab3_state(2), datad
      =>i_data(2));
   ix64205z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_1, dataa=>
      u_lab3_subtrahend_0(1), datab=>nx4651z1, datac=>u_lab3_state(2), datad
      =>i_data(1));
   ix63208z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b3a0") 
       port map ( combout=>u_lab3_minuend_1n10ss1_0, dataa=>
      u_lab3_subtrahend_0(0), datab=>nx4651z1, datac=>u_lab3_state(2), datad
      =>i_data(0));
   ix48923z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c000") 
       port map ( combout=>nx48923z6, datab=>nx41843z4, datac=>nx41843z5, 
      datad=>i_valid);
   ix53092z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0cfc") 
       port map ( combout=>nx53092z2, datab=>nx6634z2, datac=>
      u_lab3_state(3), datad=>i_valid);
   ix41843z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"70f0") 
       port map ( combout=>nx41843z3, dataa=>nx41843z4, datab=>nx41843z5, 
      datac=>u_lab3_state(1), datad=>i_valid);
   ix41843z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0405") 
       port map ( combout=>nx41843z1, dataa=>nx41843z2, datab=>nx63348z3, 
      datac=>nx41843z3, datad=>u_lab3_state(1));
   ix19416z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"1d11") 
       port map ( combout=>nx19416z1, dataa=>nx6634z2, datab=>
      u_lab3_state(3), datac=>u_lab3_p_31, datad=>i_valid);
   ix16929z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"a303") 
       port map ( combout=>nx16929z1, dataa=>nx63348z13, datab=>nx6634z2, 
      datac=>u_lab3_state(3), datad=>i_valid);
   ix13001z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0c0f") 
       port map ( combout=>nx13001z2, datab=>nx63348z13, datac=>nx11351z3, 
      datad=>u_lab3_state(1));
   ix47763z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0203") 
       port map ( combout=>nx47763z2, dataa=>nx63348z13, datab=>nx11351z5, 
      datac=>nx41843z3, datad=>u_lab3_state(1));
   ix22064z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5303") 
       port map ( combout=>nx22064z1, dataa=>u_lab3_not_minuend_1n1s2_14, 
      datab=>nx6634z2, datac=>u_lab3_state(3), datad=>i_valid);
   ix18136z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"030f") 
       port map ( combout=>nx18136z2, datab=>u_lab3_not_minuend_1n1s2_14, 
      datac=>nx11351z3, datad=>u_lab3_state(1));
   ix42628z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0103") 
       port map ( combout=>nx42628z2, dataa=>u_lab3_not_minuend_1n1s2_14, 
      datab=>nx11351z5, datac=>nx41843z3, datad=>u_lab3_state(1));
   ix27199z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5303") 
       port map ( combout=>nx27199z1, dataa=>u_lab3_not_minuend_1n1s2_13, 
      datab=>nx6634z2, datac=>u_lab3_state(3), datad=>i_valid);
   ix23271z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"030f") 
       port map ( combout=>nx23271z2, datab=>u_lab3_not_minuend_1n1s2_13, 
      datac=>nx11351z3, datad=>u_lab3_state(1));
   ix37493z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0103") 
       port map ( combout=>nx37493z2, dataa=>u_lab3_not_minuend_1n1s2_13, 
      datab=>nx11351z5, datac=>nx41843z3, datad=>u_lab3_state(1));
   ix32334z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5303") 
       port map ( combout=>nx32334z1, dataa=>u_lab3_not_minuend_1n1s2_12, 
      datab=>nx6634z2, datac=>u_lab3_state(3), datad=>i_valid);
   ix28406z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"030f") 
       port map ( combout=>nx28406z2, datab=>u_lab3_not_minuend_1n1s2_12, 
      datac=>nx11351z3, datad=>u_lab3_state(1));
   ix32358z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0103") 
       port map ( combout=>nx32358z2, dataa=>u_lab3_not_minuend_1n1s2_12, 
      datab=>nx11351z5, datac=>nx41843z3, datad=>u_lab3_state(1));
   ix37469z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5303") 
       port map ( combout=>nx37469z1, dataa=>u_lab3_not_minuend_1n1s2_11, 
      datab=>nx6634z2, datac=>u_lab3_state(3), datad=>i_valid);
   ix33541z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"030f") 
       port map ( combout=>nx33541z2, datab=>u_lab3_not_minuend_1n1s2_11, 
      datac=>nx11351z3, datad=>u_lab3_state(1));
   ix27223z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0103") 
       port map ( combout=>nx27223z2, dataa=>u_lab3_not_minuend_1n1s2_11, 
      datab=>nx11351z5, datac=>nx41843z3, datad=>u_lab3_state(1));
   ix42604z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5303") 
       port map ( combout=>nx42604z1, dataa=>u_lab3_not_minuend_1n1s2_10, 
      datab=>nx6634z2, datac=>u_lab3_state(3), datad=>i_valid);
   ix38676z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"030f") 
       port map ( combout=>nx38676z2, datab=>u_lab3_not_minuend_1n1s2_10, 
      datac=>nx11351z3, datad=>u_lab3_state(1));
   ix22088z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0103") 
       port map ( combout=>nx22088z2, dataa=>u_lab3_not_minuend_1n1s2_10, 
      datab=>nx11351z5, datac=>nx41843z3, datad=>u_lab3_state(1));
   ix64440z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5303") 
       port map ( combout=>nx64440z1, dataa=>u_lab3_not_minuend_1n1s2_9, 
      datab=>nx6634z2, datac=>u_lab3_state(3), datad=>i_valid);
   ix34864z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"030f") 
       port map ( combout=>nx34864z2, datab=>u_lab3_not_minuend_1n1s2_9, 
      datac=>nx11351z3, datad=>u_lab3_state(1));
   ix41564z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0103") 
       port map ( combout=>nx41564z2, dataa=>u_lab3_not_minuend_1n1s2_9, 
      datab=>nx11351z5, datac=>nx41843z3, datad=>u_lab3_state(1));
   ix6231z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5303") 
       port map ( combout=>nx6231z1, dataa=>u_lab3_not_minuend_1n1s2_8, 
      datab=>nx6634z2, datac=>u_lab3_state(3), datad=>i_valid);
   ix29729z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"030f") 
       port map ( combout=>nx29729z2, datab=>u_lab3_not_minuend_1n1s2_8, 
      datac=>nx11351z3, datad=>u_lab3_state(1));
   ix36429z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0103") 
       port map ( combout=>nx36429z2, dataa=>u_lab3_not_minuend_1n1s2_8, 
      datab=>nx11351z5, datac=>nx41843z3, datad=>u_lab3_state(1));
   ix11366z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5303") 
       port map ( combout=>nx11366z1, dataa=>u_lab3_not_minuend_1n1s2_7, 
      datab=>nx6634z2, datac=>u_lab3_state(3), datad=>i_valid);
   ix40942z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"030f") 
       port map ( combout=>nx40942z2, datab=>u_lab3_not_minuend_1n1s2_7, 
      datac=>nx11351z3, datad=>u_lab3_state(1));
   ix31294z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0103") 
       port map ( combout=>nx31294z2, dataa=>u_lab3_not_minuend_1n1s2_7, 
      datab=>nx11351z5, datac=>nx41843z3, datad=>u_lab3_state(1));
   ix16501z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5303") 
       port map ( combout=>nx16501z1, dataa=>u_lab3_not_minuend_1n1s2_6, 
      datab=>nx6634z2, datac=>u_lab3_state(3), datad=>i_valid);
   ix46077z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"030f") 
       port map ( combout=>nx46077z2, datab=>u_lab3_not_minuend_1n1s2_6, 
      datac=>nx11351z3, datad=>u_lab3_state(1));
   ix26159z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0103") 
       port map ( combout=>nx26159z2, dataa=>u_lab3_not_minuend_1n1s2_6, 
      datab=>nx11351z5, datac=>nx41843z3, datad=>u_lab3_state(1));
   ix21636z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5303") 
       port map ( combout=>nx21636z1, dataa=>u_lab3_not_minuend_1n1s2_5, 
      datab=>nx6634z2, datac=>u_lab3_state(3), datad=>i_valid);
   ix51212z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"030f") 
       port map ( combout=>nx51212z2, datab=>u_lab3_not_minuend_1n1s2_5, 
      datac=>nx11351z3, datad=>u_lab3_state(1));
   ix21024z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0103") 
       port map ( combout=>nx21024z2, dataa=>u_lab3_not_minuend_1n1s2_5, 
      datab=>nx11351z5, datac=>nx41843z3, datad=>u_lab3_state(1));
   ix26771z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5303") 
       port map ( combout=>nx26771z1, dataa=>u_lab3_not_minuend_1n1s2_4, 
      datab=>nx6634z2, datac=>u_lab3_state(3), datad=>i_valid);
   ix56347z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"030f") 
       port map ( combout=>nx56347z2, datab=>u_lab3_not_minuend_1n1s2_4, 
      datac=>nx11351z3, datad=>u_lab3_state(1));
   ix15889z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0103") 
       port map ( combout=>nx15889z2, dataa=>u_lab3_not_minuend_1n1s2_4, 
      datab=>nx11351z5, datac=>nx41843z3, datad=>u_lab3_state(1));
   ix31906z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5303") 
       port map ( combout=>nx31906z1, dataa=>u_lab3_not_minuend_1n1s2_3, 
      datab=>nx6634z2, datac=>u_lab3_state(3), datad=>i_valid);
   ix61482z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"030f") 
       port map ( combout=>nx61482z2, datab=>u_lab3_not_minuend_1n1s2_3, 
      datac=>nx11351z3, datad=>u_lab3_state(1));
   ix54782z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0103") 
       port map ( combout=>nx54782z2, dataa=>u_lab3_not_minuend_1n1s2_3, 
      datab=>nx11351z5, datac=>nx41843z3, datad=>u_lab3_state(1));
   ix37041z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5303") 
       port map ( combout=>nx37041z1, dataa=>u_lab3_not_minuend_1n1s2_2, 
      datab=>nx6634z2, datac=>u_lab3_state(3), datad=>i_valid);
   ix1081z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"030f") 
       port map ( combout=>nx1081z2, datab=>u_lab3_not_minuend_1n1s2_2, 
      datac=>nx11351z3, datad=>u_lab3_state(1));
   ix59917z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0103") 
       port map ( combout=>nx59917z2, dataa=>u_lab3_not_minuend_1n1s2_2, 
      datab=>nx11351z5, datac=>nx41843z3, datad=>u_lab3_state(1));
   ix42176z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5303") 
       port map ( combout=>nx42176z1, dataa=>u_lab3_not_minuend_1n1s2_1, 
      datab=>nx6634z2, datac=>u_lab3_state(3), datad=>i_valid);
   ix6216z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"030f") 
       port map ( combout=>nx6216z2, datab=>u_lab3_not_minuend_1n1s2_1, 
      datac=>nx11351z3, datad=>u_lab3_state(1));
   ix65052z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0103") 
       port map ( combout=>nx65052z2, dataa=>u_lab3_not_minuend_1n1s2_1, 
      datab=>nx11351z5, datac=>nx41843z3, datad=>u_lab3_state(1));
   ix47311z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5303") 
       port map ( combout=>nx47311z1, dataa=>u_lab3_not_minuend_1n1s2_0, 
      datab=>nx6634z2, datac=>u_lab3_state(3), datad=>i_valid);
   ix11351z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"030f") 
       port map ( combout=>nx11351z2, datab=>u_lab3_not_minuend_1n1s2_0, 
      datac=>nx11351z3, datad=>u_lab3_state(1));
   ix4651z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0103") 
       port map ( combout=>nx4651z2, dataa=>u_lab3_not_minuend_1n1s2_0, 
      datab=>nx11351z5, datac=>nx41843z3, datad=>u_lab3_state(1));
   ix63348z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"45c0") 
       port map ( combout=>nx63348z1, dataa=>u_lab3_rtlc0_PS25_n202, datab=>
      nx63348z2, datac=>u_lab3_state(3), datad=>u_lab3_state(4));
   ix61354z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8c80") 
       port map ( combout=>nx61354z1, dataa=>nx60357z2, datab=>nx62351z2, 
      datac=>u_lab3_state(1), datad=>u_lab3_state(3));
   ix60357z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5d0c") 
       port map ( combout=>nx60357z1, dataa=>nx60357z2, datab=>nx60357z7, 
      datac=>nx6634z2, datad=>u_lab3_state(1));
   ix59360z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"3a22") 
       port map ( combout=>nx59360z1, dataa=>nx6634z2, datab=>
      u_lab3_state(4), datac=>i_valid, datad=>reset_n);
   ix48923z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ffec") 
       port map ( combout=>nx48923z4, dataa=>nx62976z2, datab=>nx48923z5, 
      datac=>nx48923z6, datad=>u_lab3_state(2));
   ix48923z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"000f") 
       port map ( combout=>nx48923z5, datac=>nx6634z2, datad=>i_valid);
   ix62351z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"2f0f") 
       port map ( combout=>nx62351z2, dataa=>nx63348z3, datab=>nx62351z3, 
      datac=>u_lab3_state(3), datad=>u_lab3_compute_flag);
   ix47763z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f1f3") 
       port map ( combout=>nx47763z1, dataa=>nx63348z13, datab=>nx6634z2, 
      datac=>u_lab3_state(2), datad=>i_valid);
   ix42628z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f2f3") 
       port map ( combout=>nx42628z1, dataa=>u_lab3_not_minuend_1n1s2_14, 
      datab=>nx6634z2, datac=>u_lab3_state(2), datad=>i_valid);
   ix4651z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f2f3") 
       port map ( combout=>nx4651z1, dataa=>u_lab3_not_minuend_1n1s2_0, 
      datab=>nx6634z2, datac=>u_lab3_state(2), datad=>i_valid);
   ix65052z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f2f3") 
       port map ( combout=>nx65052z1, dataa=>u_lab3_not_minuend_1n1s2_1, 
      datab=>nx6634z2, datac=>u_lab3_state(2), datad=>i_valid);
   ix59917z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f2f3") 
       port map ( combout=>nx59917z1, dataa=>u_lab3_not_minuend_1n1s2_2, 
      datab=>nx6634z2, datac=>u_lab3_state(2), datad=>i_valid);
   ix54782z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f2f3") 
       port map ( combout=>nx54782z1, dataa=>u_lab3_not_minuend_1n1s2_3, 
      datab=>nx6634z2, datac=>u_lab3_state(2), datad=>i_valid);
   ix15889z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f2f3") 
       port map ( combout=>nx15889z1, dataa=>u_lab3_not_minuend_1n1s2_4, 
      datab=>nx6634z2, datac=>u_lab3_state(2), datad=>i_valid);
   ix21024z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f2f3") 
       port map ( combout=>nx21024z1, dataa=>u_lab3_not_minuend_1n1s2_5, 
      datab=>nx6634z2, datac=>u_lab3_state(2), datad=>i_valid);
   ix26159z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f2f3") 
       port map ( combout=>nx26159z1, dataa=>u_lab3_not_minuend_1n1s2_6, 
      datab=>nx6634z2, datac=>u_lab3_state(2), datad=>i_valid);
   ix31294z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f2f3") 
       port map ( combout=>nx31294z1, dataa=>u_lab3_not_minuend_1n1s2_7, 
      datab=>nx6634z2, datac=>u_lab3_state(2), datad=>i_valid);
   ix36429z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f2f3") 
       port map ( combout=>nx36429z1, dataa=>u_lab3_not_minuend_1n1s2_8, 
      datab=>nx6634z2, datac=>u_lab3_state(2), datad=>i_valid);
   ix41564z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f2f3") 
       port map ( combout=>nx41564z1, dataa=>u_lab3_not_minuend_1n1s2_9, 
      datab=>nx6634z2, datac=>u_lab3_state(2), datad=>i_valid);
   ix22088z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f2f3") 
       port map ( combout=>nx22088z1, dataa=>u_lab3_not_minuend_1n1s2_10, 
      datab=>nx6634z2, datac=>u_lab3_state(2), datad=>i_valid);
   ix27223z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f2f3") 
       port map ( combout=>nx27223z1, dataa=>u_lab3_not_minuend_1n1s2_11, 
      datab=>nx6634z2, datac=>u_lab3_state(2), datad=>i_valid);
   ix32358z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f2f3") 
       port map ( combout=>nx32358z1, dataa=>u_lab3_not_minuend_1n1s2_12, 
      datab=>nx6634z2, datac=>u_lab3_state(2), datad=>i_valid);
   ix37493z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f2f3") 
       port map ( combout=>nx37493z1, dataa=>u_lab3_not_minuend_1n1s2_13, 
      datab=>nx6634z2, datac=>u_lab3_state(2), datad=>i_valid);
   ix11351z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ecfc") 
       port map ( combout=>nx11351z3, dataa=>nx11351z4, datab=>nx11351z5, 
      datac=>u_lab3_state(1), datad=>i_valid);
   ix11351z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fcfe") 
       port map ( combout=>nx11351z5, dataa=>u_lab3_state(2), datab=>
      u_lab3_state(3), datac=>u_lab3_state(4), datad=>u_lab3_stage_1);
   ix48923z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ecff") 
       port map ( combout=>nx48923z3, dataa=>nx41843z4, datab=>nx63348z3, 
      datac=>nx41843z5, datad=>i_valid);
   ix62976z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"80f0") 
       port map ( combout=>nx62976z3, dataa=>nx41843z4, datab=>nx41843z5, 
      datac=>u_lab3_state(1), datad=>i_valid);
   ix62351z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx62351z3, dataa=>nx62351z4, datab=>nx41843z6, 
      datac=>nx60357z5, datad=>nx41843z9);
   ix41843z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx41843z5, dataa=>nx41843z6, datab=>nx41843z7, 
      datac=>nx41843z8, datad=>nx41843z9);
   ix60357z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx60357z2, dataa=>nx60357z3, datab=>nx60357z4, 
      datac=>nx63348z3, datad=>u_lab3_row(0));
   ix63348z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx63348z3, dataa=>nx63348z4, datab=>nx63348z5, 
      datac=>nx63348z6, datad=>nx63348z9);
   ix11351z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx11351z4, dataa=>nx41843z6, datab=>nx60357z5, 
      datac=>nx41843z9, datad=>nx41843z4);
   ix48923z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f8fc") 
       port map ( combout=>nx48923z2, dataa=>nx63348z3, datab=>
      u_lab3_state(3), datac=>u_lab3_state(4), datad=>i_valid);
   ix48923z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f1f5") 
       port map ( combout=>nx48923z1, dataa=>nx48923z2, datab=>nx48923z3, 
      datac=>nx48923z4, datad=>nx41843z3);
   ix4372z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx4372z1, datab=>u_lab3_addend_0(0), datac=>
      u_lab3_state(1), datad=>i_data(0));
   ix5369z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx5369z1, datab=>u_lab3_addend_0(1), datac=>
      u_lab3_state(1), datad=>i_data(1));
   ix6366z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx6366z1, datab=>u_lab3_addend_0(2), datac=>
      u_lab3_state(1), datad=>i_data(2));
   ix7363z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx7363z1, datab=>u_lab3_addend_0(3), datac=>
      u_lab3_state(1), datad=>i_data(3));
   ix8360z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx8360z1, datab=>u_lab3_addend_0(4), datac=>
      u_lab3_state(1), datad=>i_data(4));
   ix9357z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx9357z1, datab=>u_lab3_addend_0(5), datac=>
      u_lab3_state(1), datad=>i_data(5));
   ix10354z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx10354z1, datab=>u_lab3_addend_0(6), datac=>
      u_lab3_state(1), datad=>i_data(6));
   ix11351z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx11351z1, datab=>u_lab3_addend_0(7), datac=>
      u_lab3_state(1), datad=>i_data(7));
   ix64773z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx64773z1, datab=>u_lab3_addend_1(0), datac=>
      u_lab3_state(1), datad=>i_data(0));
   ix234z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx234z1, datab=>u_lab3_addend_1(1), datac=>
      u_lab3_state(1), datad=>i_data(1));
   ix1231z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx1231z1, datab=>u_lab3_addend_1(2), datac=>
      u_lab3_state(1), datad=>i_data(2));
   ix2228z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx2228z1, datab=>u_lab3_addend_1(3), datac=>
      u_lab3_state(1), datad=>i_data(3));
   ix3225z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx3225z1, datab=>u_lab3_addend_1(4), datac=>
      u_lab3_state(1), datad=>i_data(4));
   ix4222z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx4222z1, datab=>u_lab3_addend_1(5), datac=>
      u_lab3_state(1), datad=>i_data(5));
   ix5219z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx5219z1, datab=>u_lab3_addend_1(6), datac=>
      u_lab3_state(1), datad=>i_data(6));
   ix6216z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx6216z1, datab=>u_lab3_addend_1(7), datac=>
      u_lab3_state(1), datad=>i_data(7));
   ix59638z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx59638z1, datab=>u_lab3_addend_2(0), datac=>
      u_lab3_state(1), datad=>i_data(0));
   ix60635z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx60635z1, datab=>u_lab3_addend_2(1), datac=>
      u_lab3_state(1), datad=>i_data(1));
   ix61632z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx61632z1, datab=>u_lab3_addend_2(2), datac=>
      u_lab3_state(1), datad=>i_data(2));
   ix62629z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx62629z1, datab=>u_lab3_addend_2(3), datac=>
      u_lab3_state(1), datad=>i_data(3));
   ix63626z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx63626z1, datab=>u_lab3_addend_2(4), datac=>
      u_lab3_state(1), datad=>i_data(4));
   ix64623z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx64623z1, datab=>u_lab3_addend_2(5), datac=>
      u_lab3_state(1), datad=>i_data(5));
   ix84z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx84z1, datab=>u_lab3_addend_2(6), datac=>
      u_lab3_state(1), datad=>i_data(6));
   ix1081z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx1081z1, datab=>u_lab3_addend_2(7), datac=>
      u_lab3_state(1), datad=>i_data(7));
   ix54503z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx54503z1, datab=>u_lab3_addend_3(0), datac=>
      u_lab3_state(1), datad=>i_data(0));
   ix55500z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx55500z1, datab=>u_lab3_addend_3(1), datac=>
      u_lab3_state(1), datad=>i_data(1));
   ix56497z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx56497z1, datab=>u_lab3_addend_3(2), datac=>
      u_lab3_state(1), datad=>i_data(2));
   ix57494z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx57494z1, datab=>u_lab3_addend_3(3), datac=>
      u_lab3_state(1), datad=>i_data(3));
   ix58491z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx58491z1, datab=>u_lab3_addend_3(4), datac=>
      u_lab3_state(1), datad=>i_data(4));
   ix59488z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx59488z1, datab=>u_lab3_addend_3(5), datac=>
      u_lab3_state(1), datad=>i_data(5));
   ix60485z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx60485z1, datab=>u_lab3_addend_3(6), datac=>
      u_lab3_state(1), datad=>i_data(6));
   ix61482z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx61482z1, datab=>u_lab3_addend_3(7), datac=>
      u_lab3_state(1), datad=>i_data(7));
   ix49368z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx49368z1, datab=>u_lab3_addend_4(0), datac=>
      u_lab3_state(1), datad=>i_data(0));
   ix50365z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx50365z1, datab=>u_lab3_addend_4(1), datac=>
      u_lab3_state(1), datad=>i_data(1));
   ix51362z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx51362z1, datab=>u_lab3_addend_4(2), datac=>
      u_lab3_state(1), datad=>i_data(2));
   ix52359z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx52359z1, datab=>u_lab3_addend_4(3), datac=>
      u_lab3_state(1), datad=>i_data(3));
   ix53356z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx53356z1, datab=>u_lab3_addend_4(4), datac=>
      u_lab3_state(1), datad=>i_data(4));
   ix54353z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx54353z1, datab=>u_lab3_addend_4(5), datac=>
      u_lab3_state(1), datad=>i_data(5));
   ix55350z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx55350z1, datab=>u_lab3_addend_4(6), datac=>
      u_lab3_state(1), datad=>i_data(6));
   ix56347z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx56347z1, datab=>u_lab3_addend_4(7), datac=>
      u_lab3_state(1), datad=>i_data(7));
   ix44233z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx44233z1, datab=>u_lab3_addend_5(0), datac=>
      u_lab3_state(1), datad=>i_data(0));
   ix45230z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx45230z1, datab=>u_lab3_addend_5(1), datac=>
      u_lab3_state(1), datad=>i_data(1));
   ix46227z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx46227z1, datab=>u_lab3_addend_5(2), datac=>
      u_lab3_state(1), datad=>i_data(2));
   ix47224z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx47224z1, datab=>u_lab3_addend_5(3), datac=>
      u_lab3_state(1), datad=>i_data(3));
   ix48221z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx48221z1, datab=>u_lab3_addend_5(4), datac=>
      u_lab3_state(1), datad=>i_data(4));
   ix49218z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx49218z1, datab=>u_lab3_addend_5(5), datac=>
      u_lab3_state(1), datad=>i_data(5));
   ix50215z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx50215z1, datab=>u_lab3_addend_5(6), datac=>
      u_lab3_state(1), datad=>i_data(6));
   ix51212z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx51212z1, datab=>u_lab3_addend_5(7), datac=>
      u_lab3_state(1), datad=>i_data(7));
   ix39098z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx39098z1, datab=>u_lab3_addend_6(0), datac=>
      u_lab3_state(1), datad=>i_data(0));
   ix40095z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx40095z1, datab=>u_lab3_addend_6(1), datac=>
      u_lab3_state(1), datad=>i_data(1));
   ix41092z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx41092z1, datab=>u_lab3_addend_6(2), datac=>
      u_lab3_state(1), datad=>i_data(2));
   ix42089z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx42089z1, datab=>u_lab3_addend_6(3), datac=>
      u_lab3_state(1), datad=>i_data(3));
   ix43086z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx43086z1, datab=>u_lab3_addend_6(4), datac=>
      u_lab3_state(1), datad=>i_data(4));
   ix44083z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx44083z1, datab=>u_lab3_addend_6(5), datac=>
      u_lab3_state(1), datad=>i_data(5));
   ix45080z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx45080z1, datab=>u_lab3_addend_6(6), datac=>
      u_lab3_state(1), datad=>i_data(6));
   ix46077z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx46077z1, datab=>u_lab3_addend_6(7), datac=>
      u_lab3_state(1), datad=>i_data(7));
   ix33963z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx33963z1, datab=>u_lab3_addend_7(0), datac=>
      u_lab3_state(1), datad=>i_data(0));
   ix34960z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx34960z1, datab=>u_lab3_addend_7(1), datac=>
      u_lab3_state(1), datad=>i_data(1));
   ix35957z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx35957z1, datab=>u_lab3_addend_7(2), datac=>
      u_lab3_state(1), datad=>i_data(2));
   ix36954z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx36954z1, datab=>u_lab3_addend_7(3), datac=>
      u_lab3_state(1), datad=>i_data(3));
   ix37951z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx37951z1, datab=>u_lab3_addend_7(4), datac=>
      u_lab3_state(1), datad=>i_data(4));
   ix38948z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx38948z1, datab=>u_lab3_addend_7(5), datac=>
      u_lab3_state(1), datad=>i_data(5));
   ix39945z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx39945z1, datab=>u_lab3_addend_7(6), datac=>
      u_lab3_state(1), datad=>i_data(6));
   ix40942z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx40942z1, datab=>u_lab3_addend_7(7), datac=>
      u_lab3_state(1), datad=>i_data(7));
   ix36708z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx36708z1, datab=>u_lab3_addend_8(0), datac=>
      u_lab3_state(1), datad=>i_data(0));
   ix35711z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx35711z1, datab=>u_lab3_addend_8(1), datac=>
      u_lab3_state(1), datad=>i_data(1));
   ix34714z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx34714z1, datab=>u_lab3_addend_8(2), datac=>
      u_lab3_state(1), datad=>i_data(2));
   ix33717z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx33717z1, datab=>u_lab3_addend_8(3), datac=>
      u_lab3_state(1), datad=>i_data(3));
   ix32720z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx32720z1, datab=>u_lab3_addend_8(4), datac=>
      u_lab3_state(1), datad=>i_data(4));
   ix31723z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx31723z1, datab=>u_lab3_addend_8(5), datac=>
      u_lab3_state(1), datad=>i_data(5));
   ix30726z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx30726z1, datab=>u_lab3_addend_8(6), datac=>
      u_lab3_state(1), datad=>i_data(6));
   ix29729z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx29729z1, datab=>u_lab3_addend_8(7), datac=>
      u_lab3_state(1), datad=>i_data(7));
   ix41843z7113 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx41843z14, datab=>u_lab3_addend_9(0), datac=>
      u_lab3_state(1), datad=>i_data(0));
   ix40846z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx40846z1, datab=>u_lab3_addend_9(1), datac=>
      u_lab3_state(1), datad=>i_data(1));
   ix39849z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx39849z1, datab=>u_lab3_addend_9(2), datac=>
      u_lab3_state(1), datad=>i_data(2));
   ix38852z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx38852z1, datab=>u_lab3_addend_9(3), datac=>
      u_lab3_state(1), datad=>i_data(3));
   ix37855z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx37855z1, datab=>u_lab3_addend_9(4), datac=>
      u_lab3_state(1), datad=>i_data(4));
   ix36858z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx36858z1, datab=>u_lab3_addend_9(5), datac=>
      u_lab3_state(1), datad=>i_data(5));
   ix35861z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx35861z1, datab=>u_lab3_addend_9(6), datac=>
      u_lab3_state(1), datad=>i_data(6));
   ix34864z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx34864z1, datab=>u_lab3_addend_9(7), datac=>
      u_lab3_state(1), datad=>i_data(7));
   ix31697z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx31697z1, datab=>u_lab3_addend_10(0), datac=>
      u_lab3_state(1), datad=>i_data(0));
   ix32694z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx32694z1, datab=>u_lab3_addend_10(1), datac=>
      u_lab3_state(1), datad=>i_data(1));
   ix33691z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx33691z1, datab=>u_lab3_addend_10(2), datac=>
      u_lab3_state(1), datad=>i_data(2));
   ix34688z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx34688z1, datab=>u_lab3_addend_10(3), datac=>
      u_lab3_state(1), datad=>i_data(3));
   ix35685z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx35685z1, datab=>u_lab3_addend_10(4), datac=>
      u_lab3_state(1), datad=>i_data(4));
   ix36682z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx36682z1, datab=>u_lab3_addend_10(5), datac=>
      u_lab3_state(1), datad=>i_data(5));
   ix37679z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx37679z1, datab=>u_lab3_addend_10(6), datac=>
      u_lab3_state(1), datad=>i_data(6));
   ix38676z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx38676z1, datab=>u_lab3_addend_10(7), datac=>
      u_lab3_state(1), datad=>i_data(7));
   ix26562z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx26562z1, datab=>u_lab3_addend_11(0), datac=>
      u_lab3_state(1), datad=>i_data(0));
   ix27559z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx27559z1, datab=>u_lab3_addend_11(1), datac=>
      u_lab3_state(1), datad=>i_data(1));
   ix28556z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx28556z1, datab=>u_lab3_addend_11(2), datac=>
      u_lab3_state(1), datad=>i_data(2));
   ix29553z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx29553z1, datab=>u_lab3_addend_11(3), datac=>
      u_lab3_state(1), datad=>i_data(3));
   ix30550z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx30550z1, datab=>u_lab3_addend_11(4), datac=>
      u_lab3_state(1), datad=>i_data(4));
   ix31547z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx31547z1, datab=>u_lab3_addend_11(5), datac=>
      u_lab3_state(1), datad=>i_data(5));
   ix32544z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx32544z1, datab=>u_lab3_addend_11(6), datac=>
      u_lab3_state(1), datad=>i_data(6));
   ix33541z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx33541z1, datab=>u_lab3_addend_11(7), datac=>
      u_lab3_state(1), datad=>i_data(7));
   ix21427z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx21427z1, datab=>u_lab3_addend_12(0), datac=>
      u_lab3_state(1), datad=>i_data(0));
   ix22424z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx22424z1, datab=>u_lab3_addend_12(1), datac=>
      u_lab3_state(1), datad=>i_data(1));
   ix23421z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx23421z1, datab=>u_lab3_addend_12(2), datac=>
      u_lab3_state(1), datad=>i_data(2));
   ix24418z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx24418z1, datab=>u_lab3_addend_12(3), datac=>
      u_lab3_state(1), datad=>i_data(3));
   ix25415z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx25415z1, datab=>u_lab3_addend_12(4), datac=>
      u_lab3_state(1), datad=>i_data(4));
   ix26412z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx26412z1, datab=>u_lab3_addend_12(5), datac=>
      u_lab3_state(1), datad=>i_data(5));
   ix27409z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx27409z1, datab=>u_lab3_addend_12(6), datac=>
      u_lab3_state(1), datad=>i_data(6));
   ix28406z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx28406z1, datab=>u_lab3_addend_12(7), datac=>
      u_lab3_state(1), datad=>i_data(7));
   ix16292z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx16292z1, datab=>u_lab3_addend_13(0), datac=>
      u_lab3_state(1), datad=>i_data(0));
   ix17289z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx17289z1, datab=>u_lab3_addend_13(1), datac=>
      u_lab3_state(1), datad=>i_data(1));
   ix18286z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx18286z1, datab=>u_lab3_addend_13(2), datac=>
      u_lab3_state(1), datad=>i_data(2));
   ix19283z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx19283z1, datab=>u_lab3_addend_13(3), datac=>
      u_lab3_state(1), datad=>i_data(3));
   ix20280z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx20280z1, datab=>u_lab3_addend_13(4), datac=>
      u_lab3_state(1), datad=>i_data(4));
   ix21277z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx21277z1, datab=>u_lab3_addend_13(5), datac=>
      u_lab3_state(1), datad=>i_data(5));
   ix22274z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx22274z1, datab=>u_lab3_addend_13(6), datac=>
      u_lab3_state(1), datad=>i_data(6));
   ix23271z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx23271z1, datab=>u_lab3_addend_13(7), datac=>
      u_lab3_state(1), datad=>i_data(7));
   ix11157z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx11157z1, datab=>u_lab3_addend_14(0), datac=>
      u_lab3_state(1), datad=>i_data(0));
   ix12154z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx12154z1, datab=>u_lab3_addend_14(1), datac=>
      u_lab3_state(1), datad=>i_data(1));
   ix13151z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx13151z1, datab=>u_lab3_addend_14(2), datac=>
      u_lab3_state(1), datad=>i_data(2));
   ix14148z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx14148z1, datab=>u_lab3_addend_14(3), datac=>
      u_lab3_state(1), datad=>i_data(3));
   ix15145z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx15145z1, datab=>u_lab3_addend_14(4), datac=>
      u_lab3_state(1), datad=>i_data(4));
   ix16142z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx16142z1, datab=>u_lab3_addend_14(5), datac=>
      u_lab3_state(1), datad=>i_data(5));
   ix17139z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx17139z1, datab=>u_lab3_addend_14(6), datac=>
      u_lab3_state(1), datad=>i_data(6));
   ix18136z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx18136z1, datab=>u_lab3_addend_14(7), datac=>
      u_lab3_state(1), datad=>i_data(7));
   ix6022z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx6022z1, datab=>u_lab3_addend_15(0), datac=>
      u_lab3_state(1), datad=>i_data(0));
   ix7019z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx7019z1, datab=>u_lab3_addend_15(1), datac=>
      u_lab3_state(1), datad=>i_data(1));
   ix8016z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx8016z1, datab=>u_lab3_addend_15(2), datac=>
      u_lab3_state(1), datad=>i_data(2));
   ix9013z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx9013z1, datab=>u_lab3_addend_15(3), datac=>
      u_lab3_state(1), datad=>i_data(3));
   ix10010z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx10010z1, datab=>u_lab3_addend_15(4), datac=>
      u_lab3_state(1), datad=>i_data(4));
   ix11007z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx11007z1, datab=>u_lab3_addend_15(5), datac=>
      u_lab3_state(1), datad=>i_data(5));
   ix12004z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx12004z1, datab=>u_lab3_addend_15(6), datac=>
      u_lab3_state(1), datad=>i_data(6));
   ix13001z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx13001z1, datab=>u_lab3_addend_15(7), datac=>
      u_lab3_state(1), datad=>i_data(7));
   ix18625z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx18625z1, datab=>u_seg7_rtlcP1(1), datac=>
      u_seg7_rtlcP1(8), datad=>seg7_en_EXMPLR38(1));
   ix28027z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx28027z1, datab=>u_seg7_rtlcP1(5), datac=>
      u_seg7_rtlcP1(12), datad=>seg7_en_EXMPLR38(1));
   ix51544z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx51544z1, datab=>u_seg7_rtlcP1(6), datac=>
      u_seg7_rtlcP1(13), datad=>seg7_en_EXMPLR38(1));
   ix62976z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f000") 
       port map ( combout=>nx62976z2, datac=>nx63348z3, datad=>
      u_lab3_state(1));
   ix6634z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccc0") 
       port map ( combout=>nx6634z1, datab=>nx6634z2, datac=>u_lab3_state(4), 
      datad=>seg7_pts_1);
   ix3960z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fcf0") 
       port map ( combout=>nx3960z1, datab=>nx6634z2, datac=>u_lab3_state(2), 
      datad=>u_lab3_stage_1);
   ix29107z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cf03") 
       port map ( combout=>nx29107z1, datab=>nx29107z2, datac=>
      yes_uart_u_uart_Tx_Reg_14n6ss1(0), datad=>nx57589z1);
   ix62976z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ef20") 
       port map ( combout=>nx62976z1, dataa=>nx62976z2, datab=>nx62976z3, 
      datac=>nx62976z4, datad=>u_lab3_flag);
   ix46918z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f00f") 
       port map ( combout=>nx46918z1, datac=>nx46918z2, datad=>
      yes_uart_u_uart_TxFSM(0));
   ix45921z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cf30") 
       port map ( combout=>nx45921z1, datab=>nx46918z2, datac=>
      yes_uart_u_uart_TxFSM(0), datad=>yes_uart_u_uart_TxFSM(1));
   ix31891z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx31891z1, dataa=>u_lab3_p_1n7s2_31, datab=>
      nx53092z2, datac=>u_lab3_state(3), datad=>u_lab3_p_31);
   ix53092z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx53092z1, dataa=>nx63348z3, datab=>nx53092z2, 
      datac=>u_lab3_state(3), datad=>u_lab3_compute_flag);
   ix64005z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"02ce") 
       port map ( combout=>nx64005z2, dataa=>nx46026z2, datab=>
      yes_uart_u_uart_RxFSM(5), datac=>yes_uart_u_uart_TopRx, datad=>uart_rx
   );
   ix46918z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"000f") 
       port map ( combout=>nx46918z4, datac=>yes_uart_u_uart_TxBitCnt(2), 
      datad=>yes_uart_u_uart_TxBitCnt(3));
   ix51272z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"3c00") 
       port map ( combout=>nx51272z2, datab=>yes_uart_u_uart_TxFSM(0), datac
      =>yes_uart_u_uart_TxFSM(1), datad=>yes_uart_u_uart_TopTx);
   ix51272z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"3f0f") 
       port map ( combout=>nx51272z1, datab=>yes_uart_u_uart_TxFSM(1), datac
      =>yes_uart_u_uart_TxBitCnt(0), datad=>yes_uart_u_uart_TopTx);
   ix50275z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"82c3") 
       port map ( combout=>nx50275z1, dataa=>yes_uart_u_uart_TxFSM(1), datab
      =>yes_uart_u_uart_TxBitCnt(0), datac=>yes_uart_u_uart_TxBitCnt(1), 
      datad=>yes_uart_u_uart_TopTx);
   ix49278z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5401") 
       port map ( combout=>nx49278z1, dataa=>nx49278z2, datab=>
      yes_uart_u_uart_TxBitCnt(0), datac=>yes_uart_u_uart_TxBitCnt(1), datad
      =>yes_uart_u_uart_TxBitCnt(2));
   ix48281z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fecd") 
       port map ( combout=>nx48281z1, dataa=>nx48281z2, datab=>nx49278z2, 
      datac=>yes_uart_u_uart_TxBitCnt(2), datad=>yes_uart_u_uart_TxBitCnt(3)
   );
   ix48281z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fff0") 
       port map ( combout=>nx48281z2, datac=>yes_uart_u_uart_TxBitCnt(0), 
      datad=>yes_uart_u_uart_TxBitCnt(1));
   ix46026z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f303") 
       port map ( combout=>nx46026z3, datab=>nx46026z2, datac=>
      yes_uart_u_uart_RxFSM(3), datad=>yes_uart_u_uart_TopRx);
   ix46026z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00f0") 
       port map ( combout=>nx46026z1, datac=>nx46026z2, datad=>
      yes_uart_u_uart_RxBitCnt(0));
   ix45029z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0cc0") 
       port map ( combout=>nx45029z1, datab=>nx46026z2, datac=>
      yes_uart_u_uart_RxBitCnt(0), datad=>yes_uart_u_uart_RxBitCnt(1));
   ix44032z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"2a80") 
       port map ( combout=>nx44032z1, dataa=>nx46026z2, datab=>
      yes_uart_u_uart_RxBitCnt(0), datac=>yes_uart_u_uart_RxBitCnt(1), datad
      =>yes_uart_u_uart_RxBitCnt(2));
   ix43035z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"4c80") 
       port map ( combout=>nx43035z1, dataa=>nx43035z2, datab=>nx46026z2, 
      datac=>yes_uart_u_uart_RxBitCnt(2), datad=>yes_uart_u_uart_RxBitCnt(3)
   );
   ix43035z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f000") 
       port map ( combout=>nx43035z2, datac=>yes_uart_u_uart_RxBitCnt(0), 
      datad=>yes_uart_u_uart_RxBitCnt(1));
   ix41843z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fff0") 
       port map ( combout=>nx41843z2, datac=>u_lab3_state(3), datad=>
      u_lab3_state(4));
   ix22064z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"bfff") 
       port map ( combout=>u_lab3_not_minuend_1n1s2_14, dataa=>
      u_lab3_column(0), datab=>u_lab3_column(1), datac=>u_lab3_column(2), 
      datad=>u_lab3_column(3));
   ix27199z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"dfff") 
       port map ( combout=>u_lab3_not_minuend_1n1s2_13, dataa=>
      u_lab3_column(0), datab=>u_lab3_column(1), datac=>u_lab3_column(2), 
      datad=>u_lab3_column(3));
   ix32334z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"efff") 
       port map ( combout=>u_lab3_not_minuend_1n1s2_12, dataa=>
      u_lab3_column(0), datab=>u_lab3_column(1), datac=>u_lab3_column(2), 
      datad=>u_lab3_column(3));
   ix37469z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f7ff") 
       port map ( combout=>u_lab3_not_minuend_1n1s2_11, dataa=>
      u_lab3_column(0), datab=>u_lab3_column(1), datac=>u_lab3_column(2), 
      datad=>u_lab3_column(3));
   ix42604z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fbff") 
       port map ( combout=>u_lab3_not_minuend_1n1s2_10, dataa=>
      u_lab3_column(0), datab=>u_lab3_column(1), datac=>u_lab3_column(2), 
      datad=>u_lab3_column(3));
   ix64440z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fdff") 
       port map ( combout=>u_lab3_not_minuend_1n1s2_9, dataa=>
      u_lab3_column(0), datab=>u_lab3_column(1), datac=>u_lab3_column(2), 
      datad=>u_lab3_column(3));
   ix6231z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"feff") 
       port map ( combout=>u_lab3_not_minuend_1n1s2_8, dataa=>
      u_lab3_column(0), datab=>u_lab3_column(1), datac=>u_lab3_column(2), 
      datad=>u_lab3_column(3));
   ix11366z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ff7f") 
       port map ( combout=>u_lab3_not_minuend_1n1s2_7, dataa=>
      u_lab3_column(0), datab=>u_lab3_column(1), datac=>u_lab3_column(2), 
      datad=>u_lab3_column(3));
   ix16501z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ffbf") 
       port map ( combout=>u_lab3_not_minuend_1n1s2_6, dataa=>
      u_lab3_column(0), datab=>u_lab3_column(1), datac=>u_lab3_column(2), 
      datad=>u_lab3_column(3));
   ix21636z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ffdf") 
       port map ( combout=>u_lab3_not_minuend_1n1s2_5, dataa=>
      u_lab3_column(0), datab=>u_lab3_column(1), datac=>u_lab3_column(2), 
      datad=>u_lab3_column(3));
   ix26771z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ffef") 
       port map ( combout=>u_lab3_not_minuend_1n1s2_4, dataa=>
      u_lab3_column(0), datab=>u_lab3_column(1), datac=>u_lab3_column(2), 
      datad=>u_lab3_column(3));
   ix31906z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fff7") 
       port map ( combout=>u_lab3_not_minuend_1n1s2_3, dataa=>
      u_lab3_column(0), datab=>u_lab3_column(1), datac=>u_lab3_column(2), 
      datad=>u_lab3_column(3));
   ix37041z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffb") 
       port map ( combout=>u_lab3_not_minuend_1n1s2_2, dataa=>
      u_lab3_column(0), datab=>u_lab3_column(1), datac=>u_lab3_column(2), 
      datad=>u_lab3_column(3));
   ix42176z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffd") 
       port map ( combout=>u_lab3_not_minuend_1n1s2_1, dataa=>
      u_lab3_column(0), datab=>u_lab3_column(1), datac=>u_lab3_column(2), 
      datad=>u_lab3_column(3));
   ix47311z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>u_lab3_not_minuend_1n1s2_0, dataa=>
      u_lab3_column(0), datab=>u_lab3_column(1), datac=>u_lab3_column(2), 
      datad=>u_lab3_column(3));
   ix41843z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx41843z4, dataa=>u_lab3_row(0), datab=>
      u_lab3_row(1), datac=>u_lab3_row(2), datad=>u_lab3_row(3));
   ix63348z7108 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx63348z13, dataa=>u_lab3_column(0), datab=>
      u_lab3_column(1), datac=>u_lab3_column(2), datad=>u_lab3_column(3));
   ix63348z7107 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx63348z12, dataa=>u_lab3_column(4), datab=>
      u_lab3_column(5), datac=>u_lab3_column(6), datad=>u_lab3_column(7));
   ix63348z7106 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx63348z11, dataa=>u_lab3_column(8), datab=>
      u_lab3_column(9), datac=>u_lab3_column(10), datad=>u_lab3_column(11));
   ix63348z7105 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx63348z10, dataa=>u_lab3_column(12), datab=>
      u_lab3_column(13), datac=>u_lab3_column(14), datad=>u_lab3_column(15)
   );
   ix63348z7104 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx63348z9, dataa=>nx63348z10, datab=>nx63348z11, 
      datac=>nx63348z12, datad=>nx63348z13);
   ix63348z7103 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx63348z8, dataa=>u_lab3_column(16), datab=>
      u_lab3_column(17), datac=>u_lab3_column(18), datad=>u_lab3_column(19)
   );
   ix63348z7102 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"000f") 
       port map ( combout=>nx63348z7, datac=>u_lab3_column(20), datad=>
      u_lab3_column(21));
   ix63348z7101 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0008") 
       port map ( combout=>nx63348z6, dataa=>nx63348z7, datab=>nx63348z8, 
      datac=>u_lab3_column(22), datad=>u_lab3_column(23));
   ix63348z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx63348z5, dataa=>u_lab3_column(24), datab=>
      u_lab3_column(25), datac=>u_lab3_column(26), datad=>u_lab3_column(27)
   );
   ix63348z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx63348z4, dataa=>u_lab3_column(28), datab=>
      u_lab3_column(29), datac=>u_lab3_column(30), datad=>u_lab3_column(31)
   );
   ix41843z7107 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx41843z13, dataa=>u_lab3_row(4), datab=>
      u_lab3_row(5), datac=>u_lab3_row(6), datad=>u_lab3_row(7));
   ix41843z7106 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx41843z12, dataa=>u_lab3_row(8), datab=>
      u_lab3_row(9), datac=>u_lab3_row(10), datad=>u_lab3_row(11));
   ix41843z7105 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx41843z11, dataa=>u_lab3_row(12), datab=>
      u_lab3_row(13), datac=>u_lab3_row(14), datad=>u_lab3_row(15));
   ix41843z7104 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx41843z10, dataa=>u_lab3_row(16), datab=>
      u_lab3_row(17), datac=>u_lab3_row(18), datad=>u_lab3_row(19));
   ix41843z7103 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx41843z9, dataa=>nx41843z10, datab=>nx41843z11, 
      datac=>nx41843z12, datad=>nx41843z13);
   ix41843z7102 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx41843z8, dataa=>u_lab3_row(20), datab=>
      u_lab3_row(21), datac=>u_lab3_row(22), datad=>u_lab3_row(23));
   ix60357z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"000f") 
       port map ( combout=>nx60357z6, datac=>u_lab3_row(24), datad=>
      u_lab3_row(25));
   ix41843z7101 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx41843z7, dataa=>u_lab3_row(24), datab=>
      u_lab3_row(25), datac=>u_lab3_row(26), datad=>u_lab3_row(27));
   ix60357z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0008") 
       port map ( combout=>nx60357z5, dataa=>nx60357z6, datab=>nx41843z8, 
      datac=>u_lab3_row(26), datad=>u_lab3_row(27));
   ix41843z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx41843z6, dataa=>u_lab3_row(28), datab=>
      u_lab3_row(29), datac=>u_lab3_row(30), datad=>u_lab3_row(31));
   ix62351z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx62351z4, dataa=>u_lab3_row(0), datab=>
      u_lab3_row(1), datac=>u_lab3_row(2), datad=>u_lab3_row(3));
   ix60357z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0080") 
       port map ( combout=>nx60357z4, dataa=>nx41843z6, datab=>nx60357z5, 
      datac=>nx41843z9, datad=>u_lab3_row(1));
   ix60357z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"000c") 
       port map ( combout=>nx60357z3, datab=>u_lab3_flag, datac=>
      u_lab3_row(2), datad=>u_lab3_row(3));
   ix62351z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f100") 
       port map ( combout=>nx62351z1, dataa=>nx62351z2, datab=>nx63348z2, 
      datac=>u_lab3_state(2), datad=>reset_n);
   ix60456z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx60456z5, dataa=>nx60456z6, datab=>
      yes_uart_u_uart_RxDiv(5), datac=>yes_uart_u_uart_RxDiv(9), datad=>
      yes_uart_u_uart_RxDiv(8));
   ix60456z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx60456z6, dataa=>yes_uart_u_uart_RxDiv(10), 
      datab=>yes_uart_u_uart_RxDiv(0), datac=>yes_uart_u_uart_RxDiv(2), 
      datad=>yes_uart_u_uart_RxDiv(1));
   ix60456z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx60456z4, dataa=>yes_uart_u_uart_RxDiv(7), datab
      =>yes_uart_u_uart_RxDiv(3), datac=>yes_uart_u_uart_RxDiv(4), datad=>
      yes_uart_u_uart_RxDivisor_4);
   ix60456z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx60456z3, dataa=>yes_uart_u_uart_RxDiv(7), datab
      =>yes_uart_u_uart_RxDiv(3), datac=>yes_uart_u_uart_RxDiv(4), datad=>
      yes_uart_u_uart_RxDivisor_4);
   ix62450z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"a00c") 
       port map ( combout=>nx62450z4, dataa=>nx62450z5, datab=>nx62450z6, 
      datac=>yes_uart_u_uart_TxDiv(8), datad=>yes_uart_u_uart_TxDiv(5));
   ix62450z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"000f") 
       port map ( combout=>nx62450z3, datac=>yes_uart_u_uart_TxDiv(10), 
      datad=>yes_uart_u_uart_TxDiv(9));
   ix62450z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx62450z2, dataa=>yes_uart_u_uart_TxDiv(3), datab
      =>yes_uart_u_uart_TxDiv(1), datac=>yes_uart_u_uart_TxDiv(2), datad=>
      yes_uart_u_uart_TxDiv(11));
   ix62450z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx62450z6, dataa=>yes_uart_u_uart_TxDiv(7), datab
      =>yes_uart_u_uart_TxDiv(4), datac=>yes_uart_u_uart_TxDiv(0), datad=>
      yes_uart_u_uart_RxDivisor_4);
   ix62450z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx62450z5, dataa=>yes_uart_u_uart_TxDiv(7), datab
      =>yes_uart_u_uart_TxDiv(4), datac=>yes_uart_u_uart_TxDiv(0), datad=>
      yes_uart_u_uart_RxDivisor_4);
end main ;

