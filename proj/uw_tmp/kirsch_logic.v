//
// Verilog description for cell kirsch, 
// Fri Jul 13 20:10:09 2018
//
// Precision RTL Synthesis, 64-bit 2015.2.16//


module kirsch ( clk, reset, i_valid, i_pixel, o_valid, o_edge, o_dir, o_mode, 
                o_row, o_col ) ;

    input clk ;
    input reset ;
    input i_valid ;
    input [7:0]i_pixel ;
    output o_valid ;
    output o_edge ;
    output [2:0]o_dir ;
    output [1:0]o_mode ;
    output [7:0]o_row ;
    output [7:0]o_col ;

    wire [7:1]index;
    wire [2:0]dir;
    wire [2:1]dir_s_se;
    wire dir_w_sw_2_;
    wire [9:0]sum;
    wire [7:0]sum_e_ne;
    wire [9:0]sum_s_se;
    wire [8:0]sum_w_sw;
    wire [9:0]acc;
    wire [7:0]col;
    wire STATE;
    wire [7:0]e;
    wire [7:0]f;
    wire [7:0]g;
    wire [8:0]sum_s_se_12n5s2;
    wire [9:0]sum_s_se_12n5s3;
    wire [8:0]sum_w_sw_12n7s4;
    wire [9:0]acc_12n7s2;
    wire [11:2]rtlc13n285;
    wire nx1448z36, nx1448z49, nx1448z51, nx1448z2, nx1448z50, inc_d_0__dup_1156, 
         inc_d_1__dup_1157, inc_d_2__dup_1158, inc_d_3__dup_1159, 
         inc_d_4__dup_1160, inc_d_5__dup_1161, inc_d_6__dup_1162, 
         inc_d_7__dup_1163, nx12707z2, nx8437z2, nx8437z1, nx35955z2, nx35955z1, 
         nx50725z2, nx50725z1, nx56842z7, nx56842z6, nx56842z5, nx56842z4, 
         nx55845z2, nx53851z3, nx53851z2, nx40598z8, nx40598z7, nx40598z6, 
         nx40598z5, nx40598z4, nx40598z3, nx40598z2, nx41892z10, nx41892z9, 
         nx41892z8, nx41892z7, nx41892z6, nx41892z5, nx41892z4, nx41892z1, 
         nx12364z7, nx12364z6, nx12364z5, nx12364z4, nx12364z3, nx12364z2, 
         nx12364z1, nx11367z1, nx1448z16, nx1448z15, nx1448z14, nx1448z13, 
         nx1448z12, nx1448z11, nx1448z10, nx1448z9, nx1448z8, nx1448z7, nx1448z6, 
         nx1448z5, nx1448z4, nx1448z42, nx1448z41, nx1448z40, nx1448z39, 
         nx1448z38, nx1448z35, nx1448z33, nx1448z32, nx1448z30, nx1448z29, 
         nx1448z27, nx1448z26, nx1448z24, nx1448z23, nx1448z21, nx1448z20, 
         nx1448z18, nx1448z17, nx1448z48, nx1448z47, nx1448z45, nx1448z43, GND, 
         sum_w_sw_12n7s3_8_, nx31920z1, nx524z3, nx9489z1, nx57087z2, nx56842z2, 
         sum_s_se_12n5s3f1_0_;
    wire [7:0]sum_s_se_12n5s3f2;
    wire NOT_acc_1_, NOT_acc_0_, nx524z2, nx53851z1, nx54848z1, nx55845z1, 
         nx56842z1, nx57839z1, nx58836z1, nx59833z1, nx60830z1, nx65063z1, 
         nx64066z1, nx63069z1, nx62072z1, nx61075z1, nx60078z1, nx59081z1, 
         nx58084z1, nx57087z1, nx2194z1, nx1197z1, nx3191z1, nx524z22, nx524z21, 
         nx524z6, nx33317z1, nx32320z1, nx31323z1, nx53402z2, nx1448z1, 
         nx19528z1, nx58205z1, nx62072z4, nx524z1, nx524z18, nx524z11, nx524z5, 
         nx524z9, nx524z19, nx524z4, nx49868z1, nx524z17, nx58205z2, nx58205z3, 
         nx524z13, nx524z8, nx524z10, nx524z16, nx41892z3, nx16341z1, nx33317z2, 
         nx62072z2, nx524z14, nx57087z3, nx524z23, nx524z20, nx62072z3, nx524z7, 
         nx524z12, nx56842z3, nx53402z1, nx19528z2, nx41892z2, nx524z15, 
         nx1197z2, nx1197z3, nx1197z4, index_7__repl, nx1925_repl, index_3__repl, 
         index_2__repl, index_1__repl, nx62411z1, nx54539z1, nx40598z1, 
         nx38871z1;
    wire [1497:0] xmplr_dummy ;




    assign o_row[7] = o_row[0] ;
    assign o_row[6] = o_row[0] ;
    assign o_row[5] = o_row[0] ;
    assign o_row[4] = o_row[0] ;
    assign o_row[3] = o_row[0] ;
    assign o_row[2] = o_row[0] ;
    assign o_row[1] = o_row[0] ;
    assign nx1448z16 = ~acc[1] ;
    assign nx1448z14 = ~acc[2] ;
    assign nx1448z12 = ~acc[3] ;
    assign nx1448z10 = ~acc[4] ;
    assign nx1448z8 = ~acc[5] ;
    assign nx1448z6 = ~acc[6] ;
    assign nx1448z4 = ~acc[7] ;
    assign nx1448z41 = ~acc[8] ;
    assign nx1448z39 = ~acc[9] ;
    assign nx1448z35 = ~acc[2] ;
    assign nx1448z32 = ~acc[3] ;
    assign nx1448z29 = ~acc[4] ;
    assign nx1448z26 = ~acc[5] ;
    assign nx1448z23 = ~acc[6] ;
    assign nx1448z20 = ~acc[7] ;
    assign nx1448z17 = ~acc[8] ;
    assign nx1448z47 = ~acc[9] ;
    assign o_mode[1] = ~reset ;
    assign GND = 1'b0 ;
    assign o_mode[0] = 1'b1 ;
    assign NOT_acc_1_ = ~acc[1] ;
    assign NOT_acc_0_ = ~acc[0] ;
    assign nx19528z2 = ~STATE ;
    stratixiv_lcell_comb ix12707z17676 (.sumout (inc_d_0__dup_1156), .cout (
                         nx12707z2), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (col[0]), .datae (1'b1), .dataf (GND), .datag (
                         1'b1), .cin (o_mode[0]), .sharein (1'b0)) ;
                         defparam ix12707z17676.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix12707z17674 (.sumout (inc_d_1__dup_1157), .cout (
                         nx8437z2), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (col[1]), .datae (1'b1), .dataf (GND), .datag (
                         1'b1), .cin (nx12707z2), .sharein (1'b0)) ;
                         defparam ix12707z17674.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix8437z17675 (.sumout (inc_d_2__dup_1158), .cout (
                         nx8437z1), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (col[2]), .datae (1'b1), .dataf (GND), .datag (
                         1'b1), .cin (nx8437z2), .sharein (1'b0)) ;
                         defparam ix8437z17675.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix8437z17674 (.sumout (inc_d_3__dup_1159), .cout (
                         nx35955z2), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (col[3]), .datae (1'b1), .dataf (GND), .datag (
                         1'b1), .cin (nx8437z1), .sharein (1'b0)) ;
                         defparam ix8437z17674.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix35955z17675 (.sumout (inc_d_4__dup_1160), .cout (
                         nx35955z1), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (col[4]), .datae (1'b1), .dataf (GND), .datag (
                         1'b1), .cin (nx35955z2), .sharein (1'b0)) ;
                         defparam ix35955z17675.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix35955z17674 (.sumout (inc_d_5__dup_1161), .cout (
                         nx50725z2), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (col[5]), .datae (1'b1), .dataf (GND), .datag (
                         1'b1), .cin (nx35955z1), .sharein (1'b0)) ;
                         defparam ix35955z17674.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix50725z17675 (.sumout (inc_d_6__dup_1162), .cout (
                         nx50725z1), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (col[6]), .datae (1'b1), .dataf (GND), .datag (
                         1'b1), .cin (nx50725z2), .sharein (1'b0)) ;
                         defparam ix50725z17675.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix50725z17674 (.sumout (inc_d_7__dup_1163), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (col[7]), .datae (
                         1'b1), .dataf (GND), .datag (1'b1), .cin (nx50725z1), .sharein (
                         1'b0)) ;
                         defparam ix50725z17674.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb sum_w_sw_add8_12i25_ix56842z17681 (.sumout (
                         sum_w_sw_12n7s4[0]), .cout (nx56842z7), .dataa (1'b1), 
                         .datab (1'b1), .datac (1'b1), .datad (f[0]), .datae (
                         1'b1), .dataf (g[0]), .datag (1'b1), .cin (GND), .sharein (
                         1'b0)) ;
                         defparam sum_w_sw_add8_12i25_ix56842z17681.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb sum_w_sw_add8_12i25_ix56842z17680 (.sumout (
                         sum_w_sw_12n7s4[1]), .cout (nx56842z6), .dataa (1'b1), 
                         .datab (1'b1), .datac (1'b1), .datad (f[1]), .datae (
                         1'b1), .dataf (g[1]), .datag (1'b1), .cin (nx56842z7), 
                         .sharein (1'b0)) ;
                         defparam sum_w_sw_add8_12i25_ix56842z17680.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb sum_w_sw_add8_12i25_ix56842z17679 (.sumout (
                         sum_w_sw_12n7s4[2]), .cout (nx56842z5), .dataa (1'b1), 
                         .datab (1'b1), .datac (1'b1), .datad (f[2]), .datae (
                         1'b1), .dataf (g[2]), .datag (1'b1), .cin (nx56842z6), 
                         .sharein (1'b0)) ;
                         defparam sum_w_sw_add8_12i25_ix56842z17679.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb sum_w_sw_add8_12i25_ix56842z17678 (.sumout (
                         sum_w_sw_12n7s4[3]), .cout (nx56842z4), .dataa (1'b1), 
                         .datab (1'b1), .datac (1'b1), .datad (f[3]), .datae (
                         1'b1), .dataf (g[3]), .datag (1'b1), .cin (nx56842z5), 
                         .sharein (1'b0)) ;
                         defparam sum_w_sw_add8_12i25_ix56842z17678.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb sum_w_sw_add8_12i25_ix56842z17677 (.sumout (
                         sum_w_sw_12n7s4[4]), .cout (nx55845z2), .dataa (1'b1), 
                         .datab (1'b1), .datac (1'b1), .datad (f[4]), .datae (
                         1'b1), .dataf (g[4]), .datag (1'b1), .cin (nx56842z4), 
                         .sharein (1'b0)) ;
                         defparam sum_w_sw_add8_12i25_ix56842z17677.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb sum_w_sw_add8_12i25_ix55845z17675 (.sumout (
                         sum_w_sw_12n7s4[5]), .cout (nx53851z3), .dataa (1'b1), 
                         .datab (1'b1), .datac (1'b1), .datad (f[5]), .datae (
                         1'b1), .dataf (g[5]), .datag (1'b1), .cin (nx55845z2), 
                         .sharein (1'b0)) ;
                         defparam sum_w_sw_add8_12i25_ix55845z17675.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb sum_w_sw_add8_12i25_ix53851z17676 (.sumout (
                         sum_w_sw_12n7s4[6]), .cout (nx53851z2), .dataa (1'b1), 
                         .datab (1'b1), .datac (1'b1), .datad (f[6]), .datae (
                         1'b1), .dataf (g[6]), .datag (1'b1), .cin (nx53851z3), 
                         .sharein (1'b0)) ;
                         defparam sum_w_sw_add8_12i25_ix53851z17676.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb sum_w_sw_add8_12i25_ix53851z17675 (.sumout (
                         sum_w_sw_12n7s4[7]), .cout (nx62411z1), .dataa (1'b1), 
                         .datab (1'b1), .datac (1'b1), .datad (f[7]), .datae (
                         1'b1), .dataf (g[7]), .datag (1'b1), .cin (nx53851z2), 
                         .sharein (1'b0)) ;
                         defparam sum_w_sw_add8_12i25_ix53851z17675.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb sum_s_se_add8_12i26_ix49868z17676 (.sumout (
                         sum_s_se_12n5s2[0]), .cout (nx40598z8), .dataa (1'b1), 
                         .datab (1'b1), .datac (1'b1), .datad (e[0]), .datae (
                         1'b1), .dataf (f[0]), .datag (1'b1), .cin (GND), .sharein (
                         1'b0)) ;
                         defparam sum_s_se_add8_12i26_ix49868z17676.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb sum_s_se_add8_12i26_ix40598z17680 (.sumout (
                         sum_s_se_12n5s2[1]), .cout (nx40598z7), .dataa (1'b1), 
                         .datab (1'b1), .datac (1'b1), .datad (e[1]), .datae (
                         1'b1), .dataf (f[1]), .datag (1'b1), .cin (nx40598z8), 
                         .sharein (1'b0)) ;
                         defparam sum_s_se_add8_12i26_ix40598z17680.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb sum_s_se_add8_12i26_ix40598z17679 (.sumout (
                         sum_s_se_12n5s2[2]), .cout (nx40598z6), .dataa (1'b1), 
                         .datab (1'b1), .datac (1'b1), .datad (e[2]), .datae (
                         1'b1), .dataf (f[2]), .datag (1'b1), .cin (nx40598z7), 
                         .sharein (1'b0)) ;
                         defparam sum_s_se_add8_12i26_ix40598z17679.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb sum_s_se_add8_12i26_ix40598z17678 (.sumout (
                         sum_s_se_12n5s2[3]), .cout (nx40598z5), .dataa (1'b1), 
                         .datab (1'b1), .datac (1'b1), .datad (e[3]), .datae (
                         1'b1), .dataf (f[3]), .datag (1'b1), .cin (nx40598z6), 
                         .sharein (1'b0)) ;
                         defparam sum_s_se_add8_12i26_ix40598z17678.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb sum_s_se_add8_12i26_ix40598z17677 (.sumout (
                         sum_s_se_12n5s2[4]), .cout (nx40598z4), .dataa (1'b1), 
                         .datab (1'b1), .datac (1'b1), .datad (e[4]), .datae (
                         1'b1), .dataf (f[4]), .datag (1'b1), .cin (nx40598z5), 
                         .sharein (1'b0)) ;
                         defparam sum_s_se_add8_12i26_ix40598z17677.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb sum_s_se_add8_12i26_ix40598z17676 (.sumout (
                         sum_s_se_12n5s2[5]), .cout (nx40598z3), .dataa (1'b1), 
                         .datab (1'b1), .datac (1'b1), .datad (e[5]), .datae (
                         1'b1), .dataf (f[5]), .datag (1'b1), .cin (nx40598z4), 
                         .sharein (1'b0)) ;
                         defparam sum_s_se_add8_12i26_ix40598z17676.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb sum_s_se_add8_12i26_ix40598z17675 (.sumout (
                         sum_s_se_12n5s2[6]), .cout (nx40598z2), .dataa (1'b1), 
                         .datab (1'b1), .datac (1'b1), .datad (e[6]), .datae (
                         1'b1), .dataf (f[6]), .datag (1'b1), .cin (nx40598z3), 
                         .sharein (1'b0)) ;
                         defparam sum_s_se_add8_12i26_ix40598z17675.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb sum_s_se_add8_12i26_ix40598z17674 (.sumout (
                         sum_s_se_12n5s2[7]), .cout (nx40598z1), .dataa (1'b1), 
                         .datab (1'b1), .datac (1'b1), .datad (e[7]), .datae (
                         1'b1), .dataf (f[7]), .datag (1'b1), .cin (nx40598z2), 
                         .sharein (1'b0)) ;
                         defparam sum_s_se_add8_12i26_ix40598z17674.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb sum_s_se_add9_12i27_ix49868z17674 (.sumout (
                         sum_s_se_12n5s3[0]), .cout (nx41892z10), .dataa (1'b1)
                         , .datab (1'b1), .datac (1'b1), .datad (
                         sum_s_se_12n5s3f1_0_), .datae (1'b1), .dataf (
                         sum_s_se_12n5s3f2[0]), .datag (1'b1), .cin (GND), .sharein (
                         1'b0)) ;
                         defparam sum_s_se_add9_12i27_ix49868z17674.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb sum_s_se_add9_12i27_ix41892z17689 (.sumout (
                         sum_s_se_12n5s3[1]), .cout (nx41892z9), .dataa (1'b1), 
                         .datab (e[1]), .datac (sum_s_se_12n5s2[1]), .datad (
                         nx41892z2), .datae (1'b1), .dataf (sum_s_se_12n5s3f2[1]
                         ), .datag (1'b1), .cin (nx41892z10), .sharein (1'b0)) ;
                         defparam sum_s_se_add9_12i27_ix41892z17689.lut_mask = 64'h000000ff0000f0cc;
    stratixiv_lcell_comb sum_s_se_add9_12i27_ix41892z17687 (.sumout (
                         sum_s_se_12n5s3[2]), .cout (nx41892z8), .dataa (
                         nx41892z2), .datab (1'b1), .datac (e[2]), .datad (
                         sum_s_se_12n5s2[2]), .datae (1'b1), .dataf (
                         sum_s_se_12n5s3f2[2]), .datag (1'b1), .cin (nx41892z9)
                         , .sharein (1'b0)) ;
                         defparam sum_s_se_add9_12i27_ix41892z17687.lut_mask = 64'h000000ff0000fa50;
    stratixiv_lcell_comb sum_s_se_add9_12i27_ix41892z17685 (.sumout (
                         sum_s_se_12n5s3[3]), .cout (nx41892z7), .dataa (
                         nx41892z2), .datab (1'b1), .datac (e[3]), .datad (
                         sum_s_se_12n5s2[3]), .datae (1'b1), .dataf (
                         sum_s_se_12n5s3f2[3]), .datag (1'b1), .cin (nx41892z8)
                         , .sharein (1'b0)) ;
                         defparam sum_s_se_add9_12i27_ix41892z17685.lut_mask = 64'h000000ff0000fa50;
    stratixiv_lcell_comb sum_s_se_add9_12i27_ix41892z17683 (.sumout (
                         sum_s_se_12n5s3[4]), .cout (nx41892z6), .dataa (
                         nx41892z2), .datab (1'b1), .datac (e[4]), .datad (
                         sum_s_se_12n5s2[4]), .datae (1'b1), .dataf (
                         sum_s_se_12n5s3f2[4]), .datag (1'b1), .cin (nx41892z7)
                         , .sharein (1'b0)) ;
                         defparam sum_s_se_add9_12i27_ix41892z17683.lut_mask = 64'h000000ff0000fa50;
    stratixiv_lcell_comb sum_s_se_add9_12i27_ix41892z17681 (.sumout (
                         sum_s_se_12n5s3[5]), .cout (nx41892z5), .dataa (
                         nx41892z2), .datab (1'b1), .datac (e[5]), .datad (
                         sum_s_se_12n5s2[5]), .datae (1'b1), .dataf (
                         sum_s_se_12n5s3f2[5]), .datag (1'b1), .cin (nx41892z6)
                         , .sharein (1'b0)) ;
                         defparam sum_s_se_add9_12i27_ix41892z17681.lut_mask = 64'h000000ff0000fa50;
    stratixiv_lcell_comb sum_s_se_add9_12i27_ix41892z17679 (.sumout (
                         sum_s_se_12n5s3[6]), .cout (nx41892z4), .dataa (
                         nx41892z2), .datab (1'b1), .datac (e[6]), .datad (
                         sum_s_se_12n5s2[6]), .datae (1'b1), .dataf (
                         sum_s_se_12n5s3f2[6]), .datag (1'b1), .cin (nx41892z5)
                         , .sharein (1'b0)) ;
                         defparam sum_s_se_add9_12i27_ix41892z17679.lut_mask = 64'h000000ff0000fa50;
    stratixiv_lcell_comb sum_s_se_add9_12i27_ix41892z17675 (.sumout (
                         sum_s_se_12n5s3[7]), .cout (nx41892z1), .dataa (
                         nx41892z2), .datab (1'b1), .datac (e[7]), .datad (
                         sum_s_se_12n5s2[7]), .datae (1'b1), .dataf (
                         sum_s_se_12n5s3f2[7]), .datag (1'b1), .cin (nx41892z4)
                         , .sharein (1'b0)) ;
                         defparam sum_s_se_add9_12i27_ix41892z17675.lut_mask = 64'h000000ff0000fa50;
    stratixiv_lcell_comb sum_s_se_add9_12i27_ix41892z17674 (.sumout (
                         sum_s_se_12n5s3[8]), .cout (nx54539z1), .dataa (g[6]), 
                         .datab (nx49868z1), .datac (sum_s_se_12n5s2[8]), .datad (
                         g[7]), .datae (1'b1), .dataf (GND), .datag (1'b1), .cin (
                         nx41892z1), .sharein (1'b0)) ;
                         defparam sum_s_se_add9_12i27_ix41892z17674.lut_mask = 64'h000000ff0000f0e0;
    stratixiv_lcell_comb sum_s_se_add9_12i27_ix109_buf (.sumout (
                         sum_s_se_12n5s3[9]), .dataa (1'b1), .datab (1'b1), .datac (
                         GND), .datad (1'b1), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx54539z1), .sharein (1'b0)) ;
                         defparam sum_s_se_add9_12i27_ix109_buf.lut_mask = 64'h00000f0f0000f0f0;
    stratixiv_lcell_comb acc_add9_12i28_ix12364z17681 (.sumout (acc_12n7s2[0]), 
                         .cout (nx12364z7), .dataa (1'b1), .datab (1'b1), .datac (
                         1'b1), .datad (sum_s_se_12n5s2[0]), .datae (1'b1), .dataf (
                         g[0]), .datag (1'b1), .cin (GND), .sharein (1'b0)) ;
                         defparam acc_add9_12i28_ix12364z17681.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb acc_add9_12i28_ix12364z17680 (.sumout (acc_12n7s2[1]), 
                         .cout (nx12364z6), .dataa (1'b1), .datab (1'b1), .datac (
                         1'b1), .datad (sum_s_se_12n5s2[1]), .datae (1'b1), .dataf (
                         g[1]), .datag (1'b1), .cin (nx12364z7), .sharein (1'b0)
                         ) ;
                         defparam acc_add9_12i28_ix12364z17680.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb acc_add9_12i28_ix12364z17679 (.sumout (acc_12n7s2[2]), 
                         .cout (nx12364z5), .dataa (1'b1), .datab (1'b1), .datac (
                         1'b1), .datad (sum_s_se_12n5s2[2]), .datae (1'b1), .dataf (
                         g[2]), .datag (1'b1), .cin (nx12364z6), .sharein (1'b0)
                         ) ;
                         defparam acc_add9_12i28_ix12364z17679.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb acc_add9_12i28_ix12364z17678 (.sumout (acc_12n7s2[3]), 
                         .cout (nx12364z4), .dataa (1'b1), .datab (1'b1), .datac (
                         1'b1), .datad (sum_s_se_12n5s2[3]), .datae (1'b1), .dataf (
                         g[3]), .datag (1'b1), .cin (nx12364z5), .sharein (1'b0)
                         ) ;
                         defparam acc_add9_12i28_ix12364z17678.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb acc_add9_12i28_ix12364z17677 (.sumout (acc_12n7s2[4]), 
                         .cout (nx12364z3), .dataa (1'b1), .datab (1'b1), .datac (
                         1'b1), .datad (sum_s_se_12n5s2[4]), .datae (1'b1), .dataf (
                         g[4]), .datag (1'b1), .cin (nx12364z4), .sharein (1'b0)
                         ) ;
                         defparam acc_add9_12i28_ix12364z17677.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb acc_add9_12i28_ix12364z17676 (.sumout (acc_12n7s2[5]), 
                         .cout (nx12364z2), .dataa (1'b1), .datab (1'b1), .datac (
                         1'b1), .datad (sum_s_se_12n5s2[5]), .datae (1'b1), .dataf (
                         g[5]), .datag (1'b1), .cin (nx12364z3), .sharein (1'b0)
                         ) ;
                         defparam acc_add9_12i28_ix12364z17676.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb acc_add9_12i28_ix12364z17675 (.sumout (acc_12n7s2[6]), 
                         .cout (nx12364z1), .dataa (1'b1), .datab (1'b1), .datac (
                         1'b1), .datad (sum_s_se_12n5s2[6]), .datae (1'b1), .dataf (
                         g[6]), .datag (1'b1), .cin (nx12364z2), .sharein (1'b0)
                         ) ;
                         defparam acc_add9_12i28_ix12364z17675.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb acc_add9_12i28_ix12364z17674 (.sumout (acc_12n7s2[7]), 
                         .cout (nx11367z1), .dataa (1'b1), .datab (1'b1), .datac (
                         1'b1), .datad (sum_s_se_12n5s2[7]), .datae (1'b1), .dataf (
                         g[7]), .datag (1'b1), .cin (nx12364z1), .sharein (1'b0)
                         ) ;
                         defparam acc_add9_12i28_ix12364z17674.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb acc_add9_12i28_ix11367z17674 (.sumout (acc_12n7s2[8]), 
                         .cout (nx38871z1), .dataa (1'b1), .datab (1'b1), .datac (
                         1'b1), .datad (sum_s_se_12n5s2[8]), .datae (1'b1), .dataf (
                         GND), .datag (1'b1), .cin (nx11367z1), .sharein (1'b0)
                         ) ;
                         defparam acc_add9_12i28_ix11367z17674.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb acc_add9_12i28_ix109_buf (.sumout (acc_12n7s2[9]), .dataa (
                         1'b1), .datab (1'b1), .datac (GND), .datad (1'b1), .datae (
                         1'b1), .dataf (1'b1), .datag (1'b1), .cin (nx38871z1), 
                         .sharein (1'b0)) ;
                         defparam acc_add9_12i28_ix109_buf.lut_mask = 64'h00000f0f0000f0f0;
    stratixiv_lcell_comb ix1448z17688 (.sumout (rtlc13n285[2]), .cout (nx1448z15
                         ), .dataa (1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         GND), .datae (1'b1), .dataf (nx1448z16), .datag (1'b1)
                         , .cin (NOT_acc_0_), .sharein (1'b0)) ;
                         defparam ix1448z17688.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix1448z17686 (.sumout (rtlc13n285[3]), .cout (nx1448z13
                         ), .dataa (1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         sum[0]), .datae (1'b1), .dataf (nx1448z14), .datag (
                         1'b1), .cin (nx1448z15), .sharein (1'b0)) ;
                         defparam ix1448z17686.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix1448z17684 (.sumout (rtlc13n285[4]), .cout (nx1448z11
                         ), .dataa (1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         sum[1]), .datae (1'b1), .dataf (nx1448z12), .datag (
                         1'b1), .cin (nx1448z13), .sharein (1'b0)) ;
                         defparam ix1448z17684.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix1448z17682 (.sumout (rtlc13n285[5]), .cout (nx1448z9)
                         , .dataa (1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         sum[2]), .datae (1'b1), .dataf (nx1448z10), .datag (
                         1'b1), .cin (nx1448z11), .sharein (1'b0)) ;
                         defparam ix1448z17682.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix1448z17680 (.sumout (rtlc13n285[6]), .cout (nx1448z7)
                         , .dataa (1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         sum[3]), .datae (1'b1), .dataf (nx1448z8), .datag (1'b1
                         ), .cin (nx1448z9), .sharein (1'b0)) ;
                         defparam ix1448z17680.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix1448z17678 (.sumout (rtlc13n285[7]), .cout (nx1448z5)
                         , .dataa (1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         sum[4]), .datae (1'b1), .dataf (nx1448z6), .datag (1'b1
                         ), .cin (nx1448z7), .sharein (1'b0)) ;
                         defparam ix1448z17678.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix1448z17676 (.sumout (rtlc13n285[8]), .cout (nx1448z42
                         ), .dataa (1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         sum[5]), .datae (1'b1), .dataf (nx1448z4), .datag (1'b1
                         ), .cin (nx1448z5), .sharein (1'b0)) ;
                         defparam ix1448z17676.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix1448z17709 (.sumout (rtlc13n285[9]), .cout (nx1448z40
                         ), .dataa (1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         sum[6]), .datae (1'b1), .dataf (nx1448z41), .datag (
                         1'b1), .cin (nx1448z42), .sharein (1'b0)) ;
                         defparam ix1448z17709.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix1448z17707 (.sumout (rtlc13n285[10]), .cout (
                         nx1448z38), .dataa (1'b1), .datab (1'b1), .datac (1'b1)
                         , .datad (sum[7]), .datae (1'b1), .dataf (nx1448z39), .datag (
                         1'b1), .cin (nx1448z40), .sharein (1'b0)) ;
                         defparam ix1448z17707.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix1448z17706 (.sumout (rtlc13n285[11]), .dataa (1'b1), 
                         .datab (1'b1), .datac (1'b1), .datad (sum[8]), .datae (
                         1'b1), .dataf (o_mode[0]), .datag (1'b1), .cin (
                         nx1448z38), .sharein (1'b0)) ;
                         defparam ix1448z17706.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix1448z17702 (.cout (nx1448z33), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (rtlc13n285[2]), .datae (
                         1'b1), .dataf (nx1448z35), .datag (1'b1), .cin (
                         NOT_acc_1_), .sharein (1'b0)) ;
                         defparam ix1448z17702.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix1448z17700 (.cout (nx1448z30), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (rtlc13n285[3]), .datae (
                         1'b1), .dataf (nx1448z32), .datag (1'b1), .cin (
                         nx1448z33), .sharein (1'b0)) ;
                         defparam ix1448z17700.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix1448z17698 (.cout (nx1448z27), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (rtlc13n285[4]), .datae (
                         1'b1), .dataf (nx1448z29), .datag (1'b1), .cin (
                         nx1448z30), .sharein (1'b0)) ;
                         defparam ix1448z17698.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix1448z17696 (.cout (nx1448z24), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (rtlc13n285[5]), .datae (
                         1'b1), .dataf (nx1448z26), .datag (1'b1), .cin (
                         nx1448z27), .sharein (1'b0)) ;
                         defparam ix1448z17696.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix1448z17694 (.cout (nx1448z21), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (rtlc13n285[6]), .datae (
                         1'b1), .dataf (nx1448z23), .datag (1'b1), .cin (
                         nx1448z24), .sharein (1'b0)) ;
                         defparam ix1448z17694.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix1448z17692 (.sumout (nx1448z50), .cout (nx1448z18), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         rtlc13n285[7]), .datae (1'b1), .dataf (nx1448z20), .datag (
                         1'b1), .cin (nx1448z21), .sharein (1'b0)) ;
                         defparam ix1448z17692.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix1448z17675 (.sumout (nx1448z2), .cout (nx1448z48), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         rtlc13n285[8]), .datae (1'b1), .dataf (nx1448z17), .datag (
                         1'b1), .cin (nx1448z18), .sharein (1'b0)) ;
                         defparam ix1448z17675.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix1448z17712 (.sumout (nx1448z51), .cout (nx1448z45), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         rtlc13n285[9]), .datae (1'b1), .dataf (nx1448z47), .datag (
                         1'b1), .cin (nx1448z48), .sharein (1'b0)) ;
                         defparam ix1448z17712.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix1448z17711 (.sumout (nx1448z49), .cout (nx1448z43), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         rtlc13n285[10]), .datae (1'b1), .dataf (o_mode[0]), .datag (
                         1'b1), .cin (nx1448z45), .sharein (1'b0)) ;
                         defparam ix1448z17711.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb ix1448z17705 (.sumout (nx1448z36), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (rtlc13n285[11]), .datae (
                         1'b1), .dataf (o_mode[0]), .datag (1'b1), .cin (
                         nx1448z43), .sharein (1'b0)) ;
                         defparam ix1448z17705.lut_mask = 64'h000000ff0000ff00;
    stratixiv_lcell_comb sum_w_sw_add8_12i25_ix98_buf (.sumout (
                         sum_w_sw_12n7s4[8]), .dataa (1'b1), .datab (1'b1), .datac (
                         GND), .datad (1'b1), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx62411z1), .sharein (1'b0)) ;
                         defparam sum_w_sw_add8_12i25_ix98_buf.lut_mask = 64'h00000f0f0000f0f0;
    stratixiv_lcell_comb sum_s_se_add8_12i26_ix98_buf (.sumout (
                         sum_s_se_12n5s2[8]), .dataa (1'b1), .datab (1'b1), .datac (
                         GND), .datad (1'b1), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx40598z1), .sharein (1'b0)) ;
                         defparam sum_s_se_add8_12i26_ix98_buf.lut_mask = 64'h00000f0f0000f0f0;
    stratixiv_lcell_comb ix57087z17675 (.combout (nx57087z2), .dataa (index[5])
                         , .datab (nx57087z3), .datac (nx524z17), .datad (
                         nx524z19), .datae (nx524z22), .dataf (nx524z23), .datag (
                         sum_s_se[4]), .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix57087z17675.lut_mask = 64'h7757775755555555;
                         defparam ix57087z17675.extended_lut = "on";
    stratixiv_lcell_comb ix524z17686 (.combout (nx524z13), .dataa (nx524z14), .datab (
                         nx524z15), .datac (nx524z17), .datad (nx524z19), .datae (
                         nx524z22), .dataf (nx524z23), .datag (sum_s_se[4]), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix524z17686.lut_mask = 64'h7757775755555555;
                         defparam ix524z17686.extended_lut = "on";
    dffeas reg_sum_w_sw_7_ (.q (sum_w_sw[7]), .d (nx53851z1), .clk (clk), .ena (
           index_3__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_sum_w_sw_6_ (.q (sum_w_sw[6]), .d (nx54848z1), .clk (clk), .ena (
           index_3__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_sum_w_sw_5_ (.q (sum_w_sw[5]), .d (nx55845z1), .clk (clk), .ena (
           index_3__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_sum_w_sw_4_ (.q (sum_w_sw[4]), .d (nx56842z1), .clk (clk), .ena (
           index_3__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_sum_w_sw_3_ (.q (sum_w_sw[3]), .d (nx57839z1), .clk (clk), .ena (
           index_3__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_sum_w_sw_2_ (.q (sum_w_sw[2]), .d (nx58836z1), .clk (clk), .ena (
           index_3__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_sum_w_sw_1_ (.q (sum_w_sw[1]), .d (nx59833z1), .clk (clk), .ena (
           index_3__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_sum_w_sw_0_ (.q (sum_w_sw[0]), .d (nx60830z1), .clk (clk), .ena (
           index_3__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_sum_8_ (.q (sum[8]), .d (nx65063z1), .clk (clk), .ena (nx524z2), 
           .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           index_7__repl), .sload (GND)) ;
    dffeas reg_sum_7_ (.q (sum[7]), .d (nx64066z1), .clk (clk), .ena (nx524z2), 
           .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           index_7__repl), .sload (GND)) ;
    dffeas reg_sum_6_ (.q (sum[6]), .d (nx63069z1), .clk (clk), .ena (nx524z2), 
           .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           index_7__repl), .sload (GND)) ;
    dffeas reg_sum_5_ (.q (sum[5]), .d (nx62072z1), .clk (clk), .ena (nx524z2), 
           .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           index_7__repl), .sload (GND)) ;
    dffeas reg_sum_4_ (.q (sum[4]), .d (nx61075z1), .clk (clk), .ena (nx524z2), 
           .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           index_7__repl), .sload (GND)) ;
    dffeas reg_sum_3_ (.q (sum[3]), .d (nx60078z1), .clk (clk), .ena (nx524z2), 
           .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           index_7__repl), .sload (GND)) ;
    dffeas reg_sum_2_ (.q (sum[2]), .d (nx59081z1), .clk (clk), .ena (nx524z2), 
           .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           index_7__repl), .sload (GND)) ;
    dffeas reg_sum_1_ (.q (sum[1]), .d (nx58084z1), .clk (clk), .ena (nx524z2), 
           .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           index_7__repl), .sload (GND)) ;
    dffeas reg_sum_0_ (.q (sum[0]), .d (nx57087z1), .clk (clk), .ena (nx524z2), 
           .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           index_7__repl), .sload (GND)) ;
    dffeas reg_dir_0_ (.q (dir[0]), .d (nx3191z1), .clk (clk), .ena (o_mode[0])
           , .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_sum_9_ (.q (sum[9]), .d (nx524z1), .clk (clk), .ena (nx524z2), .clrn (
           o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (index_7__repl), .sload (
           GND)) ;
    dffeas reg_dir_2_ (.q (dir[2]), .d (nx1197z1), .clk (clk), .ena (o_mode[0])
           , .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_dir_1_ (.q (dir[1]), .d (nx2194z1), .clk (clk), .ena (o_mode[0])
           , .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_o_dir_2_ (.q (o_dir[2]), .d (nx33317z1), .clk (clk), .ena (
           o_mode[0]), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_o_dir_1_ (.q (o_dir[1]), .d (nx32320z1), .clk (clk), .ena (
           o_mode[0]), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_o_dir_0_ (.q (o_dir[0]), .d (nx31323z1), .clk (clk), .ena (
           o_mode[0]), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_q_7__dup_0 (.q (col[7]), .d (inc_d_7__dup_1163), .clk (clk), .ena (
           nx9489z1), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           nx1925_repl), .sload (GND)) ;
    dffeas reg_q_6__dup_1 (.q (col[6]), .d (inc_d_6__dup_1162), .clk (clk), .ena (
           nx9489z1), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           nx1925_repl), .sload (GND)) ;
    dffeas reg_q_5__dup_2 (.q (col[5]), .d (inc_d_5__dup_1161), .clk (clk), .ena (
           nx9489z1), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           nx1925_repl), .sload (GND)) ;
    dffeas reg_q_4__dup_3 (.q (col[4]), .d (inc_d_4__dup_1160), .clk (clk), .ena (
           nx9489z1), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           nx1925_repl), .sload (GND)) ;
    dffeas reg_q_3__dup_4 (.q (col[3]), .d (inc_d_3__dup_1159), .clk (clk), .ena (
           nx9489z1), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           nx1925_repl), .sload (GND)) ;
    dffeas reg_q_2__dup_5 (.q (col[2]), .d (inc_d_2__dup_1158), .clk (clk), .ena (
           nx9489z1), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           nx1925_repl), .sload (GND)) ;
    dffeas reg_q_1__dup_6 (.q (col[1]), .d (inc_d_1__dup_1157), .clk (clk), .ena (
           nx9489z1), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           nx1925_repl), .sload (GND)) ;
    dffeas reg_q_0__dup_7 (.q (col[0]), .d (inc_d_0__dup_1156), .clk (clk), .ena (
           nx9489z1), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           nx1925_repl), .sload (GND)) ;
    dffeas reg_o_edge (.q (o_edge), .d (nx1448z1), .clk (clk), .ena (o_mode[0])
           , .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_o_valid (.q (o_valid), .d (index[7]), .clk (clk), .ena (o_mode[0]
           ), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (1'b0), 
           .sload (1'b0)) ;
    dffeas reg_o_col_7_ (.q (o_col[7]), .d (col[7]), .clk (clk), .ena (nx19528z1
           ), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           nx19528z2), .sload (GND)) ;
    dffeas reg_o_col_6_ (.q (o_col[6]), .d (col[6]), .clk (clk), .ena (nx19528z1
           ), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           nx19528z2), .sload (GND)) ;
    dffeas reg_o_col_5_ (.q (o_col[5]), .d (col[5]), .clk (clk), .ena (nx19528z1
           ), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           nx19528z2), .sload (GND)) ;
    dffeas reg_o_col_4_ (.q (o_col[4]), .d (col[4]), .clk (clk), .ena (nx19528z1
           ), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           nx19528z2), .sload (GND)) ;
    dffeas reg_o_col_3_ (.q (o_col[3]), .d (col[3]), .clk (clk), .ena (nx19528z1
           ), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           nx19528z2), .sload (GND)) ;
    dffeas reg_o_col_2_ (.q (o_col[2]), .d (col[2]), .clk (clk), .ena (nx19528z1
           ), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           nx19528z2), .sload (GND)) ;
    dffeas reg_o_col_1_ (.q (o_col[1]), .d (col[1]), .clk (clk), .ena (nx19528z1
           ), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           nx19528z2), .sload (GND)) ;
    dffeas reg_o_col_0_ (.q (o_col[0]), .d (col[0]), .clk (clk), .ena (nx19528z1
           ), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           nx19528z2), .sload (GND)) ;
    dffeas reg_o_row_0_ (.q (o_row[0]), .d (o_mode[0]), .clk (clk), .ena (
           nx19528z1), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           nx19528z2), .sload (GND)) ;
    dffeas reg_index_1_ (.q (index[1]), .d (nx58205z1), .clk (clk), .ena (
           o_mode[0]), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_STATE (.q (STATE), .d (nx53402z1), .clk (clk), .ena (o_mode[0]), 
           .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    stratixiv_lcell_comb ix52854z17674 (.combout (sum_w_sw_12n7s3_8_), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         sum_w_sw_12n7s4[8]), .dataf (nx56842z2), .datag (1'b1)
                         , .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix52854z17674.lut_mask = 64'hffff000000000000;
    stratixiv_lcell_comb ix31920z17674 (.combout (nx31920z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (g[7]), .datae (g[6]), .dataf (
                         nx49868z1), .datag (1'b1), .cin (1'b0), .sharein (1'b0)
                         ) ;
                         defparam ix31920z17674.lut_mask = 64'h00000000000000ff;
    stratixiv_lcell_comb ix524z17676 (.combout (nx524z3), .dataa (nx62072z3), .datab (
                         nx524z4), .datac (nx524z7), .datad (nx524z12), .datae (
                         nx524z13), .dataf (index[6]), .datag (1'b1), .cin (1'b0
                         ), .sharein (1'b0)) ;
                         defparam ix524z17676.lut_mask = 64'h0c080c08ffff0000;
    stratixiv_lcell_comb ix9489z17674 (.combout (nx9489z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (reset), .datae (i_valid)
                         , .dataf (STATE), .datag (1'b1), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix9489z17674.lut_mask = 64'h00ff000000000000;
    stratixiv_lcell_comb ix56842z17675 (.combout (nx56842z2), .dataa (1'b1), .datab (
                         f[1]), .datac (f[7]), .datad (f[6]), .datae (f[0]), .dataf (
                         nx56842z3), .datag (1'b1), .cin (1'b0), .sharein (1'b0)
                         ) ;
                         defparam ix56842z17675.lut_mask = 64'hfffffffffffffffc;
    stratixiv_lcell_comb ix49868z17675 (.combout (sum_s_se_12n5s3f1_0_), .dataa (
                         1'b1), .datab (g[7]), .datac (sum_s_se_12n5s2[0]), .datad (
                         nx49868z1), .datae (g[6]), .dataf (e[0]), .datag (1'b1)
                         , .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix49868z17675.lut_mask = 64'hf0f0f0f3f0f0f0c0;
    stratixiv_lcell_comb ix41892z17678 (.combout (sum_s_se_12n5s3f2[7]), .dataa (
                         1'b1), .datab (1'b1), .datac (nx49868z1), .datad (f[7])
                         , .datae (g[7]), .dataf (g[6]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix41892z17678.lut_mask = 64'hffff0000ffff0f00;
    stratixiv_lcell_comb ix41892z17680 (.combout (sum_s_se_12n5s3f2[6]), .dataa (
                         1'b1), .datab (1'b1), .datac (nx49868z1), .datad (f[6])
                         , .datae (g[6]), .dataf (g[7]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix41892z17680.lut_mask = 64'hffff0000ffff0f00;
    stratixiv_lcell_comb ix41892z17682 (.combout (sum_s_se_12n5s3f2[5]), .dataa (
                         1'b1), .datab (nx49868z1), .datac (g[5]), .datad (g[6])
                         , .datae (g[7]), .dataf (f[5]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix41892z17682.lut_mask = 64'hf0f0f0f3f0f0f0f0;
    stratixiv_lcell_comb ix41892z17684 (.combout (sum_s_se_12n5s3f2[4]), .dataa (
                         1'b1), .datab (nx49868z1), .datac (g[4]), .datad (g[6])
                         , .datae (g[7]), .dataf (f[4]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix41892z17684.lut_mask = 64'hf0f0f0f3f0f0f0f0;
    stratixiv_lcell_comb ix41892z17686 (.combout (sum_s_se_12n5s3f2[3]), .dataa (
                         1'b1), .datab (nx49868z1), .datac (g[3]), .datad (g[6])
                         , .datae (g[7]), .dataf (f[3]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix41892z17686.lut_mask = 64'hf0f0f0f3f0f0f0f0;
    stratixiv_lcell_comb ix41892z17688 (.combout (sum_s_se_12n5s3f2[2]), .dataa (
                         1'b1), .datab (nx49868z1), .datac (g[2]), .datad (g[6])
                         , .datae (g[7]), .dataf (f[2]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix41892z17688.lut_mask = 64'hf0f0f0f3f0f0f0f0;
    stratixiv_lcell_comb ix41892z17690 (.combout (sum_s_se_12n5s3f2[1]), .dataa (
                         1'b1), .datab (nx49868z1), .datac (g[1]), .datad (g[6])
                         , .datae (g[7]), .dataf (f[1]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix41892z17690.lut_mask = 64'hf0f0f0f3f0f0f0f0;
    stratixiv_lcell_comb ix49868z17678 (.combout (sum_s_se_12n5s3f2[0]), .dataa (
                         1'b1), .datab (nx49868z1), .datac (g[0]), .datad (g[6])
                         , .datae (g[7]), .dataf (f[0]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix49868z17678.lut_mask = 64'hf0f0f0f3f0f0f0f0;
    stratixiv_lcell_comb ix524z17675 (.combout (nx524z2), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (index[7])
                         , .dataf (nx524z3), .datag (1'b1), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix524z17675.lut_mask = 64'hffff0000ffffffff;
    stratixiv_lcell_comb ix53851z17674 (.combout (nx53851z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx56842z2), .datae (
                         sum_w_sw_12n7s4[7]), .dataf (g[7]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix53851z17674.lut_mask = 64'hffff00ffff000000;
    stratixiv_lcell_comb ix54848z17674 (.combout (nx54848z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx56842z2), .datae (
                         sum_w_sw_12n7s4[6]), .dataf (g[6]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix54848z17674.lut_mask = 64'hffff00ffff000000;
    stratixiv_lcell_comb ix55845z17674 (.combout (nx55845z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx56842z2), .datae (
                         sum_w_sw_12n7s4[5]), .dataf (g[5]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix55845z17674.lut_mask = 64'hffff00ffff000000;
    stratixiv_lcell_comb ix56842z17674 (.combout (nx56842z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx56842z2), .datae (
                         sum_w_sw_12n7s4[4]), .dataf (g[4]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix56842z17674.lut_mask = 64'hffff00ffff000000;
    stratixiv_lcell_comb ix57839z17674 (.combout (nx57839z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx56842z2), .datae (
                         sum_w_sw_12n7s4[3]), .dataf (g[3]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix57839z17674.lut_mask = 64'hffff00ffff000000;
    stratixiv_lcell_comb ix58836z17674 (.combout (nx58836z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx56842z2), .datae (
                         sum_w_sw_12n7s4[2]), .dataf (g[2]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix58836z17674.lut_mask = 64'hffff00ffff000000;
    stratixiv_lcell_comb ix59833z17674 (.combout (nx59833z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx56842z2), .datae (
                         sum_w_sw_12n7s4[1]), .dataf (g[1]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix59833z17674.lut_mask = 64'hffff00ffff000000;
    stratixiv_lcell_comb ix60830z17674 (.combout (nx60830z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx56842z2), .datae (
                         sum_w_sw_12n7s4[0]), .dataf (g[0]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix60830z17674.lut_mask = 64'hffff00ffff000000;
    stratixiv_lcell_comb ix65063z17674 (.combout (nx65063z1), .dataa (1'b1), .datab (
                         1'b1), .datac (nx62072z2), .datad (sum_s_se[8]), .datae (
                         sum_w_sw[8]), .dataf (nx57087z2), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix65063z17674.lut_mask = 64'h0f0f0000ff0ff000;
    stratixiv_lcell_comb ix64066z17674 (.combout (nx64066z1), .dataa (1'b1), .datab (
                         sum_e_ne[7]), .datac (nx62072z2), .datad (sum_s_se[7])
                         , .datae (nx57087z2), .dataf (sum_w_sw[7]), .datag (
                         1'b1), .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix64066z17674.lut_mask = 64'hcfcfff0fc0c0f000;
    stratixiv_lcell_comb ix63069z17674 (.combout (nx63069z1), .dataa (1'b1), .datab (
                         sum_e_ne[6]), .datac (nx62072z2), .datad (sum_s_se[6])
                         , .datae (nx57087z2), .dataf (sum_w_sw[6]), .datag (
                         1'b1), .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix63069z17674.lut_mask = 64'hcfcfff0fc0c0f000;
    stratixiv_lcell_comb ix62072z17674 (.combout (nx62072z1), .dataa (1'b1), .datab (
                         sum_e_ne[5]), .datac (nx62072z2), .datad (sum_s_se[5])
                         , .datae (nx57087z2), .dataf (sum_w_sw[5]), .datag (
                         1'b1), .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix62072z17674.lut_mask = 64'hcfcfff0fc0c0f000;
    stratixiv_lcell_comb ix61075z17674 (.combout (nx61075z1), .dataa (1'b1), .datab (
                         sum_e_ne[4]), .datac (nx62072z2), .datad (sum_s_se[4])
                         , .datae (nx57087z2), .dataf (sum_w_sw[4]), .datag (
                         1'b1), .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix61075z17674.lut_mask = 64'hcfcfff0fc0c0f000;
    stratixiv_lcell_comb ix60078z17674 (.combout (nx60078z1), .dataa (1'b1), .datab (
                         sum_e_ne[3]), .datac (nx62072z2), .datad (sum_s_se[3])
                         , .datae (nx57087z2), .dataf (sum_w_sw[3]), .datag (
                         1'b1), .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix60078z17674.lut_mask = 64'hcfcfff0fc0c0f000;
    stratixiv_lcell_comb ix59081z17674 (.combout (nx59081z1), .dataa (1'b1), .datab (
                         sum_e_ne[2]), .datac (nx62072z2), .datad (sum_s_se[2])
                         , .datae (nx57087z2), .dataf (sum_w_sw[2]), .datag (
                         1'b1), .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix59081z17674.lut_mask = 64'hcfcfff0fc0c0f000;
    stratixiv_lcell_comb ix58084z17674 (.combout (nx58084z1), .dataa (1'b1), .datab (
                         sum_e_ne[1]), .datac (nx62072z2), .datad (sum_s_se[1])
                         , .datae (nx57087z2), .dataf (sum_w_sw[1]), .datag (
                         1'b1), .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix58084z17674.lut_mask = 64'hcfcfff0fc0c0f000;
    stratixiv_lcell_comb ix57087z17674 (.combout (nx57087z1), .dataa (1'b1), .datab (
                         sum_e_ne[0]), .datac (nx62072z2), .datad (sum_s_se[0])
                         , .datae (nx57087z2), .dataf (sum_w_sw[0]), .datag (
                         1'b1), .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix57087z17674.lut_mask = 64'hcfcfff0fc0c0f000;
    stratixiv_lcell_comb ix2194z17674 (.combout (nx2194z1), .dataa (nx62072z2), 
                         .datab (dir_s_se[1]), .datac (dir_w_sw_2_), .datad (
                         nx57087z2), .datae (dir[1]), .dataf (nx524z3), .datag (
                         1'b1), .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix2194z17674.lut_mask = 64'hffff000050d850d8;
    stratixiv_lcell_comb ix1197z17674 (.combout (nx1197z1), .dataa (1'b1), .datab (
                         dir_w_sw_2_), .datac (dir[2]), .datad (nx62072z2), .datae (
                         nx1197z2), .dataf (nx524z3), .datag (1'b1), .cin (1'b0)
                         , .sharein (1'b0)) ;
                         defparam ix1197z17674.lut_mask = 64'hf0f0f0f0ffcc00cc;
    stratixiv_lcell_comb ix3191z17674 (.combout (nx3191z1), .dataa (1'b1), .datab (
                         1'b1), .datac (nx57087z2), .datad (nx524z3), .datae (
                         dir[0]), .dataf (nx62072z2), .datag (1'b1), .cin (1'b0)
                         , .sharein (1'b0)) ;
                         defparam ix3191z17674.lut_mask = 64'hff0f000fffff00ff;
    stratixiv_lcell_comb ix524z17695 (.combout (nx524z22), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (sum[4]), .dataf (
                         sum_s_se[4]), .datag (1'b1), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix524z17695.lut_mask = 64'h0000ffffffff0000;
    stratixiv_lcell_comb ix524z17694 (.combout (nx524z21), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (sum[7]), .dataf (
                         sum_s_se[7]), .datag (1'b1), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix524z17694.lut_mask = 64'hffff00000000ffff;
    stratixiv_lcell_comb ix524z17679 (.combout (nx524z6), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (sum[7]), .dataf (
                         sum_w_sw[7]), .datag (1'b1), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix524z17679.lut_mask = 64'hffff00000000ffff;
    stratixiv_lcell_comb ix33317z17674 (.combout (nx33317z1), .dataa (1'b1), .datab (
                         nx1448z36), .datac (index[7]), .datad (nx33317z2), .datae (
                         nx1448z49), .dataf (dir[2]), .datag (1'b1), .cin (1'b0)
                         , .sharein (1'b0)) ;
                         defparam ix33317z17674.lut_mask = 64'hf0f0f0c000000000;
    stratixiv_lcell_comb ix32320z17674 (.combout (nx32320z1), .dataa (1'b1), .datab (
                         nx1448z36), .datac (index[7]), .datad (nx33317z2), .datae (
                         nx1448z49), .dataf (dir[1]), .datag (1'b1), .cin (1'b0)
                         , .sharein (1'b0)) ;
                         defparam ix32320z17674.lut_mask = 64'hf0f0f0c000000000;
    stratixiv_lcell_comb ix31323z17674 (.combout (nx31323z1), .dataa (1'b1), .datab (
                         nx1448z36), .datac (index[7]), .datad (nx33317z2), .datae (
                         nx1448z49), .dataf (dir[0]), .datag (1'b1), .cin (1'b0)
                         , .sharein (1'b0)) ;
                         defparam ix31323z17674.lut_mask = 64'hf0f0f0c000000000;
    stratixiv_lcell_comb ix53402z17675 (.combout (nx53402z2), .dataa (1'b1), .datab (
                         col[3]), .datac (col[1]), .datad (col[0]), .datae (
                         col[2]), .dataf (nx16341z1), .datag (1'b1), .cin (1'b0)
                         , .sharein (1'b0)) ;
                         defparam ix53402z17675.lut_mask = 64'h00000000c0000000;
    stratixiv_lcell_comb ix1448z17674 (.combout (nx1448z1), .dataa (nx1448z2), .datab (
                         nx1448z36), .datac (nx1448z49), .datad (nx1448z50), .datae (
                         nx1448z51), .dataf (index[7]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix1448z17674.lut_mask = 64'hfffffefc00000000;
    stratixiv_lcell_comb ix19528z17674 (.combout (nx19528z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (i_valid), .datae (STATE)
                         , .dataf (reset), .datag (1'b1), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix19528z17674.lut_mask = 64'h00000000ff00ffff;
    stratixiv_lcell_comb ix62072z17677 (.combout (nx62072z4), .dataa (1'b1), .datab (
                         1'b1), .datac (sum[0]), .datad (sum[1]), .datae (
                         sum_w_sw[1]), .dataf (sum_w_sw[0]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix62072z17677.lut_mask = 64'h0fffff0ff0fffff0;
    stratixiv_lcell_comb ix524z17674 (.combout (nx524z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx57087z2), .datae (
                         nx62072z2), .dataf (sum_s_se[9]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix524z17674.lut_mask = 64'h00ff000000000000;
    stratixiv_lcell_comb ix524z17691 (.combout (nx524z18), .dataa (1'b1), .datab (
                         1'b1), .datac (sum[0]), .datad (sum_s_se[1]), .datae (
                         sum[1]), .dataf (sum_s_se[0]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix524z17691.lut_mask = 64'h0f00ff0f0000ff00;
    stratixiv_lcell_comb ix524z17684 (.combout (nx524z11), .dataa (1'b1), .datab (
                         1'b1), .datac (sum[0]), .datad (sum_w_sw[1]), .datae (
                         sum[1]), .dataf (sum_w_sw[0]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix524z17684.lut_mask = 64'h0f00ff0f0000ff00;
    stratixiv_lcell_comb ix524z17678 (.combout (nx524z5), .dataa (nx524z6), .datab (
                         sum_w_sw[6]), .datac (sum_w_sw[8]), .datad (sum[6]), .datae (
                         sum[8]), .dataf (sum[9]), .datag (1'b1), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix524z17678.lut_mask = 64'hffffffff7fdff7fd;
    stratixiv_lcell_comb ix524z17682 (.combout (nx524z9), .dataa (1'b1), .datab (
                         1'b1), .datac (sum[5]), .datad (sum[4]), .datae (
                         sum_w_sw[4]), .dataf (sum_w_sw[5]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix524z17682.lut_mask = 64'h0fffff0ff0fffff0;
    stratixiv_lcell_comb ix524z17692 (.combout (nx524z19), .dataa (sum[6]), .datab (
                         nx524z20), .datac (nx524z21), .datad (sum_s_se[6]), .datae (
                         sum_s_se[5]), .dataf (sum[5]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix524z17692.lut_mask = 64'hdfefffffffffdfef;
    stratixiv_lcell_comb ix524z17677 (.combout (nx524z4), .dataa (1'b1), .datab (
                         sum_w_sw[4]), .datac (sum_w_sw[5]), .datad (sum[5]), .datae (
                         sum[4]), .dataf (nx524z5), .datag (1'b1), .cin (1'b0), 
                         .sharein (1'b0)) ;
                         defparam ix524z17677.lut_mask = 64'hffffffffff0f3f03;
    stratixiv_lcell_comb ix49868z17677 (.combout (nx49868z1), .dataa (g[3]), .datab (
                         g[5]), .datac (g[4]), .datad (g[2]), .datae (g[0]), .dataf (
                         g[1]), .datag (1'b1), .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix49868z17677.lut_mask = 64'hfffffffffffffffe;
    stratixiv_lcell_comb ix524z17690 (.combout (nx524z17), .dataa (1'b1), .datab (
                         sum_s_se[2]), .datac (sum[3]), .datad (nx524z18), .datae (
                         sum[2]), .dataf (sum_s_se[3]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix524z17690.lut_mask = 64'hcf0fffcf0c000f0c;
    stratixiv_lcell_comb ix58205z17675 (.combout (nx58205z2), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (col[7]), .dataf (
                         col[6]), .datag (1'b1), .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix58205z17675.lut_mask = 64'hffffffffffff0000;
    stratixiv_lcell_comb ix58205z17676 (.combout (nx58205z3), .dataa (1'b1), .datab (
                         1'b1), .datac (col[3]), .datad (col[5]), .datae (col[4]
                         ), .dataf (col[2]), .datag (1'b1), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix58205z17676.lut_mask = 64'hfffffffffffffff0;
    stratixiv_lcell_comb ix524z17681 (.combout (nx524z8), .dataa (sum_w_sw[6]), 
                         .datab (sum_w_sw[7]), .datac (sum[7]), .datad (sum[6])
                         , .datae (sum[8]), .dataf (sum_w_sw[8]), .datag (1'b1)
                         , .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix524z17681.lut_mask = 64'h0c8effff00000c8e;
    stratixiv_lcell_comb ix524z17683 (.combout (nx524z10), .dataa (1'b1), .datab (
                         sum_w_sw[2]), .datac (sum_w_sw[3]), .datad (sum[3]), .datae (
                         sum[2]), .dataf (nx524z11), .datag (1'b1), .cin (1'b0)
                         , .sharein (1'b0)) ;
                         defparam ix524z17683.lut_mask = 64'hc0fcf0ff00f0c0fc;
    stratixiv_lcell_comb ix524z17689 (.combout (nx524z16), .dataa (1'b1), .datab (
                         1'b1), .datac (sum_s_se[6]), .datad (sum_s_se[7]), .datae (
                         sum[7]), .dataf (sum[6]), .datag (1'b1), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix524z17689.lut_mask = 64'h0000ff00f000fff0;
    stratixiv_lcell_comb ix41892z17677 (.combout (nx41892z3), .dataa (1'b1), .datab (
                         1'b1), .datac (g[3]), .datad (g[5]), .datae (g[4]), .dataf (
                         g[2]), .datag (1'b1), .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix41892z17677.lut_mask = 64'hfffffffffffffff0;
    stratixiv_lcell_comb ix16341z17674 (.combout (nx16341z1), .dataa (1'b1), .datab (
                         1'b1), .datac (col[5]), .datad (col[7]), .datae (col[6]
                         ), .dataf (col[4]), .datag (1'b1), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix16341z17674.lut_mask = 64'h0fffffffffffffff;
    stratixiv_lcell_comb ix33317z17675 (.combout (nx33317z2), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx1448z2), .datae (
                         nx1448z50), .dataf (nx1448z51), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix33317z17675.lut_mask = 64'hffffffffff000000;
    stratixiv_lcell_comb ix62072z17675 (.combout (nx62072z2), .dataa (1'b1), .datab (
                         nx62072z3), .datac (nx524z7), .datad (nx524z4), .datae (
                         nx524z12), .dataf (index[6]), .datag (1'b1), .cin (1'b0
                         ), .sharein (1'b0)) ;
                         defparam ix62072z17675.lut_mask = 64'h0f000c00ffffffff;
    stratixiv_lcell_comb ix524z17687 (.combout (nx524z14), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (index[5])
                         , .dataf (index[4]), .datag (1'b1), .cin (1'b0), .sharein (
                         1'b0)) ;
                         defparam ix524z17687.lut_mask = 64'hffffffffffff0000;
    stratixiv_lcell_comb ix57087z17676 (.combout (nx57087z3), .dataa (1'b1), .datab (
                         sum_s_se[8]), .datac (sum_s_se[9]), .datad (sum[9]), .datae (
                         sum[8]), .dataf (nx524z16), .datag (1'b1), .cin (1'b0)
                         , .sharein (1'b0)) ;
                         defparam ix57087z17676.lut_mask = 64'hc0fcf0ff00f0c0fc;
    stratixiv_lcell_comb ix524z17696 (.combout (nx524z23), .dataa (sum[6]), .datab (
                         nx524z21), .datac (sum[5]), .datad (sum_s_se[6]), .datae (
                         sum_s_se[5]), .dataf (nx524z20), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix524z17696.lut_mask = 64'hfffffffff7fbffff;
    stratixiv_lcell_comb ix524z17693 (.combout (nx524z20), .dataa (1'b1), .datab (
                         1'b1), .datac (sum[9]), .datad (sum[8]), .datae (
                         sum_s_se[8]), .dataf (sum_s_se[9]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix524z17693.lut_mask = 64'h0fffff0ff0fffff0;
    stratixiv_lcell_comb ix62072z17676 (.combout (nx62072z3), .dataa (nx62072z4)
                         , .datab (sum_w_sw[2]), .datac (sum_w_sw[3]), .datad (
                         sum[2]), .datae (sum[3]), .dataf (dir_w_sw_2_), .datag (
                         1'b1), .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix62072z17676.lut_mask = 64'hffffffffbfeffbfe;
    stratixiv_lcell_comb ix524z17680 (.combout (nx524z7), .dataa (1'b1), .datab (
                         nx524z5), .datac (sum[9]), .datad (nx524z8), .datae (
                         nx524z9), .dataf (nx524z10), .datag (1'b1), .cin (1'b0)
                         , .sharein (1'b0)) ;
                         defparam ix524z17680.lut_mask = 64'h0f003f330f000f00;
    stratixiv_lcell_comb ix524z17685 (.combout (nx524z12), .dataa (1'b1), .datab (
                         sum[5]), .datac (sum[4]), .datad (sum_w_sw[4]), .datae (
                         sum_w_sw[5]), .dataf (nx524z5), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix524z17685.lut_mask = 64'hffffffff3ff3cffc;
    stratixiv_lcell_comb ix56842z17676 (.combout (nx56842z3), .dataa (1'b1), .datab (
                         1'b1), .datac (f[3]), .datad (f[5]), .datae (f[4]), .dataf (
                         f[2]), .datag (1'b1), .cin (1'b0), .sharein (1'b0)) ;
                         defparam ix56842z17676.lut_mask = 64'hfffffffffffffff0;
    stratixiv_lcell_comb ix41892z17676 (.combout (nx41892z2), .dataa (1'b1), .datab (
                         g[1]), .datac (g[7]), .datad (g[6]), .datae (g[0]), .dataf (
                         nx41892z3), .datag (1'b1), .cin (1'b0), .sharein (1'b0)
                         ) ;
                         defparam ix41892z17676.lut_mask = 64'hfffffffffffffffc;
    stratixiv_lcell_comb ix524z17688 (.combout (nx524z15), .dataa (sum[9]), .datab (
                         sum[8]), .datac (sum_s_se[8]), .datad (sum_s_se[9]), .datae (
                         index[5]), .dataf (nx524z16), .datag (1'b1), .cin (1'b0
                         ), .sharein (1'b0)) ;
                         defparam ix524z17688.lut_mask = 64'hf751ffff7510ffff;
    stratixiv_lcell_comb ix1197z17675 (.combout (nx1197z2), .dataa (1'b1), .datab (
                         nx1197z3), .datac (nx57087z2), .datad (dir_s_se[2]), .datae (
                         nx1197z4), .dataf (sum_e_ne[5]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix1197z17675.lut_mask = 64'h0f000f00cfcc0f00;
    stratixiv_lcell_comb ix1197z17676 (.combout (nx1197z3), .dataa (1'b1), .datab (
                         1'b1), .datac (sum_e_ne[0]), .datad (nx57087z2), .datae (
                         sum_e_ne[1]), .dataf (sum_e_ne[2]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix1197z17676.lut_mask = 64'h0000000000000f00;
    stratixiv_lcell_comb ix1197z17677 (.combout (nx1197z4), .dataa (1'b1), .datab (
                         1'b1), .datac (sum_e_ne[6]), .datad (sum_e_ne[3]), .datae (
                         sum_e_ne[4]), .dataf (sum_e_ne[7]), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix1197z17677.lut_mask = 64'h000000000000000f;
    dffeas reg_index_2_ (.q (index[2]), .d (index[1]), .clk (clk), .ena (1'b1), 
           .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_index_3_ (.q (index[3]), .d (index[2]), .clk (clk), .ena (1'b1), 
           .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_index_4_ (.q (index[4]), .d (index[3]), .clk (clk), .ena (1'b1), 
           .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_index_5_ (.q (index[5]), .d (index[4]), .clk (clk), .ena (1'b1), 
           .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_index_6_ (.q (index[6]), .d (index[5]), .clk (clk), .ena (1'b1), 
           .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_index_7_ (.q (index[7]), .d (index[6]), .clk (clk), .ena (1'b1), 
           .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_dir_w_sw_2_ (.q (dir_w_sw_2_), .d (nx56842z2), .clk (clk), .ena (
           index_3__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_sum_w_sw_8_ (.q (sum_w_sw[8]), .d (sum_w_sw_12n7s3_8_), .clk (clk
           ), .ena (index_3__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_acc_9_ (.q (acc[9]), .d (acc_12n7s2[9]), .clk (clk), .ena (
           index_3__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_acc_8_ (.q (acc[8]), .d (acc_12n7s2[8]), .clk (clk), .ena (
           index_3__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_acc_7_ (.q (acc[7]), .d (acc_12n7s2[7]), .clk (clk), .ena (
           index_3__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_acc_6_ (.q (acc[6]), .d (acc_12n7s2[6]), .clk (clk), .ena (
           index_3__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_acc_5_ (.q (acc[5]), .d (acc_12n7s2[5]), .clk (clk), .ena (
           index_3__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_acc_4_ (.q (acc[4]), .d (acc_12n7s2[4]), .clk (clk), .ena (
           index_3__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_acc_3_ (.q (acc[3]), .d (acc_12n7s2[3]), .clk (clk), .ena (
           index_3__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_acc_2_ (.q (acc[2]), .d (acc_12n7s2[2]), .clk (clk), .ena (
           index_3__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_acc_1_ (.q (acc[1]), .d (acc_12n7s2[1]), .clk (clk), .ena (
           index_3__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_acc_0_ (.q (acc[0]), .d (acc_12n7s2[0]), .clk (clk), .ena (
           index_3__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_dir_s_se_2_ (.q (dir_s_se[2]), .d (nx31920z1), .clk (clk), .ena (
           index_2__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_dir_s_se_1_ (.q (dir_s_se[1]), .d (nx41892z2), .clk (clk), .ena (
           index_2__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_sum_s_se_9_ (.q (sum_s_se[9]), .d (sum_s_se_12n5s3[9]), .clk (clk
           ), .ena (index_2__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_sum_s_se_8_ (.q (sum_s_se[8]), .d (sum_s_se_12n5s3[8]), .clk (clk
           ), .ena (index_2__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_sum_s_se_7_ (.q (sum_s_se[7]), .d (sum_s_se_12n5s3[7]), .clk (clk
           ), .ena (index_2__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_sum_s_se_6_ (.q (sum_s_se[6]), .d (sum_s_se_12n5s3[6]), .clk (clk
           ), .ena (index_2__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_sum_s_se_5_ (.q (sum_s_se[5]), .d (sum_s_se_12n5s3[5]), .clk (clk
           ), .ena (index_2__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_sum_s_se_4_ (.q (sum_s_se[4]), .d (sum_s_se_12n5s3[4]), .clk (clk
           ), .ena (index_2__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_sum_s_se_3_ (.q (sum_s_se[3]), .d (sum_s_se_12n5s3[3]), .clk (clk
           ), .ena (index_2__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_sum_s_se_2_ (.q (sum_s_se[2]), .d (sum_s_se_12n5s3[2]), .clk (clk
           ), .ena (index_2__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_sum_s_se_1_ (.q (sum_s_se[1]), .d (sum_s_se_12n5s3[1]), .clk (clk
           ), .ena (index_2__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_sum_s_se_0_ (.q (sum_s_se[0]), .d (sum_s_se_12n5s3[0]), .clk (clk
           ), .ena (index_2__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_sum_e_ne_7_ (.q (sum_e_ne[7]), .d (e[7]), .clk (clk), .ena (
           index_1__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_sum_e_ne_6_ (.q (sum_e_ne[6]), .d (e[6]), .clk (clk), .ena (
           index_1__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_sum_e_ne_5_ (.q (sum_e_ne[5]), .d (e[5]), .clk (clk), .ena (
           index_1__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_sum_e_ne_4_ (.q (sum_e_ne[4]), .d (e[4]), .clk (clk), .ena (
           index_1__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_sum_e_ne_3_ (.q (sum_e_ne[3]), .d (e[3]), .clk (clk), .ena (
           index_1__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_sum_e_ne_2_ (.q (sum_e_ne[2]), .d (e[2]), .clk (clk), .ena (
           index_1__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_sum_e_ne_1_ (.q (sum_e_ne[1]), .d (e[1]), .clk (clk), .ena (
           index_1__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_sum_e_ne_0_ (.q (sum_e_ne[0]), .d (e[0]), .clk (clk), .ena (
           index_1__repl), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_e_7_ (.q (e[7]), .d (i_pixel[7]), .clk (clk), .ena (nx9489z1), .clrn (
           o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_e_6_ (.q (e[6]), .d (i_pixel[6]), .clk (clk), .ena (nx9489z1), .clrn (
           o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_e_5_ (.q (e[5]), .d (i_pixel[5]), .clk (clk), .ena (nx9489z1), .clrn (
           o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_e_4_ (.q (e[4]), .d (i_pixel[4]), .clk (clk), .ena (nx9489z1), .clrn (
           o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_e_3_ (.q (e[3]), .d (i_pixel[3]), .clk (clk), .ena (nx9489z1), .clrn (
           o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_e_2_ (.q (e[2]), .d (i_pixel[2]), .clk (clk), .ena (nx9489z1), .clrn (
           o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_e_1_ (.q (e[1]), .d (i_pixel[1]), .clk (clk), .ena (nx9489z1), .clrn (
           o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_e_0_ (.q (e[0]), .d (i_pixel[0]), .clk (clk), .ena (nx9489z1), .clrn (
           o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_g_7_ (.q (g[7]), .d (f[7]), .clk (clk), .ena (nx9489z1), .clrn (
           o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_g_6_ (.q (g[6]), .d (f[6]), .clk (clk), .ena (nx9489z1), .clrn (
           o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_g_5_ (.q (g[5]), .d (f[5]), .clk (clk), .ena (nx9489z1), .clrn (
           o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_g_4_ (.q (g[4]), .d (f[4]), .clk (clk), .ena (nx9489z1), .clrn (
           o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_g_3_ (.q (g[3]), .d (f[3]), .clk (clk), .ena (nx9489z1), .clrn (
           o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_g_2_ (.q (g[2]), .d (f[2]), .clk (clk), .ena (nx9489z1), .clrn (
           o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_g_1_ (.q (g[1]), .d (f[1]), .clk (clk), .ena (nx9489z1), .clrn (
           o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_g_0_ (.q (g[0]), .d (f[0]), .clk (clk), .ena (nx9489z1), .clrn (
           o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_f_7_ (.q (f[7]), .d (e[7]), .clk (clk), .ena (nx9489z1), .clrn (
           o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_f_6_ (.q (f[6]), .d (e[6]), .clk (clk), .ena (nx9489z1), .clrn (
           o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_f_5_ (.q (f[5]), .d (e[5]), .clk (clk), .ena (nx9489z1), .clrn (
           o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_f_4_ (.q (f[4]), .d (e[4]), .clk (clk), .ena (nx9489z1), .clrn (
           o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_f_3_ (.q (f[3]), .d (e[3]), .clk (clk), .ena (nx9489z1), .clrn (
           o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_f_2_ (.q (f[2]), .d (e[2]), .clk (clk), .ena (nx9489z1), .clrn (
           o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_f_1_ (.q (f[1]), .d (e[1]), .clk (clk), .ena (nx9489z1), .clrn (
           o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_f_0_ (.q (f[0]), .d (e[0]), .clk (clk), .ena (nx9489z1), .clrn (
           o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    stratixiv_lcell_comb ix58205z17674 (.combout (nx58205z1), .dataa (1'b1), .datab (
                         1'b1), .datac (col[1]), .datad (i_valid), .datae (
                         nx58205z2), .dataf (nx58205z3), .datag (1'b1), .cin (
                         1'b0), .sharein (1'b0)) ;
                         defparam ix58205z17674.lut_mask = 64'hff00ff00ff00f000;
    dffeas reg_index_7__repl (.q (index_7__repl), .d (index[6]), .clk (clk), .ena (
           1'b1), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    stratixiv_lcell_comb ix1799_repl (.combout (nx1925_repl), .dataa (1'b1), .datab (
                         col[3]), .datac (col[1]), .datad (col[0]), .datae (
                         col[2]), .dataf (nx16341z1), .datag (1'b1), .cin (1'b0)
                         , .sharein (1'b0)) ;
                         defparam ix1799_repl.lut_mask = 64'h00000000c0000000;
    dffeas reg_index_3__repl (.q (index_3__repl), .d (index[2]), .clk (clk), .ena (
           1'b1), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_index_2__repl (.q (index_2__repl), .d (index[1]), .clk (clk), .ena (
           1'b1), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_index_1__repl (.q (index_1__repl), .d (nx58205z1), .clk (clk), .ena (
           o_mode[0]), .clrn (o_mode[0]), .prn (o_mode[0]), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    stratixiv_lcell_comb ix53402z17674 (.combout (nx53402z1), .dataa (1'b1), .datab (
                         1'b1), .datac (i_valid), .datad (reset), .datae (
                         nx53402z2), .dataf (STATE), .datag (1'b1), .cin (1'b0)
                         , .sharein (1'b0)) ;
                         defparam ix53402z17674.lut_mask = 64'h000f00ff00ff00ff;
endmodule

