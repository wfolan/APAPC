module c17
(input [4:0] in, output [2:0] O );
reg [327:0] CF = 328'h0011000100110010010100017110111011111701711001100100000000001701700101111107001011;
//wire [9:0] O;
wire [144:0] mid;
assign mid[4:0]  = in;

//X 0 A B (p) F G
X_block X_0(mid[0],mid[1],CF[324],mid[5],mid[6]);

//Y 1 A B (p) F
Y_block Y_1(mid[6],mid[5],CF[320],mid[7]);
//Y 2 A B (p) F
Y_block Y_2(mid[2],mid[7],CF[316],mid[8]);
//X 3 A B (p) F G
X_block X_3(mid[8],mid[3],CF[312],mid[9],mid[10]);

//X 4 A B (p) F G
X_block X_4(mid[10],mid[6],CF[308],mid[11],mid[12]);

//X 5 A B (p) F G
X_block X_5(mid[6],mid[12],CF[304],mid[13],mid[14]);

//X 6 A B (p) F G
X_block X_6(mid[13],mid[14],CF[300],mid[15],mid[16]);

//X 7 A B (p) F G
X_block X_7(mid[9],mid[5],CF[296],mid[17],mid[18]);

//X 8 A B (p) F G
X_block X_8(mid[5],mid[18],CF[292],mid[19],mid[20]);

//X 9 A B (p) F G
X_block X_9(mid[19],mid[20],CF[288],mid[21],mid[22]);

//Y 10 A B (p) F
Y_block Y_10(mid[11],mid[17],CF[284],mid[23]);
//X 11 A B (p) F G
X_block X_11(mid[23],mid[4],CF[280],mid[24],mid[25]);

//X 12 A B (p) F G
X_block X_12(mid[0],mid[1],CF[276],mid[26],mid[27]);

//Y 13 A B (p) F
Y_block Y_13(mid[27],mid[26],CF[272],mid[28]);
//Y 14 A B (p) F
Y_block Y_14(mid[2],mid[28],CF[268],mid[29]);
//X 15 A B (p) F G
X_block X_15(mid[29],mid[3],CF[264],mid[30],mid[31]);

//X 16 A B (p) F G
X_block X_16(mid[31],mid[27],CF[260],mid[32],mid[33]);

//X 17 A B (p) F G
X_block X_17(mid[27],mid[33],CF[256],mid[34],mid[35]);

//X 18 A B (p) F G
X_block X_18(mid[34],mid[35],CF[252],mid[36],mid[37]);

//X 19 A B (p) F G
X_block X_19(mid[30],mid[26],CF[248],mid[38],mid[39]);

//X 20 A B (p) F G
X_block X_20(mid[26],mid[39],CF[244],mid[40],mid[41]);

//X 21 A B (p) F G
X_block X_21(mid[40],mid[41],CF[240],mid[42],mid[43]);

//Y 22 A B (p) F
Y_block Y_22(mid[32],mid[38],CF[236],mid[44]);
//X 23 A B (p) F G
X_block X_23(mid[44],mid[4],CF[232],mid[45],mid[46]);

//U 24(p1 p2 p3 p4) B A Z
U_block_LUT U_24(mid[46],mid[25],mid[47]);
//U_block U_24(CF[231:228],mid[46],mid[25],mid[47]);

//X 25 A B (p) F G
X_block X_25(mid[24],mid[47],CF[224],mid[48],mid[49]);

//X 26 A B (p) F G
X_block X_26(mid[49],mid[16],CF[220],mid[50],mid[51]);

//X 27 A B (p) F G
X_block X_27(mid[15],mid[51],CF[216],mid[52],mid[53]);

//X 28 A B (p) F G
X_block X_28(mid[48],mid[22],CF[212],mid[54],mid[55]);

//X 29 A B (p) F G
X_block X_29(mid[21],mid[55],CF[208],mid[56],mid[57]);

//X 30 A B (p) F G
X_block X_30(mid[54],mid[50],CF[204],mid[58],mid[59]);

//X 31 A B (p) F G
X_block X_31(mid[45],mid[47],CF[200],mid[60],mid[61]);

//X 32 A B (p) F G
X_block X_32(mid[61],mid[37],CF[196],mid[62],mid[63]);

//X 33 A B (p) F G
X_block X_33(mid[36],mid[63],CF[192],mid[64],mid[65]);

//X 34 A B (p) F G
X_block X_34(mid[60],mid[43],CF[188],mid[66],mid[67]);

//X 35 A B (p) F G
X_block X_35(mid[42],mid[67],CF[184],mid[68],mid[69]);

//X 36 A B (p) F G
X_block X_36(mid[66],mid[62],CF[180],mid[70],mid[71]);

//U 37(p1 p2 p3 p4) B A Z
U_block U_37(CF[179:176],mid[71],mid[59],mid[72]);

//X 38 A B (p) F G
X_block X_38(mid[58],mid[72],CF[172],mid[73],mid[74]);

//X 39 A B (p) F G
X_block X_39(mid[70],mid[72],CF[168],mid[75],mid[76]);

//U 40(p1 p2 p3 p4) B A Z
U_block U_40(CF[167:164],mid[76],mid[74],mid[77]);

//X 41 A B (p) F G
X_block X_41(mid[73],mid[77],CF[160],mid[78],mid[79]);

//X 42 A B (p) F G
X_block X_42(mid[79],mid[53],CF[156],mid[80],mid[81]);

//Y 43 A B (p) F
Y_block Y_43(mid[81],mid[52],CF[152],mid[82]);
//Y 44 A B (p) F
Y_block Y_44(mid[13],mid[82],CF[148],mid[83]);
//X 45 A B (p) F G
X_block X_45(mid[78],mid[57],CF[144],mid[84],mid[85]);

//X 46 A B (p) F G
X_block X_46(mid[56],mid[85],CF[140],mid[86],mid[87]);

//Y 47 A B (p) F
Y_block Y_47(mid[20],mid[87],CF[136],mid[88]);
//Y 48 A B (p) F
Y_block Y_48(mid[19],mid[86],CF[132],mid[89]);
//X 49 A B (p) F G
X_block X_49(mid[89],mid[88],CF[128],mid[90],mid[91]);

//X 50 A B (p) F G
X_block X_50(mid[84],mid[80],CF[124],mid[92],mid[93]);

//X 51 A B (p) F G
X_block X_51(mid[75],mid[77],CF[120],mid[94],mid[95]);

//X 52 A B (p) F G
X_block X_52(mid[95],mid[65],CF[116],mid[96],mid[97]);

//Y 53 A B (p) F
Y_block Y_53(mid[97],mid[64],CF[112],mid[98]);
//Y 54 A B (p) F
Y_block Y_54(mid[34],mid[98],CF[108],mid[99]);
//X 55 A B (p) F G
X_block X_55(mid[94],mid[69],CF[104],mid[100],mid[101]);

//X 56 A B (p) F G
X_block X_56(mid[68],mid[101],CF[100],mid[102],mid[103]);

//Y 57 A B (p) F
Y_block Y_57(mid[41],mid[103],CF[96],mid[104]);
//Y 58 A B (p) F
Y_block Y_58(mid[40],mid[102],CF[92],mid[105]);
//X 59 A B (p) F G
X_block X_59(mid[105],mid[104],CF[88],mid[106],mid[107]);

//X 60 A B (p) F G
X_block X_60(mid[100],mid[96],CF[84],mid[108],mid[109]);

//U 61(p1 p2 p3 p4) B A Z
U_block U_61(CF[83:80],mid[109],mid[93],mid[110]);

//X 62 A B (p) F G
X_block X_62(mid[92],mid[110],CF[76],mid[111],mid[112]);

//X 63 A B (p) F G
X_block X_63(mid[108],mid[110],CF[72],mid[113],mid[114]);

//U 64(p1 p2 p3 p4) B A Z
U_block U_64(CF[71:68],mid[114],mid[112],mid[115]);

//X 65 A B (p) F G
X_block X_65(mid[111],mid[115],CF[64],mid[116],mid[117]);

//Y 66 A B (p) F
Y_block Y_66(mid[83],mid[117],CF[60],mid[118]);
//X 67 A B (p) F G
X_block X_67(mid[116],mid[91],CF[56],mid[119],mid[120]);

//Y 68 A B (p) F
Y_block Y_68(mid[120],mid[90],CF[52],mid[121]);
//X 69 A B (p) F G
X_block X_69(mid[119],mid[118],CF[48],mid[122],mid[123]);

//X 70 A B (p) F G
X_block X_70(mid[113],mid[115],CF[44],mid[124],mid[125]);

//Y 71 A B (p) F
Y_block Y_71(mid[99],mid[125],CF[40],mid[126]);
//X 72 A B (p) F G
X_block X_72(mid[124],mid[107],CF[36],mid[127],mid[128]);

//Y 73 A B (p) F
Y_block Y_73(mid[128],mid[106],CF[32],mid[129]);
//X 74 A B (p) F G
X_block X_74(mid[127],mid[126],CF[28],mid[130],mid[131]);

//U 75(p1 p2 p3 p4) B A Z
U_block U_75(CF[27:24],mid[131],mid[123],mid[132]);

//X 76 A B (p) F G
X_block X_76(mid[122],mid[132],CF[20],mid[133],mid[134]);

//Y 77 A B (p) F
Y_block Y_77(mid[121],mid[133],CF[16],mid[135]);
//X 78 A B (p) F G
X_block X_78(mid[130],mid[132],CF[12],mid[136],mid[137]);

//Y 79 A B (p) F
Y_block Y_79(mid[137],mid[134],CF[8],mid[138]);
//Y 80 A B (p) F
Y_block Y_80(mid[129],mid[136],CF[4],mid[139]);
//Y 81 A B (p) F
Y_block Y_81(mid[139],mid[135],CF[0],mid[140]);

//Assign outputs

assign O[1] = mid[138];
assign O[0] = mid[140];

endmodule