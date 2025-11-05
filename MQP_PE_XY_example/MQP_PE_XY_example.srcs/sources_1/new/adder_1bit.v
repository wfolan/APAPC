module UC(input [1:0] in, output O);
reg [23:0] CF = 24'h016011;
//wire [3:0] O;//
wire [10:0] mid;
assign mid[1:0] = in;
//X 0 A B (p) F G
X_block X_0(mid[0],mid[1],CF[20],mid[2],mid[3]);

//X 1 A B (p) F G
X_block X_1(mid[0],mid[1],CF[16],mid[4],mid[5]);

//U 2(p1 p2 p3 p4) B A Z
//U_block_LUT U_2(CF[15:12],mid[3],mid[5],mid[6]);
U_block U_2(mid[3],mid[5],mid[6]);

//Y 3 A B (p) F
Y_block Y_3(mid[6],mid[2],CF[8],mid[7]);
//Y 4 A B (p) F
Y_block Y_4(mid[6],mid[4],CF[4],mid[8]);
//Y 5 A B (p) F
Y_block Y_5(mid[8],mid[7],CF[0],mid[9]);

//Assign outputs

assign O = mid[9];

endmodule