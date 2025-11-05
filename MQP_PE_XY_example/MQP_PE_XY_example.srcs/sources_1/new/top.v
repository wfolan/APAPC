`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2023 01:12:04 PM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

(* DONT_TOUCH = "yes" *)
module top(
    input [1:0]a1,
    input [1:0]a2,
    input [3:0]c,
    input clk_n,
    input clk_p,
//    output A,
//    output B,
    output b1,
    output b2,
    output b3
    );
    reg fp = 0;
    initial fp = 0;
//    wire clk;
    wire A, B;
    //Differential Clock Buffer to create 200 Mhz Clock
    IBUFGDS #(
        .DIFF_TERM   ("FALSE"),
        .IBUF_LOW_PWR("TRUE" ),
        .IOSTANDARD  ("LVDS" )
    ) get_clk (
        .O(clk   ),
        .I(clk_p ),
        .IB(clk_n)
    );
    
    always @(posedge clk) begin
        (* DONT_TOUCH = "yes" *)fp <=~fp;
    end
    reg [4:0] in =0;
//    assign b1 = a1[0];
//    assign b2 = a1[1];
//    (* DONT_TOUCH = "yes" *)assign A = (a1 == 2'b00) ? 0 : ((a1==2'b01) ? 1 : ((a1==2'b10) ? fp : ~fp));

    (* DONT_TOUCH = "yes" *)assign A =  fp;
    (* DONT_TOUCH = "yes" *)assign B =  fp;
    
    
//    (* DONT_TOUCH = "yes" *)assign B = (a2 == 2'b00) ? 0 : ((a2==2'b01) ? 1 : ((a2==2'b10) ? fp : ~fp));
//    assign B = (a2 == 0) ? 0 : ((a2==1)? 1 : ((a2==2) ? fp : ~fp));
//    UC charizard({B,A}, b1);

//U_block_LUT venosaur(B,A,b1);



c17 blastoise({1,A,0,1,B},  {b1,b2});

//    X_block x1(.a1(A),.a2(B),.c(c[0]),.b1(b1),.b2(b2));
//    x_block x2(.a1(0),.a2(0),.c(1),.b1(b1[1]),.b2(b2[1]));
//    x_block x3(.a1(0),.a2(fp),.c(0),.b1(b1[2]),.b2(b2[2]));
//    x_block x4(.a1(0),.a2(fp),.c(1),.b1(b1[3]),.b2(b2[3]));
//    x_block x5(.a1(fp),.a2(0),.c(0),.b1(b1[4]),.b2(b2[4]));
//    x_block x6(.a1(fp),.a2(0),.c(1),.b1(b1[5]),.b2(b2[5]));
//    x_block x7(.a1(fp),.a2(fp),.c(0),.b1(b1[6]),.b2(b2[6]));
//    x_block x8(.a1(fp),.a2(fp),.c(1),.b1(b1[7]),.b2(b2[7]));



//    Y_block y1(.a1(A),.a2(B),.c(c[0]),.b1(b3));
//    y_block y2(.a1(0),.a2(0),.c(1),.b1(b1[9]));
//    y_block y3(.a1(0),.a2(fp),.c(0),.b1(b1[10]));
//    y_block y4(.a1(0),.a2(fp),.c(1),.b1(b1[11]));
//    y_block y5(.a1(fp),.a2(0),.c(0),.b1(b1[12]));
//    y_block y6(.a1(fp),.a2(0),.c(1),.b1(b1[13]));
//    y_block y7(.a1(fp),.a2(fp),.c(0),.b1(b1[14]));
//    y_block y8(.a1(fp),.a2(fp),.c(1),.b1(b1[15]));
        //0,0,0,0
//      U_block u1(.p0(0),.p1(0),.p2(0),.p3(0),.A(0),.B(0),.Z(c));
//      U_block u2(.p0(0),.p1(0),.p2(0),.p3(0),.A(0),.B(fp),.Z(c));
//      U_block u3(.p0(0),.p1(0),.p2(0),.p3(0),.A(fp),.B(0),.Z(c));
//      U_block u4(.p0(0),.p1(0),.p2(0),.p3(0),.A(fp),.B(fp),.Z(c));
//      //1
//      U_block u1(.p0(0),.p1(0),.p2(0),.p3(1),.A(0),.B(0),.Z(c));
//      U_block u2(.p0(0),.p1(0),.p2(0),.p3(1),.A(0),.B(fp),.Z(c));
//      U_block u3(.p0(0),.p1(0),.p2(0),.p3(1),.A(fp),.B(0),.Z(c));
//      U_block u4(.p0(0),.p1(0),.p2(0),.p3(1),.A(fp),.B(fp),.Z(c));
      
//      //2
//      U_block u1(.p0(0),.p1(0),.p2(1),.p3(0),.A(0),.B(0),.Z(c));
//      U_block u2(.p0(0),.p1(0),.p2(1),.p3(0),.A(0),.B(fp),.Z(c));
//      U_block u3(.p0(0),.p1(0),.p2(1),.p3(0),.A(fp),.B(0),.Z(c));
//      U_block u4(.p0(0),.p1(0),.p2(1),.p3(0),.A(fp),.B(fp),.Z(c));
      
//      //3
//      U_block u1(.p0(0),.p1(0),.p2(1),.p3(1),.A(0),.B(0),.Z(c));
//      U_block u2(.p0(0),.p1(0),.p2(1),.p3(1),.A(0),.B(fp),.Z(c));
//      U_block u3(.p0(0),.p1(0),.p2(1),.p3(1),.A(fp),.B(0),.Z(c));.
//      U_block u4(.p0(0),.p1(0),.p2(1),.p3(1),.A(fp),.B(fp),.Z(c));
      
//      //4
//      U_block u1(.p0(0),.p1(1),.p2(0),.p3(0),.A(0),.B(0),.Z(c));
//      U_block u2(.p0(0),.p1(1),.p2(0),.p3(0),.A(0),.B(fp),.Z(c));
//      U_block u3(.p0(0),.p1(1),.p2(0),.p3(0),.A(fp),.B(0),.Z(c));
//      U_block u4(.p0(0),.p1(1),.p2(0),.p3(0),.A(fp),.B(fp),.Z(c));
      
//      //5
// (* DONT_TOUCH = "yes" *)
//     U_block u1(.p0(c[0]),.p1(c[1]),.p2(c[2]),.p3(c[3]),.A(A),.B(B),.Z(b1));
//     U_block u1(.p0(0),.p1(1),.p2(1),.p3(1),.A(fp),.B(fp),.Z(b1));
//      U_block u2(.p0(0),.p1(1),.p2(0),.p3(1),.A(0),.B(fp),.Z(c));
//      U_block u3(.p0(0),.p1(1),.p2(0),.p3(1),.A(fp),.B(0),.Z(c));
//      U_block u4(.p0(0),.p1(1),.p2(0),.p3(1),.A(fp),.B(fp),.Z(c));

////6
//      U_block u1(.p0(0),.p1(1),.p2(1),.p3(0),.A(0),.B(0),.Z(c));
//      U_block u2(.p0(0),.p1(1),.p2(1),.p3(0),.A(0),.B(fp),.Z(c));
//      U_block u3(.p0(0),.p1(1),.p2(1),.p3(0),.A(fp),.B(0),.Z(c));
//      U_block u4(.p0(0),.p1(1),.p2(1),.p3(0),.A(fp),.B(fp),.Z(c));

////7
//      U_block u1(.p0(0),.p1(1),.p2(1),.p3(1),.A(0),.B(0),.Z(c));
//      U_block u2(.p0(0),.p1(1),.p2(1),.p3(1),.A(0),.B(fp),.Z(c));
//      U_block u3(.p0(0),.p1(1),.p2(1),.p3(1),.A(fp),.B(0),.Z(c));
//      U_block u4(.p0(0),.p1(1),.p2(1),.p3(1),.A(fp),.B(fp),.Z(c));

////8
//      U_block u1(.p0(1),.p1(0),.p2(0),.p3(0),.A(0),.B(0),.Z(c));
//      U_block u2(.p0(1),.p1(0),.p2(0),.p3(0),.A(0),.B(fp),.Z(c));
//      U_block u3(.p0(1),.p1(0),.p2(0),.p3(0),.A(fp),.B(0),.Z(c));
//      U_block u4(.p0(1),.p1(0),.p2(0),.p3(0),.A(fp),.B(fp),.Z(c));
//   //9   
//      U_block u1(.p0(1),.p1(0),.p2(0),.p3(1),.A(0),.B(0),.Z(c));
//      U_block u2(.p0(1),.p1(0),.p2(0),.p3(1),.A(0),.B(fp),.Z(c));
//      U_block u3(.p0(1),.p1(0),.p2(0),.p3(1),.A(fp),.B(0),.Z(c));
//      U_block u4(.p0(1),.p1(0),.p2(0),.p3(1),.A(fp),.B(fp),.Z(c));
      
//      //10
//      U_block u1(.p0(1),.p1(0),.p2(1),.p3(0),.A(0),.B(0),.Z(c));
//      U_block u2(.p0(1),.p1(0),.p2(1),.p3(0),.A(0),.B(fp),.Z(c));
//      U_block u3(.p0(1),.p1(0),.p2(1),.p3(0),.A(fp),.B(0),.Z(c));
//      U_block u4(.p0(1),.p1(0),.p2(1),.p3(0),.A(fp),.B(fp),.Z(c));
      
////11      
//      U_block u1(.p0(1),.p1(0),.p2(1),.p3(1),.A(0),.B(0),.Z(c));
//      U_block u2(.p0(1),.p1(0),.p2(1),.p3(1),.A(0),.B(fp),.Z(c));
//      U_block u3(.p0(1),.p1(0),.p2(1),.p3(1),.A(fp),.B(0),.Z(c));
//      U_block u4(.p0(1),.p1(0),.p2(1),.p3(1),.A(fp),.B(fp),.Z(c));
      
//    //12  
//      U_block u1(.p0(1),.p1(1),.p2(0),.p3(0),.A(0),.B(0),.Z(c));
//      U_block u2(.p0(1),.p1(1),.p2(0),.p3(0),.A(0),.B(fp),.Z(c));
//      U_block u3(.p0(1),.p1(1),.p2(0),.p3(0),.A(fp),.B(0),.Z(c));
//      U_block u4(.p0(1),.p1(1),.p2(0),.p3(0),.A(fp),.B(fp),.Z(c));
      
//      //13
//      U_block u1(.p0(1),.p1(1),.p2(0),.p3(1),.A(0),.B(0),.Z(c));
//      U_block u2(.p0(1),.p1(1),.p2(0),.p3(1),.A(0),.B(fp),.Z(c));
//      U_block u3(.p0(1),.p1(1),.p2(0),.p3(1),.A(fp),.B(0),.Z(c));
//      U_block u4(.p0(1),.p1(1),.p2(0),.p3(1),.A(fp),.B(fp),.Z(c));

////14
//      U_block u1(.p0(1),.p1(1),.p2(1),.p3(0),.A(0),.B(0),.Z(c));
//      U_block u2(.p0(1),.p1(1),.p2(1),.p3(0),.A(0),.B(fp),.Z(c));
//      U_block u3(.p0(1),.p1(1),.p2(1),.p3(0),.A(fp),.B(0),.Z(c));
//      U_block u4(.p0(1),.p1(1),.p2(1),.p3(0),.A(fp),.B(fp),.Z(c));

////15
//      U_block u1(.p0(1),.p1(1),.p2(1),.p3(1),.A(0),.B(0),.Z(c));
//      U_block u2(.p0(1),.p1(1),.p2(1),.p3(1),.A(0),.B(fp),.Z(c));
//      U_block u3(.p0(1),.p1(1),.p2(1),.p3(1),.A(fp),.B(0),.Z(c));
//    (* DONT_TOUCH = "yes" *)  U_block u4(.p0(1),.p1(1),.p2(1),.p3(1),.A(fp),.B(fp),.Z(c));


endmodule
