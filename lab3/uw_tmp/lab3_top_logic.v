//
// Verilog description for cell lab3_top, 
// Sun Jun 24 15:42:23 2018
//
// Precision RTL Synthesis, 64-bit 2015.2.16//


module lab3_top ( reset_n, clk, uart_rx, uart_tx, seg7_en, seg7_data, led, sw
                   ) ;

    input reset_n ;
    input clk ;
    input uart_rx ;
    output uart_tx ;
    output [1:0]seg7_en ;
    output [7:0]seg7_data ;
    output [7:0]led ;
    input [7:0]sw ;

    wire i_valid;
    wire [7:0]i_data;
    wire [7:0]o_data;
    wire [7:0]byte_reg;
    wire [7:0]byte_count;
    wire seg7_pts_1_, tx_busy, byte_valid, 
         u_seg7_u_dual_seg7_o_char_rtlc6_o_char_1_TE_rtlcGen0, 
         u_seg7_u_dual_seg7_o_char_rtlc6_o_char_5_TE_rtlcGen2, 
         u_seg7_u_dual_seg7_o_char_rtlc6_o_char_6_TE_rtlcGen4, 
         u_seg7_u_dual_seg7_prev_reset, u_seg7_u_dual_seg7_prev_char0_en;
    wire [7:0]yes_uart_u_uart_Rx_Reg;
    wire yes_uart_u_uart_RxDivisor_4_;
    wire [10:0]yes_uart_u_uart_RxDiv;
    wire [11:0]yes_uart_u_uart_TxDiv;
    wire yes_uart_u_uart_TopTx, yes_uart_u_uart_TopRx;
    wire [3:0]yes_uart_u_uart_TxBitCnt;
    wire [3:0]yes_uart_u_uart_RxBitCnt;
    wire yes_uart_u_uart_Rx_r;
    wire [5:0]yes_uart_u_uart_RxFSM;
    wire [1:0]yes_uart_u_uart_TxFSM;
    wire [31:0]u_lab3_row;
    wire [31:0]u_lab3_column;
    wire u_lab3_p_31_, u_lab3_stage_1_, u_lab3_flag, u_lab3_compute_flag;
    wire [4:0]u_lab3_state;
    wire u_lab3_p_1n7s3_9_, u_lab3_p_1n7s3_7_, u_lab3_p_1n7s3_6_, 
         u_lab3_p_1n7s3_5_, u_lab3_p_1n7s3_4_, u_lab3_p_1n7s3_3_, 
         u_lab3_p_1n7s3_2_, u_lab3_p_1n7s3_1_, u_lab3_p_1n7s3_0_, nx49424z1;
    wire [7:0]u_lab3_minuend_0_;
    wire [7:0]u_lab3_minuend_1_;
    wire [7:0]u_lab3_minuend_2_;
    wire [7:0]u_lab3_minuend_3_;
    wire [7:0]u_lab3_minuend_4_;
    wire [7:0]u_lab3_minuend_5_;
    wire [7:0]u_lab3_minuend_6_;
    wire [7:0]u_lab3_minuend_7_;
    wire [7:0]u_lab3_minuend_8_;
    wire [7:0]u_lab3_minuend_9_;
    wire [7:0]u_lab3_minuend_10_;
    wire [7:0]u_lab3_minuend_11_;
    wire [7:0]u_lab3_minuend_12_;
    wire [7:0]u_lab3_minuend_13_;
    wire [7:0]u_lab3_minuend_14_;
    wire [7:0]u_lab3_minuend_15_;
    wire [7:0]u_lab3_subtrahend_0_;
    wire [7:0]u_lab3_subtrahend_1_;
    wire [7:0]u_lab3_subtrahend_2_;
    wire [7:0]u_lab3_subtrahend_3_;
    wire [7:0]u_lab3_subtrahend_4_;
    wire [7:0]u_lab3_subtrahend_5_;
    wire [7:0]u_lab3_subtrahend_6_;
    wire [7:0]u_lab3_subtrahend_7_;
    wire [7:0]u_lab3_subtrahend_8_;
    wire [7:0]u_lab3_subtrahend_9_;
    wire [7:0]u_lab3_subtrahend_10_;
    wire [7:0]u_lab3_subtrahend_11_;
    wire [7:0]u_lab3_subtrahend_12_;
    wire [7:0]u_lab3_subtrahend_13_;
    wire [7:0]u_lab3_subtrahend_14_;
    wire [7:0]u_lab3_subtrahend_15_;
    wire [7:0]u_lab3_addend_0_;
    wire [7:0]u_lab3_addend_1_;
    wire [7:0]u_lab3_addend_2_;
    wire [7:0]u_lab3_addend_3_;
    wire [7:0]u_lab3_addend_4_;
    wire [7:0]u_lab3_addend_5_;
    wire [7:0]u_lab3_addend_6_;
    wire [7:0]u_lab3_addend_7_;
    wire [7:0]u_lab3_addend_8_;
    wire [7:0]u_lab3_addend_9_;
    wire [7:0]u_lab3_addend_10_;
    wire [7:0]u_lab3_addend_11_;
    wire [7:0]u_lab3_addend_12_;
    wire [7:0]u_lab3_addend_13_;
    wire [7:0]u_lab3_addend_14_;
    wire [7:0]u_lab3_addend_15_;
    wire inc_d_0_, nx27063z1, inc_d_1_, nx39256z1, inc_d_2_, nx57428z1, inc_d_3_, 
         nx23040z1, inc_d_4_, nx58827z1, inc_d_5_, nx37857z1, inc_d_6_, 
         nx53431z1, inc_d_7_, nx47005z1, nx13374z1, nx63336z1, nx62824z1, 
         nx28436z1, nx55549z1, nx25561z1, nx41135z1, nx9230z1, nx24804z1, 
         inc_d_0__dup_2773, nx9230z2, inc_d_1__dup_2774, nx41135z2, 
         inc_d_2__dup_2775, nx25561z2, inc_d_3__dup_2776, nx55549z2, 
         inc_d_4__dup_2777, nx28436z2, inc_d_5__dup_2778, nx62824z2, 
         inc_d_6__dup_2779, nx63336z2, inc_d_7__dup_2780, nx13374z2, inc_d_8_, 
         nx47005z2, inc_d_9_, nx10744z1, inc_d_10_, inc_d_0__dup_2818, nx49129z1, 
         inc_d_1__dup_2820, nx50038z1, inc_d_2__dup_2822, nx76z1, 
         inc_d_3__dup_2824, nx15650z1, inc_d_4__dup_2826, nx34312z1, 
         inc_d_5__dup_2828, nx18738z1, inc_d_6__dup_2830, nx4678z1, 
         inc_d_7__dup_2832, nx10896z1, inc_d_8__dup_2833, nx26470z1, 
         inc_d_9__dup_2834, nx34257z1, inc_d_10__dup_2835, inc_d_0__dup_2867, 
         nx47817z1, inc_d_1__dup_2869, nx51350z1, inc_d_2__dup_2871, nx1388z1, 
         inc_d_3__dup_2873, nx16962z1, inc_d_4__dup_2875, nx32536z1, 
         inc_d_5__dup_2877, nx17426z1, inc_d_6__dup_2879, nx49331z1, 
         inc_d_7__dup_2881, nx33757z1, inc_d_8__dup_2883, nx47250z1, 
         inc_d_9__dup_2885, nx47353z1, inc_d_10__dup_2887, nx55140z1, inc_d_11_, 
         inc_d_0__dup_3036, nx18768z1, inc_d_1__dup_3038, nx52399z1, 
         inc_d_2__dup_3040, nx2437z1, inc_d_3__dup_3042, nx47525z1, 
         inc_d_4__dup_3044, nx31951z1, inc_d_5__dup_3046, nx16377z1, 
         inc_d_6__dup_3048, nx56069z1, inc_d_7__dup_3050, nx63011z19, nx13806z19, 
         nx17342z19, nx64525z19, nx33377z19, nx63307z19, nx46976z19, nx43842z1, 
         nx59416z1, nx27511z1, nx43085z1, nx6877z1, nx56839z1, nx41265z1, 
         nx57902z1, u_lab3_p_1n7s2_31_, nx17564z1, nx19195z1, nx46918z2;
    wire [7:0]u_lab3_p_1n7s3f1;
    wire [7:0]u_lab3_p_1n7s3f2;
    wire nx46918z5, nx36913z8, nx36913z6, nx36913z4, nx36913z2, nx36913z3, 
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
         nx46976z10, reset;
    wire [7:0]seg7_num;
    wire PWR;
    wire [7:0]byte_reg_2n1ss1;
    wire byte_valid_3n0r1, nx51544z3, nx51544z4, nx51544z5, nx51544z6, nx51544z8, 
         nx51544z9, nx51544z10, nx51544z11, 
         u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0, 
         u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2, 
         u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4;
    wire [13:0]u_seg7_rtlcP1;
    wire u_seg7_u_dual_seg7_muxed_char_4_, u_seg7_u_dual_seg7_muxed_char_3_, 
         u_seg7_u_dual_seg7_muxed_char_2_, u_seg7_u_dual_seg7_muxed_char_0_, 
         nx60244z1, u_seg7_u_dual_seg7_load_reg, nx22863z1;
    wire [0:0]yes_uart_u_uart_Tx_Reg_14n6ss1;
    wire nx46918z3, nx21131z1, nx49278z2, nx46463z1, nx2098z1, nx29107z2, 
         nx64005z1, nx463z1, nx65002z1, nx1460z1, nx60456z1, nx2457z1, nx46262z1, 
         nx60456z2, nx62450z1, nx1460z2, nx60357z7, nx63348z2, 
         u_lab3_rtlc0_PS25_n202, nx62976z4, u_lab3_minuend_1n10ss1_487_, 
         u_lab3_minuend_1n10ss1_486_, u_lab3_minuend_1n10ss1_485_, 
         u_lab3_minuend_1n10ss1_484_, u_lab3_minuend_1n10ss1_483_, 
         u_lab3_minuend_1n10ss1_482_, u_lab3_minuend_1n10ss1_481_, 
         u_lab3_minuend_1n10ss1_480_, u_lab3_minuend_1n10ss1_455_, 
         u_lab3_minuend_1n10ss1_454_, u_lab3_minuend_1n10ss1_453_, 
         u_lab3_minuend_1n10ss1_452_, u_lab3_minuend_1n10ss1_451_, 
         u_lab3_minuend_1n10ss1_450_, u_lab3_minuend_1n10ss1_449_, 
         u_lab3_minuend_1n10ss1_448_, u_lab3_minuend_1n10ss1_423_, 
         u_lab3_minuend_1n10ss1_422_, u_lab3_minuend_1n10ss1_421_, 
         u_lab3_minuend_1n10ss1_420_, u_lab3_minuend_1n10ss1_419_, 
         u_lab3_minuend_1n10ss1_418_, u_lab3_minuend_1n10ss1_417_, 
         u_lab3_minuend_1n10ss1_416_, u_lab3_minuend_1n10ss1_391_, 
         u_lab3_minuend_1n10ss1_390_, u_lab3_minuend_1n10ss1_389_, 
         u_lab3_minuend_1n10ss1_388_, u_lab3_minuend_1n10ss1_387_, 
         u_lab3_minuend_1n10ss1_386_, u_lab3_minuend_1n10ss1_385_, 
         u_lab3_minuend_1n10ss1_384_, u_lab3_minuend_1n10ss1_359_, 
         u_lab3_minuend_1n10ss1_358_, u_lab3_minuend_1n10ss1_357_, 
         u_lab3_minuend_1n10ss1_356_, u_lab3_minuend_1n10ss1_355_, 
         u_lab3_minuend_1n10ss1_354_, u_lab3_minuend_1n10ss1_353_, 
         u_lab3_minuend_1n10ss1_352_, u_lab3_minuend_1n10ss1_327_, 
         u_lab3_minuend_1n10ss1_326_, u_lab3_minuend_1n10ss1_325_, 
         u_lab3_minuend_1n10ss1_324_, u_lab3_minuend_1n10ss1_323_, 
         u_lab3_minuend_1n10ss1_322_, u_lab3_minuend_1n10ss1_321_, 
         u_lab3_minuend_1n10ss1_320_, u_lab3_minuend_1n10ss1_295_, 
         u_lab3_minuend_1n10ss1_294_, u_lab3_minuend_1n10ss1_293_, 
         u_lab3_minuend_1n10ss1_292_, u_lab3_minuend_1n10ss1_291_, 
         u_lab3_minuend_1n10ss1_290_, u_lab3_minuend_1n10ss1_289_, 
         u_lab3_minuend_1n10ss1_288_, u_lab3_minuend_1n10ss1_263_, 
         u_lab3_minuend_1n10ss1_262_, u_lab3_minuend_1n10ss1_261_, 
         u_lab3_minuend_1n10ss1_260_, u_lab3_minuend_1n10ss1_259_, 
         u_lab3_minuend_1n10ss1_258_, u_lab3_minuend_1n10ss1_257_, 
         u_lab3_minuend_1n10ss1_256_, u_lab3_minuend_1n10ss1_231_, 
         u_lab3_minuend_1n10ss1_230_, u_lab3_minuend_1n10ss1_229_, 
         u_lab3_minuend_1n10ss1_228_, u_lab3_minuend_1n10ss1_227_, 
         u_lab3_minuend_1n10ss1_226_, u_lab3_minuend_1n10ss1_225_, 
         u_lab3_minuend_1n10ss1_224_, u_lab3_minuend_1n10ss1_199_, 
         u_lab3_minuend_1n10ss1_198_, u_lab3_minuend_1n10ss1_197_, 
         u_lab3_minuend_1n10ss1_196_, u_lab3_minuend_1n10ss1_195_, 
         u_lab3_minuend_1n10ss1_194_, u_lab3_minuend_1n10ss1_193_, 
         u_lab3_minuend_1n10ss1_192_, u_lab3_minuend_1n10ss1_167_, 
         u_lab3_minuend_1n10ss1_166_, u_lab3_minuend_1n10ss1_165_, 
         u_lab3_minuend_1n10ss1_164_, u_lab3_minuend_1n10ss1_163_, 
         u_lab3_minuend_1n10ss1_162_, u_lab3_minuend_1n10ss1_161_, 
         u_lab3_minuend_1n10ss1_160_, u_lab3_minuend_1n10ss1_135_, 
         u_lab3_minuend_1n10ss1_134_, u_lab3_minuend_1n10ss1_133_, 
         u_lab3_minuend_1n10ss1_132_, u_lab3_minuend_1n10ss1_131_, 
         u_lab3_minuend_1n10ss1_130_, u_lab3_minuend_1n10ss1_129_, 
         u_lab3_minuend_1n10ss1_128_, u_lab3_minuend_1n10ss1_103_, 
         u_lab3_minuend_1n10ss1_102_, u_lab3_minuend_1n10ss1_101_, 
         u_lab3_minuend_1n10ss1_100_, u_lab3_minuend_1n10ss1_99_, 
         u_lab3_minuend_1n10ss1_98_, u_lab3_minuend_1n10ss1_97_, 
         u_lab3_minuend_1n10ss1_96_, u_lab3_minuend_1n10ss1_71_, 
         u_lab3_minuend_1n10ss1_70_, u_lab3_minuend_1n10ss1_69_, 
         u_lab3_minuend_1n10ss1_68_, u_lab3_minuend_1n10ss1_67_, 
         u_lab3_minuend_1n10ss1_66_, u_lab3_minuend_1n10ss1_65_, 
         u_lab3_minuend_1n10ss1_64_, u_lab3_minuend_1n10ss1_39_, 
         u_lab3_minuend_1n10ss1_38_, u_lab3_minuend_1n10ss1_37_, 
         u_lab3_minuend_1n10ss1_36_, u_lab3_minuend_1n10ss1_35_, 
         u_lab3_minuend_1n10ss1_34_, u_lab3_minuend_1n10ss1_33_, 
         u_lab3_minuend_1n10ss1_32_, u_lab3_minuend_1n10ss1_7_, 
         u_lab3_minuend_1n10ss1_6_, u_lab3_minuend_1n10ss1_5_, 
         u_lab3_minuend_1n10ss1_4_, u_lab3_minuend_1n10ss1_3_, 
         u_lab3_minuend_1n10ss1_2_, u_lab3_minuend_1n10ss1_1_, 
         u_lab3_minuend_1n10ss1_0_, nx48923z6, nx53092z2, nx41843z3, nx41843z1, 
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
         nx63626z1, nx64623z1, nx84z1, nx1081z1, nx54503z1, nx55500z1, nx56497z1, 
         nx57494z1, nx58491z1, nx59488z1, nx60485z1, nx61482z1, nx49368z1, 
         nx50365z1, nx51362z1, nx52359z1, nx53356z1, nx54353z1, nx55350z1, 
         nx56347z1, nx44233z1, nx45230z1, nx46227z1, nx47224z1, nx48221z1, 
         nx49218z1, nx50215z1, nx51212z1, nx39098z1, nx40095z1, nx41092z1, 
         nx42089z1, nx43086z1, nx44083z1, nx45080z1, nx46077z1, nx33963z1, 
         nx34960z1, nx35957z1, nx36954z1, nx37951z1, nx38948z1, nx39945z1, 
         nx40942z1, nx36708z1, nx35711z1, nx34714z1, nx33717z1, nx32720z1, 
         nx31723z1, nx30726z1, nx29729z1, nx41843z14, nx40846z1, nx39849z1, 
         nx38852z1, nx37855z1, nx36858z1, nx35861z1, nx34864z1, nx31697z1, 
         nx32694z1, nx33691z1, nx34688z1, nx35685z1, nx36682z1, nx37679z1, 
         nx38676z1, nx26562z1, nx27559z1, nx28556z1, nx29553z1, nx30550z1, 
         nx31547z1, nx32544z1, nx33541z1, nx21427z1, nx22424z1, nx23421z1, 
         nx24418z1, nx25415z1, nx26412z1, nx27409z1, nx28406z1, nx16292z1, 
         nx17289z1, nx18286z1, nx19283z1, nx20280z1, nx21277z1, nx22274z1, 
         nx23271z1, nx11157z1, nx12154z1, nx13151z1, nx14148z1, nx15145z1, 
         nx16142z1, nx17139z1, nx18136z1, nx6022z1, nx7019z1, nx8016z1, nx9013z1, 
         nx10010z1, nx11007z1, nx12004z1, nx13001z1, nx18625z1, nx28027z1, 
         nx51544z1, nx62976z2, nx6634z1, nx3960z1, nx62976z1, nx46918z1, 
         nx45921z1, nx31891z1, nx53092z1, nx64005z2, nx46918z4, nx51272z2, 
         nx51272z1, nx50275z1, nx49278z1, nx48281z1, nx48281z2, nx46026z3, 
         nx46026z1, nx45029z1, nx44032z1, nx43035z1, nx43035z2, nx41843z2, 
         u_lab3_not_minuend_1n1s2_14, u_lab3_not_minuend_1n1s2_13, 
         u_lab3_not_minuend_1n1s2_12, u_lab3_not_minuend_1n1s2_11, 
         u_lab3_not_minuend_1n1s2_10, u_lab3_not_minuend_1n1s2_9, 
         u_lab3_not_minuend_1n1s2_8, u_lab3_not_minuend_1n1s2_7, 
         u_lab3_not_minuend_1n1s2_6, u_lab3_not_minuend_1n1s2_5, 
         u_lab3_not_minuend_1n1s2_4, u_lab3_not_minuend_1n1s2_3, 
         u_lab3_not_minuend_1n1s2_2, u_lab3_not_minuend_1n1s2_1, 
         u_lab3_not_minuend_1n1s2_0, nx41843z4, nx63348z13, nx63348z12, 
         nx63348z11, nx63348z10, nx63348z9, nx63348z8, nx63348z7, nx63348z6, 
         nx63348z5, nx63348z4, nx41843z13, nx41843z12, nx41843z11, nx41843z10, 
         nx41843z9, nx41843z8, nx60357z6, nx41843z7, nx60357z5, nx41843z6, 
         nx62351z4, nx60357z4, nx60357z3, nx62351z1, nx60456z5, nx60456z6, 
         nx60456z4, nx60456z3, nx62450z4, nx62450z3, nx62450z2, nx62450z6, 
         nx62450z5, nx57589z1, nx29107z1, NOT_led_5_, nx6634z2, nx59360z1, 
         nx64005z3, NOT_led_4_, nx22128z1, NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_8_, 
         nx23125z1, NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_7_, nx24122z1, 
         NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_6_, nx25119z1, 
         NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_5_, nx26116z1, 
         NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_4_, nx27113z1, 
         NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_3_, nx28110z1, 
         NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_2_, nx29107z3, 
         NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_1_, nx46026z2, nx63008z1;
    wire [2867:0] xmplr_dummy ;




    assign uart_tx = uart_rx ;
    assign led[7] = sw[7] ;
    assign led[5] = led[6] ;
    assign led[4] = uart_rx ;
    assign led[2] = sw[2] ;
    assign led[1] = sw[1] ;
    assign led[0] = sw[0] ;
    modgen_counter_32_0 u_lab3_modgen_counter_row (.clock (clk), .q ({
                        u_lab3_row[31],u_lab3_row[30],u_lab3_row[29],
                        u_lab3_row[28],u_lab3_row[27],u_lab3_row[26],
                        u_lab3_row[25],u_lab3_row[24],u_lab3_row[23],
                        u_lab3_row[22],u_lab3_row[21],u_lab3_row[20],
                        u_lab3_row[19],u_lab3_row[18],u_lab3_row[17],
                        u_lab3_row[16],u_lab3_row[15],u_lab3_row[14],
                        u_lab3_row[13],u_lab3_row[12],u_lab3_row[11],
                        u_lab3_row[10],u_lab3_row[9],u_lab3_row[8],u_lab3_row[7]
                        ,u_lab3_row[6],u_lab3_row[5],u_lab3_row[4],u_lab3_row[3]
                        ,u_lab3_row[2],u_lab3_row[1],u_lab3_row[0]}), .clk_en (
                        nx41843z1), .sload (u_lab3_state[1]), .sclear (
                        u_lab3_state[0])) ;
    modgen_counter_32_1 u_lab3_modgen_counter_column (.clock (clk), .q ({
                        u_lab3_column[31],u_lab3_column[30],u_lab3_column[29],
                        u_lab3_column[28],u_lab3_column[27],u_lab3_column[26],
                        u_lab3_column[25],u_lab3_column[24],u_lab3_column[23],
                        u_lab3_column[22],u_lab3_column[21],u_lab3_column[20],
                        u_lab3_column[19],u_lab3_column[18],u_lab3_column[17],
                        u_lab3_column[16],u_lab3_column[15],u_lab3_column[14],
                        u_lab3_column[13],u_lab3_column[12],u_lab3_column[11],
                        u_lab3_column[10],u_lab3_column[9],u_lab3_column[8],
                        u_lab3_column[7],u_lab3_column[6],u_lab3_column[5],
                        u_lab3_column[4],u_lab3_column[3],u_lab3_column[2],
                        u_lab3_column[1],u_lab3_column[0]}), .clk_en (nx48923z1)
                        , .sclear (nx48923z4)) ;
    TRI u_seg7_u_dual_seg7_o_char_triBus3_6_ (.out (seg7_data[6]), .in (led[6])
        , .oe (u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4)) ;
    TRI u_seg7_u_dual_seg7_o_char_triBus3_5_ (.out (seg7_data[5]), .in (led[6])
        , .oe (u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2)) ;
    TRI u_seg7_u_dual_seg7_ix36127z20184 (.out (seg7_data[1]), .in (led[6]), .oe (
        u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0)) ;
    assign seg7_en[0] = ~seg7_en[1] ;
    assign reset = ~reset_n ;
    assign led[6] = 1'b0 ;
    assign PWR = 1'b1 ;
    assign u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0 = ~
    u_seg7_u_dual_seg7_o_char_rtlc6_o_char_1_TE_rtlcGen0 ;
    assign u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2 = ~
    u_seg7_u_dual_seg7_o_char_rtlc6_o_char_5_TE_rtlcGen2 ;
    assign u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4 = ~
    u_seg7_u_dual_seg7_o_char_rtlc6_o_char_6_TE_rtlcGen4 ;
    assign u_lab3_not_state_3 = ~u_lab3_state[3] ;
    assign led[3] = ~nx57589z1 ;
    assign NOT_led_5_ = ~led[6] ;
    assign u_lab3_state[0] = ~nx6634z2 ;
    assign yes_uart_u_uart_Rx_r = ~nx64005z3 ;
    assign NOT_led_4_ = ~uart_rx ;
    assign yes_uart_u_uart_RxFSM[0] = ~nx46026z2 ;
    fiftyfivenm_lcell_comb ix2_fadd (.combout (inc_d_0_), .cout (nx27063z1), .dataa (
                           byte_count[0]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR)) ;
                           defparam ix2_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix6_fadd (.combout (inc_d_1_), .cout (nx39256z1), .dataa (
                           byte_count[1]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx27063z1)) ;
                           defparam ix6_fadd.lut_mask = 16'h5aa0;
                           defparam ix6_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix10_fadd (.combout (inc_d_2_), .cout (nx57428z1), .dataa (
                           byte_count[2]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx39256z1)) ;
                           defparam ix10_fadd.lut_mask = 16'h5aa0;
                           defparam ix10_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix14_fadd (.combout (inc_d_3_), .cout (nx23040z1), .dataa (
                           byte_count[3]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx57428z1)) ;
                           defparam ix14_fadd.lut_mask = 16'h5aa0;
                           defparam ix14_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix18_fadd (.combout (inc_d_4_), .cout (nx58827z1), .dataa (
                           byte_count[4]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx23040z1)) ;
                           defparam ix18_fadd.lut_mask = 16'h5aa0;
                           defparam ix18_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix22_fadd (.combout (inc_d_5_), .cout (nx37857z1), .dataa (
                           byte_count[5]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx58827z1)) ;
                           defparam ix22_fadd.lut_mask = 16'h5aa0;
                           defparam ix22_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix26_fadd (.combout (inc_d_6_), .cout (nx53431z1), .dataa (
                           byte_count[6]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx37857z1)) ;
                           defparam ix26_fadd.lut_mask = 16'h5aa0;
                           defparam ix26_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix28_fadd (.combout (inc_d_7_), .dataa (byte_count[7]
                           ), .datab (1'b1), .datac (1'b1), .datad (PWR), .cin (
                           nx53431z1)) ;
                           defparam ix28_fadd.lut_mask = 16'h5a5a;
                           defparam ix28_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2757_fadd (.combout (inc_d_0__dup_2773), .cout (
                           nx9230z2), .dataa (nx24804z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR)) ;
                           defparam ix2757_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix2759_fadd (.combout (inc_d_1__dup_2774), .cout (
                           nx41135z2), .dataa (nx9230z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx9230z2)) ;
                           defparam ix2759_fadd.lut_mask = 16'h5aa0;
                           defparam ix2759_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2761_fadd (.combout (inc_d_2__dup_2775), .cout (
                           nx25561z2), .dataa (nx41135z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx41135z2)) ;
                           defparam ix2761_fadd.lut_mask = 16'h5aa0;
                           defparam ix2761_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2763_fadd (.combout (inc_d_3__dup_2776), .cout (
                           nx55549z2), .dataa (nx25561z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx25561z2)) ;
                           defparam ix2763_fadd.lut_mask = 16'h5aa0;
                           defparam ix2763_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2765_fadd (.combout (inc_d_4__dup_2777), .cout (
                           nx28436z2), .dataa (nx55549z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx55549z2)) ;
                           defparam ix2765_fadd.lut_mask = 16'h5aa0;
                           defparam ix2765_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix32_fadd (.combout (inc_d_5__dup_2778), .cout (
                           nx62824z2), .dataa (nx28436z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx28436z2)) ;
                           defparam ix32_fadd.lut_mask = 16'h5aa0;
                           defparam ix32_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix36_fadd (.combout (inc_d_6__dup_2779), .cout (
                           nx63336z2), .dataa (nx62824z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx62824z2)) ;
                           defparam ix36_fadd.lut_mask = 16'h5aa0;
                           defparam ix36_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2766_fadd (.combout (inc_d_7__dup_2780), .cout (
                           nx13374z2), .dataa (nx63336z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx63336z2)) ;
                           defparam ix2766_fadd.lut_mask = 16'h5aa0;
                           defparam ix2766_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2768_fadd (.combout (inc_d_8_), .cout (nx47005z2), 
                           .dataa (nx13374z1), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx13374z2)) ;
                           defparam ix2768_fadd.lut_mask = 16'h5aa0;
                           defparam ix2768_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2770_fadd (.combout (inc_d_9_), .cout (nx10744z1), 
                           .dataa (nx47005z1), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx47005z2)) ;
                           defparam ix2770_fadd.lut_mask = 16'h5aa0;
                           defparam ix2770_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2771_fadd (.combout (inc_d_10_), .dataa (seg7_en[1]
                           ), .datab (1'b1), .datac (1'b1), .datad (PWR), .cin (
                           nx10744z1)) ;
                           defparam ix2771_fadd.lut_mask = 16'h5a5a;
                           defparam ix2771_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2787_fadd (.combout (inc_d_0__dup_2818), .cout (
                           nx49129z1), .dataa (yes_uart_u_uart_RxDiv[0]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR)) ;
                           defparam ix2787_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix2789_fadd (.combout (inc_d_1__dup_2820), .cout (
                           nx50038z1), .dataa (yes_uart_u_uart_RxDiv[1]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx49129z1)
                           ) ;
                           defparam ix2789_fadd.lut_mask = 16'h5aa0;
                           defparam ix2789_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2791_fadd (.combout (inc_d_2__dup_2822), .cout (
                           nx76z1), .dataa (yes_uart_u_uart_RxDiv[2]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx50038z1)
                           ) ;
                           defparam ix2791_fadd.lut_mask = 16'h5aa0;
                           defparam ix2791_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2793_fadd (.combout (inc_d_3__dup_2824), .cout (
                           nx15650z1), .dataa (yes_uart_u_uart_RxDiv[3]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx76z1)) ;
                           defparam ix2793_fadd.lut_mask = 16'h5aa0;
                           defparam ix2793_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2795_fadd (.combout (inc_d_4__dup_2826), .cout (
                           nx34312z1), .dataa (yes_uart_u_uart_RxDiv[4]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx15650z1)
                           ) ;
                           defparam ix2795_fadd.lut_mask = 16'h5aa0;
                           defparam ix2795_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2797_fadd (.combout (inc_d_5__dup_2828), .cout (
                           nx18738z1), .dataa (yes_uart_u_uart_RxDiv[5]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx34312z1)
                           ) ;
                           defparam ix2797_fadd.lut_mask = 16'h5aa0;
                           defparam ix2797_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2799_fadd (.combout (inc_d_6__dup_2830), .cout (
                           nx4678z1), .dataa (yes_uart_u_uart_RxDiv[6]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx18738z1)
                           ) ;
                           defparam ix2799_fadd.lut_mask = 16'h5aa0;
                           defparam ix2799_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2801_fadd (.combout (inc_d_7__dup_2832), .cout (
                           nx10896z1), .dataa (yes_uart_u_uart_RxDiv[7]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx4678z1)
                           ) ;
                           defparam ix2801_fadd.lut_mask = 16'h5aa0;
                           defparam ix2801_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2803_fadd (.combout (inc_d_8__dup_2833), .cout (
                           nx26470z1), .dataa (yes_uart_u_uart_RxDiv[8]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx10896z1)
                           ) ;
                           defparam ix2803_fadd.lut_mask = 16'h5aa0;
                           defparam ix2803_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2805_fadd (.combout (inc_d_9__dup_2834), .cout (
                           nx34257z1), .dataa (yes_uart_u_uart_RxDiv[9]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx26470z1)
                           ) ;
                           defparam ix2805_fadd.lut_mask = 16'h5aa0;
                           defparam ix2805_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2806_fadd (.combout (inc_d_10__dup_2835), .dataa (
                           yes_uart_u_uart_RxDiv[10]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx34257z1)) ;
                           defparam ix2806_fadd.lut_mask = 16'h5a5a;
                           defparam ix2806_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2837_fadd (.combout (inc_d_0__dup_2867), .cout (
                           nx47817z1), .dataa (yes_uart_u_uart_TxDiv[0]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR)) ;
                           defparam ix2837_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix2839_fadd (.combout (inc_d_1__dup_2869), .cout (
                           nx51350z1), .dataa (yes_uart_u_uart_TxDiv[1]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx47817z1)
                           ) ;
                           defparam ix2839_fadd.lut_mask = 16'h5aa0;
                           defparam ix2839_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2841_fadd (.combout (inc_d_2__dup_2871), .cout (
                           nx1388z1), .dataa (yes_uart_u_uart_TxDiv[2]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx51350z1)
                           ) ;
                           defparam ix2841_fadd.lut_mask = 16'h5aa0;
                           defparam ix2841_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2843_fadd (.combout (inc_d_3__dup_2873), .cout (
                           nx16962z1), .dataa (yes_uart_u_uart_TxDiv[3]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx1388z1)
                           ) ;
                           defparam ix2843_fadd.lut_mask = 16'h5aa0;
                           defparam ix2843_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2845_fadd (.combout (inc_d_4__dup_2875), .cout (
                           nx32536z1), .dataa (yes_uart_u_uart_TxDiv[4]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx16962z1)
                           ) ;
                           defparam ix2845_fadd.lut_mask = 16'h5aa0;
                           defparam ix2845_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2847_fadd (.combout (inc_d_5__dup_2877), .cout (
                           nx17426z1), .dataa (yes_uart_u_uart_TxDiv[5]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx32536z1)
                           ) ;
                           defparam ix2847_fadd.lut_mask = 16'h5aa0;
                           defparam ix2847_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2849_fadd (.combout (inc_d_6__dup_2879), .cout (
                           nx49331z1), .dataa (yes_uart_u_uart_TxDiv[6]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx17426z1)
                           ) ;
                           defparam ix2849_fadd.lut_mask = 16'h5aa0;
                           defparam ix2849_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2851_fadd (.combout (inc_d_7__dup_2881), .cout (
                           nx33757z1), .dataa (yes_uart_u_uart_TxDiv[7]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx49331z1)
                           ) ;
                           defparam ix2851_fadd.lut_mask = 16'h5aa0;
                           defparam ix2851_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2853_fadd (.combout (inc_d_8__dup_2883), .cout (
                           nx47250z1), .dataa (yes_uart_u_uart_TxDiv[8]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx33757z1)
                           ) ;
                           defparam ix2853_fadd.lut_mask = 16'h5aa0;
                           defparam ix2853_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix38_fadd (.combout (inc_d_9__dup_2885), .cout (
                           nx47353z1), .dataa (yes_uart_u_uart_TxDiv[9]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx47250z1)
                           ) ;
                           defparam ix38_fadd.lut_mask = 16'h5aa0;
                           defparam ix38_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2855_fadd (.combout (inc_d_10__dup_2887), .cout (
                           nx55140z1), .dataa (yes_uart_u_uart_TxDiv[10]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx47353z1)
                           ) ;
                           defparam ix2855_fadd.lut_mask = 16'h5aa0;
                           defparam ix2855_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2856_fadd (.combout (inc_d_11_), .dataa (
                           yes_uart_u_uart_TxDiv[11]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx55140z1)) ;
                           defparam ix2856_fadd.lut_mask = 16'h5a5a;
                           defparam ix2856_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix3017_fadd (.combout (inc_d_0__dup_3036), .cout (
                           nx18768z1), .dataa (o_data[0]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR)) ;
                           defparam ix3017_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix3019_fadd (.combout (inc_d_1__dup_3038), .cout (
                           nx52399z1), .dataa (o_data[1]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx18768z1)) ;
                           defparam ix3019_fadd.lut_mask = 16'h5aa0;
                           defparam ix3019_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix3021_fadd (.combout (inc_d_2__dup_3040), .cout (
                           nx2437z1), .dataa (o_data[2]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx52399z1)) ;
                           defparam ix3021_fadd.lut_mask = 16'h5aa0;
                           defparam ix3021_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix3023_fadd (.combout (inc_d_3__dup_3042), .cout (
                           nx47525z1), .dataa (o_data[3]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx2437z1)) ;
                           defparam ix3023_fadd.lut_mask = 16'h5aa0;
                           defparam ix3023_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix3025_fadd (.combout (inc_d_4__dup_3044), .cout (
                           nx31951z1), .dataa (o_data[4]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx47525z1)) ;
                           defparam ix3025_fadd.lut_mask = 16'h5aa0;
                           defparam ix3025_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix3027_fadd (.combout (inc_d_5__dup_3046), .cout (
                           nx16377z1), .dataa (o_data[5]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx31951z1)) ;
                           defparam ix3027_fadd.lut_mask = 16'h5aa0;
                           defparam ix3027_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix3029_fadd (.combout (inc_d_6__dup_3048), .cout (
                           nx56069z1), .dataa (o_data[6]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx16377z1)) ;
                           defparam ix3029_fadd.lut_mask = 16'h5aa0;
                           defparam ix3029_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix3030_fadd (.combout (inc_d_7__dup_3050), .dataa (
                           o_data[7]), .datab (1'b1), .datac (1'b1), .datad (PWR
                           ), .cin (nx56069z1)) ;
                           defparam ix3030_fadd.lut_mask = 16'h5a5a;
                           defparam ix3030_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_lab3_p_sub8_1i275_ix35_fadd (.combout (
                           u_lab3_p_1n7s3_0_), .cout (nx63011z19), .dataa (
                           u_lab3_p_1n7s3f1[0]), .datab (u_lab3_p_1n7s3f2[0]), .datac (
                           1'b1), .datad (PWR)) ;
                           defparam u_lab3_p_sub8_1i275_ix35_fadd.lut_mask = 16'h66bb;
    fiftyfivenm_lcell_comb u_lab3_p_sub8_1i275_ix39_fadd (.combout (
                           u_lab3_p_1n7s3_1_), .cout (nx13806z19), .dataa (
                           u_lab3_p_1n7s3f1[1]), .datab (u_lab3_p_1n7s3f2[1]), .datac (
                           1'b1), .datad (PWR), .cin (nx63011z19)) ;
                           defparam u_lab3_p_sub8_1i275_ix39_fadd.lut_mask = 16'h69b2;
                           defparam u_lab3_p_sub8_1i275_ix39_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_lab3_p_sub8_1i275_ix43_fadd (.combout (
                           u_lab3_p_1n7s3_2_), .cout (nx17342z19), .dataa (
                           u_lab3_p_1n7s3f1[2]), .datab (u_lab3_p_1n7s3f2[2]), .datac (
                           1'b1), .datad (PWR), .cin (nx13806z19)) ;
                           defparam u_lab3_p_sub8_1i275_ix43_fadd.lut_mask = 16'h69b2;
                           defparam u_lab3_p_sub8_1i275_ix43_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_lab3_p_sub8_1i275_ix47_fadd (.combout (
                           u_lab3_p_1n7s3_3_), .cout (nx64525z19), .dataa (
                           u_lab3_p_1n7s3f1[3]), .datab (u_lab3_p_1n7s3f2[3]), .datac (
                           1'b1), .datad (PWR), .cin (nx17342z19)) ;
                           defparam u_lab3_p_sub8_1i275_ix47_fadd.lut_mask = 16'h69b2;
                           defparam u_lab3_p_sub8_1i275_ix47_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_lab3_p_sub8_1i275_ix51_fadd (.combout (
                           u_lab3_p_1n7s3_4_), .cout (nx33377z19), .dataa (
                           u_lab3_p_1n7s3f1[4]), .datab (u_lab3_p_1n7s3f2[4]), .datac (
                           1'b1), .datad (PWR), .cin (nx64525z19)) ;
                           defparam u_lab3_p_sub8_1i275_ix51_fadd.lut_mask = 16'h69b2;
                           defparam u_lab3_p_sub8_1i275_ix51_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_lab3_p_sub8_1i275_ix55_fadd (.combout (
                           u_lab3_p_1n7s3_5_), .cout (nx63307z19), .dataa (
                           u_lab3_p_1n7s3f1[5]), .datab (u_lab3_p_1n7s3f2[5]), .datac (
                           1'b1), .datad (PWR), .cin (nx33377z19)) ;
                           defparam u_lab3_p_sub8_1i275_ix55_fadd.lut_mask = 16'h69b2;
                           defparam u_lab3_p_sub8_1i275_ix55_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_lab3_p_sub8_1i275_ix59_fadd (.combout (
                           u_lab3_p_1n7s3_6_), .cout (nx46976z19), .dataa (
                           u_lab3_p_1n7s3f1[6]), .datab (u_lab3_p_1n7s3f2[6]), .datac (
                           1'b1), .datad (PWR), .cin (nx63307z19)) ;
                           defparam u_lab3_p_sub8_1i275_ix59_fadd.lut_mask = 16'h69b2;
                           defparam u_lab3_p_sub8_1i275_ix59_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_lab3_p_sub8_1i275_ix63_fadd (.combout (
                           u_lab3_p_1n7s3_7_), .cout (nx17564z1), .dataa (
                           u_lab3_p_1n7s3f1[7]), .datab (u_lab3_p_1n7s3f2[7]), .datac (
                           1'b1), .datad (PWR), .cin (nx46976z19)) ;
                           defparam u_lab3_p_sub8_1i275_ix63_fadd.lut_mask = 16'h694d;
                           defparam u_lab3_p_sub8_1i275_ix63_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_lab3_p_add9_1i276_ix60_fadd (.cout (nx49424z1), .dataa (
                           nx57902z1), .datab (1'b1), .datac (1'b1), .datad (PWR
                           ), .cin (u_lab3_p_1n7s3_9_)) ;
                           defparam u_lab3_p_add9_1i276_ix60_fadd.lut_mask = 16'h005f;
                           defparam u_lab3_p_add9_1i276_ix60_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix3639_fadd (.combout (u_lab3_p_1n7s2_31_), .dataa (
                           u_lab3_p_1n7s3_9_), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx49424z1)) ;
                           defparam ix3639_fadd.lut_mask = 16'ha0a0;
                           defparam ix3639_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_lab3_p_add9_1i276_ix44_fadd (.cout (nx43842z1), .dataa (
                           u_lab3_p_1n7s3_0_), .datab (i_data[0]), .datac (1'b1)
                           , .datad (PWR)) ;
                           defparam u_lab3_p_add9_1i276_ix44_fadd.lut_mask = 16'h0088;
    fiftyfivenm_lcell_comb u_lab3_p_add9_1i276_ix46_fadd (.cout (nx59416z1), .dataa (
                           u_lab3_p_1n7s3_1_), .datab (i_data[1]), .datac (1'b1)
                           , .datad (PWR), .cin (nx43842z1)) ;
                           defparam u_lab3_p_add9_1i276_ix46_fadd.lut_mask = 16'h00e8;
                           defparam u_lab3_p_add9_1i276_ix46_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_lab3_p_add9_1i276_ix48_fadd (.cout (nx27511z1), .dataa (
                           u_lab3_p_1n7s3_2_), .datab (i_data[2]), .datac (1'b1)
                           , .datad (PWR), .cin (nx59416z1)) ;
                           defparam u_lab3_p_add9_1i276_ix48_fadd.lut_mask = 16'h00e8;
                           defparam u_lab3_p_add9_1i276_ix48_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_lab3_p_add9_1i276_ix50_fadd (.cout (nx43085z1), .dataa (
                           u_lab3_p_1n7s3_3_), .datab (i_data[3]), .datac (1'b1)
                           , .datad (PWR), .cin (nx27511z1)) ;
                           defparam u_lab3_p_add9_1i276_ix50_fadd.lut_mask = 16'h00e8;
                           defparam u_lab3_p_add9_1i276_ix50_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_lab3_p_add9_1i276_ix52_fadd (.cout (nx6877z1), .dataa (
                           u_lab3_p_1n7s3_4_), .datab (i_data[4]), .datac (1'b1)
                           , .datad (PWR), .cin (nx43085z1)) ;
                           defparam u_lab3_p_add9_1i276_ix52_fadd.lut_mask = 16'h00e8;
                           defparam u_lab3_p_add9_1i276_ix52_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_lab3_p_add9_1i276_ix54_fadd (.cout (nx56839z1), .dataa (
                           u_lab3_p_1n7s3_5_), .datab (i_data[5]), .datac (1'b1)
                           , .datad (PWR), .cin (nx6877z1)) ;
                           defparam u_lab3_p_add9_1i276_ix54_fadd.lut_mask = 16'h00e8;
                           defparam u_lab3_p_add9_1i276_ix54_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_lab3_p_add9_1i276_ix56_fadd (.cout (nx41265z1), .dataa (
                           u_lab3_p_1n7s3_6_), .datab (i_data[6]), .datac (1'b1)
                           , .datad (PWR), .cin (nx56839z1)) ;
                           defparam u_lab3_p_add9_1i276_ix56_fadd.lut_mask = 16'h00e8;
                           defparam u_lab3_p_add9_1i276_ix56_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_lab3_p_add9_1i276_ix58_fadd (.cout (nx19195z1), .dataa (
                           u_lab3_p_1n7s3_7_), .datab (i_data[7]), .datac (1'b1)
                           , .datad (PWR), .cin (nx41265z1)) ;
                           defparam u_lab3_p_add9_1i276_ix58_fadd.lut_mask = 16'h00e8;
                           defparam u_lab3_p_add9_1i276_ix58_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_lab3_p_sub8_1i275_ix63_fadd_buf (.combout (
                           u_lab3_p_1n7s3_9_), .dataa (1'b1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx17564z1)) ;
                           defparam u_lab3_p_sub8_1i275_ix63_fadd_buf.lut_mask = 16'hf0f0;
                           defparam u_lab3_p_sub8_1i275_ix63_fadd_buf.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_lab3_p_add9_1i276_ix58_fadd_buf (.combout (
                           nx57902z1), .dataa (1'b1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx19195z1)) ;
                           defparam u_lab3_p_add9_1i276_ix58_fadd_buf.lut_mask = 16'hf0f0;
                           defparam u_lab3_p_add9_1i276_ix58_fadd_buf.sum_lutc_input = "cin";
    dffeas u_lab3_reg_addend_15__7_ (.q (u_lab3_addend_15_[7]), .d (i_data[7]), 
           .clk (clk), .ena (nx16929z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_15__7_ (.q (u_lab3_subtrahend_15_[7]), .d (
           nx13001z1), .clk (clk), .ena (nx13001z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_14__7_ (.q (u_lab3_addend_14_[7]), .d (i_data[7]), 
           .clk (clk), .ena (nx22064z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_14__7_ (.q (u_lab3_subtrahend_14_[7]), .d (
           nx18136z1), .clk (clk), .ena (nx18136z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_13__7_ (.q (u_lab3_addend_13_[7]), .d (i_data[7]), 
           .clk (clk), .ena (nx27199z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_13__7_ (.q (u_lab3_subtrahend_13_[7]), .d (
           nx23271z1), .clk (clk), .ena (nx23271z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_12__7_ (.q (u_lab3_addend_12_[7]), .d (i_data[7]), 
           .clk (clk), .ena (nx32334z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_12__7_ (.q (u_lab3_subtrahend_12_[7]), .d (
           nx28406z1), .clk (clk), .ena (nx28406z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_11__7_ (.q (u_lab3_addend_11_[7]), .d (i_data[7]), 
           .clk (clk), .ena (nx37469z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_11__7_ (.q (u_lab3_subtrahend_11_[7]), .d (
           nx33541z1), .clk (clk), .ena (nx33541z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_10__7_ (.q (u_lab3_addend_10_[7]), .d (i_data[7]), 
           .clk (clk), .ena (nx42604z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_10__7_ (.q (u_lab3_subtrahend_10_[7]), .d (
           nx38676z1), .clk (clk), .ena (nx38676z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_9__7_ (.q (u_lab3_addend_9_[7]), .d (i_data[7]), .clk (
           clk), .ena (nx64440z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_9__7_ (.q (u_lab3_subtrahend_9_[7]), .d (
           nx34864z1), .clk (clk), .ena (nx34864z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_8__7_ (.q (u_lab3_addend_8_[7]), .d (i_data[7]), .clk (
           clk), .ena (nx6231z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_8__7_ (.q (u_lab3_subtrahend_8_[7]), .d (
           nx29729z1), .clk (clk), .ena (nx29729z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_7__7_ (.q (u_lab3_addend_7_[7]), .d (i_data[7]), .clk (
           clk), .ena (nx11366z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_7__7_ (.q (u_lab3_subtrahend_7_[7]), .d (
           nx40942z1), .clk (clk), .ena (nx40942z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_6__7_ (.q (u_lab3_addend_6_[7]), .d (i_data[7]), .clk (
           clk), .ena (nx16501z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_6__7_ (.q (u_lab3_subtrahend_6_[7]), .d (
           nx46077z1), .clk (clk), .ena (nx46077z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_5__7_ (.q (u_lab3_addend_5_[7]), .d (i_data[7]), .clk (
           clk), .ena (nx21636z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_5__7_ (.q (u_lab3_subtrahend_5_[7]), .d (
           nx51212z1), .clk (clk), .ena (nx51212z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_4__7_ (.q (u_lab3_addend_4_[7]), .d (i_data[7]), .clk (
           clk), .ena (nx26771z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_4__7_ (.q (u_lab3_subtrahend_4_[7]), .d (
           nx56347z1), .clk (clk), .ena (nx56347z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_3__7_ (.q (u_lab3_addend_3_[7]), .d (i_data[7]), .clk (
           clk), .ena (nx31906z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_3__7_ (.q (u_lab3_subtrahend_3_[7]), .d (
           nx61482z1), .clk (clk), .ena (nx61482z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_2__7_ (.q (u_lab3_addend_2_[7]), .d (i_data[7]), .clk (
           clk), .ena (nx37041z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_2__7_ (.q (u_lab3_subtrahend_2_[7]), .d (
           nx1081z1), .clk (clk), .ena (nx1081z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_1__7_ (.q (u_lab3_addend_1_[7]), .d (i_data[7]), .clk (
           clk), .ena (nx42176z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_1__7_ (.q (u_lab3_subtrahend_1_[7]), .d (
           nx6216z1), .clk (clk), .ena (nx6216z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_0__7_ (.q (u_lab3_addend_0_[7]), .d (i_data[7]), .clk (
           clk), .ena (nx47311z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_0__7_ (.q (u_lab3_subtrahend_0_[7]), .d (
           nx11351z1), .clk (clk), .ena (nx11351z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_15__6_ (.q (u_lab3_addend_15_[6]), .d (i_data[6]), 
           .clk (clk), .ena (nx16929z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_15__6_ (.q (u_lab3_subtrahend_15_[6]), .d (
           nx12004z1), .clk (clk), .ena (nx13001z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_14__6_ (.q (u_lab3_addend_14_[6]), .d (i_data[6]), 
           .clk (clk), .ena (nx22064z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_14__6_ (.q (u_lab3_subtrahend_14_[6]), .d (
           nx17139z1), .clk (clk), .ena (nx18136z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_13__6_ (.q (u_lab3_addend_13_[6]), .d (i_data[6]), 
           .clk (clk), .ena (nx27199z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_13__6_ (.q (u_lab3_subtrahend_13_[6]), .d (
           nx22274z1), .clk (clk), .ena (nx23271z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_12__6_ (.q (u_lab3_addend_12_[6]), .d (i_data[6]), 
           .clk (clk), .ena (nx32334z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_12__6_ (.q (u_lab3_subtrahend_12_[6]), .d (
           nx27409z1), .clk (clk), .ena (nx28406z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_11__6_ (.q (u_lab3_addend_11_[6]), .d (i_data[6]), 
           .clk (clk), .ena (nx37469z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_11__6_ (.q (u_lab3_subtrahend_11_[6]), .d (
           nx32544z1), .clk (clk), .ena (nx33541z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_10__6_ (.q (u_lab3_addend_10_[6]), .d (i_data[6]), 
           .clk (clk), .ena (nx42604z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_10__6_ (.q (u_lab3_subtrahend_10_[6]), .d (
           nx37679z1), .clk (clk), .ena (nx38676z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_9__6_ (.q (u_lab3_addend_9_[6]), .d (i_data[6]), .clk (
           clk), .ena (nx64440z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_9__6_ (.q (u_lab3_subtrahend_9_[6]), .d (
           nx35861z1), .clk (clk), .ena (nx34864z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_8__6_ (.q (u_lab3_addend_8_[6]), .d (i_data[6]), .clk (
           clk), .ena (nx6231z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_8__6_ (.q (u_lab3_subtrahend_8_[6]), .d (
           nx30726z1), .clk (clk), .ena (nx29729z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_7__6_ (.q (u_lab3_addend_7_[6]), .d (i_data[6]), .clk (
           clk), .ena (nx11366z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_7__6_ (.q (u_lab3_subtrahend_7_[6]), .d (
           nx39945z1), .clk (clk), .ena (nx40942z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_6__6_ (.q (u_lab3_addend_6_[6]), .d (i_data[6]), .clk (
           clk), .ena (nx16501z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_6__6_ (.q (u_lab3_subtrahend_6_[6]), .d (
           nx45080z1), .clk (clk), .ena (nx46077z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_5__6_ (.q (u_lab3_addend_5_[6]), .d (i_data[6]), .clk (
           clk), .ena (nx21636z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_5__6_ (.q (u_lab3_subtrahend_5_[6]), .d (
           nx50215z1), .clk (clk), .ena (nx51212z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_4__6_ (.q (u_lab3_addend_4_[6]), .d (i_data[6]), .clk (
           clk), .ena (nx26771z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_4__6_ (.q (u_lab3_subtrahend_4_[6]), .d (
           nx55350z1), .clk (clk), .ena (nx56347z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_3__6_ (.q (u_lab3_addend_3_[6]), .d (i_data[6]), .clk (
           clk), .ena (nx31906z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_3__6_ (.q (u_lab3_subtrahend_3_[6]), .d (
           nx60485z1), .clk (clk), .ena (nx61482z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_2__6_ (.q (u_lab3_addend_2_[6]), .d (i_data[6]), .clk (
           clk), .ena (nx37041z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_2__6_ (.q (u_lab3_subtrahend_2_[6]), .d (nx84z1
           ), .clk (clk), .ena (nx1081z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_1__6_ (.q (u_lab3_addend_1_[6]), .d (i_data[6]), .clk (
           clk), .ena (nx42176z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_1__6_ (.q (u_lab3_subtrahend_1_[6]), .d (
           nx5219z1), .clk (clk), .ena (nx6216z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_0__6_ (.q (u_lab3_addend_0_[6]), .d (i_data[6]), .clk (
           clk), .ena (nx47311z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_0__6_ (.q (u_lab3_subtrahend_0_[6]), .d (
           nx10354z1), .clk (clk), .ena (nx11351z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_15__5_ (.q (u_lab3_addend_15_[5]), .d (i_data[5]), 
           .clk (clk), .ena (nx16929z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_15__5_ (.q (u_lab3_subtrahend_15_[5]), .d (
           nx11007z1), .clk (clk), .ena (nx13001z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_14__5_ (.q (u_lab3_addend_14_[5]), .d (i_data[5]), 
           .clk (clk), .ena (nx22064z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_14__5_ (.q (u_lab3_subtrahend_14_[5]), .d (
           nx16142z1), .clk (clk), .ena (nx18136z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_13__5_ (.q (u_lab3_addend_13_[5]), .d (i_data[5]), 
           .clk (clk), .ena (nx27199z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_13__5_ (.q (u_lab3_subtrahend_13_[5]), .d (
           nx21277z1), .clk (clk), .ena (nx23271z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_12__5_ (.q (u_lab3_addend_12_[5]), .d (i_data[5]), 
           .clk (clk), .ena (nx32334z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_12__5_ (.q (u_lab3_subtrahend_12_[5]), .d (
           nx26412z1), .clk (clk), .ena (nx28406z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_11__5_ (.q (u_lab3_addend_11_[5]), .d (i_data[5]), 
           .clk (clk), .ena (nx37469z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_11__5_ (.q (u_lab3_subtrahend_11_[5]), .d (
           nx31547z1), .clk (clk), .ena (nx33541z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_10__5_ (.q (u_lab3_addend_10_[5]), .d (i_data[5]), 
           .clk (clk), .ena (nx42604z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_10__5_ (.q (u_lab3_subtrahend_10_[5]), .d (
           nx36682z1), .clk (clk), .ena (nx38676z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_9__5_ (.q (u_lab3_addend_9_[5]), .d (i_data[5]), .clk (
           clk), .ena (nx64440z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_9__5_ (.q (u_lab3_subtrahend_9_[5]), .d (
           nx36858z1), .clk (clk), .ena (nx34864z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_8__5_ (.q (u_lab3_addend_8_[5]), .d (i_data[5]), .clk (
           clk), .ena (nx6231z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_8__5_ (.q (u_lab3_subtrahend_8_[5]), .d (
           nx31723z1), .clk (clk), .ena (nx29729z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_7__5_ (.q (u_lab3_addend_7_[5]), .d (i_data[5]), .clk (
           clk), .ena (nx11366z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_7__5_ (.q (u_lab3_subtrahend_7_[5]), .d (
           nx38948z1), .clk (clk), .ena (nx40942z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_6__5_ (.q (u_lab3_addend_6_[5]), .d (i_data[5]), .clk (
           clk), .ena (nx16501z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_6__5_ (.q (u_lab3_subtrahend_6_[5]), .d (
           nx44083z1), .clk (clk), .ena (nx46077z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_5__5_ (.q (u_lab3_addend_5_[5]), .d (i_data[5]), .clk (
           clk), .ena (nx21636z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_5__5_ (.q (u_lab3_subtrahend_5_[5]), .d (
           nx49218z1), .clk (clk), .ena (nx51212z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_4__5_ (.q (u_lab3_addend_4_[5]), .d (i_data[5]), .clk (
           clk), .ena (nx26771z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_4__5_ (.q (u_lab3_subtrahend_4_[5]), .d (
           nx54353z1), .clk (clk), .ena (nx56347z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_3__5_ (.q (u_lab3_addend_3_[5]), .d (i_data[5]), .clk (
           clk), .ena (nx31906z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_3__5_ (.q (u_lab3_subtrahend_3_[5]), .d (
           nx59488z1), .clk (clk), .ena (nx61482z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_2__5_ (.q (u_lab3_addend_2_[5]), .d (i_data[5]), .clk (
           clk), .ena (nx37041z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_2__5_ (.q (u_lab3_subtrahend_2_[5]), .d (
           nx64623z1), .clk (clk), .ena (nx1081z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_1__5_ (.q (u_lab3_addend_1_[5]), .d (i_data[5]), .clk (
           clk), .ena (nx42176z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_1__5_ (.q (u_lab3_subtrahend_1_[5]), .d (
           nx4222z1), .clk (clk), .ena (nx6216z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_0__5_ (.q (u_lab3_addend_0_[5]), .d (i_data[5]), .clk (
           clk), .ena (nx47311z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_0__5_ (.q (u_lab3_subtrahend_0_[5]), .d (
           nx9357z1), .clk (clk), .ena (nx11351z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_15__4_ (.q (u_lab3_addend_15_[4]), .d (i_data[4]), 
           .clk (clk), .ena (nx16929z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_15__4_ (.q (u_lab3_subtrahend_15_[4]), .d (
           nx10010z1), .clk (clk), .ena (nx13001z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_14__4_ (.q (u_lab3_addend_14_[4]), .d (i_data[4]), 
           .clk (clk), .ena (nx22064z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_14__4_ (.q (u_lab3_subtrahend_14_[4]), .d (
           nx15145z1), .clk (clk), .ena (nx18136z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_13__4_ (.q (u_lab3_addend_13_[4]), .d (i_data[4]), 
           .clk (clk), .ena (nx27199z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_13__4_ (.q (u_lab3_subtrahend_13_[4]), .d (
           nx20280z1), .clk (clk), .ena (nx23271z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_12__4_ (.q (u_lab3_addend_12_[4]), .d (i_data[4]), 
           .clk (clk), .ena (nx32334z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_12__4_ (.q (u_lab3_subtrahend_12_[4]), .d (
           nx25415z1), .clk (clk), .ena (nx28406z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_11__4_ (.q (u_lab3_addend_11_[4]), .d (i_data[4]), 
           .clk (clk), .ena (nx37469z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_11__4_ (.q (u_lab3_subtrahend_11_[4]), .d (
           nx30550z1), .clk (clk), .ena (nx33541z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_10__4_ (.q (u_lab3_addend_10_[4]), .d (i_data[4]), 
           .clk (clk), .ena (nx42604z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_10__4_ (.q (u_lab3_subtrahend_10_[4]), .d (
           nx35685z1), .clk (clk), .ena (nx38676z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_9__4_ (.q (u_lab3_addend_9_[4]), .d (i_data[4]), .clk (
           clk), .ena (nx64440z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_9__4_ (.q (u_lab3_subtrahend_9_[4]), .d (
           nx37855z1), .clk (clk), .ena (nx34864z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_8__4_ (.q (u_lab3_addend_8_[4]), .d (i_data[4]), .clk (
           clk), .ena (nx6231z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_8__4_ (.q (u_lab3_subtrahend_8_[4]), .d (
           nx32720z1), .clk (clk), .ena (nx29729z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_7__4_ (.q (u_lab3_addend_7_[4]), .d (i_data[4]), .clk (
           clk), .ena (nx11366z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_7__4_ (.q (u_lab3_subtrahend_7_[4]), .d (
           nx37951z1), .clk (clk), .ena (nx40942z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_6__4_ (.q (u_lab3_addend_6_[4]), .d (i_data[4]), .clk (
           clk), .ena (nx16501z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_6__4_ (.q (u_lab3_subtrahend_6_[4]), .d (
           nx43086z1), .clk (clk), .ena (nx46077z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_5__4_ (.q (u_lab3_addend_5_[4]), .d (i_data[4]), .clk (
           clk), .ena (nx21636z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_5__4_ (.q (u_lab3_subtrahend_5_[4]), .d (
           nx48221z1), .clk (clk), .ena (nx51212z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_4__4_ (.q (u_lab3_addend_4_[4]), .d (i_data[4]), .clk (
           clk), .ena (nx26771z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_4__4_ (.q (u_lab3_subtrahend_4_[4]), .d (
           nx53356z1), .clk (clk), .ena (nx56347z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_3__4_ (.q (u_lab3_addend_3_[4]), .d (i_data[4]), .clk (
           clk), .ena (nx31906z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_3__4_ (.q (u_lab3_subtrahend_3_[4]), .d (
           nx58491z1), .clk (clk), .ena (nx61482z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_2__4_ (.q (u_lab3_addend_2_[4]), .d (i_data[4]), .clk (
           clk), .ena (nx37041z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_2__4_ (.q (u_lab3_subtrahend_2_[4]), .d (
           nx63626z1), .clk (clk), .ena (nx1081z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_1__4_ (.q (u_lab3_addend_1_[4]), .d (i_data[4]), .clk (
           clk), .ena (nx42176z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_1__4_ (.q (u_lab3_subtrahend_1_[4]), .d (
           nx3225z1), .clk (clk), .ena (nx6216z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_0__4_ (.q (u_lab3_addend_0_[4]), .d (i_data[4]), .clk (
           clk), .ena (nx47311z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_0__4_ (.q (u_lab3_subtrahend_0_[4]), .d (
           nx8360z1), .clk (clk), .ena (nx11351z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_15__3_ (.q (u_lab3_addend_15_[3]), .d (i_data[3]), 
           .clk (clk), .ena (nx16929z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_15__3_ (.q (u_lab3_subtrahend_15_[3]), .d (
           nx9013z1), .clk (clk), .ena (nx13001z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_14__3_ (.q (u_lab3_addend_14_[3]), .d (i_data[3]), 
           .clk (clk), .ena (nx22064z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_14__3_ (.q (u_lab3_subtrahend_14_[3]), .d (
           nx14148z1), .clk (clk), .ena (nx18136z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_13__3_ (.q (u_lab3_addend_13_[3]), .d (i_data[3]), 
           .clk (clk), .ena (nx27199z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_13__3_ (.q (u_lab3_subtrahend_13_[3]), .d (
           nx19283z1), .clk (clk), .ena (nx23271z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_12__3_ (.q (u_lab3_addend_12_[3]), .d (i_data[3]), 
           .clk (clk), .ena (nx32334z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_12__3_ (.q (u_lab3_subtrahend_12_[3]), .d (
           nx24418z1), .clk (clk), .ena (nx28406z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_11__3_ (.q (u_lab3_addend_11_[3]), .d (i_data[3]), 
           .clk (clk), .ena (nx37469z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_11__3_ (.q (u_lab3_subtrahend_11_[3]), .d (
           nx29553z1), .clk (clk), .ena (nx33541z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_10__3_ (.q (u_lab3_addend_10_[3]), .d (i_data[3]), 
           .clk (clk), .ena (nx42604z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_10__3_ (.q (u_lab3_subtrahend_10_[3]), .d (
           nx34688z1), .clk (clk), .ena (nx38676z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_9__3_ (.q (u_lab3_addend_9_[3]), .d (i_data[3]), .clk (
           clk), .ena (nx64440z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_9__3_ (.q (u_lab3_subtrahend_9_[3]), .d (
           nx38852z1), .clk (clk), .ena (nx34864z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_8__3_ (.q (u_lab3_addend_8_[3]), .d (i_data[3]), .clk (
           clk), .ena (nx6231z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_8__3_ (.q (u_lab3_subtrahend_8_[3]), .d (
           nx33717z1), .clk (clk), .ena (nx29729z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_7__3_ (.q (u_lab3_addend_7_[3]), .d (i_data[3]), .clk (
           clk), .ena (nx11366z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_7__3_ (.q (u_lab3_subtrahend_7_[3]), .d (
           nx36954z1), .clk (clk), .ena (nx40942z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_6__3_ (.q (u_lab3_addend_6_[3]), .d (i_data[3]), .clk (
           clk), .ena (nx16501z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_6__3_ (.q (u_lab3_subtrahend_6_[3]), .d (
           nx42089z1), .clk (clk), .ena (nx46077z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_5__3_ (.q (u_lab3_addend_5_[3]), .d (i_data[3]), .clk (
           clk), .ena (nx21636z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_5__3_ (.q (u_lab3_subtrahend_5_[3]), .d (
           nx47224z1), .clk (clk), .ena (nx51212z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_4__3_ (.q (u_lab3_addend_4_[3]), .d (i_data[3]), .clk (
           clk), .ena (nx26771z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_4__3_ (.q (u_lab3_subtrahend_4_[3]), .d (
           nx52359z1), .clk (clk), .ena (nx56347z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_3__3_ (.q (u_lab3_addend_3_[3]), .d (i_data[3]), .clk (
           clk), .ena (nx31906z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_3__3_ (.q (u_lab3_subtrahend_3_[3]), .d (
           nx57494z1), .clk (clk), .ena (nx61482z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_2__3_ (.q (u_lab3_addend_2_[3]), .d (i_data[3]), .clk (
           clk), .ena (nx37041z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_2__3_ (.q (u_lab3_subtrahend_2_[3]), .d (
           nx62629z1), .clk (clk), .ena (nx1081z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_1__3_ (.q (u_lab3_addend_1_[3]), .d (i_data[3]), .clk (
           clk), .ena (nx42176z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_1__3_ (.q (u_lab3_subtrahend_1_[3]), .d (
           nx2228z1), .clk (clk), .ena (nx6216z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_0__3_ (.q (u_lab3_addend_0_[3]), .d (i_data[3]), .clk (
           clk), .ena (nx47311z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_0__3_ (.q (u_lab3_subtrahend_0_[3]), .d (
           nx7363z1), .clk (clk), .ena (nx11351z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_15__2_ (.q (u_lab3_addend_15_[2]), .d (i_data[2]), 
           .clk (clk), .ena (nx16929z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_15__2_ (.q (u_lab3_subtrahend_15_[2]), .d (
           nx8016z1), .clk (clk), .ena (nx13001z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_14__2_ (.q (u_lab3_addend_14_[2]), .d (i_data[2]), 
           .clk (clk), .ena (nx22064z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_14__2_ (.q (u_lab3_subtrahend_14_[2]), .d (
           nx13151z1), .clk (clk), .ena (nx18136z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_13__2_ (.q (u_lab3_addend_13_[2]), .d (i_data[2]), 
           .clk (clk), .ena (nx27199z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_13__2_ (.q (u_lab3_subtrahend_13_[2]), .d (
           nx18286z1), .clk (clk), .ena (nx23271z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_12__2_ (.q (u_lab3_addend_12_[2]), .d (i_data[2]), 
           .clk (clk), .ena (nx32334z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_12__2_ (.q (u_lab3_subtrahend_12_[2]), .d (
           nx23421z1), .clk (clk), .ena (nx28406z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_11__2_ (.q (u_lab3_addend_11_[2]), .d (i_data[2]), 
           .clk (clk), .ena (nx37469z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_11__2_ (.q (u_lab3_subtrahend_11_[2]), .d (
           nx28556z1), .clk (clk), .ena (nx33541z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_10__2_ (.q (u_lab3_addend_10_[2]), .d (i_data[2]), 
           .clk (clk), .ena (nx42604z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_10__2_ (.q (u_lab3_subtrahend_10_[2]), .d (
           nx33691z1), .clk (clk), .ena (nx38676z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_9__2_ (.q (u_lab3_addend_9_[2]), .d (i_data[2]), .clk (
           clk), .ena (nx64440z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_9__2_ (.q (u_lab3_subtrahend_9_[2]), .d (
           nx39849z1), .clk (clk), .ena (nx34864z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_8__2_ (.q (u_lab3_addend_8_[2]), .d (i_data[2]), .clk (
           clk), .ena (nx6231z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_8__2_ (.q (u_lab3_subtrahend_8_[2]), .d (
           nx34714z1), .clk (clk), .ena (nx29729z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_7__2_ (.q (u_lab3_addend_7_[2]), .d (i_data[2]), .clk (
           clk), .ena (nx11366z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_7__2_ (.q (u_lab3_subtrahend_7_[2]), .d (
           nx35957z1), .clk (clk), .ena (nx40942z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_6__2_ (.q (u_lab3_addend_6_[2]), .d (i_data[2]), .clk (
           clk), .ena (nx16501z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_6__2_ (.q (u_lab3_subtrahend_6_[2]), .d (
           nx41092z1), .clk (clk), .ena (nx46077z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_5__2_ (.q (u_lab3_addend_5_[2]), .d (i_data[2]), .clk (
           clk), .ena (nx21636z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_5__2_ (.q (u_lab3_subtrahend_5_[2]), .d (
           nx46227z1), .clk (clk), .ena (nx51212z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_4__2_ (.q (u_lab3_addend_4_[2]), .d (i_data[2]), .clk (
           clk), .ena (nx26771z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_4__2_ (.q (u_lab3_subtrahend_4_[2]), .d (
           nx51362z1), .clk (clk), .ena (nx56347z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_3__2_ (.q (u_lab3_addend_3_[2]), .d (i_data[2]), .clk (
           clk), .ena (nx31906z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_3__2_ (.q (u_lab3_subtrahend_3_[2]), .d (
           nx56497z1), .clk (clk), .ena (nx61482z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_2__2_ (.q (u_lab3_addend_2_[2]), .d (i_data[2]), .clk (
           clk), .ena (nx37041z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_2__2_ (.q (u_lab3_subtrahend_2_[2]), .d (
           nx61632z1), .clk (clk), .ena (nx1081z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_1__2_ (.q (u_lab3_addend_1_[2]), .d (i_data[2]), .clk (
           clk), .ena (nx42176z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_1__2_ (.q (u_lab3_subtrahend_1_[2]), .d (
           nx1231z1), .clk (clk), .ena (nx6216z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_0__2_ (.q (u_lab3_addend_0_[2]), .d (i_data[2]), .clk (
           clk), .ena (nx47311z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_0__2_ (.q (u_lab3_subtrahend_0_[2]), .d (
           nx6366z1), .clk (clk), .ena (nx11351z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_15__1_ (.q (u_lab3_addend_15_[1]), .d (i_data[1]), 
           .clk (clk), .ena (nx16929z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_15__1_ (.q (u_lab3_subtrahend_15_[1]), .d (
           nx7019z1), .clk (clk), .ena (nx13001z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_14__1_ (.q (u_lab3_addend_14_[1]), .d (i_data[1]), 
           .clk (clk), .ena (nx22064z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_14__1_ (.q (u_lab3_subtrahend_14_[1]), .d (
           nx12154z1), .clk (clk), .ena (nx18136z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_13__1_ (.q (u_lab3_addend_13_[1]), .d (i_data[1]), 
           .clk (clk), .ena (nx27199z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_13__1_ (.q (u_lab3_subtrahend_13_[1]), .d (
           nx17289z1), .clk (clk), .ena (nx23271z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_12__1_ (.q (u_lab3_addend_12_[1]), .d (i_data[1]), 
           .clk (clk), .ena (nx32334z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_12__1_ (.q (u_lab3_subtrahend_12_[1]), .d (
           nx22424z1), .clk (clk), .ena (nx28406z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_11__1_ (.q (u_lab3_addend_11_[1]), .d (i_data[1]), 
           .clk (clk), .ena (nx37469z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_11__1_ (.q (u_lab3_subtrahend_11_[1]), .d (
           nx27559z1), .clk (clk), .ena (nx33541z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_10__1_ (.q (u_lab3_addend_10_[1]), .d (i_data[1]), 
           .clk (clk), .ena (nx42604z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_10__1_ (.q (u_lab3_subtrahend_10_[1]), .d (
           nx32694z1), .clk (clk), .ena (nx38676z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_9__1_ (.q (u_lab3_addend_9_[1]), .d (i_data[1]), .clk (
           clk), .ena (nx64440z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_9__1_ (.q (u_lab3_subtrahend_9_[1]), .d (
           nx40846z1), .clk (clk), .ena (nx34864z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_8__1_ (.q (u_lab3_addend_8_[1]), .d (i_data[1]), .clk (
           clk), .ena (nx6231z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_8__1_ (.q (u_lab3_subtrahend_8_[1]), .d (
           nx35711z1), .clk (clk), .ena (nx29729z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_7__1_ (.q (u_lab3_addend_7_[1]), .d (i_data[1]), .clk (
           clk), .ena (nx11366z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_7__1_ (.q (u_lab3_subtrahend_7_[1]), .d (
           nx34960z1), .clk (clk), .ena (nx40942z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_6__1_ (.q (u_lab3_addend_6_[1]), .d (i_data[1]), .clk (
           clk), .ena (nx16501z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_6__1_ (.q (u_lab3_subtrahend_6_[1]), .d (
           nx40095z1), .clk (clk), .ena (nx46077z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_5__1_ (.q (u_lab3_addend_5_[1]), .d (i_data[1]), .clk (
           clk), .ena (nx21636z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_5__1_ (.q (u_lab3_subtrahend_5_[1]), .d (
           nx45230z1), .clk (clk), .ena (nx51212z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_4__1_ (.q (u_lab3_addend_4_[1]), .d (i_data[1]), .clk (
           clk), .ena (nx26771z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_4__1_ (.q (u_lab3_subtrahend_4_[1]), .d (
           nx50365z1), .clk (clk), .ena (nx56347z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_3__1_ (.q (u_lab3_addend_3_[1]), .d (i_data[1]), .clk (
           clk), .ena (nx31906z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_3__1_ (.q (u_lab3_subtrahend_3_[1]), .d (
           nx55500z1), .clk (clk), .ena (nx61482z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_2__1_ (.q (u_lab3_addend_2_[1]), .d (i_data[1]), .clk (
           clk), .ena (nx37041z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_2__1_ (.q (u_lab3_subtrahend_2_[1]), .d (
           nx60635z1), .clk (clk), .ena (nx1081z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_1__1_ (.q (u_lab3_addend_1_[1]), .d (i_data[1]), .clk (
           clk), .ena (nx42176z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_1__1_ (.q (u_lab3_subtrahend_1_[1]), .d (
           nx234z1), .clk (clk), .ena (nx6216z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_0__1_ (.q (u_lab3_addend_0_[1]), .d (i_data[1]), .clk (
           clk), .ena (nx47311z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_0__1_ (.q (u_lab3_subtrahend_0_[1]), .d (
           nx5369z1), .clk (clk), .ena (nx11351z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_15__0_ (.q (u_lab3_addend_15_[0]), .d (i_data[0]), 
           .clk (clk), .ena (nx16929z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_15__0_ (.q (u_lab3_subtrahend_15_[0]), .d (
           nx6022z1), .clk (clk), .ena (nx13001z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_14__0_ (.q (u_lab3_addend_14_[0]), .d (i_data[0]), 
           .clk (clk), .ena (nx22064z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_14__0_ (.q (u_lab3_subtrahend_14_[0]), .d (
           nx11157z1), .clk (clk), .ena (nx18136z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_13__0_ (.q (u_lab3_addend_13_[0]), .d (i_data[0]), 
           .clk (clk), .ena (nx27199z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_13__0_ (.q (u_lab3_subtrahend_13_[0]), .d (
           nx16292z1), .clk (clk), .ena (nx23271z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_12__0_ (.q (u_lab3_addend_12_[0]), .d (i_data[0]), 
           .clk (clk), .ena (nx32334z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_12__0_ (.q (u_lab3_subtrahend_12_[0]), .d (
           nx21427z1), .clk (clk), .ena (nx28406z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_11__0_ (.q (u_lab3_addend_11_[0]), .d (i_data[0]), 
           .clk (clk), .ena (nx37469z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_11__0_ (.q (u_lab3_subtrahend_11_[0]), .d (
           nx26562z1), .clk (clk), .ena (nx33541z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_10__0_ (.q (u_lab3_addend_10_[0]), .d (i_data[0]), 
           .clk (clk), .ena (nx42604z1), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_10__0_ (.q (u_lab3_subtrahend_10_[0]), .d (
           nx31697z1), .clk (clk), .ena (nx38676z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_9__0_ (.q (u_lab3_addend_9_[0]), .d (i_data[0]), .clk (
           clk), .ena (nx64440z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_9__0_ (.q (u_lab3_subtrahend_9_[0]), .d (
           nx41843z14), .clk (clk), .ena (nx34864z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_8__0_ (.q (u_lab3_addend_8_[0]), .d (i_data[0]), .clk (
           clk), .ena (nx6231z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_8__0_ (.q (u_lab3_subtrahend_8_[0]), .d (
           nx36708z1), .clk (clk), .ena (nx29729z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_7__0_ (.q (u_lab3_addend_7_[0]), .d (i_data[0]), .clk (
           clk), .ena (nx11366z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_7__0_ (.q (u_lab3_subtrahend_7_[0]), .d (
           nx33963z1), .clk (clk), .ena (nx40942z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_6__0_ (.q (u_lab3_addend_6_[0]), .d (i_data[0]), .clk (
           clk), .ena (nx16501z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_6__0_ (.q (u_lab3_subtrahend_6_[0]), .d (
           nx39098z1), .clk (clk), .ena (nx46077z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_5__0_ (.q (u_lab3_addend_5_[0]), .d (i_data[0]), .clk (
           clk), .ena (nx21636z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_5__0_ (.q (u_lab3_subtrahend_5_[0]), .d (
           nx44233z1), .clk (clk), .ena (nx51212z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_4__0_ (.q (u_lab3_addend_4_[0]), .d (i_data[0]), .clk (
           clk), .ena (nx26771z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_4__0_ (.q (u_lab3_subtrahend_4_[0]), .d (
           nx49368z1), .clk (clk), .ena (nx56347z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_3__0_ (.q (u_lab3_addend_3_[0]), .d (i_data[0]), .clk (
           clk), .ena (nx31906z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_3__0_ (.q (u_lab3_subtrahend_3_[0]), .d (
           nx54503z1), .clk (clk), .ena (nx61482z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_2__0_ (.q (u_lab3_addend_2_[0]), .d (i_data[0]), .clk (
           clk), .ena (nx37041z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_2__0_ (.q (u_lab3_subtrahend_2_[0]), .d (
           nx59638z1), .clk (clk), .ena (nx1081z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_1__0_ (.q (u_lab3_addend_1_[0]), .d (i_data[0]), .clk (
           clk), .ena (nx42176z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_1__0_ (.q (u_lab3_subtrahend_1_[0]), .d (
           nx64773z1), .clk (clk), .ena (nx6216z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_addend_0__0_ (.q (u_lab3_addend_0_[0]), .d (i_data[0]), .clk (
           clk), .ena (nx47311z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_not_state_3), .sload (led[6])) ;
    dffeas u_lab3_reg_subtrahend_0__0_ (.q (u_lab3_subtrahend_0_[0]), .d (
           nx4372z1), .clk (clk), .ena (nx11351z2), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (u_lab3_state[0]), .sload (led[6])) ;
    dffeas u_lab3_reg_compute_flag (.q (u_lab3_compute_flag), .d (nx53092z1), .clk (
           clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_p_31_ (.q (u_lab3_p_31_), .d (nx31891z1), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas yes_uart_u_uart_reg_TxFSM_1_ (.q (yes_uart_u_uart_TxFSM[1]), .d (
           nx45921z1), .clk (clk), .ena (PWR), .clrn (reset_n), .prn (PWR), .asdata (
           led[6]), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_TxFSM_0_ (.q (yes_uart_u_uart_TxFSM[0]), .d (
           nx46918z1), .clk (clk), .ena (PWR), .clrn (reset_n), .prn (PWR), .asdata (
           led[6]), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_Tx_Reg_0_ (.q (nx57589z1), .d (nx29107z1), .clk (
           clk), .ena (PWR), .clrn (reset_n), .prn (PWR), .asdata (NOT_led_5_), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_stage_1_ (.q (u_lab3_stage_1_), .d (nx3960z1), .clk (clk)
           , .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (1'b0)
           , .sload (1'b0)) ;
    dffeas u_lab3_reg_o_done (.q (seg7_pts_1_), .d (nx6634z1), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_lab3_reg_flag (.q (u_lab3_flag), .d (nx62976z1), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4 (.q (
           u_seg7_u_dual_seg7_o_char_rtlc6_o_char_6_TE_rtlcGen4), .d (nx51544z1)
           , .clk (clk), .ena (u_seg7_u_dual_seg7_load_reg), .clrn (PWR), .prn (
           PWR), .asdata (led[6]), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2 (.q (
           u_seg7_u_dual_seg7_o_char_rtlc6_o_char_5_TE_rtlcGen2), .d (nx28027z1)
           , .clk (clk), .ena (u_seg7_u_dual_seg7_load_reg), .clrn (PWR), .prn (
           PWR), .asdata (led[6]), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0 (.q (
           u_seg7_u_dual_seg7_o_char_rtlc6_o_char_1_TE_rtlcGen0), .d (nx18625z1)
           , .clk (clk), .ena (u_seg7_u_dual_seg7_load_reg), .clrn (PWR), .prn (
           PWR), .asdata (led[6]), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_q_7_ (.q (byte_count[7]), .d (inc_d_7_), .clk (clk), .ena (
           u_lab3_rtlc0_PS25_n202), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           reset), .sload (led[6])) ;
    dffeas reg_q_6_ (.q (byte_count[6]), .d (inc_d_6_), .clk (clk), .ena (
           u_lab3_rtlc0_PS25_n202), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           reset), .sload (led[6])) ;
    dffeas reg_q_5_ (.q (byte_count[5]), .d (inc_d_5_), .clk (clk), .ena (
           u_lab3_rtlc0_PS25_n202), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           reset), .sload (led[6])) ;
    dffeas reg_q_4_ (.q (byte_count[4]), .d (inc_d_4_), .clk (clk), .ena (
           u_lab3_rtlc0_PS25_n202), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           reset), .sload (led[6])) ;
    dffeas reg_q_3_ (.q (byte_count[3]), .d (inc_d_3_), .clk (clk), .ena (
           u_lab3_rtlc0_PS25_n202), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           reset), .sload (led[6])) ;
    dffeas reg_q_2_ (.q (byte_count[2]), .d (inc_d_2_), .clk (clk), .ena (
           u_lab3_rtlc0_PS25_n202), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           reset), .sload (led[6])) ;
    dffeas reg_q_1_ (.q (byte_count[1]), .d (inc_d_1_), .clk (clk), .ena (
           u_lab3_rtlc0_PS25_n202), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           reset), .sload (led[6])) ;
    dffeas reg_q_0_ (.q (byte_count[0]), .d (inc_d_0_), .clk (clk), .ena (
           u_lab3_rtlc0_PS25_n202), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           reset), .sload (led[6])) ;
    dffeas reg_q_10_ (.q (seg7_en[1]), .d (inc_d_10_), .clk (clk), .ena (PWR), .clrn (
           PWR), .prn (PWR), .asdata (led[6]), .sclr (nx60244z1), .sload (led[6]
           )) ;
    dffeas reg_q_9_ (.q (nx47005z1), .d (inc_d_9_), .clk (clk), .ena (PWR), .clrn (
           PWR), .prn (PWR), .asdata (led[6]), .sclr (nx60244z1), .sload (led[6]
           )) ;
    dffeas reg_q_8_ (.q (nx13374z1), .d (inc_d_8_), .clk (clk), .ena (PWR), .clrn (
           PWR), .prn (PWR), .asdata (led[6]), .sclr (nx60244z1), .sload (led[6]
           )) ;
    dffeas reg_q_7__dup_0 (.q (nx63336z1), .d (inc_d_7__dup_2780), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (nx60244z1), .sload (
           led[6])) ;
    dffeas reg_q_6__dup_1 (.q (nx62824z1), .d (inc_d_6__dup_2779), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (nx60244z1), .sload (
           led[6])) ;
    dffeas reg_q_5__dup_2 (.q (nx28436z1), .d (inc_d_5__dup_2778), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (nx60244z1), .sload (
           led[6])) ;
    dffeas reg_q_4__dup_3 (.q (nx55549z1), .d (inc_d_4__dup_2777), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (nx60244z1), .sload (
           led[6])) ;
    dffeas reg_q_3__dup_4 (.q (nx25561z1), .d (inc_d_3__dup_2776), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (nx60244z1), .sload (
           led[6])) ;
    dffeas reg_q_2__dup_5 (.q (nx41135z1), .d (inc_d_2__dup_2775), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (nx60244z1), .sload (
           led[6])) ;
    dffeas reg_q_1__dup_6 (.q (nx9230z1), .d (inc_d_1__dup_2774), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (nx60244z1), .sload (
           led[6])) ;
    dffeas reg_q_0__dup_7 (.q (nx24804z1), .d (inc_d_0__dup_2773), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (nx60244z1), .sload (
           led[6])) ;
    dffeas reg_q_10__dup_8 (.q (yes_uart_u_uart_RxDiv[10]), .d (
           inc_d_10__dup_2835), .clk (clk), .ena (PWR), .clrn (reset_n), .prn (
           PWR), .asdata (led[6]), .sclr (nx22863z1), .sload (led[6])) ;
    dffeas reg_q_9__dup_9 (.q (yes_uart_u_uart_RxDiv[9]), .d (inc_d_9__dup_2834)
           , .clk (clk), .ena (PWR), .clrn (reset_n), .prn (PWR), .asdata (
           led[6]), .sclr (nx22863z1), .sload (led[6])) ;
    dffeas reg_q_8__dup_10 (.q (yes_uart_u_uart_RxDiv[8]), .d (inc_d_8__dup_2833
           ), .clk (clk), .ena (PWR), .clrn (reset_n), .prn (PWR), .asdata (
           led[6]), .sclr (nx22863z1), .sload (led[6])) ;
    dffeas reg_q_7__dup_11 (.q (yes_uart_u_uart_RxDiv[7]), .d (inc_d_7__dup_2832
           ), .clk (clk), .ena (PWR), .clrn (reset_n), .prn (PWR), .asdata (
           led[6]), .sclr (nx22863z1), .sload (led[6])) ;
    dffeas reg_q_6__dup_12 (.q (yes_uart_u_uart_RxDiv[6]), .d (inc_d_6__dup_2830
           ), .clk (clk), .ena (PWR), .clrn (reset_n), .prn (PWR), .asdata (
           led[6]), .sclr (nx22863z1), .sload (led[6])) ;
    dffeas reg_q_5__dup_13 (.q (yes_uart_u_uart_RxDiv[5]), .d (inc_d_5__dup_2828
           ), .clk (clk), .ena (PWR), .clrn (reset_n), .prn (PWR), .asdata (
           led[6]), .sclr (nx22863z1), .sload (led[6])) ;
    dffeas reg_q_4__dup_14 (.q (yes_uart_u_uart_RxDiv[4]), .d (inc_d_4__dup_2826
           ), .clk (clk), .ena (PWR), .clrn (reset_n), .prn (PWR), .asdata (
           led[6]), .sclr (nx22863z1), .sload (led[6])) ;
    dffeas reg_q_3__dup_15 (.q (yes_uart_u_uart_RxDiv[3]), .d (inc_d_3__dup_2824
           ), .clk (clk), .ena (PWR), .clrn (reset_n), .prn (PWR), .asdata (
           led[6]), .sclr (nx22863z1), .sload (led[6])) ;
    dffeas reg_q_2__dup_16 (.q (yes_uart_u_uart_RxDiv[2]), .d (inc_d_2__dup_2822
           ), .clk (clk), .ena (PWR), .clrn (reset_n), .prn (PWR), .asdata (
           led[6]), .sclr (nx22863z1), .sload (led[6])) ;
    dffeas reg_q_1__dup_17 (.q (yes_uart_u_uart_RxDiv[1]), .d (inc_d_1__dup_2820
           ), .clk (clk), .ena (PWR), .clrn (reset_n), .prn (PWR), .asdata (
           led[6]), .sclr (nx22863z1), .sload (led[6])) ;
    dffeas reg_q_0__dup_18 (.q (yes_uart_u_uart_RxDiv[0]), .d (inc_d_0__dup_2818
           ), .clk (clk), .ena (PWR), .clrn (reset_n), .prn (PWR), .asdata (
           led[6]), .sclr (nx22863z1), .sload (led[6])) ;
    dffeas reg_q_11_ (.q (yes_uart_u_uart_TxDiv[11]), .d (inc_d_11_), .clk (clk)
           , .ena (PWR), .clrn (reset_n), .prn (PWR), .asdata (led[6]), .sclr (
           nx62450z1), .sload (led[6])) ;
    dffeas reg_q_10__dup_19 (.q (yes_uart_u_uart_TxDiv[10]), .d (
           inc_d_10__dup_2887), .clk (clk), .ena (PWR), .clrn (reset_n), .prn (
           PWR), .asdata (led[6]), .sclr (nx62450z1), .sload (led[6])) ;
    dffeas reg_q_9__dup_20 (.q (yes_uart_u_uart_TxDiv[9]), .d (inc_d_9__dup_2885
           ), .clk (clk), .ena (PWR), .clrn (reset_n), .prn (PWR), .asdata (
           led[6]), .sclr (nx62450z1), .sload (led[6])) ;
    dffeas reg_q_8__dup_21 (.q (yes_uart_u_uart_TxDiv[8]), .d (inc_d_8__dup_2883
           ), .clk (clk), .ena (PWR), .clrn (reset_n), .prn (PWR), .asdata (
           led[6]), .sclr (nx62450z1), .sload (led[6])) ;
    dffeas reg_q_7__dup_22 (.q (yes_uart_u_uart_TxDiv[7]), .d (inc_d_7__dup_2881
           ), .clk (clk), .ena (PWR), .clrn (reset_n), .prn (PWR), .asdata (
           led[6]), .sclr (nx62450z1), .sload (led[6])) ;
    dffeas reg_q_6__dup_23 (.q (yes_uart_u_uart_TxDiv[6]), .d (inc_d_6__dup_2879
           ), .clk (clk), .ena (PWR), .clrn (reset_n), .prn (PWR), .asdata (
           led[6]), .sclr (nx62450z1), .sload (led[6])) ;
    dffeas reg_q_5__dup_24 (.q (yes_uart_u_uart_TxDiv[5]), .d (inc_d_5__dup_2877
           ), .clk (clk), .ena (PWR), .clrn (reset_n), .prn (PWR), .asdata (
           led[6]), .sclr (nx62450z1), .sload (led[6])) ;
    dffeas reg_q_4__dup_25 (.q (yes_uart_u_uart_TxDiv[4]), .d (inc_d_4__dup_2875
           ), .clk (clk), .ena (PWR), .clrn (reset_n), .prn (PWR), .asdata (
           led[6]), .sclr (nx62450z1), .sload (led[6])) ;
    dffeas reg_q_3__dup_26 (.q (yes_uart_u_uart_TxDiv[3]), .d (inc_d_3__dup_2873
           ), .clk (clk), .ena (PWR), .clrn (reset_n), .prn (PWR), .asdata (
           led[6]), .sclr (nx62450z1), .sload (led[6])) ;
    dffeas reg_q_2__dup_27 (.q (yes_uart_u_uart_TxDiv[2]), .d (inc_d_2__dup_2871
           ), .clk (clk), .ena (PWR), .clrn (reset_n), .prn (PWR), .asdata (
           led[6]), .sclr (nx62450z1), .sload (led[6])) ;
    dffeas reg_q_1__dup_28 (.q (yes_uart_u_uart_TxDiv[1]), .d (inc_d_1__dup_2869
           ), .clk (clk), .ena (PWR), .clrn (reset_n), .prn (PWR), .asdata (
           led[6]), .sclr (nx62450z1), .sload (led[6])) ;
    dffeas reg_q_0__dup_29 (.q (yes_uart_u_uart_TxDiv[0]), .d (inc_d_0__dup_2867
           ), .clk (clk), .ena (PWR), .clrn (reset_n), .prn (PWR), .asdata (
           led[6]), .sclr (nx62450z1), .sload (led[6])) ;
    dffeas reg_q_7__dup_30 (.q (o_data[7]), .d (inc_d_7__dup_3050), .clk (clk), 
           .ena (nx19416z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_state[0]), .sload (led[6])) ;
    dffeas reg_q_6__dup_31 (.q (o_data[6]), .d (inc_d_6__dup_3048), .clk (clk), 
           .ena (nx19416z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_state[0]), .sload (led[6])) ;
    dffeas reg_q_5__dup_32 (.q (o_data[5]), .d (inc_d_5__dup_3046), .clk (clk), 
           .ena (nx19416z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_state[0]), .sload (led[6])) ;
    dffeas reg_q_4__dup_33 (.q (o_data[4]), .d (inc_d_4__dup_3044), .clk (clk), 
           .ena (nx19416z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_state[0]), .sload (led[6])) ;
    dffeas reg_q_3__dup_34 (.q (o_data[3]), .d (inc_d_3__dup_3042), .clk (clk), 
           .ena (nx19416z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_state[0]), .sload (led[6])) ;
    dffeas reg_q_2__dup_35 (.q (o_data[2]), .d (inc_d_2__dup_3040), .clk (clk), 
           .ena (nx19416z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_state[0]), .sload (led[6])) ;
    dffeas reg_q_1__dup_36 (.q (o_data[1]), .d (inc_d_1__dup_3038), .clk (clk), 
           .ena (nx19416z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_state[0]), .sload (led[6])) ;
    dffeas reg_q_0__dup_37 (.q (o_data[0]), .d (inc_d_0__dup_3036), .clk (clk), 
           .ena (nx19416z1), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (
           u_lab3_state[0]), .sload (led[6])) ;
    dffeas reg_byte_reg_7_ (.q (byte_reg[7]), .d (byte_reg_2n1ss1[7]), .clk (clk
           ), .ena (u_lab3_rtlc0_PS25_n202), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (reset), .sload (led[6])) ;
    dffeas reg_byte_reg_6_ (.q (byte_reg[6]), .d (byte_reg_2n1ss1[6]), .clk (clk
           ), .ena (u_lab3_rtlc0_PS25_n202), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (reset), .sload (led[6])) ;
    dffeas reg_byte_reg_5_ (.q (byte_reg[5]), .d (byte_reg_2n1ss1[5]), .clk (clk
           ), .ena (u_lab3_rtlc0_PS25_n202), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (reset), .sload (led[6])) ;
    dffeas reg_byte_reg_4_ (.q (byte_reg[4]), .d (byte_reg_2n1ss1[4]), .clk (clk
           ), .ena (u_lab3_rtlc0_PS25_n202), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (reset), .sload (led[6])) ;
    dffeas reg_byte_reg_3_ (.q (byte_reg[3]), .d (byte_reg_2n1ss1[3]), .clk (clk
           ), .ena (u_lab3_rtlc0_PS25_n202), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (reset), .sload (led[6])) ;
    dffeas reg_byte_reg_2_ (.q (byte_reg[2]), .d (byte_reg_2n1ss1[2]), .clk (clk
           ), .ena (u_lab3_rtlc0_PS25_n202), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (reset), .sload (led[6])) ;
    dffeas reg_byte_reg_1_ (.q (byte_reg[1]), .d (byte_reg_2n1ss1[1]), .clk (clk
           ), .ena (u_lab3_rtlc0_PS25_n202), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (reset), .sload (led[6])) ;
    dffeas reg_byte_reg_0_ (.q (byte_reg[0]), .d (byte_reg_2n1ss1[0]), .clk (clk
           ), .ena (u_lab3_rtlc0_PS25_n202), .clrn (PWR), .prn (PWR), .asdata (
           led[6]), .sclr (reset), .sload (led[6])) ;
    dffeas u_lab3_reg_state_4_ (.q (u_lab3_state[4]), .d (nx63348z1), .clk (clk)
           , .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (reset
           ), .sload (led[6])) ;
    dffeas u_lab3_reg_state_3_ (.q (u_lab3_state[3]), .d (nx62351z1), .clk (clk)
           , .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (1'b0)
           , .sload (1'b0)) ;
    dffeas u_lab3_reg_state_2_ (.q (u_lab3_state[2]), .d (nx61354z1), .clk (clk)
           , .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (reset
           ), .sload (led[6])) ;
    dffeas u_lab3_reg_state_1_ (.q (u_lab3_state[1]), .d (nx60357z1), .clk (clk)
           , .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (led[6]), .sclr (reset
           ), .sload (led[6])) ;
    dffeas u_lab3_reg_state_0_ (.q (nx6634z2), .d (nx59360z1), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (NOT_led_5_), .sclr (reset), .sload (
           led[6])) ;
    dffeas reg_byte_valid (.q (byte_valid), .d (byte_valid_3n0r1), .clk (clk), .ena (
           1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_prev_reset (.q (u_seg7_u_dual_seg7_prev_reset)
           , .d (reset), .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_prev_char0_en (.q (
           u_seg7_u_dual_seg7_prev_char0_en), .d (seg7_en[0]), .clk (clk), .ena (
           1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_o_char_7_ (.q (seg7_data[7]), .d (seg7_pts_1_)
           , .clk (clk), .ena (u_seg7_u_dual_seg7_load_reg), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_o_char_4_ (.q (seg7_data[4]), .d (
           u_seg7_u_dual_seg7_muxed_char_4_), .clk (clk), .ena (
           u_seg7_u_dual_seg7_load_reg), .clrn (PWR), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_o_char_3_ (.q (seg7_data[3]), .d (
           u_seg7_u_dual_seg7_muxed_char_3_), .clk (clk), .ena (
           u_seg7_u_dual_seg7_load_reg), .clrn (PWR), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_o_char_2_ (.q (seg7_data[2]), .d (
           u_seg7_u_dual_seg7_muxed_char_2_), .clk (clk), .ena (
           u_seg7_u_dual_seg7_load_reg), .clrn (PWR), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_o_char_0_ (.q (seg7_data[0]), .d (
           u_seg7_u_dual_seg7_muxed_char_0_), .clk (clk), .ena (
           u_seg7_u_dual_seg7_load_reg), .clrn (PWR), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_Rx_r (.q (nx64005z3), .d (NOT_led_4_), .clk (clk)
           , .ena (1'b1), .clrn (reset_n), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_RxDivisor_4_ (.q (yes_uart_u_uart_RxDivisor_4_), 
           .d (PWR), .clk (clk), .ena (1'b1), .clrn (reset_n), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_TopRx (.q (yes_uart_u_uart_TopRx), .d (nx60456z1)
           , .clk (clk), .ena (1'b1), .clrn (reset_n), .prn (PWR), .asdata (1'b0
           ), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_TopTx (.q (yes_uart_u_uart_TopTx), .d (nx62450z1)
           , .clk (clk), .ena (1'b1), .clrn (reset_n), .prn (PWR), .asdata (1'b0
           ), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_TxBusy (.q (tx_busy), .d (nx46262z1), .clk (clk)
           , .ena (1'b1), .clrn (reset_n), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_Tx_Reg_8_ (.q (nx22128z1), .d (
           NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_8_), .clk (clk), .ena (nx21131z1)
           , .clrn (reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas yes_uart_u_uart_reg_Tx_Reg_7_ (.q (nx23125z1), .d (
           NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_7_), .clk (clk), .ena (nx21131z1)
           , .clrn (reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas yes_uart_u_uart_reg_Tx_Reg_6_ (.q (nx24122z1), .d (
           NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_6_), .clk (clk), .ena (nx21131z1)
           , .clrn (reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas yes_uart_u_uart_reg_Tx_Reg_5_ (.q (nx25119z1), .d (
           NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_5_), .clk (clk), .ena (nx21131z1)
           , .clrn (reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas yes_uart_u_uart_reg_Tx_Reg_4_ (.q (nx26116z1), .d (
           NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_4_), .clk (clk), .ena (nx21131z1)
           , .clrn (reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas yes_uart_u_uart_reg_Tx_Reg_3_ (.q (nx27113z1), .d (
           NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_3_), .clk (clk), .ena (nx21131z1)
           , .clrn (reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas yes_uart_u_uart_reg_Tx_Reg_2_ (.q (nx28110z1), .d (
           NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_2_), .clk (clk), .ena (nx21131z1)
           , .clrn (reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas yes_uart_u_uart_reg_Tx_Reg_1_ (.q (nx29107z3), .d (
           NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_1_), .clk (clk), .ena (nx21131z1)
           , .clrn (reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas yes_uart_u_uart_reg_RxFSM_5_ (.q (yes_uart_u_uart_RxFSM[5]), .d (
           nx2457z1), .clk (clk), .ena (nx64005z1), .clrn (reset_n), .prn (PWR)
           , .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_RxFSM_4_ (.q (yes_uart_u_uart_RxFSM[4]), .d (
           nx1460z1), .clk (clk), .ena (nx64005z1), .clrn (reset_n), .prn (PWR)
           , .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_RxFSM_3_ (.q (yes_uart_u_uart_RxFSM[3]), .d (
           nx463z1), .clk (clk), .ena (nx64005z1), .clrn (reset_n), .prn (PWR), 
           .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_RxFSM_2_ (.q (yes_uart_u_uart_RxFSM[2]), .d (
           nx65002z1), .clk (clk), .ena (nx64005z1), .clrn (reset_n), .prn (PWR)
           , .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_RxFSM_1_ (.q (yes_uart_u_uart_RxFSM[1]), .d (
           yes_uart_u_uart_RxFSM[0]), .clk (clk), .ena (nx64005z1), .clrn (
           reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_RxFSM_0_ (.q (nx46026z2), .d (nx63008z1), .clk (
           clk), .ena (nx64005z1), .clrn (reset_n), .prn (PWR), .asdata (1'b0), 
           .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_Dout_7_ (.q (i_data[7]), .d (
           yes_uart_u_uart_Rx_Reg[7]), .clk (clk), .ena (nx46463z1), .clrn (
           reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_Dout_6_ (.q (i_data[6]), .d (
           yes_uart_u_uart_Rx_Reg[6]), .clk (clk), .ena (nx46463z1), .clrn (
           reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_Dout_5_ (.q (i_data[5]), .d (
           yes_uart_u_uart_Rx_Reg[5]), .clk (clk), .ena (nx46463z1), .clrn (
           reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_Dout_4_ (.q (i_data[4]), .d (
           yes_uart_u_uart_Rx_Reg[4]), .clk (clk), .ena (nx46463z1), .clrn (
           reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_Dout_3_ (.q (i_data[3]), .d (
           yes_uart_u_uart_Rx_Reg[3]), .clk (clk), .ena (nx46463z1), .clrn (
           reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_Dout_2_ (.q (i_data[2]), .d (
           yes_uart_u_uart_Rx_Reg[2]), .clk (clk), .ena (nx46463z1), .clrn (
           reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_Dout_1_ (.q (i_data[1]), .d (
           yes_uart_u_uart_Rx_Reg[1]), .clk (clk), .ena (nx46463z1), .clrn (
           reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_Dout_0_ (.q (i_data[0]), .d (
           yes_uart_u_uart_Rx_Reg[0]), .clk (clk), .ena (nx46463z1), .clrn (
           reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_Rx_Reg_7_ (.q (yes_uart_u_uart_Rx_Reg[7]), .d (
           yes_uart_u_uart_Rx_r), .clk (clk), .ena (nx2098z1), .clrn (reset_n), 
           .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_Rx_Reg_6_ (.q (yes_uart_u_uart_Rx_Reg[6]), .d (
           yes_uart_u_uart_Rx_Reg[7]), .clk (clk), .ena (nx2098z1), .clrn (
           reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_Rx_Reg_5_ (.q (yes_uart_u_uart_Rx_Reg[5]), .d (
           yes_uart_u_uart_Rx_Reg[6]), .clk (clk), .ena (nx2098z1), .clrn (
           reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_Rx_Reg_4_ (.q (yes_uart_u_uart_Rx_Reg[4]), .d (
           yes_uart_u_uart_Rx_Reg[5]), .clk (clk), .ena (nx2098z1), .clrn (
           reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_Rx_Reg_3_ (.q (yes_uart_u_uart_Rx_Reg[3]), .d (
           yes_uart_u_uart_Rx_Reg[4]), .clk (clk), .ena (nx2098z1), .clrn (
           reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_Rx_Reg_2_ (.q (yes_uart_u_uart_Rx_Reg[2]), .d (
           yes_uart_u_uart_Rx_Reg[3]), .clk (clk), .ena (nx2098z1), .clrn (
           reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_Rx_Reg_1_ (.q (yes_uart_u_uart_Rx_Reg[1]), .d (
           yes_uart_u_uart_Rx_Reg[2]), .clk (clk), .ena (nx2098z1), .clrn (
           reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_Rx_Reg_0_ (.q (yes_uart_u_uart_Rx_Reg[0]), .d (
           yes_uart_u_uart_Rx_Reg[1]), .clk (clk), .ena (nx2098z1), .clrn (
           reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_reg_RxRDYi (.q (i_valid), .d (nx46463z1), .clk (clk)
           , .ena (1'b1), .clrn (reset_n), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_15__7_ (.q (u_lab3_minuend_15_[7]), .d (
           u_lab3_minuend_1n10ss1_487_), .clk (clk), .ena (nx47763z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_14__7_ (.q (u_lab3_minuend_14_[7]), .d (
           u_lab3_minuend_1n10ss1_455_), .clk (clk), .ena (nx42628z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_13__7_ (.q (u_lab3_minuend_13_[7]), .d (
           u_lab3_minuend_1n10ss1_423_), .clk (clk), .ena (nx37493z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_12__7_ (.q (u_lab3_minuend_12_[7]), .d (
           u_lab3_minuend_1n10ss1_391_), .clk (clk), .ena (nx32358z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_11__7_ (.q (u_lab3_minuend_11_[7]), .d (
           u_lab3_minuend_1n10ss1_359_), .clk (clk), .ena (nx27223z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_10__7_ (.q (u_lab3_minuend_10_[7]), .d (
           u_lab3_minuend_1n10ss1_327_), .clk (clk), .ena (nx22088z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_9__7_ (.q (u_lab3_minuend_9_[7]), .d (
           u_lab3_minuend_1n10ss1_295_), .clk (clk), .ena (nx41564z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_8__7_ (.q (u_lab3_minuend_8_[7]), .d (
           u_lab3_minuend_1n10ss1_263_), .clk (clk), .ena (nx36429z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_7__7_ (.q (u_lab3_minuend_7_[7]), .d (
           u_lab3_minuend_1n10ss1_231_), .clk (clk), .ena (nx31294z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_6__7_ (.q (u_lab3_minuend_6_[7]), .d (
           u_lab3_minuend_1n10ss1_199_), .clk (clk), .ena (nx26159z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_5__7_ (.q (u_lab3_minuend_5_[7]), .d (
           u_lab3_minuend_1n10ss1_167_), .clk (clk), .ena (nx21024z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_4__7_ (.q (u_lab3_minuend_4_[7]), .d (
           u_lab3_minuend_1n10ss1_135_), .clk (clk), .ena (nx15889z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_3__7_ (.q (u_lab3_minuend_3_[7]), .d (
           u_lab3_minuend_1n10ss1_103_), .clk (clk), .ena (nx54782z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_2__7_ (.q (u_lab3_minuend_2_[7]), .d (
           u_lab3_minuend_1n10ss1_71_), .clk (clk), .ena (nx59917z2), .clrn (PWR
           ), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_1__7_ (.q (u_lab3_minuend_1_[7]), .d (
           u_lab3_minuend_1n10ss1_39_), .clk (clk), .ena (nx65052z2), .clrn (PWR
           ), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_0__7_ (.q (u_lab3_minuend_0_[7]), .d (
           u_lab3_minuend_1n10ss1_7_), .clk (clk), .ena (nx4651z2), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_15__6_ (.q (u_lab3_minuend_15_[6]), .d (
           u_lab3_minuend_1n10ss1_486_), .clk (clk), .ena (nx47763z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_14__6_ (.q (u_lab3_minuend_14_[6]), .d (
           u_lab3_minuend_1n10ss1_454_), .clk (clk), .ena (nx42628z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_13__6_ (.q (u_lab3_minuend_13_[6]), .d (
           u_lab3_minuend_1n10ss1_422_), .clk (clk), .ena (nx37493z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_12__6_ (.q (u_lab3_minuend_12_[6]), .d (
           u_lab3_minuend_1n10ss1_390_), .clk (clk), .ena (nx32358z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_11__6_ (.q (u_lab3_minuend_11_[6]), .d (
           u_lab3_minuend_1n10ss1_358_), .clk (clk), .ena (nx27223z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_10__6_ (.q (u_lab3_minuend_10_[6]), .d (
           u_lab3_minuend_1n10ss1_326_), .clk (clk), .ena (nx22088z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_9__6_ (.q (u_lab3_minuend_9_[6]), .d (
           u_lab3_minuend_1n10ss1_294_), .clk (clk), .ena (nx41564z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_8__6_ (.q (u_lab3_minuend_8_[6]), .d (
           u_lab3_minuend_1n10ss1_262_), .clk (clk), .ena (nx36429z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_7__6_ (.q (u_lab3_minuend_7_[6]), .d (
           u_lab3_minuend_1n10ss1_230_), .clk (clk), .ena (nx31294z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_6__6_ (.q (u_lab3_minuend_6_[6]), .d (
           u_lab3_minuend_1n10ss1_198_), .clk (clk), .ena (nx26159z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_5__6_ (.q (u_lab3_minuend_5_[6]), .d (
           u_lab3_minuend_1n10ss1_166_), .clk (clk), .ena (nx21024z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_4__6_ (.q (u_lab3_minuend_4_[6]), .d (
           u_lab3_minuend_1n10ss1_134_), .clk (clk), .ena (nx15889z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_3__6_ (.q (u_lab3_minuend_3_[6]), .d (
           u_lab3_minuend_1n10ss1_102_), .clk (clk), .ena (nx54782z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_2__6_ (.q (u_lab3_minuend_2_[6]), .d (
           u_lab3_minuend_1n10ss1_70_), .clk (clk), .ena (nx59917z2), .clrn (PWR
           ), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_1__6_ (.q (u_lab3_minuend_1_[6]), .d (
           u_lab3_minuend_1n10ss1_38_), .clk (clk), .ena (nx65052z2), .clrn (PWR
           ), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_0__6_ (.q (u_lab3_minuend_0_[6]), .d (
           u_lab3_minuend_1n10ss1_6_), .clk (clk), .ena (nx4651z2), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_15__5_ (.q (u_lab3_minuend_15_[5]), .d (
           u_lab3_minuend_1n10ss1_485_), .clk (clk), .ena (nx47763z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_14__5_ (.q (u_lab3_minuend_14_[5]), .d (
           u_lab3_minuend_1n10ss1_453_), .clk (clk), .ena (nx42628z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_13__5_ (.q (u_lab3_minuend_13_[5]), .d (
           u_lab3_minuend_1n10ss1_421_), .clk (clk), .ena (nx37493z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_12__5_ (.q (u_lab3_minuend_12_[5]), .d (
           u_lab3_minuend_1n10ss1_389_), .clk (clk), .ena (nx32358z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_11__5_ (.q (u_lab3_minuend_11_[5]), .d (
           u_lab3_minuend_1n10ss1_357_), .clk (clk), .ena (nx27223z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_10__5_ (.q (u_lab3_minuend_10_[5]), .d (
           u_lab3_minuend_1n10ss1_325_), .clk (clk), .ena (nx22088z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_9__5_ (.q (u_lab3_minuend_9_[5]), .d (
           u_lab3_minuend_1n10ss1_293_), .clk (clk), .ena (nx41564z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_8__5_ (.q (u_lab3_minuend_8_[5]), .d (
           u_lab3_minuend_1n10ss1_261_), .clk (clk), .ena (nx36429z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_7__5_ (.q (u_lab3_minuend_7_[5]), .d (
           u_lab3_minuend_1n10ss1_229_), .clk (clk), .ena (nx31294z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_6__5_ (.q (u_lab3_minuend_6_[5]), .d (
           u_lab3_minuend_1n10ss1_197_), .clk (clk), .ena (nx26159z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_5__5_ (.q (u_lab3_minuend_5_[5]), .d (
           u_lab3_minuend_1n10ss1_165_), .clk (clk), .ena (nx21024z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_4__5_ (.q (u_lab3_minuend_4_[5]), .d (
           u_lab3_minuend_1n10ss1_133_), .clk (clk), .ena (nx15889z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_3__5_ (.q (u_lab3_minuend_3_[5]), .d (
           u_lab3_minuend_1n10ss1_101_), .clk (clk), .ena (nx54782z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_2__5_ (.q (u_lab3_minuend_2_[5]), .d (
           u_lab3_minuend_1n10ss1_69_), .clk (clk), .ena (nx59917z2), .clrn (PWR
           ), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_1__5_ (.q (u_lab3_minuend_1_[5]), .d (
           u_lab3_minuend_1n10ss1_37_), .clk (clk), .ena (nx65052z2), .clrn (PWR
           ), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_0__5_ (.q (u_lab3_minuend_0_[5]), .d (
           u_lab3_minuend_1n10ss1_5_), .clk (clk), .ena (nx4651z2), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_15__4_ (.q (u_lab3_minuend_15_[4]), .d (
           u_lab3_minuend_1n10ss1_484_), .clk (clk), .ena (nx47763z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_14__4_ (.q (u_lab3_minuend_14_[4]), .d (
           u_lab3_minuend_1n10ss1_452_), .clk (clk), .ena (nx42628z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_13__4_ (.q (u_lab3_minuend_13_[4]), .d (
           u_lab3_minuend_1n10ss1_420_), .clk (clk), .ena (nx37493z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_12__4_ (.q (u_lab3_minuend_12_[4]), .d (
           u_lab3_minuend_1n10ss1_388_), .clk (clk), .ena (nx32358z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_11__4_ (.q (u_lab3_minuend_11_[4]), .d (
           u_lab3_minuend_1n10ss1_356_), .clk (clk), .ena (nx27223z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_10__4_ (.q (u_lab3_minuend_10_[4]), .d (
           u_lab3_minuend_1n10ss1_324_), .clk (clk), .ena (nx22088z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_9__4_ (.q (u_lab3_minuend_9_[4]), .d (
           u_lab3_minuend_1n10ss1_292_), .clk (clk), .ena (nx41564z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_8__4_ (.q (u_lab3_minuend_8_[4]), .d (
           u_lab3_minuend_1n10ss1_260_), .clk (clk), .ena (nx36429z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_7__4_ (.q (u_lab3_minuend_7_[4]), .d (
           u_lab3_minuend_1n10ss1_228_), .clk (clk), .ena (nx31294z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_6__4_ (.q (u_lab3_minuend_6_[4]), .d (
           u_lab3_minuend_1n10ss1_196_), .clk (clk), .ena (nx26159z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_5__4_ (.q (u_lab3_minuend_5_[4]), .d (
           u_lab3_minuend_1n10ss1_164_), .clk (clk), .ena (nx21024z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_4__4_ (.q (u_lab3_minuend_4_[4]), .d (
           u_lab3_minuend_1n10ss1_132_), .clk (clk), .ena (nx15889z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_3__4_ (.q (u_lab3_minuend_3_[4]), .d (
           u_lab3_minuend_1n10ss1_100_), .clk (clk), .ena (nx54782z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_2__4_ (.q (u_lab3_minuend_2_[4]), .d (
           u_lab3_minuend_1n10ss1_68_), .clk (clk), .ena (nx59917z2), .clrn (PWR
           ), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_1__4_ (.q (u_lab3_minuend_1_[4]), .d (
           u_lab3_minuend_1n10ss1_36_), .clk (clk), .ena (nx65052z2), .clrn (PWR
           ), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_0__4_ (.q (u_lab3_minuend_0_[4]), .d (
           u_lab3_minuend_1n10ss1_4_), .clk (clk), .ena (nx4651z2), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_15__3_ (.q (u_lab3_minuend_15_[3]), .d (
           u_lab3_minuend_1n10ss1_483_), .clk (clk), .ena (nx47763z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_14__3_ (.q (u_lab3_minuend_14_[3]), .d (
           u_lab3_minuend_1n10ss1_451_), .clk (clk), .ena (nx42628z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_13__3_ (.q (u_lab3_minuend_13_[3]), .d (
           u_lab3_minuend_1n10ss1_419_), .clk (clk), .ena (nx37493z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_12__3_ (.q (u_lab3_minuend_12_[3]), .d (
           u_lab3_minuend_1n10ss1_387_), .clk (clk), .ena (nx32358z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_11__3_ (.q (u_lab3_minuend_11_[3]), .d (
           u_lab3_minuend_1n10ss1_355_), .clk (clk), .ena (nx27223z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_10__3_ (.q (u_lab3_minuend_10_[3]), .d (
           u_lab3_minuend_1n10ss1_323_), .clk (clk), .ena (nx22088z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_9__3_ (.q (u_lab3_minuend_9_[3]), .d (
           u_lab3_minuend_1n10ss1_291_), .clk (clk), .ena (nx41564z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_8__3_ (.q (u_lab3_minuend_8_[3]), .d (
           u_lab3_minuend_1n10ss1_259_), .clk (clk), .ena (nx36429z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_7__3_ (.q (u_lab3_minuend_7_[3]), .d (
           u_lab3_minuend_1n10ss1_227_), .clk (clk), .ena (nx31294z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_6__3_ (.q (u_lab3_minuend_6_[3]), .d (
           u_lab3_minuend_1n10ss1_195_), .clk (clk), .ena (nx26159z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_5__3_ (.q (u_lab3_minuend_5_[3]), .d (
           u_lab3_minuend_1n10ss1_163_), .clk (clk), .ena (nx21024z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_4__3_ (.q (u_lab3_minuend_4_[3]), .d (
           u_lab3_minuend_1n10ss1_131_), .clk (clk), .ena (nx15889z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_3__3_ (.q (u_lab3_minuend_3_[3]), .d (
           u_lab3_minuend_1n10ss1_99_), .clk (clk), .ena (nx54782z2), .clrn (PWR
           ), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_2__3_ (.q (u_lab3_minuend_2_[3]), .d (
           u_lab3_minuend_1n10ss1_67_), .clk (clk), .ena (nx59917z2), .clrn (PWR
           ), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_1__3_ (.q (u_lab3_minuend_1_[3]), .d (
           u_lab3_minuend_1n10ss1_35_), .clk (clk), .ena (nx65052z2), .clrn (PWR
           ), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_0__3_ (.q (u_lab3_minuend_0_[3]), .d (
           u_lab3_minuend_1n10ss1_3_), .clk (clk), .ena (nx4651z2), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_15__2_ (.q (u_lab3_minuend_15_[2]), .d (
           u_lab3_minuend_1n10ss1_482_), .clk (clk), .ena (nx47763z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_14__2_ (.q (u_lab3_minuend_14_[2]), .d (
           u_lab3_minuend_1n10ss1_450_), .clk (clk), .ena (nx42628z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_13__2_ (.q (u_lab3_minuend_13_[2]), .d (
           u_lab3_minuend_1n10ss1_418_), .clk (clk), .ena (nx37493z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_12__2_ (.q (u_lab3_minuend_12_[2]), .d (
           u_lab3_minuend_1n10ss1_386_), .clk (clk), .ena (nx32358z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_11__2_ (.q (u_lab3_minuend_11_[2]), .d (
           u_lab3_minuend_1n10ss1_354_), .clk (clk), .ena (nx27223z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_10__2_ (.q (u_lab3_minuend_10_[2]), .d (
           u_lab3_minuend_1n10ss1_322_), .clk (clk), .ena (nx22088z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_9__2_ (.q (u_lab3_minuend_9_[2]), .d (
           u_lab3_minuend_1n10ss1_290_), .clk (clk), .ena (nx41564z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_8__2_ (.q (u_lab3_minuend_8_[2]), .d (
           u_lab3_minuend_1n10ss1_258_), .clk (clk), .ena (nx36429z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_7__2_ (.q (u_lab3_minuend_7_[2]), .d (
           u_lab3_minuend_1n10ss1_226_), .clk (clk), .ena (nx31294z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_6__2_ (.q (u_lab3_minuend_6_[2]), .d (
           u_lab3_minuend_1n10ss1_194_), .clk (clk), .ena (nx26159z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_5__2_ (.q (u_lab3_minuend_5_[2]), .d (
           u_lab3_minuend_1n10ss1_162_), .clk (clk), .ena (nx21024z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_4__2_ (.q (u_lab3_minuend_4_[2]), .d (
           u_lab3_minuend_1n10ss1_130_), .clk (clk), .ena (nx15889z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_3__2_ (.q (u_lab3_minuend_3_[2]), .d (
           u_lab3_minuend_1n10ss1_98_), .clk (clk), .ena (nx54782z2), .clrn (PWR
           ), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_2__2_ (.q (u_lab3_minuend_2_[2]), .d (
           u_lab3_minuend_1n10ss1_66_), .clk (clk), .ena (nx59917z2), .clrn (PWR
           ), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_1__2_ (.q (u_lab3_minuend_1_[2]), .d (
           u_lab3_minuend_1n10ss1_34_), .clk (clk), .ena (nx65052z2), .clrn (PWR
           ), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_0__2_ (.q (u_lab3_minuend_0_[2]), .d (
           u_lab3_minuend_1n10ss1_2_), .clk (clk), .ena (nx4651z2), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_15__1_ (.q (u_lab3_minuend_15_[1]), .d (
           u_lab3_minuend_1n10ss1_481_), .clk (clk), .ena (nx47763z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_14__1_ (.q (u_lab3_minuend_14_[1]), .d (
           u_lab3_minuend_1n10ss1_449_), .clk (clk), .ena (nx42628z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_13__1_ (.q (u_lab3_minuend_13_[1]), .d (
           u_lab3_minuend_1n10ss1_417_), .clk (clk), .ena (nx37493z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_12__1_ (.q (u_lab3_minuend_12_[1]), .d (
           u_lab3_minuend_1n10ss1_385_), .clk (clk), .ena (nx32358z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_11__1_ (.q (u_lab3_minuend_11_[1]), .d (
           u_lab3_minuend_1n10ss1_353_), .clk (clk), .ena (nx27223z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_10__1_ (.q (u_lab3_minuend_10_[1]), .d (
           u_lab3_minuend_1n10ss1_321_), .clk (clk), .ena (nx22088z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_9__1_ (.q (u_lab3_minuend_9_[1]), .d (
           u_lab3_minuend_1n10ss1_289_), .clk (clk), .ena (nx41564z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_8__1_ (.q (u_lab3_minuend_8_[1]), .d (
           u_lab3_minuend_1n10ss1_257_), .clk (clk), .ena (nx36429z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_7__1_ (.q (u_lab3_minuend_7_[1]), .d (
           u_lab3_minuend_1n10ss1_225_), .clk (clk), .ena (nx31294z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_6__1_ (.q (u_lab3_minuend_6_[1]), .d (
           u_lab3_minuend_1n10ss1_193_), .clk (clk), .ena (nx26159z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_5__1_ (.q (u_lab3_minuend_5_[1]), .d (
           u_lab3_minuend_1n10ss1_161_), .clk (clk), .ena (nx21024z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_4__1_ (.q (u_lab3_minuend_4_[1]), .d (
           u_lab3_minuend_1n10ss1_129_), .clk (clk), .ena (nx15889z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_3__1_ (.q (u_lab3_minuend_3_[1]), .d (
           u_lab3_minuend_1n10ss1_97_), .clk (clk), .ena (nx54782z2), .clrn (PWR
           ), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_2__1_ (.q (u_lab3_minuend_2_[1]), .d (
           u_lab3_minuend_1n10ss1_65_), .clk (clk), .ena (nx59917z2), .clrn (PWR
           ), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_1__1_ (.q (u_lab3_minuend_1_[1]), .d (
           u_lab3_minuend_1n10ss1_33_), .clk (clk), .ena (nx65052z2), .clrn (PWR
           ), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_0__1_ (.q (u_lab3_minuend_0_[1]), .d (
           u_lab3_minuend_1n10ss1_1_), .clk (clk), .ena (nx4651z2), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_15__0_ (.q (u_lab3_minuend_15_[0]), .d (
           u_lab3_minuend_1n10ss1_480_), .clk (clk), .ena (nx47763z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_14__0_ (.q (u_lab3_minuend_14_[0]), .d (
           u_lab3_minuend_1n10ss1_448_), .clk (clk), .ena (nx42628z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_13__0_ (.q (u_lab3_minuend_13_[0]), .d (
           u_lab3_minuend_1n10ss1_416_), .clk (clk), .ena (nx37493z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_12__0_ (.q (u_lab3_minuend_12_[0]), .d (
           u_lab3_minuend_1n10ss1_384_), .clk (clk), .ena (nx32358z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_11__0_ (.q (u_lab3_minuend_11_[0]), .d (
           u_lab3_minuend_1n10ss1_352_), .clk (clk), .ena (nx27223z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_10__0_ (.q (u_lab3_minuend_10_[0]), .d (
           u_lab3_minuend_1n10ss1_320_), .clk (clk), .ena (nx22088z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_9__0_ (.q (u_lab3_minuend_9_[0]), .d (
           u_lab3_minuend_1n10ss1_288_), .clk (clk), .ena (nx41564z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_8__0_ (.q (u_lab3_minuend_8_[0]), .d (
           u_lab3_minuend_1n10ss1_256_), .clk (clk), .ena (nx36429z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_7__0_ (.q (u_lab3_minuend_7_[0]), .d (
           u_lab3_minuend_1n10ss1_224_), .clk (clk), .ena (nx31294z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_6__0_ (.q (u_lab3_minuend_6_[0]), .d (
           u_lab3_minuend_1n10ss1_192_), .clk (clk), .ena (nx26159z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_5__0_ (.q (u_lab3_minuend_5_[0]), .d (
           u_lab3_minuend_1n10ss1_160_), .clk (clk), .ena (nx21024z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_4__0_ (.q (u_lab3_minuend_4_[0]), .d (
           u_lab3_minuend_1n10ss1_128_), .clk (clk), .ena (nx15889z2), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_3__0_ (.q (u_lab3_minuend_3_[0]), .d (
           u_lab3_minuend_1n10ss1_96_), .clk (clk), .ena (nx54782z2), .clrn (PWR
           ), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_2__0_ (.q (u_lab3_minuend_2_[0]), .d (
           u_lab3_minuend_1n10ss1_64_), .clk (clk), .ena (nx59917z2), .clrn (PWR
           ), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_1__0_ (.q (u_lab3_minuend_1_[0]), .d (
           u_lab3_minuend_1n10ss1_32_), .clk (clk), .ena (nx65052z2), .clrn (PWR
           ), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_lab3_reg_minuend_0__0_ (.q (u_lab3_minuend_0_[0]), .d (
           u_lab3_minuend_1n10ss1_0_), .clk (clk), .ena (nx4651z2), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_3_ (.q (
           yes_uart_u_uart_TxBitCnt[3]), .d (nx48281z1), .clk (clk), .ena (
           nx51272z2), .clrn (reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0)
           , .sload (1'b0)) ;
    dffeas yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_2_ (.q (
           yes_uart_u_uart_TxBitCnt[2]), .d (nx49278z1), .clk (clk), .ena (
           nx51272z2), .clrn (reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0)
           , .sload (1'b0)) ;
    dffeas yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1_ (.q (
           yes_uart_u_uart_TxBitCnt[1]), .d (nx50275z1), .clk (clk), .ena (
           nx51272z2), .clrn (reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0)
           , .sload (1'b0)) ;
    dffeas yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0_ (.q (
           yes_uart_u_uart_TxBitCnt[0]), .d (nx51272z1), .clk (clk), .ena (
           nx51272z2), .clrn (reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0)
           , .sload (1'b0)) ;
    dffeas yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_3_ (.q (
           yes_uart_u_uart_RxBitCnt[3]), .d (nx43035z1), .clk (clk), .ena (
           nx46026z3), .clrn (reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0)
           , .sload (1'b0)) ;
    dffeas yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_2_ (.q (
           yes_uart_u_uart_RxBitCnt[2]), .d (nx44032z1), .clk (clk), .ena (
           nx46026z3), .clrn (reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0)
           , .sload (1'b0)) ;
    dffeas yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1_ (.q (
           yes_uart_u_uart_RxBitCnt[1]), .d (nx45029z1), .clk (clk), .ena (
           nx46026z3), .clrn (reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0)
           , .sload (1'b0)) ;
    dffeas yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0_ (.q (
           yes_uart_u_uart_RxBitCnt[0]), .d (nx46026z1), .clk (clk), .ena (
           nx46026z3), .clrn (reset_n), .prn (PWR), .asdata (1'b0), .sclr (1'b0)
           , .sload (1'b0)) ;
    fiftyfivenm_lcell_comb ix46918z7096 (.combout (nx46918z2), .dataa (nx46918z3
                           ), .datab (nx46918z5), .datac (
                           yes_uart_u_uart_TxFSM[1]), .datad (
                           yes_uart_u_uart_TopTx)) ;
                           defparam ix46918z7096.lut_mask = 16'h2cec;
    fiftyfivenm_lcell_comb ix46976z7095 (.combout (u_lab3_p_1n7s3f1[7]), .dataa (
                           nx46976z1), .datab (u_lab3_column[3]), .datac (
                           nx46976z6), .datad (nx46976z8)) ;
                           defparam ix46976z7095.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix63307z7095 (.combout (u_lab3_p_1n7s3f1[6]), .dataa (
                           nx63307z1), .datab (u_lab3_column[3]), .datac (
                           nx63307z6), .datad (nx63307z8)) ;
                           defparam ix63307z7095.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix33377z7095 (.combout (u_lab3_p_1n7s3f1[5]), .dataa (
                           nx33377z1), .datab (u_lab3_column[3]), .datac (
                           nx33377z6), .datad (nx33377z8)) ;
                           defparam ix33377z7095.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix64525z7095 (.combout (u_lab3_p_1n7s3f1[4]), .dataa (
                           nx64525z1), .datab (u_lab3_column[3]), .datac (
                           nx64525z6), .datad (nx64525z8)) ;
                           defparam ix64525z7095.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix17342z7095 (.combout (u_lab3_p_1n7s3f1[3]), .dataa (
                           nx17342z1), .datab (u_lab3_column[3]), .datac (
                           nx17342z6), .datad (nx17342z8)) ;
                           defparam ix17342z7095.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix13806z7095 (.combout (u_lab3_p_1n7s3f1[2]), .dataa (
                           nx13806z1), .datab (u_lab3_column[3]), .datac (
                           nx13806z6), .datad (nx13806z8)) ;
                           defparam ix13806z7095.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix63011z7095 (.combout (u_lab3_p_1n7s3f1[1]), .dataa (
                           nx63011z1), .datab (u_lab3_column[3]), .datac (
                           nx63011z6), .datad (nx63011z8)) ;
                           defparam ix63011z7095.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix36913z7095 (.combout (u_lab3_p_1n7s3f1[0]), .dataa (
                           nx36913z1), .datab (u_lab3_column[3]), .datac (
                           nx36913z6), .datad (nx36913z8)) ;
                           defparam ix36913z7095.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix46976z7105 (.combout (u_lab3_p_1n7s3f2[7]), .dataa (
                           nx46976z10), .datab (u_lab3_column[3]), .datac (
                           nx46976z15), .datad (nx46976z17)) ;
                           defparam ix46976z7105.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix63307z7105 (.combout (u_lab3_p_1n7s3f2[6]), .dataa (
                           nx63307z10), .datab (u_lab3_column[3]), .datac (
                           nx63307z15), .datad (nx63307z17)) ;
                           defparam ix63307z7105.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix33377z7105 (.combout (u_lab3_p_1n7s3f2[5]), .dataa (
                           nx33377z10), .datab (u_lab3_column[3]), .datac (
                           nx33377z15), .datad (nx33377z17)) ;
                           defparam ix33377z7105.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix64525z7105 (.combout (u_lab3_p_1n7s3f2[4]), .dataa (
                           nx64525z10), .datab (u_lab3_column[3]), .datac (
                           nx64525z15), .datad (nx64525z17)) ;
                           defparam ix64525z7105.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix17342z7105 (.combout (u_lab3_p_1n7s3f2[3]), .dataa (
                           nx17342z10), .datab (u_lab3_column[3]), .datac (
                           nx17342z15), .datad (nx17342z17)) ;
                           defparam ix17342z7105.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix13806z7105 (.combout (u_lab3_p_1n7s3f2[2]), .dataa (
                           nx13806z10), .datab (u_lab3_column[3]), .datac (
                           nx13806z15), .datad (nx13806z17)) ;
                           defparam ix13806z7105.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix63011z7105 (.combout (u_lab3_p_1n7s3f2[1]), .dataa (
                           nx63011z10), .datab (u_lab3_column[3]), .datac (
                           nx63011z15), .datad (nx63011z17)) ;
                           defparam ix63011z7105.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix36913z7105 (.combout (u_lab3_p_1n7s3f2[0]), .dataa (
                           nx36913z10), .datab (u_lab3_column[3]), .datac (
                           nx36913z15), .datad (nx36913z17)) ;
                           defparam ix36913z7105.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix46918z7099 (.combout (nx46918z5), .dataa (
                           yes_uart_u_uart_TxFSM[0]), .datab (
                           yes_uart_u_uart_TxFSM[1]), .datac (
                           yes_uart_u_uart_TopTx), .datad (byte_valid)) ;
                           defparam ix46918z7099.lut_mask = 16'h8a9b;
    fiftyfivenm_lcell_comb ix36913z7103 (.combout (nx36913z8), .dataa (nx36913z9
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_14_[0]), .datad (u_lab3_minuend_15_[0]
                           )) ;
                           defparam ix36913z7103.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix36913z7101 (.combout (nx36913z6), .dataa (nx36913z7
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_10_[0]), .datad (u_lab3_minuend_11_[0]
                           )) ;
                           defparam ix36913z7101.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix36913z7099 (.combout (nx36913z4), .dataa (nx36913z5
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_6_[0]), .datad (u_lab3_minuend_7_[0])
                           ) ;
                           defparam ix36913z7099.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix36913z7097 (.combout (nx36913z2), .dataa (nx36913z3
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_2_[0]), .datad (u_lab3_minuend_3_[0])
                           ) ;
                           defparam ix36913z7097.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix36913z7098 (.combout (nx36913z3), .dataa (
                           u_lab3_minuend_0_[0]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_1_[0])) ;
                           defparam ix36913z7098.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix36913z7100 (.combout (nx36913z5), .dataa (
                           u_lab3_minuend_4_[0]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_5_[0])) ;
                           defparam ix36913z7100.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix36913z7102 (.combout (nx36913z7), .dataa (
                           u_lab3_minuend_8_[0]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_9_[0])) ;
                           defparam ix36913z7102.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix36913z7104 (.combout (nx36913z9), .dataa (
                           u_lab3_minuend_12_[0]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_13_[0])) ;
                           defparam ix36913z7104.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix36913z7096 (.combout (nx36913z1), .dataa (nx36913z2
                           ), .datab (u_lab3_column[2]), .datac (
                           u_lab3_column[3]), .datad (nx36913z4)) ;
                           defparam ix36913z7096.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix63011z7103 (.combout (nx63011z8), .dataa (nx63011z9
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_14_[1]), .datad (u_lab3_minuend_15_[1]
                           )) ;
                           defparam ix63011z7103.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix63011z7101 (.combout (nx63011z6), .dataa (nx63011z7
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_10_[1]), .datad (u_lab3_minuend_11_[1]
                           )) ;
                           defparam ix63011z7101.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix63011z7099 (.combout (nx63011z4), .dataa (nx63011z5
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_6_[1]), .datad (u_lab3_minuend_7_[1])
                           ) ;
                           defparam ix63011z7099.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix63011z7097 (.combout (nx63011z2), .dataa (nx63011z3
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_2_[1]), .datad (u_lab3_minuend_3_[1])
                           ) ;
                           defparam ix63011z7097.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix63011z7098 (.combout (nx63011z3), .dataa (
                           u_lab3_minuend_0_[1]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_1_[1])) ;
                           defparam ix63011z7098.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix63011z7100 (.combout (nx63011z5), .dataa (
                           u_lab3_minuend_4_[1]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_5_[1])) ;
                           defparam ix63011z7100.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix63011z7102 (.combout (nx63011z7), .dataa (
                           u_lab3_minuend_8_[1]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_9_[1])) ;
                           defparam ix63011z7102.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix63011z7104 (.combout (nx63011z9), .dataa (
                           u_lab3_minuend_12_[1]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_13_[1])) ;
                           defparam ix63011z7104.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix63011z7096 (.combout (nx63011z1), .dataa (nx63011z2
                           ), .datab (u_lab3_column[2]), .datac (
                           u_lab3_column[3]), .datad (nx63011z4)) ;
                           defparam ix63011z7096.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix13806z7103 (.combout (nx13806z8), .dataa (nx13806z9
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_14_[2]), .datad (u_lab3_minuend_15_[2]
                           )) ;
                           defparam ix13806z7103.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix13806z7101 (.combout (nx13806z6), .dataa (nx13806z7
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_10_[2]), .datad (u_lab3_minuend_11_[2]
                           )) ;
                           defparam ix13806z7101.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix13806z7099 (.combout (nx13806z4), .dataa (nx13806z5
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_6_[2]), .datad (u_lab3_minuend_7_[2])
                           ) ;
                           defparam ix13806z7099.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix13806z7097 (.combout (nx13806z2), .dataa (nx13806z3
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_2_[2]), .datad (u_lab3_minuend_3_[2])
                           ) ;
                           defparam ix13806z7097.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix13806z7098 (.combout (nx13806z3), .dataa (
                           u_lab3_minuend_0_[2]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_1_[2])) ;
                           defparam ix13806z7098.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix13806z7100 (.combout (nx13806z5), .dataa (
                           u_lab3_minuend_4_[2]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_5_[2])) ;
                           defparam ix13806z7100.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix13806z7102 (.combout (nx13806z7), .dataa (
                           u_lab3_minuend_8_[2]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_9_[2])) ;
                           defparam ix13806z7102.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix13806z7104 (.combout (nx13806z9), .dataa (
                           u_lab3_minuend_12_[2]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_13_[2])) ;
                           defparam ix13806z7104.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix13806z7096 (.combout (nx13806z1), .dataa (nx13806z2
                           ), .datab (u_lab3_column[2]), .datac (
                           u_lab3_column[3]), .datad (nx13806z4)) ;
                           defparam ix13806z7096.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix17342z7103 (.combout (nx17342z8), .dataa (nx17342z9
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_14_[3]), .datad (u_lab3_minuend_15_[3]
                           )) ;
                           defparam ix17342z7103.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix17342z7101 (.combout (nx17342z6), .dataa (nx17342z7
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_10_[3]), .datad (u_lab3_minuend_11_[3]
                           )) ;
                           defparam ix17342z7101.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix17342z7099 (.combout (nx17342z4), .dataa (nx17342z5
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_6_[3]), .datad (u_lab3_minuend_7_[3])
                           ) ;
                           defparam ix17342z7099.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix17342z7097 (.combout (nx17342z2), .dataa (nx17342z3
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_2_[3]), .datad (u_lab3_minuend_3_[3])
                           ) ;
                           defparam ix17342z7097.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix17342z7098 (.combout (nx17342z3), .dataa (
                           u_lab3_minuend_0_[3]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_1_[3])) ;
                           defparam ix17342z7098.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix17342z7100 (.combout (nx17342z5), .dataa (
                           u_lab3_minuend_4_[3]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_5_[3])) ;
                           defparam ix17342z7100.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix17342z7102 (.combout (nx17342z7), .dataa (
                           u_lab3_minuend_8_[3]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_9_[3])) ;
                           defparam ix17342z7102.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix17342z7104 (.combout (nx17342z9), .dataa (
                           u_lab3_minuend_12_[3]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_13_[3])) ;
                           defparam ix17342z7104.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix17342z7096 (.combout (nx17342z1), .dataa (nx17342z2
                           ), .datab (u_lab3_column[2]), .datac (
                           u_lab3_column[3]), .datad (nx17342z4)) ;
                           defparam ix17342z7096.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix64525z7103 (.combout (nx64525z8), .dataa (nx64525z9
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_14_[4]), .datad (u_lab3_minuend_15_[4]
                           )) ;
                           defparam ix64525z7103.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix64525z7101 (.combout (nx64525z6), .dataa (nx64525z7
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_10_[4]), .datad (u_lab3_minuend_11_[4]
                           )) ;
                           defparam ix64525z7101.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix64525z7099 (.combout (nx64525z4), .dataa (nx64525z5
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_6_[4]), .datad (u_lab3_minuend_7_[4])
                           ) ;
                           defparam ix64525z7099.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix64525z7097 (.combout (nx64525z2), .dataa (nx64525z3
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_2_[4]), .datad (u_lab3_minuend_3_[4])
                           ) ;
                           defparam ix64525z7097.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix64525z7098 (.combout (nx64525z3), .dataa (
                           u_lab3_minuend_0_[4]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_1_[4])) ;
                           defparam ix64525z7098.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix64525z7100 (.combout (nx64525z5), .dataa (
                           u_lab3_minuend_4_[4]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_5_[4])) ;
                           defparam ix64525z7100.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix64525z7102 (.combout (nx64525z7), .dataa (
                           u_lab3_minuend_8_[4]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_9_[4])) ;
                           defparam ix64525z7102.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix64525z7104 (.combout (nx64525z9), .dataa (
                           u_lab3_minuend_12_[4]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_13_[4])) ;
                           defparam ix64525z7104.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix64525z7096 (.combout (nx64525z1), .dataa (nx64525z2
                           ), .datab (u_lab3_column[2]), .datac (
                           u_lab3_column[3]), .datad (nx64525z4)) ;
                           defparam ix64525z7096.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix33377z7103 (.combout (nx33377z8), .dataa (nx33377z9
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_14_[5]), .datad (u_lab3_minuend_15_[5]
                           )) ;
                           defparam ix33377z7103.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix33377z7101 (.combout (nx33377z6), .dataa (nx33377z7
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_10_[5]), .datad (u_lab3_minuend_11_[5]
                           )) ;
                           defparam ix33377z7101.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix33377z7099 (.combout (nx33377z4), .dataa (nx33377z5
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_6_[5]), .datad (u_lab3_minuend_7_[5])
                           ) ;
                           defparam ix33377z7099.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix33377z7097 (.combout (nx33377z2), .dataa (nx33377z3
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_2_[5]), .datad (u_lab3_minuend_3_[5])
                           ) ;
                           defparam ix33377z7097.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix33377z7098 (.combout (nx33377z3), .dataa (
                           u_lab3_minuend_0_[5]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_1_[5])) ;
                           defparam ix33377z7098.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix33377z7100 (.combout (nx33377z5), .dataa (
                           u_lab3_minuend_4_[5]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_5_[5])) ;
                           defparam ix33377z7100.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix33377z7102 (.combout (nx33377z7), .dataa (
                           u_lab3_minuend_8_[5]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_9_[5])) ;
                           defparam ix33377z7102.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix33377z7104 (.combout (nx33377z9), .dataa (
                           u_lab3_minuend_12_[5]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_13_[5])) ;
                           defparam ix33377z7104.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix33377z7096 (.combout (nx33377z1), .dataa (nx33377z2
                           ), .datab (u_lab3_column[2]), .datac (
                           u_lab3_column[3]), .datad (nx33377z4)) ;
                           defparam ix33377z7096.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix63307z7103 (.combout (nx63307z8), .dataa (nx63307z9
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_14_[6]), .datad (u_lab3_minuend_15_[6]
                           )) ;
                           defparam ix63307z7103.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix63307z7101 (.combout (nx63307z6), .dataa (nx63307z7
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_10_[6]), .datad (u_lab3_minuend_11_[6]
                           )) ;
                           defparam ix63307z7101.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix63307z7099 (.combout (nx63307z4), .dataa (nx63307z5
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_6_[6]), .datad (u_lab3_minuend_7_[6])
                           ) ;
                           defparam ix63307z7099.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix63307z7097 (.combout (nx63307z2), .dataa (nx63307z3
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_2_[6]), .datad (u_lab3_minuend_3_[6])
                           ) ;
                           defparam ix63307z7097.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix63307z7098 (.combout (nx63307z3), .dataa (
                           u_lab3_minuend_0_[6]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_1_[6])) ;
                           defparam ix63307z7098.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix63307z7100 (.combout (nx63307z5), .dataa (
                           u_lab3_minuend_4_[6]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_5_[6])) ;
                           defparam ix63307z7100.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix63307z7102 (.combout (nx63307z7), .dataa (
                           u_lab3_minuend_8_[6]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_9_[6])) ;
                           defparam ix63307z7102.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix63307z7104 (.combout (nx63307z9), .dataa (
                           u_lab3_minuend_12_[6]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_13_[6])) ;
                           defparam ix63307z7104.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix63307z7096 (.combout (nx63307z1), .dataa (nx63307z2
                           ), .datab (u_lab3_column[2]), .datac (
                           u_lab3_column[3]), .datad (nx63307z4)) ;
                           defparam ix63307z7096.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix46976z7103 (.combout (nx46976z8), .dataa (nx46976z9
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_14_[7]), .datad (u_lab3_minuend_15_[7]
                           )) ;
                           defparam ix46976z7103.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix46976z7101 (.combout (nx46976z6), .dataa (nx46976z7
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_10_[7]), .datad (u_lab3_minuend_11_[7]
                           )) ;
                           defparam ix46976z7101.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix46976z7099 (.combout (nx46976z4), .dataa (nx46976z5
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_6_[7]), .datad (u_lab3_minuend_7_[7])
                           ) ;
                           defparam ix46976z7099.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix46976z7097 (.combout (nx46976z2), .dataa (nx46976z3
                           ), .datab (u_lab3_column[1]), .datac (
                           u_lab3_minuend_2_[7]), .datad (u_lab3_minuend_3_[7])
                           ) ;
                           defparam ix46976z7097.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix46976z7098 (.combout (nx46976z3), .dataa (
                           u_lab3_minuend_0_[7]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_1_[7])) ;
                           defparam ix46976z7098.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix46976z7100 (.combout (nx46976z5), .dataa (
                           u_lab3_minuend_4_[7]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_5_[7])) ;
                           defparam ix46976z7100.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix46976z7102 (.combout (nx46976z7), .dataa (
                           u_lab3_minuend_8_[7]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_9_[7])) ;
                           defparam ix46976z7102.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix46976z7104 (.combout (nx46976z9), .dataa (
                           u_lab3_minuend_12_[7]), .datab (u_lab3_column[0]), .datac (
                           u_lab3_column[1]), .datad (u_lab3_minuend_13_[7])) ;
                           defparam ix46976z7104.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix46976z7096 (.combout (nx46976z1), .dataa (nx46976z2
                           ), .datab (u_lab3_column[2]), .datac (
                           u_lab3_column[3]), .datad (nx46976z4)) ;
                           defparam ix46976z7096.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix36913z7113 (.combout (nx36913z17), .dataa (
                           nx36913z18), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_14_[0]), .datad (
                           u_lab3_subtrahend_15_[0])) ;
                           defparam ix36913z7113.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix36913z7111 (.combout (nx36913z15), .dataa (
                           nx36913z16), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_10_[0]), .datad (
                           u_lab3_subtrahend_11_[0])) ;
                           defparam ix36913z7111.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix36913z7109 (.combout (nx36913z13), .dataa (
                           nx36913z14), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_6_[0]), .datad (
                           u_lab3_subtrahend_7_[0])) ;
                           defparam ix36913z7109.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix36913z7107 (.combout (nx36913z11), .dataa (
                           nx36913z12), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_2_[0]), .datad (
                           u_lab3_subtrahend_3_[0])) ;
                           defparam ix36913z7107.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix36913z7108 (.combout (nx36913z12), .dataa (
                           u_lab3_subtrahend_0_[0]), .datab (u_lab3_column[0]), 
                           .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_1_[0])) ;
                           defparam ix36913z7108.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix36913z7110 (.combout (nx36913z14), .dataa (
                           u_lab3_subtrahend_4_[0]), .datab (u_lab3_column[0]), 
                           .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_5_[0])) ;
                           defparam ix36913z7110.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix36913z7112 (.combout (nx36913z16), .dataa (
                           u_lab3_subtrahend_8_[0]), .datab (u_lab3_column[0]), 
                           .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_9_[0])) ;
                           defparam ix36913z7112.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix36913z7114 (.combout (nx36913z18), .dataa (
                           u_lab3_subtrahend_12_[0]), .datab (u_lab3_column[0])
                           , .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_13_[0])) ;
                           defparam ix36913z7114.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix36913z7106 (.combout (nx36913z10), .dataa (
                           nx36913z11), .datab (u_lab3_column[2]), .datac (
                           u_lab3_column[3]), .datad (nx36913z13)) ;
                           defparam ix36913z7106.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix63011z7113 (.combout (nx63011z17), .dataa (
                           nx63011z18), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_14_[1]), .datad (
                           u_lab3_subtrahend_15_[1])) ;
                           defparam ix63011z7113.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix63011z7111 (.combout (nx63011z15), .dataa (
                           nx63011z16), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_10_[1]), .datad (
                           u_lab3_subtrahend_11_[1])) ;
                           defparam ix63011z7111.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix63011z7109 (.combout (nx63011z13), .dataa (
                           nx63011z14), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_6_[1]), .datad (
                           u_lab3_subtrahend_7_[1])) ;
                           defparam ix63011z7109.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix63011z7107 (.combout (nx63011z11), .dataa (
                           nx63011z12), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_2_[1]), .datad (
                           u_lab3_subtrahend_3_[1])) ;
                           defparam ix63011z7107.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix63011z7108 (.combout (nx63011z12), .dataa (
                           u_lab3_subtrahend_0_[1]), .datab (u_lab3_column[0]), 
                           .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_1_[1])) ;
                           defparam ix63011z7108.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix63011z7110 (.combout (nx63011z14), .dataa (
                           u_lab3_subtrahend_4_[1]), .datab (u_lab3_column[0]), 
                           .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_5_[1])) ;
                           defparam ix63011z7110.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix63011z7112 (.combout (nx63011z16), .dataa (
                           u_lab3_subtrahend_8_[1]), .datab (u_lab3_column[0]), 
                           .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_9_[1])) ;
                           defparam ix63011z7112.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix63011z7114 (.combout (nx63011z18), .dataa (
                           u_lab3_subtrahend_12_[1]), .datab (u_lab3_column[0])
                           , .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_13_[1])) ;
                           defparam ix63011z7114.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix63011z7106 (.combout (nx63011z10), .dataa (
                           nx63011z11), .datab (u_lab3_column[2]), .datac (
                           u_lab3_column[3]), .datad (nx63011z13)) ;
                           defparam ix63011z7106.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix13806z7113 (.combout (nx13806z17), .dataa (
                           nx13806z18), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_14_[2]), .datad (
                           u_lab3_subtrahend_15_[2])) ;
                           defparam ix13806z7113.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix13806z7111 (.combout (nx13806z15), .dataa (
                           nx13806z16), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_10_[2]), .datad (
                           u_lab3_subtrahend_11_[2])) ;
                           defparam ix13806z7111.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix13806z7109 (.combout (nx13806z13), .dataa (
                           nx13806z14), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_6_[2]), .datad (
                           u_lab3_subtrahend_7_[2])) ;
                           defparam ix13806z7109.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix13806z7107 (.combout (nx13806z11), .dataa (
                           nx13806z12), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_2_[2]), .datad (
                           u_lab3_subtrahend_3_[2])) ;
                           defparam ix13806z7107.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix13806z7108 (.combout (nx13806z12), .dataa (
                           u_lab3_subtrahend_0_[2]), .datab (u_lab3_column[0]), 
                           .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_1_[2])) ;
                           defparam ix13806z7108.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix13806z7110 (.combout (nx13806z14), .dataa (
                           u_lab3_subtrahend_4_[2]), .datab (u_lab3_column[0]), 
                           .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_5_[2])) ;
                           defparam ix13806z7110.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix13806z7112 (.combout (nx13806z16), .dataa (
                           u_lab3_subtrahend_8_[2]), .datab (u_lab3_column[0]), 
                           .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_9_[2])) ;
                           defparam ix13806z7112.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix13806z7114 (.combout (nx13806z18), .dataa (
                           u_lab3_subtrahend_12_[2]), .datab (u_lab3_column[0])
                           , .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_13_[2])) ;
                           defparam ix13806z7114.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix13806z7106 (.combout (nx13806z10), .dataa (
                           nx13806z11), .datab (u_lab3_column[2]), .datac (
                           u_lab3_column[3]), .datad (nx13806z13)) ;
                           defparam ix13806z7106.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix17342z7113 (.combout (nx17342z17), .dataa (
                           nx17342z18), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_14_[3]), .datad (
                           u_lab3_subtrahend_15_[3])) ;
                           defparam ix17342z7113.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix17342z7111 (.combout (nx17342z15), .dataa (
                           nx17342z16), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_10_[3]), .datad (
                           u_lab3_subtrahend_11_[3])) ;
                           defparam ix17342z7111.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix17342z7109 (.combout (nx17342z13), .dataa (
                           nx17342z14), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_6_[3]), .datad (
                           u_lab3_subtrahend_7_[3])) ;
                           defparam ix17342z7109.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix17342z7107 (.combout (nx17342z11), .dataa (
                           nx17342z12), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_2_[3]), .datad (
                           u_lab3_subtrahend_3_[3])) ;
                           defparam ix17342z7107.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix17342z7108 (.combout (nx17342z12), .dataa (
                           u_lab3_subtrahend_0_[3]), .datab (u_lab3_column[0]), 
                           .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_1_[3])) ;
                           defparam ix17342z7108.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix17342z7110 (.combout (nx17342z14), .dataa (
                           u_lab3_subtrahend_4_[3]), .datab (u_lab3_column[0]), 
                           .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_5_[3])) ;
                           defparam ix17342z7110.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix17342z7112 (.combout (nx17342z16), .dataa (
                           u_lab3_subtrahend_8_[3]), .datab (u_lab3_column[0]), 
                           .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_9_[3])) ;
                           defparam ix17342z7112.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix17342z7114 (.combout (nx17342z18), .dataa (
                           u_lab3_subtrahend_12_[3]), .datab (u_lab3_column[0])
                           , .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_13_[3])) ;
                           defparam ix17342z7114.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix17342z7106 (.combout (nx17342z10), .dataa (
                           nx17342z11), .datab (u_lab3_column[2]), .datac (
                           u_lab3_column[3]), .datad (nx17342z13)) ;
                           defparam ix17342z7106.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix64525z7113 (.combout (nx64525z17), .dataa (
                           nx64525z18), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_14_[4]), .datad (
                           u_lab3_subtrahend_15_[4])) ;
                           defparam ix64525z7113.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix64525z7111 (.combout (nx64525z15), .dataa (
                           nx64525z16), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_10_[4]), .datad (
                           u_lab3_subtrahend_11_[4])) ;
                           defparam ix64525z7111.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix64525z7109 (.combout (nx64525z13), .dataa (
                           nx64525z14), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_6_[4]), .datad (
                           u_lab3_subtrahend_7_[4])) ;
                           defparam ix64525z7109.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix64525z7107 (.combout (nx64525z11), .dataa (
                           nx64525z12), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_2_[4]), .datad (
                           u_lab3_subtrahend_3_[4])) ;
                           defparam ix64525z7107.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix64525z7108 (.combout (nx64525z12), .dataa (
                           u_lab3_subtrahend_0_[4]), .datab (u_lab3_column[0]), 
                           .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_1_[4])) ;
                           defparam ix64525z7108.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix64525z7110 (.combout (nx64525z14), .dataa (
                           u_lab3_subtrahend_4_[4]), .datab (u_lab3_column[0]), 
                           .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_5_[4])) ;
                           defparam ix64525z7110.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix64525z7112 (.combout (nx64525z16), .dataa (
                           u_lab3_subtrahend_8_[4]), .datab (u_lab3_column[0]), 
                           .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_9_[4])) ;
                           defparam ix64525z7112.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix64525z7114 (.combout (nx64525z18), .dataa (
                           u_lab3_subtrahend_12_[4]), .datab (u_lab3_column[0])
                           , .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_13_[4])) ;
                           defparam ix64525z7114.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix64525z7106 (.combout (nx64525z10), .dataa (
                           nx64525z11), .datab (u_lab3_column[2]), .datac (
                           u_lab3_column[3]), .datad (nx64525z13)) ;
                           defparam ix64525z7106.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix33377z7113 (.combout (nx33377z17), .dataa (
                           nx33377z18), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_14_[5]), .datad (
                           u_lab3_subtrahend_15_[5])) ;
                           defparam ix33377z7113.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix33377z7111 (.combout (nx33377z15), .dataa (
                           nx33377z16), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_10_[5]), .datad (
                           u_lab3_subtrahend_11_[5])) ;
                           defparam ix33377z7111.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix33377z7109 (.combout (nx33377z13), .dataa (
                           nx33377z14), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_6_[5]), .datad (
                           u_lab3_subtrahend_7_[5])) ;
                           defparam ix33377z7109.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix33377z7107 (.combout (nx33377z11), .dataa (
                           nx33377z12), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_2_[5]), .datad (
                           u_lab3_subtrahend_3_[5])) ;
                           defparam ix33377z7107.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix33377z7108 (.combout (nx33377z12), .dataa (
                           u_lab3_subtrahend_0_[5]), .datab (u_lab3_column[0]), 
                           .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_1_[5])) ;
                           defparam ix33377z7108.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix33377z7110 (.combout (nx33377z14), .dataa (
                           u_lab3_subtrahend_4_[5]), .datab (u_lab3_column[0]), 
                           .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_5_[5])) ;
                           defparam ix33377z7110.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix33377z7112 (.combout (nx33377z16), .dataa (
                           u_lab3_subtrahend_8_[5]), .datab (u_lab3_column[0]), 
                           .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_9_[5])) ;
                           defparam ix33377z7112.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix33377z7114 (.combout (nx33377z18), .dataa (
                           u_lab3_subtrahend_12_[5]), .datab (u_lab3_column[0])
                           , .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_13_[5])) ;
                           defparam ix33377z7114.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix33377z7106 (.combout (nx33377z10), .dataa (
                           nx33377z11), .datab (u_lab3_column[2]), .datac (
                           u_lab3_column[3]), .datad (nx33377z13)) ;
                           defparam ix33377z7106.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix63307z7113 (.combout (nx63307z17), .dataa (
                           nx63307z18), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_14_[6]), .datad (
                           u_lab3_subtrahend_15_[6])) ;
                           defparam ix63307z7113.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix63307z7111 (.combout (nx63307z15), .dataa (
                           nx63307z16), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_10_[6]), .datad (
                           u_lab3_subtrahend_11_[6])) ;
                           defparam ix63307z7111.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix63307z7109 (.combout (nx63307z13), .dataa (
                           nx63307z14), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_6_[6]), .datad (
                           u_lab3_subtrahend_7_[6])) ;
                           defparam ix63307z7109.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix63307z7107 (.combout (nx63307z11), .dataa (
                           nx63307z12), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_2_[6]), .datad (
                           u_lab3_subtrahend_3_[6])) ;
                           defparam ix63307z7107.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix63307z7108 (.combout (nx63307z12), .dataa (
                           u_lab3_subtrahend_0_[6]), .datab (u_lab3_column[0]), 
                           .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_1_[6])) ;
                           defparam ix63307z7108.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix63307z7110 (.combout (nx63307z14), .dataa (
                           u_lab3_subtrahend_4_[6]), .datab (u_lab3_column[0]), 
                           .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_5_[6])) ;
                           defparam ix63307z7110.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix63307z7112 (.combout (nx63307z16), .dataa (
                           u_lab3_subtrahend_8_[6]), .datab (u_lab3_column[0]), 
                           .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_9_[6])) ;
                           defparam ix63307z7112.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix63307z7114 (.combout (nx63307z18), .dataa (
                           u_lab3_subtrahend_12_[6]), .datab (u_lab3_column[0])
                           , .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_13_[6])) ;
                           defparam ix63307z7114.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix63307z7106 (.combout (nx63307z10), .dataa (
                           nx63307z11), .datab (u_lab3_column[2]), .datac (
                           u_lab3_column[3]), .datad (nx63307z13)) ;
                           defparam ix63307z7106.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix46976z7113 (.combout (nx46976z17), .dataa (
                           nx46976z18), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_14_[7]), .datad (
                           u_lab3_subtrahend_15_[7])) ;
                           defparam ix46976z7113.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix46976z7111 (.combout (nx46976z15), .dataa (
                           nx46976z16), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_10_[7]), .datad (
                           u_lab3_subtrahend_11_[7])) ;
                           defparam ix46976z7111.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix46976z7109 (.combout (nx46976z13), .dataa (
                           nx46976z14), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_6_[7]), .datad (
                           u_lab3_subtrahend_7_[7])) ;
                           defparam ix46976z7109.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix46976z7107 (.combout (nx46976z11), .dataa (
                           nx46976z12), .datab (u_lab3_column[1]), .datac (
                           u_lab3_subtrahend_2_[7]), .datad (
                           u_lab3_subtrahend_3_[7])) ;
                           defparam ix46976z7107.lut_mask = 16'hea62;
    fiftyfivenm_lcell_comb ix46976z7108 (.combout (nx46976z12), .dataa (
                           u_lab3_subtrahend_0_[7]), .datab (u_lab3_column[0]), 
                           .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_1_[7])) ;
                           defparam ix46976z7108.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix46976z7110 (.combout (nx46976z14), .dataa (
                           u_lab3_subtrahend_4_[7]), .datab (u_lab3_column[0]), 
                           .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_5_[7])) ;
                           defparam ix46976z7110.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix46976z7112 (.combout (nx46976z16), .dataa (
                           u_lab3_subtrahend_8_[7]), .datab (u_lab3_column[0]), 
                           .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_9_[7])) ;
                           defparam ix46976z7112.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix46976z7114 (.combout (nx46976z18), .dataa (
                           u_lab3_subtrahend_12_[7]), .datab (u_lab3_column[0])
                           , .datac (u_lab3_column[1]), .datad (
                           u_lab3_subtrahend_13_[7])) ;
                           defparam ix46976z7114.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix46976z7106 (.combout (nx46976z10), .dataa (
                           nx46976z11), .datab (u_lab3_column[2]), .datac (
                           u_lab3_column[3]), .datad (nx46976z13)) ;
                           defparam ix46976z7106.lut_mask = 16'hcec2;
    fiftyfivenm_lcell_comb ix51544z7112 (.combout (seg7_num[7]), .dataa (1'b1), 
                           .datab (nx51544z11), .datac (o_data[7]), .datad (
                           sw[0])) ;
                           defparam ix51544z7112.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix51544z7110 (.combout (seg7_num[6]), .dataa (1'b1), 
                           .datab (nx51544z10), .datac (o_data[6]), .datad (
                           sw[0])) ;
                           defparam ix51544z7110.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix51544z7108 (.combout (seg7_num[5]), .dataa (1'b1), 
                           .datab (nx51544z9), .datac (o_data[5]), .datad (sw[0]
                           )) ;
                           defparam ix51544z7108.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix51544z7106 (.combout (seg7_num[4]), .dataa (1'b1), 
                           .datab (nx51544z8), .datac (o_data[4]), .datad (sw[0]
                           )) ;
                           defparam ix51544z7106.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix51544z7103 (.combout (seg7_num[3]), .dataa (1'b1), 
                           .datab (nx51544z6), .datac (o_data[3]), .datad (sw[0]
                           )) ;
                           defparam ix51544z7103.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix51544z7101 (.combout (seg7_num[2]), .dataa (1'b1), 
                           .datab (nx51544z5), .datac (o_data[2]), .datad (sw[0]
                           )) ;
                           defparam ix51544z7101.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix51544z7099 (.combout (seg7_num[1]), .dataa (1'b1), 
                           .datab (nx51544z4), .datac (o_data[1]), .datad (sw[0]
                           )) ;
                           defparam ix51544z7099.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix51544z7097 (.combout (seg7_num[0]), .dataa (1'b1), 
                           .datab (nx51544z3), .datac (o_data[0]), .datad (sw[0]
                           )) ;
                           defparam ix51544z7097.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix8546z7095 (.combout (byte_reg_2n1ss1[7]), .dataa (
                           1'b1), .datab (byte_count[7]), .datac (i_data[7]), .datad (
                           sw[7])) ;
                           defparam ix8546z7095.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix9543z7095 (.combout (byte_reg_2n1ss1[6]), .dataa (
                           1'b1), .datab (byte_count[6]), .datac (i_data[6]), .datad (
                           sw[7])) ;
                           defparam ix9543z7095.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix10540z7095 (.combout (byte_reg_2n1ss1[5]), .dataa (
                           1'b1), .datab (byte_count[5]), .datac (i_data[5]), .datad (
                           sw[7])) ;
                           defparam ix10540z7095.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix11537z7095 (.combout (byte_reg_2n1ss1[4]), .dataa (
                           1'b1), .datab (byte_count[4]), .datac (i_data[4]), .datad (
                           sw[7])) ;
                           defparam ix11537z7095.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix12534z7095 (.combout (byte_reg_2n1ss1[3]), .dataa (
                           1'b1), .datab (byte_count[3]), .datac (i_data[3]), .datad (
                           sw[7])) ;
                           defparam ix12534z7095.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix13531z7095 (.combout (byte_reg_2n1ss1[2]), .dataa (
                           1'b1), .datab (byte_count[2]), .datac (i_data[2]), .datad (
                           sw[7])) ;
                           defparam ix13531z7095.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix14528z7095 (.combout (byte_reg_2n1ss1[1]), .dataa (
                           1'b1), .datab (byte_count[1]), .datac (i_data[1]), .datad (
                           sw[7])) ;
                           defparam ix14528z7095.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix15525z7095 (.combout (byte_reg_2n1ss1[0]), .dataa (
                           1'b1), .datab (byte_count[0]), .datac (i_data[0]), .datad (
                           sw[7])) ;
                           defparam ix15525z7095.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix60976z7095 (.combout (byte_valid_3n0r1), .dataa (
                           1'b1), .datab (byte_valid), .datac (tx_busy), .datad (
                           i_valid)) ;
                           defparam ix60976z7095.lut_mask = 16'hffc0;
    fiftyfivenm_lcell_comb ix51544z7098 (.combout (nx51544z3), .dataa (1'b1), .datab (
                           byte_count[0]), .datac (byte_reg[0]), .datad (sw[1])
                           ) ;
                           defparam ix51544z7098.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix51544z7100 (.combout (nx51544z4), .dataa (1'b1), .datab (
                           byte_count[1]), .datac (byte_reg[1]), .datad (sw[1])
                           ) ;
                           defparam ix51544z7100.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix51544z7102 (.combout (nx51544z5), .dataa (1'b1), .datab (
                           byte_count[2]), .datac (byte_reg[2]), .datad (sw[1])
                           ) ;
                           defparam ix51544z7102.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix51544z7104 (.combout (nx51544z6), .dataa (1'b1), .datab (
                           byte_count[3]), .datac (byte_reg[3]), .datad (sw[1])
                           ) ;
                           defparam ix51544z7104.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix51544z7107 (.combout (nx51544z8), .dataa (1'b1), .datab (
                           byte_count[4]), .datac (byte_reg[4]), .datad (sw[1])
                           ) ;
                           defparam ix51544z7107.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix51544z7109 (.combout (nx51544z9), .dataa (1'b1), .datab (
                           byte_count[5]), .datac (byte_reg[5]), .datad (sw[1])
                           ) ;
                           defparam ix51544z7109.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix51544z7111 (.combout (nx51544z10), .dataa (1'b1), .datab (
                           byte_count[6]), .datac (byte_reg[6]), .datad (sw[1])
                           ) ;
                           defparam ix51544z7111.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix51544z7113 (.combout (nx51544z11), .dataa (1'b1), .datab (
                           byte_count[7]), .datac (byte_reg[7]), .datad (sw[1])
                           ) ;
                           defparam ix51544z7113.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix51544z7105 (.combout (u_seg7_rtlcP1[13]), .dataa (
                           seg7_num[4]), .datab (seg7_num[5]), .datac (
                           seg7_num[6]), .datad (seg7_num[7])) ;
                           defparam ix51544z7105.lut_mask = 16'hef7c;
    fiftyfivenm_lcell_comb ix28027z7097 (.combout (u_seg7_rtlcP1[12]), .dataa (
                           seg7_num[4]), .datab (seg7_num[5]), .datac (
                           seg7_num[6]), .datad (seg7_num[7])) ;
                           defparam ix28027z7097.lut_mask = 16'hdf71;
    fiftyfivenm_lcell_comb ix7365z7097 (.combout (u_seg7_rtlcP1[11]), .dataa (
                           seg7_num[4]), .datab (seg7_num[5]), .datac (
                           seg7_num[6]), .datad (seg7_num[7])) ;
                           defparam ix7365z7097.lut_mask = 16'hfd45;
    fiftyfivenm_lcell_comb ix6368z7097 (.combout (u_seg7_rtlcP1[10]), .dataa (
                           seg7_num[4]), .datab (seg7_num[5]), .datac (
                           seg7_num[6]), .datad (seg7_num[7])) ;
                           defparam ix6368z7097.lut_mask = 16'h7b6d;
    fiftyfivenm_lcell_comb ix5371z7097 (.combout (u_seg7_rtlcP1[9]), .dataa (
                           seg7_num[4]), .datab (seg7_num[5]), .datac (
                           seg7_num[6]), .datad (seg7_num[7])) ;
                           defparam ix5371z7097.lut_mask = 16'h2ffb;
    fiftyfivenm_lcell_comb ix18625z7097 (.combout (u_seg7_rtlcP1[8]), .dataa (
                           seg7_num[4]), .datab (seg7_num[5]), .datac (
                           seg7_num[6]), .datad (seg7_num[7])) ;
                           defparam ix18625z7097.lut_mask = 16'h279f;
    fiftyfivenm_lcell_comb ix3377z7097 (.combout (u_seg7_rtlcP1[7]), .dataa (
                           seg7_num[4]), .datab (seg7_num[5]), .datac (
                           seg7_num[6]), .datad (seg7_num[7])) ;
                           defparam ix3377z7097.lut_mask = 16'hd7ed;
    fiftyfivenm_lcell_comb ix51544z7096 (.combout (u_seg7_rtlcP1[6]), .dataa (
                           seg7_num[0]), .datab (seg7_num[1]), .datac (
                           seg7_num[2]), .datad (seg7_num[3])) ;
                           defparam ix51544z7096.lut_mask = 16'hef7c;
    fiftyfivenm_lcell_comb ix28027z7096 (.combout (u_seg7_rtlcP1[5]), .dataa (
                           seg7_num[0]), .datab (seg7_num[1]), .datac (
                           seg7_num[2]), .datad (seg7_num[3])) ;
                           defparam ix28027z7096.lut_mask = 16'hdf71;
    fiftyfivenm_lcell_comb ix7365z7096 (.combout (u_seg7_rtlcP1[4]), .dataa (
                           seg7_num[0]), .datab (seg7_num[1]), .datac (
                           seg7_num[2]), .datad (seg7_num[3])) ;
                           defparam ix7365z7096.lut_mask = 16'hfd45;
    fiftyfivenm_lcell_comb ix6368z7096 (.combout (u_seg7_rtlcP1[3]), .dataa (
                           seg7_num[0]), .datab (seg7_num[1]), .datac (
                           seg7_num[2]), .datad (seg7_num[3])) ;
                           defparam ix6368z7096.lut_mask = 16'h7b6d;
    fiftyfivenm_lcell_comb ix5371z7096 (.combout (u_seg7_rtlcP1[2]), .dataa (
                           seg7_num[0]), .datab (seg7_num[1]), .datac (
                           seg7_num[2]), .datad (seg7_num[3])) ;
                           defparam ix5371z7096.lut_mask = 16'h2ffb;
    fiftyfivenm_lcell_comb ix18625z7096 (.combout (u_seg7_rtlcP1[1]), .dataa (
                           seg7_num[0]), .datab (seg7_num[1]), .datac (
                           seg7_num[2]), .datad (seg7_num[3])) ;
                           defparam ix18625z7096.lut_mask = 16'h279f;
    fiftyfivenm_lcell_comb ix3377z7096 (.combout (u_seg7_rtlcP1[0]), .dataa (
                           seg7_num[0]), .datab (seg7_num[1]), .datac (
                           seg7_num[2]), .datad (seg7_num[3])) ;
                           defparam ix3377z7096.lut_mask = 16'hd7ed;
    fiftyfivenm_lcell_comb ix7365z7095 (.combout (
                           u_seg7_u_dual_seg7_muxed_char_4_), .dataa (1'b1), .datab (
                           u_seg7_rtlcP1[4]), .datac (u_seg7_rtlcP1[11]), .datad (
                           seg7_en[1])) ;
                           defparam ix7365z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix6368z7095 (.combout (
                           u_seg7_u_dual_seg7_muxed_char_3_), .dataa (1'b1), .datab (
                           u_seg7_rtlcP1[3]), .datac (u_seg7_rtlcP1[10]), .datad (
                           seg7_en[1])) ;
                           defparam ix6368z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix5371z7095 (.combout (
                           u_seg7_u_dual_seg7_muxed_char_2_), .dataa (1'b1), .datab (
                           u_seg7_rtlcP1[2]), .datac (u_seg7_rtlcP1[9]), .datad (
                           seg7_en[1])) ;
                           defparam ix5371z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix3377z7095 (.combout (
                           u_seg7_u_dual_seg7_muxed_char_0_), .dataa (1'b1), .datab (
                           u_seg7_rtlcP1[0]), .datac (u_seg7_rtlcP1[7]), .datad (
                           seg7_en[1])) ;
                           defparam ix3377z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix60244z7095 (.combout (nx60244z1), .dataa (1'b1), .datab (
                           1'b1), .datac (u_seg7_u_dual_seg7_prev_reset), .datad (
                           reset_n)) ;
                           defparam ix60244z7095.lut_mask = 16'h000f;
    fiftyfivenm_lcell_comb ix10356z7095 (.combout (u_seg7_u_dual_seg7_load_reg)
                           , .dataa (1'b1), .datab (1'b1), .datac (
                           u_seg7_u_dual_seg7_prev_char0_en), .datad (seg7_en[1]
                           )) ;
                           defparam ix10356z7095.lut_mask = 16'hf00f;
    fiftyfivenm_lcell_comb ix22863z7095 (.combout (nx22863z1), .dataa (1'b1), .datab (
                           1'b1), .datac (nx60456z2), .datad (nx46026z2)) ;
                           defparam ix22863z7095.lut_mask = 16'hf0ff;
    fiftyfivenm_lcell_comb ix21131z7095 (.combout (
                           NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_8_), .dataa (1'b1)
                           , .datab (1'b1), .datac (yes_uart_u_uart_TxFSM[1]), .datad (
                           byte_reg[7])) ;
                           defparam ix21131z7095.lut_mask = 16'h000f;
    fiftyfivenm_lcell_comb ix22128z7095 (.combout (
                           NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_7_), .dataa (1'b1)
                           , .datab (yes_uart_u_uart_TxFSM[1]), .datac (
                           nx22128z1), .datad (byte_reg[6])) ;
                           defparam ix22128z7095.lut_mask = 16'hc0f3;
    fiftyfivenm_lcell_comb ix23125z7095 (.combout (
                           NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_6_), .dataa (1'b1)
                           , .datab (yes_uart_u_uart_TxFSM[1]), .datac (
                           nx23125z1), .datad (byte_reg[5])) ;
                           defparam ix23125z7095.lut_mask = 16'hc0f3;
    fiftyfivenm_lcell_comb ix24122z7095 (.combout (
                           NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_5_), .dataa (1'b1)
                           , .datab (yes_uart_u_uart_TxFSM[1]), .datac (
                           nx24122z1), .datad (byte_reg[4])) ;
                           defparam ix24122z7095.lut_mask = 16'hc0f3;
    fiftyfivenm_lcell_comb ix25119z7095 (.combout (
                           NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_4_), .dataa (1'b1)
                           , .datab (yes_uart_u_uart_TxFSM[1]), .datac (
                           nx25119z1), .datad (byte_reg[3])) ;
                           defparam ix25119z7095.lut_mask = 16'hc0f3;
    fiftyfivenm_lcell_comb ix26116z7095 (.combout (
                           NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_3_), .dataa (1'b1)
                           , .datab (yes_uart_u_uart_TxFSM[1]), .datac (
                           nx26116z1), .datad (byte_reg[2])) ;
                           defparam ix26116z7095.lut_mask = 16'hc0f3;
    fiftyfivenm_lcell_comb ix27113z7095 (.combout (
                           NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_2_), .dataa (1'b1)
                           , .datab (yes_uart_u_uart_TxFSM[1]), .datac (
                           nx27113z1), .datad (byte_reg[1])) ;
                           defparam ix27113z7095.lut_mask = 16'hc0f3;
    fiftyfivenm_lcell_comb ix28110z7095 (.combout (
                           NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_1_), .dataa (1'b1)
                           , .datab (yes_uart_u_uart_TxFSM[1]), .datac (
                           nx28110z1), .datad (byte_reg[0])) ;
                           defparam ix28110z7095.lut_mask = 16'hc0f3;
    fiftyfivenm_lcell_comb ix29107z7097 (.combout (
                           yes_uart_u_uart_Tx_Reg_14n6ss1[0]), .dataa (1'b1), .datab (
                           yes_uart_u_uart_TxFSM[0]), .datac (
                           yes_uart_u_uart_TxFSM[1]), .datad (nx29107z3)) ;
                           defparam ix29107z7097.lut_mask = 16'h03f3;
    fiftyfivenm_lcell_comb ix46918z7097 (.combout (nx46918z3), .dataa (nx46918z4
                           ), .datab (yes_uart_u_uart_TxBitCnt[0]), .datac (
                           yes_uart_u_uart_TxBitCnt[1]), .datad (
                           yes_uart_u_uart_TopTx)) ;
                           defparam ix46918z7097.lut_mask = 16'hf7ff;
    fiftyfivenm_lcell_comb ix21131z7096 (.combout (nx21131z1), .dataa (
                           yes_uart_u_uart_TxFSM[0]), .datab (
                           yes_uart_u_uart_TxFSM[1]), .datac (
                           yes_uart_u_uart_TopTx), .datad (byte_valid)) ;
                           defparam ix21131z7096.lut_mask = 16'h5140;
    fiftyfivenm_lcell_comb ix49278z7096 (.combout (nx49278z2), .dataa (1'b1), .datab (
                           1'b1), .datac (yes_uart_u_uart_TxFSM[1]), .datad (
                           yes_uart_u_uart_TopTx)) ;
                           defparam ix49278z7096.lut_mask = 16'h0f00;
    fiftyfivenm_lcell_comb ix46463z7095 (.combout (nx46463z1), .dataa (1'b1), .datab (
                           yes_uart_u_uart_RxFSM[4]), .datac (nx64005z3), .datad (
                           yes_uart_u_uart_TopRx)) ;
                           defparam ix46463z7095.lut_mask = 16'h0c00;
    fiftyfivenm_lcell_comb ix2098z7096 (.combout (nx2098z1), .dataa (1'b1), .datab (
                           1'b1), .datac (yes_uart_u_uart_RxFSM[3]), .datad (
                           yes_uart_u_uart_TopRx)) ;
                           defparam ix2098z7096.lut_mask = 16'hf000;
    fiftyfivenm_lcell_comb ix29107z7096 (.combout (nx29107z2), .dataa (
                           yes_uart_u_uart_TxFSM[0]), .datab (
                           yes_uart_u_uart_TxFSM[1]), .datac (
                           yes_uart_u_uart_TopTx), .datad (byte_valid)) ;
                           defparam ix29107z7096.lut_mask = 16'h8e9f;
    fiftyfivenm_lcell_comb ix64005z7096 (.combout (nx64005z1), .dataa (1'b1), .datab (
                           nx64005z2), .datac (nx46026z2), .datad (nx64005z3)) ;
                           defparam ix64005z7096.lut_mask = 16'h3330;
    fiftyfivenm_lcell_comb ix463z7095 (.combout (nx463z1), .dataa (1'b1), .datab (
                           1'b1), .datac (nx1460z2), .datad (
                           yes_uart_u_uart_RxFSM[2])) ;
                           defparam ix463z7095.lut_mask = 16'h0f00;
    fiftyfivenm_lcell_comb ix65002z7095 (.combout (nx65002z1), .dataa (1'b1), .datab (
                           yes_uart_u_uart_RxFSM[1]), .datac (
                           yes_uart_u_uart_RxFSM[3]), .datad (nx64005z3)) ;
                           defparam ix65002z7095.lut_mask = 16'hfcf0;
    fiftyfivenm_lcell_comb ix63008z7095 (.combout (nx63008z1), .dataa (1'b1), .datab (
                           yes_uart_u_uart_RxFSM[4]), .datac (
                           yes_uart_u_uart_RxFSM[5]), .datad (nx64005z3)) ;
                           defparam ix63008z7095.lut_mask = 16'h0f03;
    fiftyfivenm_lcell_comb ix1460z7095 (.combout (nx1460z1), .dataa (1'b1), .datab (
                           1'b1), .datac (nx1460z2), .datad (
                           yes_uart_u_uart_RxFSM[2])) ;
                           defparam ix1460z7095.lut_mask = 16'hf000;
    fiftyfivenm_lcell_comb ix60456z7095 (.combout (nx60456z1), .dataa (1'b1), .datab (
                           1'b1), .datac (nx60456z2), .datad (nx46026z2)) ;
                           defparam ix60456z7095.lut_mask = 16'hf000;
    fiftyfivenm_lcell_comb ix2457z7095 (.combout (nx2457z1), .dataa (1'b1), .datab (
                           yes_uart_u_uart_RxFSM[1]), .datac (
                           yes_uart_u_uart_RxFSM[4]), .datad (nx64005z3)) ;
                           defparam ix2457z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix46262z7095 (.combout (nx46262z1), .dataa (1'b1), .datab (
                           yes_uart_u_uart_TxFSM[0]), .datac (
                           yes_uart_u_uart_TxFSM[1]), .datad (byte_valid)) ;
                           defparam ix46262z7095.lut_mask = 16'hfffc;
    fiftyfivenm_lcell_comb ix60456z7096 (.combout (nx60456z2), .dataa (nx60456z3
                           ), .datab (nx60456z4), .datac (nx60456z5), .datad (
                           yes_uart_u_uart_RxDiv[6])) ;
                           defparam ix60456z7096.lut_mask = 16'ha0c0;
    fiftyfivenm_lcell_comb ix62450z7095 (.combout (nx62450z1), .dataa (nx62450z2
                           ), .datab (nx62450z3), .datac (nx62450z4), .datad (
                           yes_uart_u_uart_TxDiv[6])) ;
                           defparam ix62450z7095.lut_mask = 16'h0080;
    fiftyfivenm_lcell_comb ix1460z7096 (.combout (nx1460z2), .dataa (
                           yes_uart_u_uart_RxBitCnt[0]), .datab (
                           yes_uart_u_uart_RxBitCnt[1]), .datac (
                           yes_uart_u_uart_RxBitCnt[2]), .datad (
                           yes_uart_u_uart_RxBitCnt[3])) ;
                           defparam ix1460z7096.lut_mask = 16'h0100;
    fiftyfivenm_lcell_comb ix60357z7101 (.combout (nx60357z7), .dataa (1'b1), .datab (
                           1'b1), .datac (i_valid), .datad (reset_n)) ;
                           defparam ix60357z7101.lut_mask = 16'hf000;
    fiftyfivenm_lcell_comb ix63348z7097 (.combout (nx63348z2), .dataa (1'b1), .datab (
                           nx63348z3), .datac (nx62351z3), .datad (
                           u_lab3_compute_flag)) ;
                           defparam ix63348z7097.lut_mask = 16'hc000;
    fiftyfivenm_lcell_comb ix63348z7096 (.combout (u_lab3_rtlc0_PS25_n202), .dataa (
                           1'b1), .datab (1'b1), .datac (i_valid), .datad (
                           reset_n)) ;
                           defparam ix63348z7096.lut_mask = 16'hf0ff;
    fiftyfivenm_lcell_comb ix62976z7098 (.combout (nx62976z4), .dataa (1'b1), .datab (
                           1'b1), .datac (nx6634z2), .datad (u_lab3_state[1])) ;
                           defparam ix62976z7098.lut_mask = 16'hff0f;
    fiftyfivenm_lcell_comb ix47763z7095 (.combout (u_lab3_minuend_1n10ss1_487_)
                           , .dataa (u_lab3_subtrahend_15_[7]), .datab (
                           nx47763z1), .datac (u_lab3_state[2]), .datad (
                           i_data[7])) ;
                           defparam ix47763z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix48760z7095 (.combout (u_lab3_minuend_1n10ss1_486_)
                           , .dataa (u_lab3_subtrahend_15_[6]), .datab (
                           nx47763z1), .datac (u_lab3_state[2]), .datad (
                           i_data[6])) ;
                           defparam ix48760z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix49757z7095 (.combout (u_lab3_minuend_1n10ss1_485_)
                           , .dataa (u_lab3_subtrahend_15_[5]), .datab (
                           nx47763z1), .datac (u_lab3_state[2]), .datad (
                           i_data[5])) ;
                           defparam ix49757z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix50754z7095 (.combout (u_lab3_minuend_1n10ss1_484_)
                           , .dataa (u_lab3_subtrahend_15_[4]), .datab (
                           nx47763z1), .datac (u_lab3_state[2]), .datad (
                           i_data[4])) ;
                           defparam ix50754z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix51751z7095 (.combout (u_lab3_minuend_1n10ss1_483_)
                           , .dataa (u_lab3_subtrahend_15_[3]), .datab (
                           nx47763z1), .datac (u_lab3_state[2]), .datad (
                           i_data[3])) ;
                           defparam ix51751z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix52748z7095 (.combout (u_lab3_minuend_1n10ss1_482_)
                           , .dataa (u_lab3_subtrahend_15_[2]), .datab (
                           nx47763z1), .datac (u_lab3_state[2]), .datad (
                           i_data[2])) ;
                           defparam ix52748z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix53745z7095 (.combout (u_lab3_minuend_1n10ss1_481_)
                           , .dataa (u_lab3_subtrahend_15_[1]), .datab (
                           nx47763z1), .datac (u_lab3_state[2]), .datad (
                           i_data[1])) ;
                           defparam ix53745z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix54742z7095 (.combout (u_lab3_minuend_1n10ss1_480_)
                           , .dataa (u_lab3_subtrahend_15_[0]), .datab (
                           nx47763z1), .datac (u_lab3_state[2]), .datad (
                           i_data[0])) ;
                           defparam ix54742z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix42628z7095 (.combout (u_lab3_minuend_1n10ss1_455_)
                           , .dataa (u_lab3_subtrahend_14_[7]), .datab (
                           nx42628z1), .datac (u_lab3_state[2]), .datad (
                           i_data[7])) ;
                           defparam ix42628z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix43625z7095 (.combout (u_lab3_minuend_1n10ss1_454_)
                           , .dataa (u_lab3_subtrahend_14_[6]), .datab (
                           nx42628z1), .datac (u_lab3_state[2]), .datad (
                           i_data[6])) ;
                           defparam ix43625z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix44622z7095 (.combout (u_lab3_minuend_1n10ss1_453_)
                           , .dataa (u_lab3_subtrahend_14_[5]), .datab (
                           nx42628z1), .datac (u_lab3_state[2]), .datad (
                           i_data[5])) ;
                           defparam ix44622z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix45619z7095 (.combout (u_lab3_minuend_1n10ss1_452_)
                           , .dataa (u_lab3_subtrahend_14_[4]), .datab (
                           nx42628z1), .datac (u_lab3_state[2]), .datad (
                           i_data[4])) ;
                           defparam ix45619z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix46616z7095 (.combout (u_lab3_minuend_1n10ss1_451_)
                           , .dataa (u_lab3_subtrahend_14_[3]), .datab (
                           nx42628z1), .datac (u_lab3_state[2]), .datad (
                           i_data[3])) ;
                           defparam ix46616z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix47613z7095 (.combout (u_lab3_minuend_1n10ss1_450_)
                           , .dataa (u_lab3_subtrahend_14_[2]), .datab (
                           nx42628z1), .datac (u_lab3_state[2]), .datad (
                           i_data[2])) ;
                           defparam ix47613z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix48610z7095 (.combout (u_lab3_minuend_1n10ss1_449_)
                           , .dataa (u_lab3_subtrahend_14_[1]), .datab (
                           nx42628z1), .datac (u_lab3_state[2]), .datad (
                           i_data[1])) ;
                           defparam ix48610z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix49607z7095 (.combout (u_lab3_minuend_1n10ss1_448_)
                           , .dataa (u_lab3_subtrahend_14_[0]), .datab (
                           nx42628z1), .datac (u_lab3_state[2]), .datad (
                           i_data[0])) ;
                           defparam ix49607z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix37493z7095 (.combout (u_lab3_minuend_1n10ss1_423_)
                           , .dataa (u_lab3_subtrahend_13_[7]), .datab (
                           nx37493z1), .datac (u_lab3_state[2]), .datad (
                           i_data[7])) ;
                           defparam ix37493z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix38490z7095 (.combout (u_lab3_minuend_1n10ss1_422_)
                           , .dataa (u_lab3_subtrahend_13_[6]), .datab (
                           nx37493z1), .datac (u_lab3_state[2]), .datad (
                           i_data[6])) ;
                           defparam ix38490z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix39487z7095 (.combout (u_lab3_minuend_1n10ss1_421_)
                           , .dataa (u_lab3_subtrahend_13_[5]), .datab (
                           nx37493z1), .datac (u_lab3_state[2]), .datad (
                           i_data[5])) ;
                           defparam ix39487z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix40484z7095 (.combout (u_lab3_minuend_1n10ss1_420_)
                           , .dataa (u_lab3_subtrahend_13_[4]), .datab (
                           nx37493z1), .datac (u_lab3_state[2]), .datad (
                           i_data[4])) ;
                           defparam ix40484z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix41481z7095 (.combout (u_lab3_minuend_1n10ss1_419_)
                           , .dataa (u_lab3_subtrahend_13_[3]), .datab (
                           nx37493z1), .datac (u_lab3_state[2]), .datad (
                           i_data[3])) ;
                           defparam ix41481z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix42478z7095 (.combout (u_lab3_minuend_1n10ss1_418_)
                           , .dataa (u_lab3_subtrahend_13_[2]), .datab (
                           nx37493z1), .datac (u_lab3_state[2]), .datad (
                           i_data[2])) ;
                           defparam ix42478z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix43475z7095 (.combout (u_lab3_minuend_1n10ss1_417_)
                           , .dataa (u_lab3_subtrahend_13_[1]), .datab (
                           nx37493z1), .datac (u_lab3_state[2]), .datad (
                           i_data[1])) ;
                           defparam ix43475z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix44472z7095 (.combout (u_lab3_minuend_1n10ss1_416_)
                           , .dataa (u_lab3_subtrahend_13_[0]), .datab (
                           nx37493z1), .datac (u_lab3_state[2]), .datad (
                           i_data[0])) ;
                           defparam ix44472z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix32358z7095 (.combout (u_lab3_minuend_1n10ss1_391_)
                           , .dataa (u_lab3_subtrahend_12_[7]), .datab (
                           nx32358z1), .datac (u_lab3_state[2]), .datad (
                           i_data[7])) ;
                           defparam ix32358z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix33355z7095 (.combout (u_lab3_minuend_1n10ss1_390_)
                           , .dataa (u_lab3_subtrahend_12_[6]), .datab (
                           nx32358z1), .datac (u_lab3_state[2]), .datad (
                           i_data[6])) ;
                           defparam ix33355z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix34352z7095 (.combout (u_lab3_minuend_1n10ss1_389_)
                           , .dataa (u_lab3_subtrahend_12_[5]), .datab (
                           nx32358z1), .datac (u_lab3_state[2]), .datad (
                           i_data[5])) ;
                           defparam ix34352z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix35349z7095 (.combout (u_lab3_minuend_1n10ss1_388_)
                           , .dataa (u_lab3_subtrahend_12_[4]), .datab (
                           nx32358z1), .datac (u_lab3_state[2]), .datad (
                           i_data[4])) ;
                           defparam ix35349z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix36346z7095 (.combout (u_lab3_minuend_1n10ss1_387_)
                           , .dataa (u_lab3_subtrahend_12_[3]), .datab (
                           nx32358z1), .datac (u_lab3_state[2]), .datad (
                           i_data[3])) ;
                           defparam ix36346z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix37343z7095 (.combout (u_lab3_minuend_1n10ss1_386_)
                           , .dataa (u_lab3_subtrahend_12_[2]), .datab (
                           nx32358z1), .datac (u_lab3_state[2]), .datad (
                           i_data[2])) ;
                           defparam ix37343z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix38340z7095 (.combout (u_lab3_minuend_1n10ss1_385_)
                           , .dataa (u_lab3_subtrahend_12_[1]), .datab (
                           nx32358z1), .datac (u_lab3_state[2]), .datad (
                           i_data[1])) ;
                           defparam ix38340z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix39337z7095 (.combout (u_lab3_minuend_1n10ss1_384_)
                           , .dataa (u_lab3_subtrahend_12_[0]), .datab (
                           nx32358z1), .datac (u_lab3_state[2]), .datad (
                           i_data[0])) ;
                           defparam ix39337z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix27223z7095 (.combout (u_lab3_minuend_1n10ss1_359_)
                           , .dataa (u_lab3_subtrahend_11_[7]), .datab (
                           nx27223z1), .datac (u_lab3_state[2]), .datad (
                           i_data[7])) ;
                           defparam ix27223z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix28220z7095 (.combout (u_lab3_minuend_1n10ss1_358_)
                           , .dataa (u_lab3_subtrahend_11_[6]), .datab (
                           nx27223z1), .datac (u_lab3_state[2]), .datad (
                           i_data[6])) ;
                           defparam ix28220z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix29217z7095 (.combout (u_lab3_minuend_1n10ss1_357_)
                           , .dataa (u_lab3_subtrahend_11_[5]), .datab (
                           nx27223z1), .datac (u_lab3_state[2]), .datad (
                           i_data[5])) ;
                           defparam ix29217z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix30214z7095 (.combout (u_lab3_minuend_1n10ss1_356_)
                           , .dataa (u_lab3_subtrahend_11_[4]), .datab (
                           nx27223z1), .datac (u_lab3_state[2]), .datad (
                           i_data[4])) ;
                           defparam ix30214z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix31211z7095 (.combout (u_lab3_minuend_1n10ss1_355_)
                           , .dataa (u_lab3_subtrahend_11_[3]), .datab (
                           nx27223z1), .datac (u_lab3_state[2]), .datad (
                           i_data[3])) ;
                           defparam ix31211z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix32208z7095 (.combout (u_lab3_minuend_1n10ss1_354_)
                           , .dataa (u_lab3_subtrahend_11_[2]), .datab (
                           nx27223z1), .datac (u_lab3_state[2]), .datad (
                           i_data[2])) ;
                           defparam ix32208z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix33205z7095 (.combout (u_lab3_minuend_1n10ss1_353_)
                           , .dataa (u_lab3_subtrahend_11_[1]), .datab (
                           nx27223z1), .datac (u_lab3_state[2]), .datad (
                           i_data[1])) ;
                           defparam ix33205z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix34202z7095 (.combout (u_lab3_minuend_1n10ss1_352_)
                           , .dataa (u_lab3_subtrahend_11_[0]), .datab (
                           nx27223z1), .datac (u_lab3_state[2]), .datad (
                           i_data[0])) ;
                           defparam ix34202z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix22088z7095 (.combout (u_lab3_minuend_1n10ss1_327_)
                           , .dataa (u_lab3_subtrahend_10_[7]), .datab (
                           nx22088z1), .datac (u_lab3_state[2]), .datad (
                           i_data[7])) ;
                           defparam ix22088z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix23085z7095 (.combout (u_lab3_minuend_1n10ss1_326_)
                           , .dataa (u_lab3_subtrahend_10_[6]), .datab (
                           nx22088z1), .datac (u_lab3_state[2]), .datad (
                           i_data[6])) ;
                           defparam ix23085z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix24082z7095 (.combout (u_lab3_minuend_1n10ss1_325_)
                           , .dataa (u_lab3_subtrahend_10_[5]), .datab (
                           nx22088z1), .datac (u_lab3_state[2]), .datad (
                           i_data[5])) ;
                           defparam ix24082z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix25079z7095 (.combout (u_lab3_minuend_1n10ss1_324_)
                           , .dataa (u_lab3_subtrahend_10_[4]), .datab (
                           nx22088z1), .datac (u_lab3_state[2]), .datad (
                           i_data[4])) ;
                           defparam ix25079z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix26076z7095 (.combout (u_lab3_minuend_1n10ss1_323_)
                           , .dataa (u_lab3_subtrahend_10_[3]), .datab (
                           nx22088z1), .datac (u_lab3_state[2]), .datad (
                           i_data[3])) ;
                           defparam ix26076z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix27073z7095 (.combout (u_lab3_minuend_1n10ss1_322_)
                           , .dataa (u_lab3_subtrahend_10_[2]), .datab (
                           nx22088z1), .datac (u_lab3_state[2]), .datad (
                           i_data[2])) ;
                           defparam ix27073z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix28070z7095 (.combout (u_lab3_minuend_1n10ss1_321_)
                           , .dataa (u_lab3_subtrahend_10_[1]), .datab (
                           nx22088z1), .datac (u_lab3_state[2]), .datad (
                           i_data[1])) ;
                           defparam ix28070z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix29067z7095 (.combout (u_lab3_minuend_1n10ss1_320_)
                           , .dataa (u_lab3_subtrahend_10_[0]), .datab (
                           nx22088z1), .datac (u_lab3_state[2]), .datad (
                           i_data[0])) ;
                           defparam ix29067z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix41564z7095 (.combout (u_lab3_minuend_1n10ss1_295_)
                           , .dataa (u_lab3_subtrahend_9_[7]), .datab (nx41564z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[7])) ;
                           defparam ix41564z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix42561z7095 (.combout (u_lab3_minuend_1n10ss1_294_)
                           , .dataa (u_lab3_subtrahend_9_[6]), .datab (nx41564z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[6])) ;
                           defparam ix42561z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix43558z7095 (.combout (u_lab3_minuend_1n10ss1_293_)
                           , .dataa (u_lab3_subtrahend_9_[5]), .datab (nx41564z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[5])) ;
                           defparam ix43558z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix44555z7095 (.combout (u_lab3_minuend_1n10ss1_292_)
                           , .dataa (u_lab3_subtrahend_9_[4]), .datab (nx41564z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[4])) ;
                           defparam ix44555z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix45552z7095 (.combout (u_lab3_minuend_1n10ss1_291_)
                           , .dataa (u_lab3_subtrahend_9_[3]), .datab (nx41564z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[3])) ;
                           defparam ix45552z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix46549z7095 (.combout (u_lab3_minuend_1n10ss1_290_)
                           , .dataa (u_lab3_subtrahend_9_[2]), .datab (nx41564z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[2])) ;
                           defparam ix46549z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix47546z7095 (.combout (u_lab3_minuend_1n10ss1_289_)
                           , .dataa (u_lab3_subtrahend_9_[1]), .datab (nx41564z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[1])) ;
                           defparam ix47546z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix48543z7095 (.combout (u_lab3_minuend_1n10ss1_288_)
                           , .dataa (u_lab3_subtrahend_9_[0]), .datab (nx41564z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[0])) ;
                           defparam ix48543z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix36429z7095 (.combout (u_lab3_minuend_1n10ss1_263_)
                           , .dataa (u_lab3_subtrahend_8_[7]), .datab (nx36429z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[7])) ;
                           defparam ix36429z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix37426z7095 (.combout (u_lab3_minuend_1n10ss1_262_)
                           , .dataa (u_lab3_subtrahend_8_[6]), .datab (nx36429z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[6])) ;
                           defparam ix37426z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix38423z7095 (.combout (u_lab3_minuend_1n10ss1_261_)
                           , .dataa (u_lab3_subtrahend_8_[5]), .datab (nx36429z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[5])) ;
                           defparam ix38423z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix39420z7095 (.combout (u_lab3_minuend_1n10ss1_260_)
                           , .dataa (u_lab3_subtrahend_8_[4]), .datab (nx36429z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[4])) ;
                           defparam ix39420z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix40417z7095 (.combout (u_lab3_minuend_1n10ss1_259_)
                           , .dataa (u_lab3_subtrahend_8_[3]), .datab (nx36429z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[3])) ;
                           defparam ix40417z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix41414z7095 (.combout (u_lab3_minuend_1n10ss1_258_)
                           , .dataa (u_lab3_subtrahend_8_[2]), .datab (nx36429z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[2])) ;
                           defparam ix41414z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix42411z7095 (.combout (u_lab3_minuend_1n10ss1_257_)
                           , .dataa (u_lab3_subtrahend_8_[1]), .datab (nx36429z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[1])) ;
                           defparam ix42411z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix43408z7095 (.combout (u_lab3_minuend_1n10ss1_256_)
                           , .dataa (u_lab3_subtrahend_8_[0]), .datab (nx36429z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[0])) ;
                           defparam ix43408z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix31294z7095 (.combout (u_lab3_minuend_1n10ss1_231_)
                           , .dataa (u_lab3_subtrahend_7_[7]), .datab (nx31294z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[7])) ;
                           defparam ix31294z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix32291z7095 (.combout (u_lab3_minuend_1n10ss1_230_)
                           , .dataa (u_lab3_subtrahend_7_[6]), .datab (nx31294z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[6])) ;
                           defparam ix32291z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix33288z7095 (.combout (u_lab3_minuend_1n10ss1_229_)
                           , .dataa (u_lab3_subtrahend_7_[5]), .datab (nx31294z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[5])) ;
                           defparam ix33288z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix34285z7095 (.combout (u_lab3_minuend_1n10ss1_228_)
                           , .dataa (u_lab3_subtrahend_7_[4]), .datab (nx31294z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[4])) ;
                           defparam ix34285z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix35282z7095 (.combout (u_lab3_minuend_1n10ss1_227_)
                           , .dataa (u_lab3_subtrahend_7_[3]), .datab (nx31294z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[3])) ;
                           defparam ix35282z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix36279z7095 (.combout (u_lab3_minuend_1n10ss1_226_)
                           , .dataa (u_lab3_subtrahend_7_[2]), .datab (nx31294z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[2])) ;
                           defparam ix36279z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix37276z7095 (.combout (u_lab3_minuend_1n10ss1_225_)
                           , .dataa (u_lab3_subtrahend_7_[1]), .datab (nx31294z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[1])) ;
                           defparam ix37276z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix38273z7095 (.combout (u_lab3_minuend_1n10ss1_224_)
                           , .dataa (u_lab3_subtrahend_7_[0]), .datab (nx31294z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[0])) ;
                           defparam ix38273z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix26159z7095 (.combout (u_lab3_minuend_1n10ss1_199_)
                           , .dataa (u_lab3_subtrahend_6_[7]), .datab (nx26159z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[7])) ;
                           defparam ix26159z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix27156z7095 (.combout (u_lab3_minuend_1n10ss1_198_)
                           , .dataa (u_lab3_subtrahend_6_[6]), .datab (nx26159z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[6])) ;
                           defparam ix27156z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix28153z7095 (.combout (u_lab3_minuend_1n10ss1_197_)
                           , .dataa (u_lab3_subtrahend_6_[5]), .datab (nx26159z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[5])) ;
                           defparam ix28153z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix29150z7095 (.combout (u_lab3_minuend_1n10ss1_196_)
                           , .dataa (u_lab3_subtrahend_6_[4]), .datab (nx26159z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[4])) ;
                           defparam ix29150z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix30147z7095 (.combout (u_lab3_minuend_1n10ss1_195_)
                           , .dataa (u_lab3_subtrahend_6_[3]), .datab (nx26159z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[3])) ;
                           defparam ix30147z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix31144z7095 (.combout (u_lab3_minuend_1n10ss1_194_)
                           , .dataa (u_lab3_subtrahend_6_[2]), .datab (nx26159z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[2])) ;
                           defparam ix31144z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix32141z7095 (.combout (u_lab3_minuend_1n10ss1_193_)
                           , .dataa (u_lab3_subtrahend_6_[1]), .datab (nx26159z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[1])) ;
                           defparam ix32141z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix33138z7095 (.combout (u_lab3_minuend_1n10ss1_192_)
                           , .dataa (u_lab3_subtrahend_6_[0]), .datab (nx26159z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[0])) ;
                           defparam ix33138z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix21024z7095 (.combout (u_lab3_minuend_1n10ss1_167_)
                           , .dataa (u_lab3_subtrahend_5_[7]), .datab (nx21024z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[7])) ;
                           defparam ix21024z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix22021z7095 (.combout (u_lab3_minuend_1n10ss1_166_)
                           , .dataa (u_lab3_subtrahend_5_[6]), .datab (nx21024z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[6])) ;
                           defparam ix22021z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix23018z7095 (.combout (u_lab3_minuend_1n10ss1_165_)
                           , .dataa (u_lab3_subtrahend_5_[5]), .datab (nx21024z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[5])) ;
                           defparam ix23018z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix24015z7095 (.combout (u_lab3_minuend_1n10ss1_164_)
                           , .dataa (u_lab3_subtrahend_5_[4]), .datab (nx21024z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[4])) ;
                           defparam ix24015z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix25012z7095 (.combout (u_lab3_minuend_1n10ss1_163_)
                           , .dataa (u_lab3_subtrahend_5_[3]), .datab (nx21024z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[3])) ;
                           defparam ix25012z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix26009z7095 (.combout (u_lab3_minuend_1n10ss1_162_)
                           , .dataa (u_lab3_subtrahend_5_[2]), .datab (nx21024z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[2])) ;
                           defparam ix26009z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix27006z7095 (.combout (u_lab3_minuend_1n10ss1_161_)
                           , .dataa (u_lab3_subtrahend_5_[1]), .datab (nx21024z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[1])) ;
                           defparam ix27006z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix28003z7095 (.combout (u_lab3_minuend_1n10ss1_160_)
                           , .dataa (u_lab3_subtrahend_5_[0]), .datab (nx21024z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[0])) ;
                           defparam ix28003z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix15889z7095 (.combout (u_lab3_minuend_1n10ss1_135_)
                           , .dataa (u_lab3_subtrahend_4_[7]), .datab (nx15889z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[7])) ;
                           defparam ix15889z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix16886z7095 (.combout (u_lab3_minuend_1n10ss1_134_)
                           , .dataa (u_lab3_subtrahend_4_[6]), .datab (nx15889z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[6])) ;
                           defparam ix16886z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix17883z7095 (.combout (u_lab3_minuend_1n10ss1_133_)
                           , .dataa (u_lab3_subtrahend_4_[5]), .datab (nx15889z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[5])) ;
                           defparam ix17883z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix18880z7095 (.combout (u_lab3_minuend_1n10ss1_132_)
                           , .dataa (u_lab3_subtrahend_4_[4]), .datab (nx15889z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[4])) ;
                           defparam ix18880z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix19877z7095 (.combout (u_lab3_minuend_1n10ss1_131_)
                           , .dataa (u_lab3_subtrahend_4_[3]), .datab (nx15889z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[3])) ;
                           defparam ix19877z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix20874z7095 (.combout (u_lab3_minuend_1n10ss1_130_)
                           , .dataa (u_lab3_subtrahend_4_[2]), .datab (nx15889z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[2])) ;
                           defparam ix20874z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix21871z7095 (.combout (u_lab3_minuend_1n10ss1_129_)
                           , .dataa (u_lab3_subtrahend_4_[1]), .datab (nx15889z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[1])) ;
                           defparam ix21871z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix22868z7095 (.combout (u_lab3_minuend_1n10ss1_128_)
                           , .dataa (u_lab3_subtrahend_4_[0]), .datab (nx15889z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[0])) ;
                           defparam ix22868z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix54782z7095 (.combout (u_lab3_minuend_1n10ss1_103_)
                           , .dataa (u_lab3_subtrahend_3_[7]), .datab (nx54782z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[7])) ;
                           defparam ix54782z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix53785z7095 (.combout (u_lab3_minuend_1n10ss1_102_)
                           , .dataa (u_lab3_subtrahend_3_[6]), .datab (nx54782z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[6])) ;
                           defparam ix53785z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix52788z7095 (.combout (u_lab3_minuend_1n10ss1_101_)
                           , .dataa (u_lab3_subtrahend_3_[5]), .datab (nx54782z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[5])) ;
                           defparam ix52788z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix51791z7095 (.combout (u_lab3_minuend_1n10ss1_100_)
                           , .dataa (u_lab3_subtrahend_3_[4]), .datab (nx54782z1
                           ), .datac (u_lab3_state[2]), .datad (i_data[4])) ;
                           defparam ix51791z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix50794z7095 (.combout (u_lab3_minuend_1n10ss1_99_), 
                           .dataa (u_lab3_subtrahend_3_[3]), .datab (nx54782z1)
                           , .datac (u_lab3_state[2]), .datad (i_data[3])) ;
                           defparam ix50794z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix49797z7095 (.combout (u_lab3_minuend_1n10ss1_98_), 
                           .dataa (u_lab3_subtrahend_3_[2]), .datab (nx54782z1)
                           , .datac (u_lab3_state[2]), .datad (i_data[2])) ;
                           defparam ix49797z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix48800z7095 (.combout (u_lab3_minuend_1n10ss1_97_), 
                           .dataa (u_lab3_subtrahend_3_[1]), .datab (nx54782z1)
                           , .datac (u_lab3_state[2]), .datad (i_data[1])) ;
                           defparam ix48800z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix47803z7095 (.combout (u_lab3_minuend_1n10ss1_96_), 
                           .dataa (u_lab3_subtrahend_3_[0]), .datab (nx54782z1)
                           , .datac (u_lab3_state[2]), .datad (i_data[0])) ;
                           defparam ix47803z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix59917z7095 (.combout (u_lab3_minuend_1n10ss1_71_), 
                           .dataa (u_lab3_subtrahend_2_[7]), .datab (nx59917z1)
                           , .datac (u_lab3_state[2]), .datad (i_data[7])) ;
                           defparam ix59917z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix58920z7095 (.combout (u_lab3_minuend_1n10ss1_70_), 
                           .dataa (u_lab3_subtrahend_2_[6]), .datab (nx59917z1)
                           , .datac (u_lab3_state[2]), .datad (i_data[6])) ;
                           defparam ix58920z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix57923z7095 (.combout (u_lab3_minuend_1n10ss1_69_), 
                           .dataa (u_lab3_subtrahend_2_[5]), .datab (nx59917z1)
                           , .datac (u_lab3_state[2]), .datad (i_data[5])) ;
                           defparam ix57923z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix56926z7095 (.combout (u_lab3_minuend_1n10ss1_68_), 
                           .dataa (u_lab3_subtrahend_2_[4]), .datab (nx59917z1)
                           , .datac (u_lab3_state[2]), .datad (i_data[4])) ;
                           defparam ix56926z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix55929z7095 (.combout (u_lab3_minuend_1n10ss1_67_), 
                           .dataa (u_lab3_subtrahend_2_[3]), .datab (nx59917z1)
                           , .datac (u_lab3_state[2]), .datad (i_data[3])) ;
                           defparam ix55929z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix54932z7095 (.combout (u_lab3_minuend_1n10ss1_66_), 
                           .dataa (u_lab3_subtrahend_2_[2]), .datab (nx59917z1)
                           , .datac (u_lab3_state[2]), .datad (i_data[2])) ;
                           defparam ix54932z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix53935z7095 (.combout (u_lab3_minuend_1n10ss1_65_), 
                           .dataa (u_lab3_subtrahend_2_[1]), .datab (nx59917z1)
                           , .datac (u_lab3_state[2]), .datad (i_data[1])) ;
                           defparam ix53935z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix52938z7095 (.combout (u_lab3_minuend_1n10ss1_64_), 
                           .dataa (u_lab3_subtrahend_2_[0]), .datab (nx59917z1)
                           , .datac (u_lab3_state[2]), .datad (i_data[0])) ;
                           defparam ix52938z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix65052z7095 (.combout (u_lab3_minuend_1n10ss1_39_), 
                           .dataa (u_lab3_subtrahend_1_[7]), .datab (nx65052z1)
                           , .datac (u_lab3_state[2]), .datad (i_data[7])) ;
                           defparam ix65052z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix64055z7095 (.combout (u_lab3_minuend_1n10ss1_38_), 
                           .dataa (u_lab3_subtrahend_1_[6]), .datab (nx65052z1)
                           , .datac (u_lab3_state[2]), .datad (i_data[6])) ;
                           defparam ix64055z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix63058z7095 (.combout (u_lab3_minuend_1n10ss1_37_), 
                           .dataa (u_lab3_subtrahend_1_[5]), .datab (nx65052z1)
                           , .datac (u_lab3_state[2]), .datad (i_data[5])) ;
                           defparam ix63058z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix62061z7095 (.combout (u_lab3_minuend_1n10ss1_36_), 
                           .dataa (u_lab3_subtrahend_1_[4]), .datab (nx65052z1)
                           , .datac (u_lab3_state[2]), .datad (i_data[4])) ;
                           defparam ix62061z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix61064z7095 (.combout (u_lab3_minuend_1n10ss1_35_), 
                           .dataa (u_lab3_subtrahend_1_[3]), .datab (nx65052z1)
                           , .datac (u_lab3_state[2]), .datad (i_data[3])) ;
                           defparam ix61064z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix60067z7095 (.combout (u_lab3_minuend_1n10ss1_34_), 
                           .dataa (u_lab3_subtrahend_1_[2]), .datab (nx65052z1)
                           , .datac (u_lab3_state[2]), .datad (i_data[2])) ;
                           defparam ix60067z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix59070z7095 (.combout (u_lab3_minuend_1n10ss1_33_), 
                           .dataa (u_lab3_subtrahend_1_[1]), .datab (nx65052z1)
                           , .datac (u_lab3_state[2]), .datad (i_data[1])) ;
                           defparam ix59070z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix58073z7095 (.combout (u_lab3_minuend_1n10ss1_32_), 
                           .dataa (u_lab3_subtrahend_1_[0]), .datab (nx65052z1)
                           , .datac (u_lab3_state[2]), .datad (i_data[0])) ;
                           defparam ix58073z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix4651z7095 (.combout (u_lab3_minuend_1n10ss1_7_), .dataa (
                           u_lab3_subtrahend_0_[7]), .datab (nx4651z1), .datac (
                           u_lab3_state[2]), .datad (i_data[7])) ;
                           defparam ix4651z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix3654z7095 (.combout (u_lab3_minuend_1n10ss1_6_), .dataa (
                           u_lab3_subtrahend_0_[6]), .datab (nx4651z1), .datac (
                           u_lab3_state[2]), .datad (i_data[6])) ;
                           defparam ix3654z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix2657z7095 (.combout (u_lab3_minuend_1n10ss1_5_), .dataa (
                           u_lab3_subtrahend_0_[5]), .datab (nx4651z1), .datac (
                           u_lab3_state[2]), .datad (i_data[5])) ;
                           defparam ix2657z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix1660z7095 (.combout (u_lab3_minuend_1n10ss1_4_), .dataa (
                           u_lab3_subtrahend_0_[4]), .datab (nx4651z1), .datac (
                           u_lab3_state[2]), .datad (i_data[4])) ;
                           defparam ix1660z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix663z7095 (.combout (u_lab3_minuend_1n10ss1_3_), .dataa (
                           u_lab3_subtrahend_0_[3]), .datab (nx4651z1), .datac (
                           u_lab3_state[2]), .datad (i_data[3])) ;
                           defparam ix663z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix65202z7095 (.combout (u_lab3_minuend_1n10ss1_2_), .dataa (
                           u_lab3_subtrahend_0_[2]), .datab (nx4651z1), .datac (
                           u_lab3_state[2]), .datad (i_data[2])) ;
                           defparam ix65202z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix64205z7095 (.combout (u_lab3_minuend_1n10ss1_1_), .dataa (
                           u_lab3_subtrahend_0_[1]), .datab (nx4651z1), .datac (
                           u_lab3_state[2]), .datad (i_data[1])) ;
                           defparam ix64205z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix63208z7095 (.combout (u_lab3_minuend_1n10ss1_0_), .dataa (
                           u_lab3_subtrahend_0_[0]), .datab (nx4651z1), .datac (
                           u_lab3_state[2]), .datad (i_data[0])) ;
                           defparam ix63208z7095.lut_mask = 16'hb3a0;
    fiftyfivenm_lcell_comb ix48923z7100 (.combout (nx48923z6), .dataa (1'b1), .datab (
                           nx41843z4), .datac (nx41843z5), .datad (i_valid)) ;
                           defparam ix48923z7100.lut_mask = 16'hc000;
    fiftyfivenm_lcell_comb ix53092z7096 (.combout (nx53092z2), .dataa (1'b1), .datab (
                           nx6634z2), .datac (u_lab3_state[3]), .datad (i_valid)
                           ) ;
                           defparam ix53092z7096.lut_mask = 16'h0cfc;
    fiftyfivenm_lcell_comb ix41843z7097 (.combout (nx41843z3), .dataa (nx41843z4
                           ), .datab (nx41843z5), .datac (u_lab3_state[1]), .datad (
                           i_valid)) ;
                           defparam ix41843z7097.lut_mask = 16'h70f0;
    fiftyfivenm_lcell_comb ix41843z7095 (.combout (nx41843z1), .dataa (nx41843z2
                           ), .datab (nx63348z3), .datac (nx41843z3), .datad (
                           u_lab3_state[1])) ;
                           defparam ix41843z7095.lut_mask = 16'h0405;
    fiftyfivenm_lcell_comb ix19416z7095 (.combout (nx19416z1), .dataa (nx6634z2)
                           , .datab (u_lab3_state[3]), .datac (u_lab3_p_31_), .datad (
                           i_valid)) ;
                           defparam ix19416z7095.lut_mask = 16'h1d11;
    fiftyfivenm_lcell_comb ix16929z7095 (.combout (nx16929z1), .dataa (
                           nx63348z13), .datab (nx6634z2), .datac (
                           u_lab3_state[3]), .datad (i_valid)) ;
                           defparam ix16929z7095.lut_mask = 16'ha303;
    fiftyfivenm_lcell_comb ix13001z7096 (.combout (nx13001z2), .dataa (1'b1), .datab (
                           nx63348z13), .datac (nx11351z3), .datad (
                           u_lab3_state[1])) ;
                           defparam ix13001z7096.lut_mask = 16'h0c0f;
    fiftyfivenm_lcell_comb ix47763z7097 (.combout (nx47763z2), .dataa (
                           nx63348z13), .datab (nx11351z5), .datac (nx41843z3), 
                           .datad (u_lab3_state[1])) ;
                           defparam ix47763z7097.lut_mask = 16'h0203;
    fiftyfivenm_lcell_comb ix22064z7095 (.combout (nx22064z1), .dataa (
                           u_lab3_not_minuend_1n1s2_14), .datab (nx6634z2), .datac (
                           u_lab3_state[3]), .datad (i_valid)) ;
                           defparam ix22064z7095.lut_mask = 16'h5303;
    fiftyfivenm_lcell_comb ix18136z7096 (.combout (nx18136z2), .dataa (1'b1), .datab (
                           u_lab3_not_minuend_1n1s2_14), .datac (nx11351z3), .datad (
                           u_lab3_state[1])) ;
                           defparam ix18136z7096.lut_mask = 16'h030f;
    fiftyfivenm_lcell_comb ix42628z7097 (.combout (nx42628z2), .dataa (
                           u_lab3_not_minuend_1n1s2_14), .datab (nx11351z5), .datac (
                           nx41843z3), .datad (u_lab3_state[1])) ;
                           defparam ix42628z7097.lut_mask = 16'h0103;
    fiftyfivenm_lcell_comb ix27199z7095 (.combout (nx27199z1), .dataa (
                           u_lab3_not_minuend_1n1s2_13), .datab (nx6634z2), .datac (
                           u_lab3_state[3]), .datad (i_valid)) ;
                           defparam ix27199z7095.lut_mask = 16'h5303;
    fiftyfivenm_lcell_comb ix23271z7096 (.combout (nx23271z2), .dataa (1'b1), .datab (
                           u_lab3_not_minuend_1n1s2_13), .datac (nx11351z3), .datad (
                           u_lab3_state[1])) ;
                           defparam ix23271z7096.lut_mask = 16'h030f;
    fiftyfivenm_lcell_comb ix37493z7097 (.combout (nx37493z2), .dataa (
                           u_lab3_not_minuend_1n1s2_13), .datab (nx11351z5), .datac (
                           nx41843z3), .datad (u_lab3_state[1])) ;
                           defparam ix37493z7097.lut_mask = 16'h0103;
    fiftyfivenm_lcell_comb ix32334z7095 (.combout (nx32334z1), .dataa (
                           u_lab3_not_minuend_1n1s2_12), .datab (nx6634z2), .datac (
                           u_lab3_state[3]), .datad (i_valid)) ;
                           defparam ix32334z7095.lut_mask = 16'h5303;
    fiftyfivenm_lcell_comb ix28406z7096 (.combout (nx28406z2), .dataa (1'b1), .datab (
                           u_lab3_not_minuend_1n1s2_12), .datac (nx11351z3), .datad (
                           u_lab3_state[1])) ;
                           defparam ix28406z7096.lut_mask = 16'h030f;
    fiftyfivenm_lcell_comb ix32358z7097 (.combout (nx32358z2), .dataa (
                           u_lab3_not_minuend_1n1s2_12), .datab (nx11351z5), .datac (
                           nx41843z3), .datad (u_lab3_state[1])) ;
                           defparam ix32358z7097.lut_mask = 16'h0103;
    fiftyfivenm_lcell_comb ix37469z7095 (.combout (nx37469z1), .dataa (
                           u_lab3_not_minuend_1n1s2_11), .datab (nx6634z2), .datac (
                           u_lab3_state[3]), .datad (i_valid)) ;
                           defparam ix37469z7095.lut_mask = 16'h5303;
    fiftyfivenm_lcell_comb ix33541z7096 (.combout (nx33541z2), .dataa (1'b1), .datab (
                           u_lab3_not_minuend_1n1s2_11), .datac (nx11351z3), .datad (
                           u_lab3_state[1])) ;
                           defparam ix33541z7096.lut_mask = 16'h030f;
    fiftyfivenm_lcell_comb ix27223z7097 (.combout (nx27223z2), .dataa (
                           u_lab3_not_minuend_1n1s2_11), .datab (nx11351z5), .datac (
                           nx41843z3), .datad (u_lab3_state[1])) ;
                           defparam ix27223z7097.lut_mask = 16'h0103;
    fiftyfivenm_lcell_comb ix42604z7095 (.combout (nx42604z1), .dataa (
                           u_lab3_not_minuend_1n1s2_10), .datab (nx6634z2), .datac (
                           u_lab3_state[3]), .datad (i_valid)) ;
                           defparam ix42604z7095.lut_mask = 16'h5303;
    fiftyfivenm_lcell_comb ix38676z7096 (.combout (nx38676z2), .dataa (1'b1), .datab (
                           u_lab3_not_minuend_1n1s2_10), .datac (nx11351z3), .datad (
                           u_lab3_state[1])) ;
                           defparam ix38676z7096.lut_mask = 16'h030f;
    fiftyfivenm_lcell_comb ix22088z7097 (.combout (nx22088z2), .dataa (
                           u_lab3_not_minuend_1n1s2_10), .datab (nx11351z5), .datac (
                           nx41843z3), .datad (u_lab3_state[1])) ;
                           defparam ix22088z7097.lut_mask = 16'h0103;
    fiftyfivenm_lcell_comb ix64440z7095 (.combout (nx64440z1), .dataa (
                           u_lab3_not_minuend_1n1s2_9), .datab (nx6634z2), .datac (
                           u_lab3_state[3]), .datad (i_valid)) ;
                           defparam ix64440z7095.lut_mask = 16'h5303;
    fiftyfivenm_lcell_comb ix34864z7096 (.combout (nx34864z2), .dataa (1'b1), .datab (
                           u_lab3_not_minuend_1n1s2_9), .datac (nx11351z3), .datad (
                           u_lab3_state[1])) ;
                           defparam ix34864z7096.lut_mask = 16'h030f;
    fiftyfivenm_lcell_comb ix41564z7097 (.combout (nx41564z2), .dataa (
                           u_lab3_not_minuend_1n1s2_9), .datab (nx11351z5), .datac (
                           nx41843z3), .datad (u_lab3_state[1])) ;
                           defparam ix41564z7097.lut_mask = 16'h0103;
    fiftyfivenm_lcell_comb ix6231z7095 (.combout (nx6231z1), .dataa (
                           u_lab3_not_minuend_1n1s2_8), .datab (nx6634z2), .datac (
                           u_lab3_state[3]), .datad (i_valid)) ;
                           defparam ix6231z7095.lut_mask = 16'h5303;
    fiftyfivenm_lcell_comb ix29729z7096 (.combout (nx29729z2), .dataa (1'b1), .datab (
                           u_lab3_not_minuend_1n1s2_8), .datac (nx11351z3), .datad (
                           u_lab3_state[1])) ;
                           defparam ix29729z7096.lut_mask = 16'h030f;
    fiftyfivenm_lcell_comb ix36429z7097 (.combout (nx36429z2), .dataa (
                           u_lab3_not_minuend_1n1s2_8), .datab (nx11351z5), .datac (
                           nx41843z3), .datad (u_lab3_state[1])) ;
                           defparam ix36429z7097.lut_mask = 16'h0103;
    fiftyfivenm_lcell_comb ix11366z7095 (.combout (nx11366z1), .dataa (
                           u_lab3_not_minuend_1n1s2_7), .datab (nx6634z2), .datac (
                           u_lab3_state[3]), .datad (i_valid)) ;
                           defparam ix11366z7095.lut_mask = 16'h5303;
    fiftyfivenm_lcell_comb ix40942z7096 (.combout (nx40942z2), .dataa (1'b1), .datab (
                           u_lab3_not_minuend_1n1s2_7), .datac (nx11351z3), .datad (
                           u_lab3_state[1])) ;
                           defparam ix40942z7096.lut_mask = 16'h030f;
    fiftyfivenm_lcell_comb ix31294z7097 (.combout (nx31294z2), .dataa (
                           u_lab3_not_minuend_1n1s2_7), .datab (nx11351z5), .datac (
                           nx41843z3), .datad (u_lab3_state[1])) ;
                           defparam ix31294z7097.lut_mask = 16'h0103;
    fiftyfivenm_lcell_comb ix16501z7095 (.combout (nx16501z1), .dataa (
                           u_lab3_not_minuend_1n1s2_6), .datab (nx6634z2), .datac (
                           u_lab3_state[3]), .datad (i_valid)) ;
                           defparam ix16501z7095.lut_mask = 16'h5303;
    fiftyfivenm_lcell_comb ix46077z7096 (.combout (nx46077z2), .dataa (1'b1), .datab (
                           u_lab3_not_minuend_1n1s2_6), .datac (nx11351z3), .datad (
                           u_lab3_state[1])) ;
                           defparam ix46077z7096.lut_mask = 16'h030f;
    fiftyfivenm_lcell_comb ix26159z7097 (.combout (nx26159z2), .dataa (
                           u_lab3_not_minuend_1n1s2_6), .datab (nx11351z5), .datac (
                           nx41843z3), .datad (u_lab3_state[1])) ;
                           defparam ix26159z7097.lut_mask = 16'h0103;
    fiftyfivenm_lcell_comb ix21636z7095 (.combout (nx21636z1), .dataa (
                           u_lab3_not_minuend_1n1s2_5), .datab (nx6634z2), .datac (
                           u_lab3_state[3]), .datad (i_valid)) ;
                           defparam ix21636z7095.lut_mask = 16'h5303;
    fiftyfivenm_lcell_comb ix51212z7096 (.combout (nx51212z2), .dataa (1'b1), .datab (
                           u_lab3_not_minuend_1n1s2_5), .datac (nx11351z3), .datad (
                           u_lab3_state[1])) ;
                           defparam ix51212z7096.lut_mask = 16'h030f;
    fiftyfivenm_lcell_comb ix21024z7097 (.combout (nx21024z2), .dataa (
                           u_lab3_not_minuend_1n1s2_5), .datab (nx11351z5), .datac (
                           nx41843z3), .datad (u_lab3_state[1])) ;
                           defparam ix21024z7097.lut_mask = 16'h0103;
    fiftyfivenm_lcell_comb ix26771z7095 (.combout (nx26771z1), .dataa (
                           u_lab3_not_minuend_1n1s2_4), .datab (nx6634z2), .datac (
                           u_lab3_state[3]), .datad (i_valid)) ;
                           defparam ix26771z7095.lut_mask = 16'h5303;
    fiftyfivenm_lcell_comb ix56347z7096 (.combout (nx56347z2), .dataa (1'b1), .datab (
                           u_lab3_not_minuend_1n1s2_4), .datac (nx11351z3), .datad (
                           u_lab3_state[1])) ;
                           defparam ix56347z7096.lut_mask = 16'h030f;
    fiftyfivenm_lcell_comb ix15889z7097 (.combout (nx15889z2), .dataa (
                           u_lab3_not_minuend_1n1s2_4), .datab (nx11351z5), .datac (
                           nx41843z3), .datad (u_lab3_state[1])) ;
                           defparam ix15889z7097.lut_mask = 16'h0103;
    fiftyfivenm_lcell_comb ix31906z7095 (.combout (nx31906z1), .dataa (
                           u_lab3_not_minuend_1n1s2_3), .datab (nx6634z2), .datac (
                           u_lab3_state[3]), .datad (i_valid)) ;
                           defparam ix31906z7095.lut_mask = 16'h5303;
    fiftyfivenm_lcell_comb ix61482z7096 (.combout (nx61482z2), .dataa (1'b1), .datab (
                           u_lab3_not_minuend_1n1s2_3), .datac (nx11351z3), .datad (
                           u_lab3_state[1])) ;
                           defparam ix61482z7096.lut_mask = 16'h030f;
    fiftyfivenm_lcell_comb ix54782z7097 (.combout (nx54782z2), .dataa (
                           u_lab3_not_minuend_1n1s2_3), .datab (nx11351z5), .datac (
                           nx41843z3), .datad (u_lab3_state[1])) ;
                           defparam ix54782z7097.lut_mask = 16'h0103;
    fiftyfivenm_lcell_comb ix37041z7095 (.combout (nx37041z1), .dataa (
                           u_lab3_not_minuend_1n1s2_2), .datab (nx6634z2), .datac (
                           u_lab3_state[3]), .datad (i_valid)) ;
                           defparam ix37041z7095.lut_mask = 16'h5303;
    fiftyfivenm_lcell_comb ix1081z7096 (.combout (nx1081z2), .dataa (1'b1), .datab (
                           u_lab3_not_minuend_1n1s2_2), .datac (nx11351z3), .datad (
                           u_lab3_state[1])) ;
                           defparam ix1081z7096.lut_mask = 16'h030f;
    fiftyfivenm_lcell_comb ix59917z7097 (.combout (nx59917z2), .dataa (
                           u_lab3_not_minuend_1n1s2_2), .datab (nx11351z5), .datac (
                           nx41843z3), .datad (u_lab3_state[1])) ;
                           defparam ix59917z7097.lut_mask = 16'h0103;
    fiftyfivenm_lcell_comb ix42176z7095 (.combout (nx42176z1), .dataa (
                           u_lab3_not_minuend_1n1s2_1), .datab (nx6634z2), .datac (
                           u_lab3_state[3]), .datad (i_valid)) ;
                           defparam ix42176z7095.lut_mask = 16'h5303;
    fiftyfivenm_lcell_comb ix6216z7096 (.combout (nx6216z2), .dataa (1'b1), .datab (
                           u_lab3_not_minuend_1n1s2_1), .datac (nx11351z3), .datad (
                           u_lab3_state[1])) ;
                           defparam ix6216z7096.lut_mask = 16'h030f;
    fiftyfivenm_lcell_comb ix65052z7097 (.combout (nx65052z2), .dataa (
                           u_lab3_not_minuend_1n1s2_1), .datab (nx11351z5), .datac (
                           nx41843z3), .datad (u_lab3_state[1])) ;
                           defparam ix65052z7097.lut_mask = 16'h0103;
    fiftyfivenm_lcell_comb ix47311z7095 (.combout (nx47311z1), .dataa (
                           u_lab3_not_minuend_1n1s2_0), .datab (nx6634z2), .datac (
                           u_lab3_state[3]), .datad (i_valid)) ;
                           defparam ix47311z7095.lut_mask = 16'h5303;
    fiftyfivenm_lcell_comb ix11351z7096 (.combout (nx11351z2), .dataa (1'b1), .datab (
                           u_lab3_not_minuend_1n1s2_0), .datac (nx11351z3), .datad (
                           u_lab3_state[1])) ;
                           defparam ix11351z7096.lut_mask = 16'h030f;
    fiftyfivenm_lcell_comb ix4651z7097 (.combout (nx4651z2), .dataa (
                           u_lab3_not_minuend_1n1s2_0), .datab (nx11351z5), .datac (
                           nx41843z3), .datad (u_lab3_state[1])) ;
                           defparam ix4651z7097.lut_mask = 16'h0103;
    fiftyfivenm_lcell_comb ix63348z7095 (.combout (nx63348z1), .dataa (
                           u_lab3_rtlc0_PS25_n202), .datab (nx63348z2), .datac (
                           u_lab3_state[3]), .datad (u_lab3_state[4])) ;
                           defparam ix63348z7095.lut_mask = 16'h45c0;
    fiftyfivenm_lcell_comb ix61354z7095 (.combout (nx61354z1), .dataa (nx60357z2
                           ), .datab (nx62351z2), .datac (u_lab3_state[1]), .datad (
                           u_lab3_state[3])) ;
                           defparam ix61354z7095.lut_mask = 16'h8c80;
    fiftyfivenm_lcell_comb ix60357z7095 (.combout (nx60357z1), .dataa (nx60357z2
                           ), .datab (nx60357z7), .datac (nx6634z2), .datad (
                           u_lab3_state[1])) ;
                           defparam ix60357z7095.lut_mask = 16'h5d0c;
    fiftyfivenm_lcell_comb ix59360z7095 (.combout (nx59360z1), .dataa (nx6634z2)
                           , .datab (u_lab3_state[4]), .datac (i_valid), .datad (
                           reset_n)) ;
                           defparam ix59360z7095.lut_mask = 16'h3a22;
    fiftyfivenm_lcell_comb ix48923z7098 (.combout (nx48923z4), .dataa (nx62976z2
                           ), .datab (nx48923z5), .datac (nx48923z6), .datad (
                           u_lab3_state[2])) ;
                           defparam ix48923z7098.lut_mask = 16'hffec;
    fiftyfivenm_lcell_comb ix48923z7099 (.combout (nx48923z5), .dataa (1'b1), .datab (
                           1'b1), .datac (nx6634z2), .datad (i_valid)) ;
                           defparam ix48923z7099.lut_mask = 16'h000f;
    fiftyfivenm_lcell_comb ix62351z7096 (.combout (nx62351z2), .dataa (nx63348z3
                           ), .datab (nx62351z3), .datac (u_lab3_state[3]), .datad (
                           u_lab3_compute_flag)) ;
                           defparam ix62351z7096.lut_mask = 16'h2f0f;
    fiftyfivenm_lcell_comb ix47763z7096 (.combout (nx47763z1), .dataa (
                           nx63348z13), .datab (nx6634z2), .datac (
                           u_lab3_state[2]), .datad (i_valid)) ;
                           defparam ix47763z7096.lut_mask = 16'hf1f3;
    fiftyfivenm_lcell_comb ix42628z7096 (.combout (nx42628z1), .dataa (
                           u_lab3_not_minuend_1n1s2_14), .datab (nx6634z2), .datac (
                           u_lab3_state[2]), .datad (i_valid)) ;
                           defparam ix42628z7096.lut_mask = 16'hf2f3;
    fiftyfivenm_lcell_comb ix4651z7096 (.combout (nx4651z1), .dataa (
                           u_lab3_not_minuend_1n1s2_0), .datab (nx6634z2), .datac (
                           u_lab3_state[2]), .datad (i_valid)) ;
                           defparam ix4651z7096.lut_mask = 16'hf2f3;
    fiftyfivenm_lcell_comb ix65052z7096 (.combout (nx65052z1), .dataa (
                           u_lab3_not_minuend_1n1s2_1), .datab (nx6634z2), .datac (
                           u_lab3_state[2]), .datad (i_valid)) ;
                           defparam ix65052z7096.lut_mask = 16'hf2f3;
    fiftyfivenm_lcell_comb ix59917z7096 (.combout (nx59917z1), .dataa (
                           u_lab3_not_minuend_1n1s2_2), .datab (nx6634z2), .datac (
                           u_lab3_state[2]), .datad (i_valid)) ;
                           defparam ix59917z7096.lut_mask = 16'hf2f3;
    fiftyfivenm_lcell_comb ix54782z7096 (.combout (nx54782z1), .dataa (
                           u_lab3_not_minuend_1n1s2_3), .datab (nx6634z2), .datac (
                           u_lab3_state[2]), .datad (i_valid)) ;
                           defparam ix54782z7096.lut_mask = 16'hf2f3;
    fiftyfivenm_lcell_comb ix15889z7096 (.combout (nx15889z1), .dataa (
                           u_lab3_not_minuend_1n1s2_4), .datab (nx6634z2), .datac (
                           u_lab3_state[2]), .datad (i_valid)) ;
                           defparam ix15889z7096.lut_mask = 16'hf2f3;
    fiftyfivenm_lcell_comb ix21024z7096 (.combout (nx21024z1), .dataa (
                           u_lab3_not_minuend_1n1s2_5), .datab (nx6634z2), .datac (
                           u_lab3_state[2]), .datad (i_valid)) ;
                           defparam ix21024z7096.lut_mask = 16'hf2f3;
    fiftyfivenm_lcell_comb ix26159z7096 (.combout (nx26159z1), .dataa (
                           u_lab3_not_minuend_1n1s2_6), .datab (nx6634z2), .datac (
                           u_lab3_state[2]), .datad (i_valid)) ;
                           defparam ix26159z7096.lut_mask = 16'hf2f3;
    fiftyfivenm_lcell_comb ix31294z7096 (.combout (nx31294z1), .dataa (
                           u_lab3_not_minuend_1n1s2_7), .datab (nx6634z2), .datac (
                           u_lab3_state[2]), .datad (i_valid)) ;
                           defparam ix31294z7096.lut_mask = 16'hf2f3;
    fiftyfivenm_lcell_comb ix36429z7096 (.combout (nx36429z1), .dataa (
                           u_lab3_not_minuend_1n1s2_8), .datab (nx6634z2), .datac (
                           u_lab3_state[2]), .datad (i_valid)) ;
                           defparam ix36429z7096.lut_mask = 16'hf2f3;
    fiftyfivenm_lcell_comb ix41564z7096 (.combout (nx41564z1), .dataa (
                           u_lab3_not_minuend_1n1s2_9), .datab (nx6634z2), .datac (
                           u_lab3_state[2]), .datad (i_valid)) ;
                           defparam ix41564z7096.lut_mask = 16'hf2f3;
    fiftyfivenm_lcell_comb ix22088z7096 (.combout (nx22088z1), .dataa (
                           u_lab3_not_minuend_1n1s2_10), .datab (nx6634z2), .datac (
                           u_lab3_state[2]), .datad (i_valid)) ;
                           defparam ix22088z7096.lut_mask = 16'hf2f3;
    fiftyfivenm_lcell_comb ix27223z7096 (.combout (nx27223z1), .dataa (
                           u_lab3_not_minuend_1n1s2_11), .datab (nx6634z2), .datac (
                           u_lab3_state[2]), .datad (i_valid)) ;
                           defparam ix27223z7096.lut_mask = 16'hf2f3;
    fiftyfivenm_lcell_comb ix32358z7096 (.combout (nx32358z1), .dataa (
                           u_lab3_not_minuend_1n1s2_12), .datab (nx6634z2), .datac (
                           u_lab3_state[2]), .datad (i_valid)) ;
                           defparam ix32358z7096.lut_mask = 16'hf2f3;
    fiftyfivenm_lcell_comb ix37493z7096 (.combout (nx37493z1), .dataa (
                           u_lab3_not_minuend_1n1s2_13), .datab (nx6634z2), .datac (
                           u_lab3_state[2]), .datad (i_valid)) ;
                           defparam ix37493z7096.lut_mask = 16'hf2f3;
    fiftyfivenm_lcell_comb ix11351z7097 (.combout (nx11351z3), .dataa (nx11351z4
                           ), .datab (nx11351z5), .datac (u_lab3_state[1]), .datad (
                           i_valid)) ;
                           defparam ix11351z7097.lut_mask = 16'hecfc;
    fiftyfivenm_lcell_comb ix11351z7099 (.combout (nx11351z5), .dataa (
                           u_lab3_state[2]), .datab (u_lab3_state[3]), .datac (
                           u_lab3_state[4]), .datad (u_lab3_stage_1_)) ;
                           defparam ix11351z7099.lut_mask = 16'hfcfe;
    fiftyfivenm_lcell_comb ix48923z7097 (.combout (nx48923z3), .dataa (nx41843z4
                           ), .datab (nx63348z3), .datac (nx41843z5), .datad (
                           i_valid)) ;
                           defparam ix48923z7097.lut_mask = 16'hecff;
    fiftyfivenm_lcell_comb ix62976z7097 (.combout (nx62976z3), .dataa (nx41843z4
                           ), .datab (nx41843z5), .datac (u_lab3_state[1]), .datad (
                           i_valid)) ;
                           defparam ix62976z7097.lut_mask = 16'h80f0;
    fiftyfivenm_lcell_comb ix62351z7097 (.combout (nx62351z3), .dataa (nx62351z4
                           ), .datab (nx41843z6), .datac (nx60357z5), .datad (
                           nx41843z9)) ;
                           defparam ix62351z7097.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix41843z7099 (.combout (nx41843z5), .dataa (nx41843z6
                           ), .datab (nx41843z7), .datac (nx41843z8), .datad (
                           nx41843z9)) ;
                           defparam ix41843z7099.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix60357z7096 (.combout (nx60357z2), .dataa (nx60357z3
                           ), .datab (nx60357z4), .datac (nx63348z3), .datad (
                           u_lab3_row[0])) ;
                           defparam ix60357z7096.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix63348z7098 (.combout (nx63348z3), .dataa (nx63348z4
                           ), .datab (nx63348z5), .datac (nx63348z6), .datad (
                           nx63348z9)) ;
                           defparam ix63348z7098.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix11351z7098 (.combout (nx11351z4), .dataa (nx41843z6
                           ), .datab (nx60357z5), .datac (nx41843z9), .datad (
                           nx41843z4)) ;
                           defparam ix11351z7098.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix48923z7096 (.combout (nx48923z2), .dataa (nx63348z3
                           ), .datab (u_lab3_state[3]), .datac (u_lab3_state[4])
                           , .datad (i_valid)) ;
                           defparam ix48923z7096.lut_mask = 16'hf8fc;
    fiftyfivenm_lcell_comb ix48923z7095 (.combout (nx48923z1), .dataa (nx48923z2
                           ), .datab (nx48923z3), .datac (nx48923z4), .datad (
                           nx41843z3)) ;
                           defparam ix48923z7095.lut_mask = 16'hf1f5;
    fiftyfivenm_lcell_comb ix4372z7095 (.combout (nx4372z1), .dataa (1'b1), .datab (
                           u_lab3_addend_0_[0]), .datac (u_lab3_state[1]), .datad (
                           i_data[0])) ;
                           defparam ix4372z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix5369z7095 (.combout (nx5369z1), .dataa (1'b1), .datab (
                           u_lab3_addend_0_[1]), .datac (u_lab3_state[1]), .datad (
                           i_data[1])) ;
                           defparam ix5369z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix6366z7095 (.combout (nx6366z1), .dataa (1'b1), .datab (
                           u_lab3_addend_0_[2]), .datac (u_lab3_state[1]), .datad (
                           i_data[2])) ;
                           defparam ix6366z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix7363z7095 (.combout (nx7363z1), .dataa (1'b1), .datab (
                           u_lab3_addend_0_[3]), .datac (u_lab3_state[1]), .datad (
                           i_data[3])) ;
                           defparam ix7363z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix8360z7095 (.combout (nx8360z1), .dataa (1'b1), .datab (
                           u_lab3_addend_0_[4]), .datac (u_lab3_state[1]), .datad (
                           i_data[4])) ;
                           defparam ix8360z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix9357z7095 (.combout (nx9357z1), .dataa (1'b1), .datab (
                           u_lab3_addend_0_[5]), .datac (u_lab3_state[1]), .datad (
                           i_data[5])) ;
                           defparam ix9357z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix10354z7095 (.combout (nx10354z1), .dataa (1'b1), .datab (
                           u_lab3_addend_0_[6]), .datac (u_lab3_state[1]), .datad (
                           i_data[6])) ;
                           defparam ix10354z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix11351z7095 (.combout (nx11351z1), .dataa (1'b1), .datab (
                           u_lab3_addend_0_[7]), .datac (u_lab3_state[1]), .datad (
                           i_data[7])) ;
                           defparam ix11351z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix64773z7095 (.combout (nx64773z1), .dataa (1'b1), .datab (
                           u_lab3_addend_1_[0]), .datac (u_lab3_state[1]), .datad (
                           i_data[0])) ;
                           defparam ix64773z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix234z7095 (.combout (nx234z1), .dataa (1'b1), .datab (
                           u_lab3_addend_1_[1]), .datac (u_lab3_state[1]), .datad (
                           i_data[1])) ;
                           defparam ix234z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix1231z7095 (.combout (nx1231z1), .dataa (1'b1), .datab (
                           u_lab3_addend_1_[2]), .datac (u_lab3_state[1]), .datad (
                           i_data[2])) ;
                           defparam ix1231z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix2228z7095 (.combout (nx2228z1), .dataa (1'b1), .datab (
                           u_lab3_addend_1_[3]), .datac (u_lab3_state[1]), .datad (
                           i_data[3])) ;
                           defparam ix2228z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix3225z7095 (.combout (nx3225z1), .dataa (1'b1), .datab (
                           u_lab3_addend_1_[4]), .datac (u_lab3_state[1]), .datad (
                           i_data[4])) ;
                           defparam ix3225z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix4222z7095 (.combout (nx4222z1), .dataa (1'b1), .datab (
                           u_lab3_addend_1_[5]), .datac (u_lab3_state[1]), .datad (
                           i_data[5])) ;
                           defparam ix4222z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix5219z7095 (.combout (nx5219z1), .dataa (1'b1), .datab (
                           u_lab3_addend_1_[6]), .datac (u_lab3_state[1]), .datad (
                           i_data[6])) ;
                           defparam ix5219z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix6216z7095 (.combout (nx6216z1), .dataa (1'b1), .datab (
                           u_lab3_addend_1_[7]), .datac (u_lab3_state[1]), .datad (
                           i_data[7])) ;
                           defparam ix6216z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix59638z7095 (.combout (nx59638z1), .dataa (1'b1), .datab (
                           u_lab3_addend_2_[0]), .datac (u_lab3_state[1]), .datad (
                           i_data[0])) ;
                           defparam ix59638z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix60635z7095 (.combout (nx60635z1), .dataa (1'b1), .datab (
                           u_lab3_addend_2_[1]), .datac (u_lab3_state[1]), .datad (
                           i_data[1])) ;
                           defparam ix60635z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix61632z7095 (.combout (nx61632z1), .dataa (1'b1), .datab (
                           u_lab3_addend_2_[2]), .datac (u_lab3_state[1]), .datad (
                           i_data[2])) ;
                           defparam ix61632z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix62629z7095 (.combout (nx62629z1), .dataa (1'b1), .datab (
                           u_lab3_addend_2_[3]), .datac (u_lab3_state[1]), .datad (
                           i_data[3])) ;
                           defparam ix62629z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix63626z7095 (.combout (nx63626z1), .dataa (1'b1), .datab (
                           u_lab3_addend_2_[4]), .datac (u_lab3_state[1]), .datad (
                           i_data[4])) ;
                           defparam ix63626z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix64623z7095 (.combout (nx64623z1), .dataa (1'b1), .datab (
                           u_lab3_addend_2_[5]), .datac (u_lab3_state[1]), .datad (
                           i_data[5])) ;
                           defparam ix64623z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix84z7095 (.combout (nx84z1), .dataa (1'b1), .datab (
                           u_lab3_addend_2_[6]), .datac (u_lab3_state[1]), .datad (
                           i_data[6])) ;
                           defparam ix84z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix1081z7095 (.combout (nx1081z1), .dataa (1'b1), .datab (
                           u_lab3_addend_2_[7]), .datac (u_lab3_state[1]), .datad (
                           i_data[7])) ;
                           defparam ix1081z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix54503z7095 (.combout (nx54503z1), .dataa (1'b1), .datab (
                           u_lab3_addend_3_[0]), .datac (u_lab3_state[1]), .datad (
                           i_data[0])) ;
                           defparam ix54503z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix55500z7095 (.combout (nx55500z1), .dataa (1'b1), .datab (
                           u_lab3_addend_3_[1]), .datac (u_lab3_state[1]), .datad (
                           i_data[1])) ;
                           defparam ix55500z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix56497z7095 (.combout (nx56497z1), .dataa (1'b1), .datab (
                           u_lab3_addend_3_[2]), .datac (u_lab3_state[1]), .datad (
                           i_data[2])) ;
                           defparam ix56497z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix57494z7095 (.combout (nx57494z1), .dataa (1'b1), .datab (
                           u_lab3_addend_3_[3]), .datac (u_lab3_state[1]), .datad (
                           i_data[3])) ;
                           defparam ix57494z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix58491z7095 (.combout (nx58491z1), .dataa (1'b1), .datab (
                           u_lab3_addend_3_[4]), .datac (u_lab3_state[1]), .datad (
                           i_data[4])) ;
                           defparam ix58491z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix59488z7095 (.combout (nx59488z1), .dataa (1'b1), .datab (
                           u_lab3_addend_3_[5]), .datac (u_lab3_state[1]), .datad (
                           i_data[5])) ;
                           defparam ix59488z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix60485z7095 (.combout (nx60485z1), .dataa (1'b1), .datab (
                           u_lab3_addend_3_[6]), .datac (u_lab3_state[1]), .datad (
                           i_data[6])) ;
                           defparam ix60485z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix61482z7095 (.combout (nx61482z1), .dataa (1'b1), .datab (
                           u_lab3_addend_3_[7]), .datac (u_lab3_state[1]), .datad (
                           i_data[7])) ;
                           defparam ix61482z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix49368z7095 (.combout (nx49368z1), .dataa (1'b1), .datab (
                           u_lab3_addend_4_[0]), .datac (u_lab3_state[1]), .datad (
                           i_data[0])) ;
                           defparam ix49368z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix50365z7095 (.combout (nx50365z1), .dataa (1'b1), .datab (
                           u_lab3_addend_4_[1]), .datac (u_lab3_state[1]), .datad (
                           i_data[1])) ;
                           defparam ix50365z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix51362z7095 (.combout (nx51362z1), .dataa (1'b1), .datab (
                           u_lab3_addend_4_[2]), .datac (u_lab3_state[1]), .datad (
                           i_data[2])) ;
                           defparam ix51362z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix52359z7095 (.combout (nx52359z1), .dataa (1'b1), .datab (
                           u_lab3_addend_4_[3]), .datac (u_lab3_state[1]), .datad (
                           i_data[3])) ;
                           defparam ix52359z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix53356z7095 (.combout (nx53356z1), .dataa (1'b1), .datab (
                           u_lab3_addend_4_[4]), .datac (u_lab3_state[1]), .datad (
                           i_data[4])) ;
                           defparam ix53356z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix54353z7095 (.combout (nx54353z1), .dataa (1'b1), .datab (
                           u_lab3_addend_4_[5]), .datac (u_lab3_state[1]), .datad (
                           i_data[5])) ;
                           defparam ix54353z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix55350z7095 (.combout (nx55350z1), .dataa (1'b1), .datab (
                           u_lab3_addend_4_[6]), .datac (u_lab3_state[1]), .datad (
                           i_data[6])) ;
                           defparam ix55350z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix56347z7095 (.combout (nx56347z1), .dataa (1'b1), .datab (
                           u_lab3_addend_4_[7]), .datac (u_lab3_state[1]), .datad (
                           i_data[7])) ;
                           defparam ix56347z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix44233z7095 (.combout (nx44233z1), .dataa (1'b1), .datab (
                           u_lab3_addend_5_[0]), .datac (u_lab3_state[1]), .datad (
                           i_data[0])) ;
                           defparam ix44233z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix45230z7095 (.combout (nx45230z1), .dataa (1'b1), .datab (
                           u_lab3_addend_5_[1]), .datac (u_lab3_state[1]), .datad (
                           i_data[1])) ;
                           defparam ix45230z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix46227z7095 (.combout (nx46227z1), .dataa (1'b1), .datab (
                           u_lab3_addend_5_[2]), .datac (u_lab3_state[1]), .datad (
                           i_data[2])) ;
                           defparam ix46227z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix47224z7095 (.combout (nx47224z1), .dataa (1'b1), .datab (
                           u_lab3_addend_5_[3]), .datac (u_lab3_state[1]), .datad (
                           i_data[3])) ;
                           defparam ix47224z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix48221z7095 (.combout (nx48221z1), .dataa (1'b1), .datab (
                           u_lab3_addend_5_[4]), .datac (u_lab3_state[1]), .datad (
                           i_data[4])) ;
                           defparam ix48221z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix49218z7095 (.combout (nx49218z1), .dataa (1'b1), .datab (
                           u_lab3_addend_5_[5]), .datac (u_lab3_state[1]), .datad (
                           i_data[5])) ;
                           defparam ix49218z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix50215z7095 (.combout (nx50215z1), .dataa (1'b1), .datab (
                           u_lab3_addend_5_[6]), .datac (u_lab3_state[1]), .datad (
                           i_data[6])) ;
                           defparam ix50215z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix51212z7095 (.combout (nx51212z1), .dataa (1'b1), .datab (
                           u_lab3_addend_5_[7]), .datac (u_lab3_state[1]), .datad (
                           i_data[7])) ;
                           defparam ix51212z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix39098z7095 (.combout (nx39098z1), .dataa (1'b1), .datab (
                           u_lab3_addend_6_[0]), .datac (u_lab3_state[1]), .datad (
                           i_data[0])) ;
                           defparam ix39098z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix40095z7095 (.combout (nx40095z1), .dataa (1'b1), .datab (
                           u_lab3_addend_6_[1]), .datac (u_lab3_state[1]), .datad (
                           i_data[1])) ;
                           defparam ix40095z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix41092z7095 (.combout (nx41092z1), .dataa (1'b1), .datab (
                           u_lab3_addend_6_[2]), .datac (u_lab3_state[1]), .datad (
                           i_data[2])) ;
                           defparam ix41092z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix42089z7095 (.combout (nx42089z1), .dataa (1'b1), .datab (
                           u_lab3_addend_6_[3]), .datac (u_lab3_state[1]), .datad (
                           i_data[3])) ;
                           defparam ix42089z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix43086z7095 (.combout (nx43086z1), .dataa (1'b1), .datab (
                           u_lab3_addend_6_[4]), .datac (u_lab3_state[1]), .datad (
                           i_data[4])) ;
                           defparam ix43086z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix44083z7095 (.combout (nx44083z1), .dataa (1'b1), .datab (
                           u_lab3_addend_6_[5]), .datac (u_lab3_state[1]), .datad (
                           i_data[5])) ;
                           defparam ix44083z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix45080z7095 (.combout (nx45080z1), .dataa (1'b1), .datab (
                           u_lab3_addend_6_[6]), .datac (u_lab3_state[1]), .datad (
                           i_data[6])) ;
                           defparam ix45080z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix46077z7095 (.combout (nx46077z1), .dataa (1'b1), .datab (
                           u_lab3_addend_6_[7]), .datac (u_lab3_state[1]), .datad (
                           i_data[7])) ;
                           defparam ix46077z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix33963z7095 (.combout (nx33963z1), .dataa (1'b1), .datab (
                           u_lab3_addend_7_[0]), .datac (u_lab3_state[1]), .datad (
                           i_data[0])) ;
                           defparam ix33963z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix34960z7095 (.combout (nx34960z1), .dataa (1'b1), .datab (
                           u_lab3_addend_7_[1]), .datac (u_lab3_state[1]), .datad (
                           i_data[1])) ;
                           defparam ix34960z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix35957z7095 (.combout (nx35957z1), .dataa (1'b1), .datab (
                           u_lab3_addend_7_[2]), .datac (u_lab3_state[1]), .datad (
                           i_data[2])) ;
                           defparam ix35957z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix36954z7095 (.combout (nx36954z1), .dataa (1'b1), .datab (
                           u_lab3_addend_7_[3]), .datac (u_lab3_state[1]), .datad (
                           i_data[3])) ;
                           defparam ix36954z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix37951z7095 (.combout (nx37951z1), .dataa (1'b1), .datab (
                           u_lab3_addend_7_[4]), .datac (u_lab3_state[1]), .datad (
                           i_data[4])) ;
                           defparam ix37951z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix38948z7095 (.combout (nx38948z1), .dataa (1'b1), .datab (
                           u_lab3_addend_7_[5]), .datac (u_lab3_state[1]), .datad (
                           i_data[5])) ;
                           defparam ix38948z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix39945z7095 (.combout (nx39945z1), .dataa (1'b1), .datab (
                           u_lab3_addend_7_[6]), .datac (u_lab3_state[1]), .datad (
                           i_data[6])) ;
                           defparam ix39945z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix40942z7095 (.combout (nx40942z1), .dataa (1'b1), .datab (
                           u_lab3_addend_7_[7]), .datac (u_lab3_state[1]), .datad (
                           i_data[7])) ;
                           defparam ix40942z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix36708z7095 (.combout (nx36708z1), .dataa (1'b1), .datab (
                           u_lab3_addend_8_[0]), .datac (u_lab3_state[1]), .datad (
                           i_data[0])) ;
                           defparam ix36708z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix35711z7095 (.combout (nx35711z1), .dataa (1'b1), .datab (
                           u_lab3_addend_8_[1]), .datac (u_lab3_state[1]), .datad (
                           i_data[1])) ;
                           defparam ix35711z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix34714z7095 (.combout (nx34714z1), .dataa (1'b1), .datab (
                           u_lab3_addend_8_[2]), .datac (u_lab3_state[1]), .datad (
                           i_data[2])) ;
                           defparam ix34714z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix33717z7095 (.combout (nx33717z1), .dataa (1'b1), .datab (
                           u_lab3_addend_8_[3]), .datac (u_lab3_state[1]), .datad (
                           i_data[3])) ;
                           defparam ix33717z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix32720z7095 (.combout (nx32720z1), .dataa (1'b1), .datab (
                           u_lab3_addend_8_[4]), .datac (u_lab3_state[1]), .datad (
                           i_data[4])) ;
                           defparam ix32720z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix31723z7095 (.combout (nx31723z1), .dataa (1'b1), .datab (
                           u_lab3_addend_8_[5]), .datac (u_lab3_state[1]), .datad (
                           i_data[5])) ;
                           defparam ix31723z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix30726z7095 (.combout (nx30726z1), .dataa (1'b1), .datab (
                           u_lab3_addend_8_[6]), .datac (u_lab3_state[1]), .datad (
                           i_data[6])) ;
                           defparam ix30726z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix29729z7095 (.combout (nx29729z1), .dataa (1'b1), .datab (
                           u_lab3_addend_8_[7]), .datac (u_lab3_state[1]), .datad (
                           i_data[7])) ;
                           defparam ix29729z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix41843z7113 (.combout (nx41843z14), .dataa (1'b1), .datab (
                           u_lab3_addend_9_[0]), .datac (u_lab3_state[1]), .datad (
                           i_data[0])) ;
                           defparam ix41843z7113.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix40846z7095 (.combout (nx40846z1), .dataa (1'b1), .datab (
                           u_lab3_addend_9_[1]), .datac (u_lab3_state[1]), .datad (
                           i_data[1])) ;
                           defparam ix40846z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix39849z7095 (.combout (nx39849z1), .dataa (1'b1), .datab (
                           u_lab3_addend_9_[2]), .datac (u_lab3_state[1]), .datad (
                           i_data[2])) ;
                           defparam ix39849z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix38852z7095 (.combout (nx38852z1), .dataa (1'b1), .datab (
                           u_lab3_addend_9_[3]), .datac (u_lab3_state[1]), .datad (
                           i_data[3])) ;
                           defparam ix38852z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix37855z7095 (.combout (nx37855z1), .dataa (1'b1), .datab (
                           u_lab3_addend_9_[4]), .datac (u_lab3_state[1]), .datad (
                           i_data[4])) ;
                           defparam ix37855z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix36858z7095 (.combout (nx36858z1), .dataa (1'b1), .datab (
                           u_lab3_addend_9_[5]), .datac (u_lab3_state[1]), .datad (
                           i_data[5])) ;
                           defparam ix36858z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix35861z7095 (.combout (nx35861z1), .dataa (1'b1), .datab (
                           u_lab3_addend_9_[6]), .datac (u_lab3_state[1]), .datad (
                           i_data[6])) ;
                           defparam ix35861z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix34864z7095 (.combout (nx34864z1), .dataa (1'b1), .datab (
                           u_lab3_addend_9_[7]), .datac (u_lab3_state[1]), .datad (
                           i_data[7])) ;
                           defparam ix34864z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix31697z7095 (.combout (nx31697z1), .dataa (1'b1), .datab (
                           u_lab3_addend_10_[0]), .datac (u_lab3_state[1]), .datad (
                           i_data[0])) ;
                           defparam ix31697z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix32694z7095 (.combout (nx32694z1), .dataa (1'b1), .datab (
                           u_lab3_addend_10_[1]), .datac (u_lab3_state[1]), .datad (
                           i_data[1])) ;
                           defparam ix32694z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix33691z7095 (.combout (nx33691z1), .dataa (1'b1), .datab (
                           u_lab3_addend_10_[2]), .datac (u_lab3_state[1]), .datad (
                           i_data[2])) ;
                           defparam ix33691z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix34688z7095 (.combout (nx34688z1), .dataa (1'b1), .datab (
                           u_lab3_addend_10_[3]), .datac (u_lab3_state[1]), .datad (
                           i_data[3])) ;
                           defparam ix34688z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix35685z7095 (.combout (nx35685z1), .dataa (1'b1), .datab (
                           u_lab3_addend_10_[4]), .datac (u_lab3_state[1]), .datad (
                           i_data[4])) ;
                           defparam ix35685z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix36682z7095 (.combout (nx36682z1), .dataa (1'b1), .datab (
                           u_lab3_addend_10_[5]), .datac (u_lab3_state[1]), .datad (
                           i_data[5])) ;
                           defparam ix36682z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix37679z7095 (.combout (nx37679z1), .dataa (1'b1), .datab (
                           u_lab3_addend_10_[6]), .datac (u_lab3_state[1]), .datad (
                           i_data[6])) ;
                           defparam ix37679z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix38676z7095 (.combout (nx38676z1), .dataa (1'b1), .datab (
                           u_lab3_addend_10_[7]), .datac (u_lab3_state[1]), .datad (
                           i_data[7])) ;
                           defparam ix38676z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix26562z7095 (.combout (nx26562z1), .dataa (1'b1), .datab (
                           u_lab3_addend_11_[0]), .datac (u_lab3_state[1]), .datad (
                           i_data[0])) ;
                           defparam ix26562z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix27559z7095 (.combout (nx27559z1), .dataa (1'b1), .datab (
                           u_lab3_addend_11_[1]), .datac (u_lab3_state[1]), .datad (
                           i_data[1])) ;
                           defparam ix27559z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix28556z7095 (.combout (nx28556z1), .dataa (1'b1), .datab (
                           u_lab3_addend_11_[2]), .datac (u_lab3_state[1]), .datad (
                           i_data[2])) ;
                           defparam ix28556z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix29553z7095 (.combout (nx29553z1), .dataa (1'b1), .datab (
                           u_lab3_addend_11_[3]), .datac (u_lab3_state[1]), .datad (
                           i_data[3])) ;
                           defparam ix29553z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix30550z7095 (.combout (nx30550z1), .dataa (1'b1), .datab (
                           u_lab3_addend_11_[4]), .datac (u_lab3_state[1]), .datad (
                           i_data[4])) ;
                           defparam ix30550z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix31547z7095 (.combout (nx31547z1), .dataa (1'b1), .datab (
                           u_lab3_addend_11_[5]), .datac (u_lab3_state[1]), .datad (
                           i_data[5])) ;
                           defparam ix31547z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix32544z7095 (.combout (nx32544z1), .dataa (1'b1), .datab (
                           u_lab3_addend_11_[6]), .datac (u_lab3_state[1]), .datad (
                           i_data[6])) ;
                           defparam ix32544z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix33541z7095 (.combout (nx33541z1), .dataa (1'b1), .datab (
                           u_lab3_addend_11_[7]), .datac (u_lab3_state[1]), .datad (
                           i_data[7])) ;
                           defparam ix33541z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix21427z7095 (.combout (nx21427z1), .dataa (1'b1), .datab (
                           u_lab3_addend_12_[0]), .datac (u_lab3_state[1]), .datad (
                           i_data[0])) ;
                           defparam ix21427z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix22424z7095 (.combout (nx22424z1), .dataa (1'b1), .datab (
                           u_lab3_addend_12_[1]), .datac (u_lab3_state[1]), .datad (
                           i_data[1])) ;
                           defparam ix22424z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix23421z7095 (.combout (nx23421z1), .dataa (1'b1), .datab (
                           u_lab3_addend_12_[2]), .datac (u_lab3_state[1]), .datad (
                           i_data[2])) ;
                           defparam ix23421z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix24418z7095 (.combout (nx24418z1), .dataa (1'b1), .datab (
                           u_lab3_addend_12_[3]), .datac (u_lab3_state[1]), .datad (
                           i_data[3])) ;
                           defparam ix24418z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix25415z7095 (.combout (nx25415z1), .dataa (1'b1), .datab (
                           u_lab3_addend_12_[4]), .datac (u_lab3_state[1]), .datad (
                           i_data[4])) ;
                           defparam ix25415z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix26412z7095 (.combout (nx26412z1), .dataa (1'b1), .datab (
                           u_lab3_addend_12_[5]), .datac (u_lab3_state[1]), .datad (
                           i_data[5])) ;
                           defparam ix26412z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix27409z7095 (.combout (nx27409z1), .dataa (1'b1), .datab (
                           u_lab3_addend_12_[6]), .datac (u_lab3_state[1]), .datad (
                           i_data[6])) ;
                           defparam ix27409z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix28406z7095 (.combout (nx28406z1), .dataa (1'b1), .datab (
                           u_lab3_addend_12_[7]), .datac (u_lab3_state[1]), .datad (
                           i_data[7])) ;
                           defparam ix28406z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix16292z7095 (.combout (nx16292z1), .dataa (1'b1), .datab (
                           u_lab3_addend_13_[0]), .datac (u_lab3_state[1]), .datad (
                           i_data[0])) ;
                           defparam ix16292z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix17289z7095 (.combout (nx17289z1), .dataa (1'b1), .datab (
                           u_lab3_addend_13_[1]), .datac (u_lab3_state[1]), .datad (
                           i_data[1])) ;
                           defparam ix17289z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix18286z7095 (.combout (nx18286z1), .dataa (1'b1), .datab (
                           u_lab3_addend_13_[2]), .datac (u_lab3_state[1]), .datad (
                           i_data[2])) ;
                           defparam ix18286z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix19283z7095 (.combout (nx19283z1), .dataa (1'b1), .datab (
                           u_lab3_addend_13_[3]), .datac (u_lab3_state[1]), .datad (
                           i_data[3])) ;
                           defparam ix19283z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix20280z7095 (.combout (nx20280z1), .dataa (1'b1), .datab (
                           u_lab3_addend_13_[4]), .datac (u_lab3_state[1]), .datad (
                           i_data[4])) ;
                           defparam ix20280z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix21277z7095 (.combout (nx21277z1), .dataa (1'b1), .datab (
                           u_lab3_addend_13_[5]), .datac (u_lab3_state[1]), .datad (
                           i_data[5])) ;
                           defparam ix21277z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix22274z7095 (.combout (nx22274z1), .dataa (1'b1), .datab (
                           u_lab3_addend_13_[6]), .datac (u_lab3_state[1]), .datad (
                           i_data[6])) ;
                           defparam ix22274z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix23271z7095 (.combout (nx23271z1), .dataa (1'b1), .datab (
                           u_lab3_addend_13_[7]), .datac (u_lab3_state[1]), .datad (
                           i_data[7])) ;
                           defparam ix23271z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix11157z7095 (.combout (nx11157z1), .dataa (1'b1), .datab (
                           u_lab3_addend_14_[0]), .datac (u_lab3_state[1]), .datad (
                           i_data[0])) ;
                           defparam ix11157z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix12154z7095 (.combout (nx12154z1), .dataa (1'b1), .datab (
                           u_lab3_addend_14_[1]), .datac (u_lab3_state[1]), .datad (
                           i_data[1])) ;
                           defparam ix12154z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix13151z7095 (.combout (nx13151z1), .dataa (1'b1), .datab (
                           u_lab3_addend_14_[2]), .datac (u_lab3_state[1]), .datad (
                           i_data[2])) ;
                           defparam ix13151z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix14148z7095 (.combout (nx14148z1), .dataa (1'b1), .datab (
                           u_lab3_addend_14_[3]), .datac (u_lab3_state[1]), .datad (
                           i_data[3])) ;
                           defparam ix14148z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix15145z7095 (.combout (nx15145z1), .dataa (1'b1), .datab (
                           u_lab3_addend_14_[4]), .datac (u_lab3_state[1]), .datad (
                           i_data[4])) ;
                           defparam ix15145z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix16142z7095 (.combout (nx16142z1), .dataa (1'b1), .datab (
                           u_lab3_addend_14_[5]), .datac (u_lab3_state[1]), .datad (
                           i_data[5])) ;
                           defparam ix16142z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix17139z7095 (.combout (nx17139z1), .dataa (1'b1), .datab (
                           u_lab3_addend_14_[6]), .datac (u_lab3_state[1]), .datad (
                           i_data[6])) ;
                           defparam ix17139z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix18136z7095 (.combout (nx18136z1), .dataa (1'b1), .datab (
                           u_lab3_addend_14_[7]), .datac (u_lab3_state[1]), .datad (
                           i_data[7])) ;
                           defparam ix18136z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix6022z7095 (.combout (nx6022z1), .dataa (1'b1), .datab (
                           u_lab3_addend_15_[0]), .datac (u_lab3_state[1]), .datad (
                           i_data[0])) ;
                           defparam ix6022z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix7019z7095 (.combout (nx7019z1), .dataa (1'b1), .datab (
                           u_lab3_addend_15_[1]), .datac (u_lab3_state[1]), .datad (
                           i_data[1])) ;
                           defparam ix7019z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix8016z7095 (.combout (nx8016z1), .dataa (1'b1), .datab (
                           u_lab3_addend_15_[2]), .datac (u_lab3_state[1]), .datad (
                           i_data[2])) ;
                           defparam ix8016z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix9013z7095 (.combout (nx9013z1), .dataa (1'b1), .datab (
                           u_lab3_addend_15_[3]), .datac (u_lab3_state[1]), .datad (
                           i_data[3])) ;
                           defparam ix9013z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix10010z7095 (.combout (nx10010z1), .dataa (1'b1), .datab (
                           u_lab3_addend_15_[4]), .datac (u_lab3_state[1]), .datad (
                           i_data[4])) ;
                           defparam ix10010z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix11007z7095 (.combout (nx11007z1), .dataa (1'b1), .datab (
                           u_lab3_addend_15_[5]), .datac (u_lab3_state[1]), .datad (
                           i_data[5])) ;
                           defparam ix11007z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix12004z7095 (.combout (nx12004z1), .dataa (1'b1), .datab (
                           u_lab3_addend_15_[6]), .datac (u_lab3_state[1]), .datad (
                           i_data[6])) ;
                           defparam ix12004z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix13001z7095 (.combout (nx13001z1), .dataa (1'b1), .datab (
                           u_lab3_addend_15_[7]), .datac (u_lab3_state[1]), .datad (
                           i_data[7])) ;
                           defparam ix13001z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix18625z7095 (.combout (nx18625z1), .dataa (1'b1), .datab (
                           u_seg7_rtlcP1[1]), .datac (u_seg7_rtlcP1[8]), .datad (
                           seg7_en[1])) ;
                           defparam ix18625z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix28027z7095 (.combout (nx28027z1), .dataa (1'b1), .datab (
                           u_seg7_rtlcP1[5]), .datac (u_seg7_rtlcP1[12]), .datad (
                           seg7_en[1])) ;
                           defparam ix28027z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix51544z7095 (.combout (nx51544z1), .dataa (1'b1), .datab (
                           u_seg7_rtlcP1[6]), .datac (u_seg7_rtlcP1[13]), .datad (
                           seg7_en[1])) ;
                           defparam ix51544z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix62976z7096 (.combout (nx62976z2), .dataa (1'b1), .datab (
                           1'b1), .datac (nx63348z3), .datad (u_lab3_state[1])
                           ) ;
                           defparam ix62976z7096.lut_mask = 16'hf000;
    fiftyfivenm_lcell_comb ix6634z7095 (.combout (nx6634z1), .dataa (1'b1), .datab (
                           nx6634z2), .datac (u_lab3_state[4]), .datad (
                           seg7_pts_1_)) ;
                           defparam ix6634z7095.lut_mask = 16'hccc0;
    fiftyfivenm_lcell_comb ix3960z7095 (.combout (nx3960z1), .dataa (1'b1), .datab (
                           nx6634z2), .datac (u_lab3_state[2]), .datad (
                           u_lab3_stage_1_)) ;
                           defparam ix3960z7095.lut_mask = 16'hfcf0;
    fiftyfivenm_lcell_comb ix29107z7095 (.combout (nx29107z1), .dataa (1'b1), .datab (
                           nx29107z2), .datac (yes_uart_u_uart_Tx_Reg_14n6ss1[0]
                           ), .datad (nx57589z1)) ;
                           defparam ix29107z7095.lut_mask = 16'hcf03;
    fiftyfivenm_lcell_comb ix62976z7095 (.combout (nx62976z1), .dataa (nx62976z2
                           ), .datab (nx62976z3), .datac (nx62976z4), .datad (
                           u_lab3_flag)) ;
                           defparam ix62976z7095.lut_mask = 16'hef20;
    fiftyfivenm_lcell_comb ix46918z7095 (.combout (nx46918z1), .dataa (1'b1), .datab (
                           1'b1), .datac (nx46918z2), .datad (
                           yes_uart_u_uart_TxFSM[0])) ;
                           defparam ix46918z7095.lut_mask = 16'hf00f;
    fiftyfivenm_lcell_comb ix45921z7095 (.combout (nx45921z1), .dataa (1'b1), .datab (
                           nx46918z2), .datac (yes_uart_u_uart_TxFSM[0]), .datad (
                           yes_uart_u_uart_TxFSM[1])) ;
                           defparam ix45921z7095.lut_mask = 16'hcf30;
    fiftyfivenm_lcell_comb ix31891z7095 (.combout (nx31891z1), .dataa (
                           u_lab3_p_1n7s2_31_), .datab (nx53092z2), .datac (
                           u_lab3_state[3]), .datad (u_lab3_p_31_)) ;
                           defparam ix31891z7095.lut_mask = 16'hec20;
    fiftyfivenm_lcell_comb ix53092z7095 (.combout (nx53092z1), .dataa (nx63348z3
                           ), .datab (nx53092z2), .datac (u_lab3_state[3]), .datad (
                           u_lab3_compute_flag)) ;
                           defparam ix53092z7095.lut_mask = 16'hec20;
    fiftyfivenm_lcell_comb ix64005z7097 (.combout (nx64005z2), .dataa (nx46026z2
                           ), .datab (yes_uart_u_uart_RxFSM[5]), .datac (
                           yes_uart_u_uart_TopRx), .datad (uart_rx)) ;
                           defparam ix64005z7097.lut_mask = 16'h02ce;
    fiftyfivenm_lcell_comb ix46918z7098 (.combout (nx46918z4), .dataa (1'b1), .datab (
                           1'b1), .datac (yes_uart_u_uart_TxBitCnt[2]), .datad (
                           yes_uart_u_uart_TxBitCnt[3])) ;
                           defparam ix46918z7098.lut_mask = 16'h000f;
    fiftyfivenm_lcell_comb ix51272z7096 (.combout (nx51272z2), .dataa (1'b1), .datab (
                           yes_uart_u_uart_TxFSM[0]), .datac (
                           yes_uart_u_uart_TxFSM[1]), .datad (
                           yes_uart_u_uart_TopTx)) ;
                           defparam ix51272z7096.lut_mask = 16'h3c00;
    fiftyfivenm_lcell_comb ix51272z7095 (.combout (nx51272z1), .dataa (1'b1), .datab (
                           yes_uart_u_uart_TxFSM[1]), .datac (
                           yes_uart_u_uart_TxBitCnt[0]), .datad (
                           yes_uart_u_uart_TopTx)) ;
                           defparam ix51272z7095.lut_mask = 16'h3f0f;
    fiftyfivenm_lcell_comb ix50275z7095 (.combout (nx50275z1), .dataa (
                           yes_uart_u_uart_TxFSM[1]), .datab (
                           yes_uart_u_uart_TxBitCnt[0]), .datac (
                           yes_uart_u_uart_TxBitCnt[1]), .datad (
                           yes_uart_u_uart_TopTx)) ;
                           defparam ix50275z7095.lut_mask = 16'h82c3;
    fiftyfivenm_lcell_comb ix49278z7095 (.combout (nx49278z1), .dataa (nx49278z2
                           ), .datab (yes_uart_u_uart_TxBitCnt[0]), .datac (
                           yes_uart_u_uart_TxBitCnt[1]), .datad (
                           yes_uart_u_uart_TxBitCnt[2])) ;
                           defparam ix49278z7095.lut_mask = 16'h5401;
    fiftyfivenm_lcell_comb ix48281z7095 (.combout (nx48281z1), .dataa (nx48281z2
                           ), .datab (nx49278z2), .datac (
                           yes_uart_u_uart_TxBitCnt[2]), .datad (
                           yes_uart_u_uart_TxBitCnt[3])) ;
                           defparam ix48281z7095.lut_mask = 16'hfecd;
    fiftyfivenm_lcell_comb ix48281z7096 (.combout (nx48281z2), .dataa (1'b1), .datab (
                           1'b1), .datac (yes_uart_u_uart_TxBitCnt[0]), .datad (
                           yes_uart_u_uart_TxBitCnt[1])) ;
                           defparam ix48281z7096.lut_mask = 16'hfff0;
    fiftyfivenm_lcell_comb ix46026z7096 (.combout (nx46026z3), .dataa (1'b1), .datab (
                           nx46026z2), .datac (yes_uart_u_uart_RxFSM[3]), .datad (
                           yes_uart_u_uart_TopRx)) ;
                           defparam ix46026z7096.lut_mask = 16'hf303;
    fiftyfivenm_lcell_comb ix46026z7095 (.combout (nx46026z1), .dataa (1'b1), .datab (
                           1'b1), .datac (nx46026z2), .datad (
                           yes_uart_u_uart_RxBitCnt[0])) ;
                           defparam ix46026z7095.lut_mask = 16'h00f0;
    fiftyfivenm_lcell_comb ix45029z7095 (.combout (nx45029z1), .dataa (1'b1), .datab (
                           nx46026z2), .datac (yes_uart_u_uart_RxBitCnt[0]), .datad (
                           yes_uart_u_uart_RxBitCnt[1])) ;
                           defparam ix45029z7095.lut_mask = 16'h0cc0;
    fiftyfivenm_lcell_comb ix44032z7095 (.combout (nx44032z1), .dataa (nx46026z2
                           ), .datab (yes_uart_u_uart_RxBitCnt[0]), .datac (
                           yes_uart_u_uart_RxBitCnt[1]), .datad (
                           yes_uart_u_uart_RxBitCnt[2])) ;
                           defparam ix44032z7095.lut_mask = 16'h2a80;
    fiftyfivenm_lcell_comb ix43035z7095 (.combout (nx43035z1), .dataa (nx43035z2
                           ), .datab (nx46026z2), .datac (
                           yes_uart_u_uart_RxBitCnt[2]), .datad (
                           yes_uart_u_uart_RxBitCnt[3])) ;
                           defparam ix43035z7095.lut_mask = 16'h4c80;
    fiftyfivenm_lcell_comb ix43035z7096 (.combout (nx43035z2), .dataa (1'b1), .datab (
                           1'b1), .datac (yes_uart_u_uart_RxBitCnt[0]), .datad (
                           yes_uart_u_uart_RxBitCnt[1])) ;
                           defparam ix43035z7096.lut_mask = 16'hf000;
    fiftyfivenm_lcell_comb ix41843z7096 (.combout (nx41843z2), .dataa (1'b1), .datab (
                           1'b1), .datac (u_lab3_state[3]), .datad (
                           u_lab3_state[4])) ;
                           defparam ix41843z7096.lut_mask = 16'hfff0;
    fiftyfivenm_lcell_comb ix22064z7096 (.combout (u_lab3_not_minuend_1n1s2_14)
                           , .dataa (u_lab3_column[0]), .datab (u_lab3_column[1]
                           ), .datac (u_lab3_column[2]), .datad (
                           u_lab3_column[3])) ;
                           defparam ix22064z7096.lut_mask = 16'hbfff;
    fiftyfivenm_lcell_comb ix27199z7096 (.combout (u_lab3_not_minuend_1n1s2_13)
                           , .dataa (u_lab3_column[0]), .datab (u_lab3_column[1]
                           ), .datac (u_lab3_column[2]), .datad (
                           u_lab3_column[3])) ;
                           defparam ix27199z7096.lut_mask = 16'hdfff;
    fiftyfivenm_lcell_comb ix32334z7096 (.combout (u_lab3_not_minuend_1n1s2_12)
                           , .dataa (u_lab3_column[0]), .datab (u_lab3_column[1]
                           ), .datac (u_lab3_column[2]), .datad (
                           u_lab3_column[3])) ;
                           defparam ix32334z7096.lut_mask = 16'hefff;
    fiftyfivenm_lcell_comb ix37469z7096 (.combout (u_lab3_not_minuend_1n1s2_11)
                           , .dataa (u_lab3_column[0]), .datab (u_lab3_column[1]
                           ), .datac (u_lab3_column[2]), .datad (
                           u_lab3_column[3])) ;
                           defparam ix37469z7096.lut_mask = 16'hf7ff;
    fiftyfivenm_lcell_comb ix42604z7096 (.combout (u_lab3_not_minuend_1n1s2_10)
                           , .dataa (u_lab3_column[0]), .datab (u_lab3_column[1]
                           ), .datac (u_lab3_column[2]), .datad (
                           u_lab3_column[3])) ;
                           defparam ix42604z7096.lut_mask = 16'hfbff;
    fiftyfivenm_lcell_comb ix64440z7096 (.combout (u_lab3_not_minuend_1n1s2_9), 
                           .dataa (u_lab3_column[0]), .datab (u_lab3_column[1])
                           , .datac (u_lab3_column[2]), .datad (u_lab3_column[3]
                           )) ;
                           defparam ix64440z7096.lut_mask = 16'hfdff;
    fiftyfivenm_lcell_comb ix6231z7096 (.combout (u_lab3_not_minuend_1n1s2_8), .dataa (
                           u_lab3_column[0]), .datab (u_lab3_column[1]), .datac (
                           u_lab3_column[2]), .datad (u_lab3_column[3])) ;
                           defparam ix6231z7096.lut_mask = 16'hfeff;
    fiftyfivenm_lcell_comb ix11366z7096 (.combout (u_lab3_not_minuend_1n1s2_7), 
                           .dataa (u_lab3_column[0]), .datab (u_lab3_column[1])
                           , .datac (u_lab3_column[2]), .datad (u_lab3_column[3]
                           )) ;
                           defparam ix11366z7096.lut_mask = 16'hff7f;
    fiftyfivenm_lcell_comb ix16501z7096 (.combout (u_lab3_not_minuend_1n1s2_6), 
                           .dataa (u_lab3_column[0]), .datab (u_lab3_column[1])
                           , .datac (u_lab3_column[2]), .datad (u_lab3_column[3]
                           )) ;
                           defparam ix16501z7096.lut_mask = 16'hffbf;
    fiftyfivenm_lcell_comb ix21636z7096 (.combout (u_lab3_not_minuend_1n1s2_5), 
                           .dataa (u_lab3_column[0]), .datab (u_lab3_column[1])
                           , .datac (u_lab3_column[2]), .datad (u_lab3_column[3]
                           )) ;
                           defparam ix21636z7096.lut_mask = 16'hffdf;
    fiftyfivenm_lcell_comb ix26771z7096 (.combout (u_lab3_not_minuend_1n1s2_4), 
                           .dataa (u_lab3_column[0]), .datab (u_lab3_column[1])
                           , .datac (u_lab3_column[2]), .datad (u_lab3_column[3]
                           )) ;
                           defparam ix26771z7096.lut_mask = 16'hffef;
    fiftyfivenm_lcell_comb ix31906z7096 (.combout (u_lab3_not_minuend_1n1s2_3), 
                           .dataa (u_lab3_column[0]), .datab (u_lab3_column[1])
                           , .datac (u_lab3_column[2]), .datad (u_lab3_column[3]
                           )) ;
                           defparam ix31906z7096.lut_mask = 16'hfff7;
    fiftyfivenm_lcell_comb ix37041z7096 (.combout (u_lab3_not_minuend_1n1s2_2), 
                           .dataa (u_lab3_column[0]), .datab (u_lab3_column[1])
                           , .datac (u_lab3_column[2]), .datad (u_lab3_column[3]
                           )) ;
                           defparam ix37041z7096.lut_mask = 16'hfffb;
    fiftyfivenm_lcell_comb ix42176z7096 (.combout (u_lab3_not_minuend_1n1s2_1), 
                           .dataa (u_lab3_column[0]), .datab (u_lab3_column[1])
                           , .datac (u_lab3_column[2]), .datad (u_lab3_column[3]
                           )) ;
                           defparam ix42176z7096.lut_mask = 16'hfffd;
    fiftyfivenm_lcell_comb ix47311z7096 (.combout (u_lab3_not_minuend_1n1s2_0), 
                           .dataa (u_lab3_column[0]), .datab (u_lab3_column[1])
                           , .datac (u_lab3_column[2]), .datad (u_lab3_column[3]
                           )) ;
                           defparam ix47311z7096.lut_mask = 16'hfffe;
    fiftyfivenm_lcell_comb ix41843z7098 (.combout (nx41843z4), .dataa (
                           u_lab3_row[0]), .datab (u_lab3_row[1]), .datac (
                           u_lab3_row[2]), .datad (u_lab3_row[3])) ;
                           defparam ix41843z7098.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix63348z7108 (.combout (nx63348z13), .dataa (
                           u_lab3_column[0]), .datab (u_lab3_column[1]), .datac (
                           u_lab3_column[2]), .datad (u_lab3_column[3])) ;
                           defparam ix63348z7108.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix63348z7107 (.combout (nx63348z12), .dataa (
                           u_lab3_column[4]), .datab (u_lab3_column[5]), .datac (
                           u_lab3_column[6]), .datad (u_lab3_column[7])) ;
                           defparam ix63348z7107.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix63348z7106 (.combout (nx63348z11), .dataa (
                           u_lab3_column[8]), .datab (u_lab3_column[9]), .datac (
                           u_lab3_column[10]), .datad (u_lab3_column[11])) ;
                           defparam ix63348z7106.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix63348z7105 (.combout (nx63348z10), .dataa (
                           u_lab3_column[12]), .datab (u_lab3_column[13]), .datac (
                           u_lab3_column[14]), .datad (u_lab3_column[15])) ;
                           defparam ix63348z7105.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix63348z7104 (.combout (nx63348z9), .dataa (
                           nx63348z10), .datab (nx63348z11), .datac (nx63348z12)
                           , .datad (nx63348z13)) ;
                           defparam ix63348z7104.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix63348z7103 (.combout (nx63348z8), .dataa (
                           u_lab3_column[16]), .datab (u_lab3_column[17]), .datac (
                           u_lab3_column[18]), .datad (u_lab3_column[19])) ;
                           defparam ix63348z7103.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix63348z7102 (.combout (nx63348z7), .dataa (1'b1), .datab (
                           1'b1), .datac (u_lab3_column[20]), .datad (
                           u_lab3_column[21])) ;
                           defparam ix63348z7102.lut_mask = 16'h000f;
    fiftyfivenm_lcell_comb ix63348z7101 (.combout (nx63348z6), .dataa (nx63348z7
                           ), .datab (nx63348z8), .datac (u_lab3_column[22]), .datad (
                           u_lab3_column[23])) ;
                           defparam ix63348z7101.lut_mask = 16'h0008;
    fiftyfivenm_lcell_comb ix63348z7100 (.combout (nx63348z5), .dataa (
                           u_lab3_column[24]), .datab (u_lab3_column[25]), .datac (
                           u_lab3_column[26]), .datad (u_lab3_column[27])) ;
                           defparam ix63348z7100.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix63348z7099 (.combout (nx63348z4), .dataa (
                           u_lab3_column[28]), .datab (u_lab3_column[29]), .datac (
                           u_lab3_column[30]), .datad (u_lab3_column[31])) ;
                           defparam ix63348z7099.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix41843z7107 (.combout (nx41843z13), .dataa (
                           u_lab3_row[4]), .datab (u_lab3_row[5]), .datac (
                           u_lab3_row[6]), .datad (u_lab3_row[7])) ;
                           defparam ix41843z7107.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix41843z7106 (.combout (nx41843z12), .dataa (
                           u_lab3_row[8]), .datab (u_lab3_row[9]), .datac (
                           u_lab3_row[10]), .datad (u_lab3_row[11])) ;
                           defparam ix41843z7106.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix41843z7105 (.combout (nx41843z11), .dataa (
                           u_lab3_row[12]), .datab (u_lab3_row[13]), .datac (
                           u_lab3_row[14]), .datad (u_lab3_row[15])) ;
                           defparam ix41843z7105.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix41843z7104 (.combout (nx41843z10), .dataa (
                           u_lab3_row[16]), .datab (u_lab3_row[17]), .datac (
                           u_lab3_row[18]), .datad (u_lab3_row[19])) ;
                           defparam ix41843z7104.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix41843z7103 (.combout (nx41843z9), .dataa (
                           nx41843z10), .datab (nx41843z11), .datac (nx41843z12)
                           , .datad (nx41843z13)) ;
                           defparam ix41843z7103.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix41843z7102 (.combout (nx41843z8), .dataa (
                           u_lab3_row[20]), .datab (u_lab3_row[21]), .datac (
                           u_lab3_row[22]), .datad (u_lab3_row[23])) ;
                           defparam ix41843z7102.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix60357z7100 (.combout (nx60357z6), .dataa (1'b1), .datab (
                           1'b1), .datac (u_lab3_row[24]), .datad (
                           u_lab3_row[25])) ;
                           defparam ix60357z7100.lut_mask = 16'h000f;
    fiftyfivenm_lcell_comb ix41843z7101 (.combout (nx41843z7), .dataa (
                           u_lab3_row[24]), .datab (u_lab3_row[25]), .datac (
                           u_lab3_row[26]), .datad (u_lab3_row[27])) ;
                           defparam ix41843z7101.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix60357z7099 (.combout (nx60357z5), .dataa (nx60357z6
                           ), .datab (nx41843z8), .datac (u_lab3_row[26]), .datad (
                           u_lab3_row[27])) ;
                           defparam ix60357z7099.lut_mask = 16'h0008;
    fiftyfivenm_lcell_comb ix41843z7100 (.combout (nx41843z6), .dataa (
                           u_lab3_row[28]), .datab (u_lab3_row[29]), .datac (
                           u_lab3_row[30]), .datad (u_lab3_row[31])) ;
                           defparam ix41843z7100.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix62351z7098 (.combout (nx62351z4), .dataa (
                           u_lab3_row[0]), .datab (u_lab3_row[1]), .datac (
                           u_lab3_row[2]), .datad (u_lab3_row[3])) ;
                           defparam ix62351z7098.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix60357z7098 (.combout (nx60357z4), .dataa (nx41843z6
                           ), .datab (nx60357z5), .datac (nx41843z9), .datad (
                           u_lab3_row[1])) ;
                           defparam ix60357z7098.lut_mask = 16'h0080;
    fiftyfivenm_lcell_comb ix60357z7097 (.combout (nx60357z3), .dataa (1'b1), .datab (
                           u_lab3_flag), .datac (u_lab3_row[2]), .datad (
                           u_lab3_row[3])) ;
                           defparam ix60357z7097.lut_mask = 16'h000c;
    fiftyfivenm_lcell_comb ix62351z7095 (.combout (nx62351z1), .dataa (nx62351z2
                           ), .datab (nx63348z2), .datac (u_lab3_state[2]), .datad (
                           reset_n)) ;
                           defparam ix62351z7095.lut_mask = 16'hf100;
    fiftyfivenm_lcell_comb ix60456z7099 (.combout (nx60456z5), .dataa (nx60456z6
                           ), .datab (yes_uart_u_uart_RxDiv[5]), .datac (
                           yes_uart_u_uart_RxDiv[9]), .datad (
                           yes_uart_u_uart_RxDiv[8])) ;
                           defparam ix60456z7099.lut_mask = 16'h0002;
    fiftyfivenm_lcell_comb ix60456z7100 (.combout (nx60456z6), .dataa (
                           yes_uart_u_uart_RxDiv[10]), .datab (
                           yes_uart_u_uart_RxDiv[0]), .datac (
                           yes_uart_u_uart_RxDiv[2]), .datad (
                           yes_uart_u_uart_RxDiv[1])) ;
                           defparam ix60456z7100.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix60456z7098 (.combout (nx60456z4), .dataa (
                           yes_uart_u_uart_RxDiv[7]), .datab (
                           yes_uart_u_uart_RxDiv[3]), .datac (
                           yes_uart_u_uart_RxDiv[4]), .datad (
                           yes_uart_u_uart_RxDivisor_4_)) ;
                           defparam ix60456z7098.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix60456z7097 (.combout (nx60456z3), .dataa (
                           yes_uart_u_uart_RxDiv[7]), .datab (
                           yes_uart_u_uart_RxDiv[3]), .datac (
                           yes_uart_u_uart_RxDiv[4]), .datad (
                           yes_uart_u_uart_RxDivisor_4_)) ;
                           defparam ix60456z7097.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix62450z7098 (.combout (nx62450z4), .dataa (nx62450z5
                           ), .datab (nx62450z6), .datac (
                           yes_uart_u_uart_TxDiv[8]), .datad (
                           yes_uart_u_uart_TxDiv[5])) ;
                           defparam ix62450z7098.lut_mask = 16'ha00c;
    fiftyfivenm_lcell_comb ix62450z7097 (.combout (nx62450z3), .dataa (1'b1), .datab (
                           1'b1), .datac (yes_uart_u_uart_TxDiv[10]), .datad (
                           yes_uart_u_uart_TxDiv[9])) ;
                           defparam ix62450z7097.lut_mask = 16'h000f;
    fiftyfivenm_lcell_comb ix62450z7096 (.combout (nx62450z2), .dataa (
                           yes_uart_u_uart_TxDiv[3]), .datab (
                           yes_uart_u_uart_TxDiv[1]), .datac (
                           yes_uart_u_uart_TxDiv[2]), .datad (
                           yes_uart_u_uart_TxDiv[11])) ;
                           defparam ix62450z7096.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix62450z7100 (.combout (nx62450z6), .dataa (
                           yes_uart_u_uart_TxDiv[7]), .datab (
                           yes_uart_u_uart_TxDiv[4]), .datac (
                           yes_uart_u_uart_TxDiv[0]), .datad (
                           yes_uart_u_uart_RxDivisor_4_)) ;
                           defparam ix62450z7100.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix62450z7099 (.combout (nx62450z5), .dataa (
                           yes_uart_u_uart_TxDiv[7]), .datab (
                           yes_uart_u_uart_TxDiv[4]), .datac (
                           yes_uart_u_uart_TxDiv[0]), .datad (
                           yes_uart_u_uart_RxDivisor_4_)) ;
                           defparam ix62450z7099.lut_mask = 16'h8000;
endmodule


module modgen_counter_32_1 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                             updn, cnt_en ) ;

    input clock ;
    output [31:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [31:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx39034z1, inc_d_0_, nx27063z2, inc_d_1_, nx39256z2, inc_d_2_, 
         nx57428z2, inc_d_3_, nx23040z2, inc_d_4_, nx58827z2, inc_d_5_, 
         nx37857z2, inc_d_6_, nx21526z2, inc_d_7_, nx12862z2, inc_d_8_, 
         nx47250z2, inc_d_9_, nx1955z2, inc_d_10_, nx32433z2, inc_d_11_, 
         nx48764z2, inc_d_12_, nx47920z2, inc_d_13_, nx13532z2, inc_d_14_, 
         nx2799z2, inc_d_15_, nx28349z2, inc_d_16_, nx12018z2, inc_d_17_, 
         nx22370z2, inc_d_18_, nx56758z2, inc_d_19_, nx57983z2, inc_d_20_, 
         nx41941z2, inc_d_21_, nx58272z2, inc_d_22_, nx38412z2, inc_d_23_, 
         nx61512z2, inc_d_24_, nx36406z2, inc_d_25_, nx63518z2, inc_d_26_, 
         nx14313z2, inc_d_27_, nx16835z2, inc_d_28_, nx17553z2, inc_d_29_, 
         nx33884z2, inc_d_30_, nx18310z2, inc_d_31_, nx18310z1;
    wire [97:0] xmplr_dummy ;




    assign nx39034z1 = 1'b0 ;
    fiftyfivenm_lcell_comb ix2_fadd (.combout (inc_d_0_), .cout (nx27063z2), .dataa (
                           q[0]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1)) ;
                           defparam ix2_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix6_fadd (.combout (inc_d_1_), .cout (nx39256z2), .dataa (
                           q[1]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx27063z2)) ;
                           defparam ix6_fadd.lut_mask = 16'h5aa0;
                           defparam ix6_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix10_fadd (.combout (inc_d_2_), .cout (nx57428z2), .dataa (
                           q[2]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx39256z2)) ;
                           defparam ix10_fadd.lut_mask = 16'h5aa0;
                           defparam ix10_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix14_fadd (.combout (inc_d_3_), .cout (nx23040z2), .dataa (
                           q[3]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx57428z2)) ;
                           defparam ix14_fadd.lut_mask = 16'h5aa0;
                           defparam ix14_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix18_fadd (.combout (inc_d_4_), .cout (nx58827z2), .dataa (
                           q[4]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx23040z2)) ;
                           defparam ix18_fadd.lut_mask = 16'h5aa0;
                           defparam ix18_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix22_fadd (.combout (inc_d_5_), .cout (nx37857z2), .dataa (
                           q[5]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx58827z2)) ;
                           defparam ix22_fadd.lut_mask = 16'h5aa0;
                           defparam ix22_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix26_fadd (.combout (inc_d_6_), .cout (nx21526z2), .dataa (
                           q[6]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx37857z2)) ;
                           defparam ix26_fadd.lut_mask = 16'h5aa0;
                           defparam ix26_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix30_fadd (.combout (inc_d_7_), .cout (nx12862z2), .dataa (
                           q[7]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx21526z2)) ;
                           defparam ix30_fadd.lut_mask = 16'h5aa0;
                           defparam ix30_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix34_fadd (.combout (inc_d_8_), .cout (nx47250z2), .dataa (
                           q[8]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx12862z2)) ;
                           defparam ix34_fadd.lut_mask = 16'h5aa0;
                           defparam ix34_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix38_fadd (.combout (inc_d_9_), .cout (nx1955z2), .dataa (
                           q[9]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx47250z2)) ;
                           defparam ix38_fadd.lut_mask = 16'h5aa0;
                           defparam ix38_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix42_fadd (.combout (inc_d_10_), .cout (nx32433z2), .dataa (
                           q[10]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx1955z2)) ;
                           defparam ix42_fadd.lut_mask = 16'h5aa0;
                           defparam ix42_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix46_fadd (.combout (inc_d_11_), .cout (nx48764z2), .dataa (
                           q[11]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx32433z2)) ;
                           defparam ix46_fadd.lut_mask = 16'h5aa0;
                           defparam ix46_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix50_fadd (.combout (inc_d_12_), .cout (nx47920z2), .dataa (
                           q[12]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx48764z2)) ;
                           defparam ix50_fadd.lut_mask = 16'h5aa0;
                           defparam ix50_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix54_fadd (.combout (inc_d_13_), .cout (nx13532z2), .dataa (
                           q[13]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx47920z2)) ;
                           defparam ix54_fadd.lut_mask = 16'h5aa0;
                           defparam ix54_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix58_fadd (.combout (inc_d_14_), .cout (nx2799z2), .dataa (
                           q[14]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx13532z2)) ;
                           defparam ix58_fadd.lut_mask = 16'h5aa0;
                           defparam ix58_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix62_fadd (.combout (inc_d_15_), .cout (nx28349z2), .dataa (
                           q[15]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx2799z2)) ;
                           defparam ix62_fadd.lut_mask = 16'h5aa0;
                           defparam ix62_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix66_fadd (.combout (inc_d_16_), .cout (nx12018z2), .dataa (
                           q[16]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx28349z2)) ;
                           defparam ix66_fadd.lut_mask = 16'h5aa0;
                           defparam ix66_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix70_fadd (.combout (inc_d_17_), .cout (nx22370z2), .dataa (
                           q[17]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx12018z2)) ;
                           defparam ix70_fadd.lut_mask = 16'h5aa0;
                           defparam ix70_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix74_fadd (.combout (inc_d_18_), .cout (nx56758z2), .dataa (
                           q[18]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx22370z2)) ;
                           defparam ix74_fadd.lut_mask = 16'h5aa0;
                           defparam ix74_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix78_fadd (.combout (inc_d_19_), .cout (nx57983z2), .dataa (
                           q[19]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx56758z2)) ;
                           defparam ix78_fadd.lut_mask = 16'h5aa0;
                           defparam ix78_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix82_fadd (.combout (inc_d_20_), .cout (nx41941z2), .dataa (
                           q[20]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx57983z2)) ;
                           defparam ix82_fadd.lut_mask = 16'h5aa0;
                           defparam ix82_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix86_fadd (.combout (inc_d_21_), .cout (nx58272z2), .dataa (
                           q[21]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx41941z2)) ;
                           defparam ix86_fadd.lut_mask = 16'h5aa0;
                           defparam ix86_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix90_fadd (.combout (inc_d_22_), .cout (nx38412z2), .dataa (
                           q[22]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx58272z2)) ;
                           defparam ix90_fadd.lut_mask = 16'h5aa0;
                           defparam ix90_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix94_fadd (.combout (inc_d_23_), .cout (nx61512z2), .dataa (
                           q[23]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx38412z2)) ;
                           defparam ix94_fadd.lut_mask = 16'h5aa0;
                           defparam ix94_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix98_fadd (.combout (inc_d_24_), .cout (nx36406z2), .dataa (
                           q[24]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx61512z2)) ;
                           defparam ix98_fadd.lut_mask = 16'h5aa0;
                           defparam ix98_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix133_fadd (.combout (inc_d_25_), .cout (nx63518z2), 
                           .dataa (q[25]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx36406z2)) ;
                           defparam ix133_fadd.lut_mask = 16'h5aa0;
                           defparam ix133_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix137_fadd (.combout (inc_d_26_), .cout (nx14313z2), 
                           .dataa (q[26]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx63518z2)) ;
                           defparam ix137_fadd.lut_mask = 16'h5aa0;
                           defparam ix137_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix141_fadd (.combout (inc_d_27_), .cout (nx16835z2), 
                           .dataa (q[27]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx14313z2)) ;
                           defparam ix141_fadd.lut_mask = 16'h5aa0;
                           defparam ix141_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix145_fadd (.combout (inc_d_28_), .cout (nx17553z2), 
                           .dataa (q[28]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx16835z2)) ;
                           defparam ix145_fadd.lut_mask = 16'h5aa0;
                           defparam ix145_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix149_fadd (.combout (inc_d_29_), .cout (nx33884z2), 
                           .dataa (q[29]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx17553z2)) ;
                           defparam ix149_fadd.lut_mask = 16'h5aa0;
                           defparam ix149_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix153_fadd (.combout (inc_d_30_), .cout (nx18310z2), 
                           .dataa (q[30]), .datab (1'b1), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx33884z2)) ;
                           defparam ix153_fadd.lut_mask = 16'h5aa0;
                           defparam ix153_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix155_fadd (.combout (inc_d_31_), .dataa (q[31]), .datab (
                           1'b1), .datac (1'b1), .datad (nx18310z1), .cin (
                           nx18310z2)) ;
                           defparam ix155_fadd.lut_mask = 16'h5a5a;
                           defparam ix155_fadd.sum_lutc_input = "cin";
    assign nx18310z1 = 1'b1 ;
    dffeas reg_q_31_ (.q (q[31]), .d (inc_d_31_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_30_ (.q (q[30]), .d (inc_d_30_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_29_ (.q (q[29]), .d (inc_d_29_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_28_ (.q (q[28]), .d (inc_d_28_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_27_ (.q (q[27]), .d (inc_d_27_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_26_ (.q (q[26]), .d (inc_d_26_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_25_ (.q (q[25]), .d (inc_d_25_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_24_ (.q (q[24]), .d (inc_d_24_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_23_ (.q (q[23]), .d (inc_d_23_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_22_ (.q (q[22]), .d (inc_d_22_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_21_ (.q (q[21]), .d (inc_d_21_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_20_ (.q (q[20]), .d (inc_d_20_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_19_ (.q (q[19]), .d (inc_d_19_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_18_ (.q (q[18]), .d (inc_d_18_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_17_ (.q (q[17]), .d (inc_d_17_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_16_ (.q (q[16]), .d (inc_d_16_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_15_ (.q (q[15]), .d (inc_d_15_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_14_ (.q (q[14]), .d (inc_d_14_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_13_ (.q (q[13]), .d (inc_d_13_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_12_ (.q (q[12]), .d (inc_d_12_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_11_ (.q (q[11]), .d (inc_d_11_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_10_ (.q (q[10]), .d (inc_d_10_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_9_ (.q (q[9]), .d (inc_d_9_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_8_ (.q (q[8]), .d (inc_d_8_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_7_ (.q (q[7]), .d (inc_d_7_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_6_ (.q (q[6]), .d (inc_d_6_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_5_ (.q (q[5]), .d (inc_d_5_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_4_ (.q (q[4]), .d (inc_d_4_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_3_ (.q (q[3]), .d (inc_d_3_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_2_ (.q (q[2]), .d (inc_d_2_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_1_ (.q (q[1]), .d (inc_d_1_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
    dffeas reg_q_0_ (.q (q[0]), .d (inc_d_0_), .clk (clock), .ena (clk_en), .clrn (
           nx18310z1), .prn (nx18310z1), .asdata (nx39034z1), .sclr (sclear), .sload (
           nx39034z1)) ;
endmodule


module modgen_counter_32_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                             updn, cnt_en ) ;

    input clock ;
    output [31:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [31:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire GND, sload_mux_0_dup_365, sload_mux_1_dup_366, sload_mux_2_dup_367, 
         sload_mux_3_dup_368, sload_mux_4_dup_369, sload_mux_5_dup_370, 
         sload_mux_6_dup_371, sload_mux_7_dup_372, sload_mux_8_dup_373, 
         sload_mux_9_dup_374, sload_mux_10_dup_375, sload_mux_11_dup_376, 
         sload_mux_12_dup_377, sload_mux_13_dup_378, sload_mux_14_dup_379, 
         sload_mux_15_dup_380, sload_mux_16_dup_381, sload_mux_17_dup_382, 
         sload_mux_18_dup_383, sload_mux_19_dup_384, sload_mux_20_dup_385, 
         sload_mux_21_dup_386, sload_mux_22_dup_387, sload_mux_23_dup_388, 
         sload_mux_24_dup_389, sload_mux_25_dup_390, sload_mux_26_dup_391, 
         sload_mux_27_dup_392, sload_mux_28_dup_393, sload_mux_29_dup_394, 
         sload_mux_30_dup_395, sload_mux_31_dup_396, nx27063z2, nx39256z2, 
         nx57428z2, nx23040z2, nx58827z2, nx37857z2, nx21526z2, nx12862z2, 
         nx47250z2, nx1955z2, nx32433z2, nx48764z2, nx47920z2, nx13532z2, 
         nx2799z2, nx28349z2, nx12018z2, nx22370z2, nx56758z2, nx57983z2, 
         nx41941z2, nx58272z2, nx38412z2, nx61512z2, nx36406z2, nx63518z2, 
         nx14313z2, nx16835z2, nx17553z2, nx33884z2, nx18310z2, nx18310z1;
    wire [71:0] xmplr_dummy ;




    assign GND = 1'b0 ;
    fiftyfivenm_lcell_comb ix2_fadd (.cout (nx27063z2), .dataa (q[0]), .datab (
                           1'b1), .datac (1'b1), .datad (nx18310z1)) ;
                           defparam ix2_fadd.lut_mask = 16'h00aa;
    fiftyfivenm_lcell_comb ix6_fadd (.combout (sload_mux_1_dup_366), .cout (
                           nx39256z2), .dataa (q[1]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx27063z2)) ;
                           defparam ix6_fadd.lut_mask = 16'h12a0;
                           defparam ix6_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix10_fadd (.combout (sload_mux_2_dup_367), .cout (
                           nx57428z2), .dataa (q[2]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx39256z2)) ;
                           defparam ix10_fadd.lut_mask = 16'h12a0;
                           defparam ix10_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix14_fadd (.combout (sload_mux_3_dup_368), .cout (
                           nx23040z2), .dataa (q[3]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx57428z2)) ;
                           defparam ix14_fadd.lut_mask = 16'h12a0;
                           defparam ix14_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix18_fadd (.combout (sload_mux_4_dup_369), .cout (
                           nx58827z2), .dataa (q[4]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx23040z2)) ;
                           defparam ix18_fadd.lut_mask = 16'h12a0;
                           defparam ix18_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix22_fadd (.combout (sload_mux_5_dup_370), .cout (
                           nx37857z2), .dataa (q[5]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx58827z2)) ;
                           defparam ix22_fadd.lut_mask = 16'h12a0;
                           defparam ix22_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix26_fadd (.combout (sload_mux_6_dup_371), .cout (
                           nx21526z2), .dataa (q[6]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx37857z2)) ;
                           defparam ix26_fadd.lut_mask = 16'h12a0;
                           defparam ix26_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix30_fadd (.combout (sload_mux_7_dup_372), .cout (
                           nx12862z2), .dataa (q[7]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx21526z2)) ;
                           defparam ix30_fadd.lut_mask = 16'h12a0;
                           defparam ix30_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix34_fadd (.combout (sload_mux_8_dup_373), .cout (
                           nx47250z2), .dataa (q[8]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx12862z2)) ;
                           defparam ix34_fadd.lut_mask = 16'h12a0;
                           defparam ix34_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix38_fadd (.combout (sload_mux_9_dup_374), .cout (
                           nx1955z2), .dataa (q[9]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx47250z2)) ;
                           defparam ix38_fadd.lut_mask = 16'h12a0;
                           defparam ix38_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix42_fadd (.combout (sload_mux_10_dup_375), .cout (
                           nx32433z2), .dataa (q[10]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx1955z2)) ;
                           defparam ix42_fadd.lut_mask = 16'h12a0;
                           defparam ix42_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix46_fadd (.combout (sload_mux_11_dup_376), .cout (
                           nx48764z2), .dataa (q[11]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx32433z2)) ;
                           defparam ix46_fadd.lut_mask = 16'h12a0;
                           defparam ix46_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix50_fadd (.combout (sload_mux_12_dup_377), .cout (
                           nx47920z2), .dataa (q[12]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx48764z2)) ;
                           defparam ix50_fadd.lut_mask = 16'h12a0;
                           defparam ix50_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix54_fadd (.combout (sload_mux_13_dup_378), .cout (
                           nx13532z2), .dataa (q[13]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx47920z2)) ;
                           defparam ix54_fadd.lut_mask = 16'h12a0;
                           defparam ix54_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix58_fadd (.combout (sload_mux_14_dup_379), .cout (
                           nx2799z2), .dataa (q[14]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx13532z2)) ;
                           defparam ix58_fadd.lut_mask = 16'h12a0;
                           defparam ix58_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix62_fadd (.combout (sload_mux_15_dup_380), .cout (
                           nx28349z2), .dataa (q[15]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx2799z2)) ;
                           defparam ix62_fadd.lut_mask = 16'h12a0;
                           defparam ix62_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix66_fadd (.combout (sload_mux_16_dup_381), .cout (
                           nx12018z2), .dataa (q[16]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx28349z2)) ;
                           defparam ix66_fadd.lut_mask = 16'h12a0;
                           defparam ix66_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix70_fadd (.combout (sload_mux_17_dup_382), .cout (
                           nx22370z2), .dataa (q[17]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx12018z2)) ;
                           defparam ix70_fadd.lut_mask = 16'h12a0;
                           defparam ix70_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix74_fadd (.combout (sload_mux_18_dup_383), .cout (
                           nx56758z2), .dataa (q[18]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx22370z2)) ;
                           defparam ix74_fadd.lut_mask = 16'h12a0;
                           defparam ix74_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix78_fadd (.combout (sload_mux_19_dup_384), .cout (
                           nx57983z2), .dataa (q[19]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx56758z2)) ;
                           defparam ix78_fadd.lut_mask = 16'h12a0;
                           defparam ix78_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix82_fadd (.combout (sload_mux_20_dup_385), .cout (
                           nx41941z2), .dataa (q[20]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx57983z2)) ;
                           defparam ix82_fadd.lut_mask = 16'h12a0;
                           defparam ix82_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix86_fadd (.combout (sload_mux_21_dup_386), .cout (
                           nx58272z2), .dataa (q[21]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx41941z2)) ;
                           defparam ix86_fadd.lut_mask = 16'h12a0;
                           defparam ix86_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix90_fadd (.combout (sload_mux_22_dup_387), .cout (
                           nx38412z2), .dataa (q[22]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx58272z2)) ;
                           defparam ix90_fadd.lut_mask = 16'h12a0;
                           defparam ix90_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix94_fadd (.combout (sload_mux_23_dup_388), .cout (
                           nx61512z2), .dataa (q[23]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx38412z2)) ;
                           defparam ix94_fadd.lut_mask = 16'h12a0;
                           defparam ix94_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix98_fadd (.combout (sload_mux_24_dup_389), .cout (
                           nx36406z2), .dataa (q[24]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx61512z2)) ;
                           defparam ix98_fadd.lut_mask = 16'h12a0;
                           defparam ix98_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix133_fadd (.combout (sload_mux_25_dup_390), .cout (
                           nx63518z2), .dataa (q[25]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx36406z2)) ;
                           defparam ix133_fadd.lut_mask = 16'h12a0;
                           defparam ix133_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix137_fadd (.combout (sload_mux_26_dup_391), .cout (
                           nx14313z2), .dataa (q[26]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx63518z2)) ;
                           defparam ix137_fadd.lut_mask = 16'h12a0;
                           defparam ix137_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix141_fadd (.combout (sload_mux_27_dup_392), .cout (
                           nx16835z2), .dataa (q[27]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx14313z2)) ;
                           defparam ix141_fadd.lut_mask = 16'h12a0;
                           defparam ix141_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix145_fadd (.combout (sload_mux_28_dup_393), .cout (
                           nx17553z2), .dataa (q[28]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx16835z2)) ;
                           defparam ix145_fadd.lut_mask = 16'h12a0;
                           defparam ix145_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix149_fadd (.combout (sload_mux_29_dup_394), .cout (
                           nx33884z2), .dataa (q[29]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx17553z2)) ;
                           defparam ix149_fadd.lut_mask = 16'h12a0;
                           defparam ix149_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix153_fadd (.combout (sload_mux_30_dup_395), .cout (
                           nx18310z2), .dataa (q[30]), .datab (sload), .datac (
                           1'b1), .datad (nx18310z1), .cin (nx33884z2)) ;
                           defparam ix153_fadd.lut_mask = 16'h12a0;
                           defparam ix153_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix155_fadd (.combout (sload_mux_31_dup_396), .dataa (
                           sload), .datab (q[31]), .datac (1'b1), .datad (
                           nx18310z1), .cin (nx18310z2)) ;
                           defparam ix155_fadd.lut_mask = 16'h1414;
                           defparam ix155_fadd.sum_lutc_input = "cin";
    assign nx18310z1 = 1'b1 ;
    fiftyfivenm_lcell_comb ix51271z7095 (.combout (sload_mux_0_dup_365), .dataa (
                           1'b1), .datab (1'b1), .datac (sload), .datad (q[0])
                           ) ;
                           defparam ix51271z7095.lut_mask = 16'hf0ff;
    dffeas reg_q_31_ (.q (q[31]), .d (sload_mux_31_dup_396), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_30_ (.q (q[30]), .d (sload_mux_30_dup_395), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_29_ (.q (q[29]), .d (sload_mux_29_dup_394), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_28_ (.q (q[28]), .d (sload_mux_28_dup_393), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_27_ (.q (q[27]), .d (sload_mux_27_dup_392), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_26_ (.q (q[26]), .d (sload_mux_26_dup_391), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_25_ (.q (q[25]), .d (sload_mux_25_dup_390), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_24_ (.q (q[24]), .d (sload_mux_24_dup_389), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_23_ (.q (q[23]), .d (sload_mux_23_dup_388), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_22_ (.q (q[22]), .d (sload_mux_22_dup_387), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_21_ (.q (q[21]), .d (sload_mux_21_dup_386), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_20_ (.q (q[20]), .d (sload_mux_20_dup_385), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_19_ (.q (q[19]), .d (sload_mux_19_dup_384), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_18_ (.q (q[18]), .d (sload_mux_18_dup_383), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_17_ (.q (q[17]), .d (sload_mux_17_dup_382), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_16_ (.q (q[16]), .d (sload_mux_16_dup_381), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_15_ (.q (q[15]), .d (sload_mux_15_dup_380), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_14_ (.q (q[14]), .d (sload_mux_14_dup_379), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_13_ (.q (q[13]), .d (sload_mux_13_dup_378), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_12_ (.q (q[12]), .d (sload_mux_12_dup_377), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_11_ (.q (q[11]), .d (sload_mux_11_dup_376), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_10_ (.q (q[10]), .d (sload_mux_10_dup_375), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_9_ (.q (q[9]), .d (sload_mux_9_dup_374), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_8_ (.q (q[8]), .d (sload_mux_8_dup_373), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_7_ (.q (q[7]), .d (sload_mux_7_dup_372), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_6_ (.q (q[6]), .d (sload_mux_6_dup_371), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_5_ (.q (q[5]), .d (sload_mux_5_dup_370), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_4_ (.q (q[4]), .d (sload_mux_4_dup_369), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_3_ (.q (q[3]), .d (sload_mux_3_dup_368), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_2_ (.q (q[2]), .d (sload_mux_2_dup_367), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_1_ (.q (q[1]), .d (sload_mux_1_dup_366), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
    dffeas reg_q_0_ (.q (q[0]), .d (sload_mux_0_dup_365), .clk (clock), .ena (
           clk_en), .clrn (nx18310z1), .prn (nx18310z1), .asdata (GND), .sclr (
           sclear), .sload (GND)) ;
endmodule

