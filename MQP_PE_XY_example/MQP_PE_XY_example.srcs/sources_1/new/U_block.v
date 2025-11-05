`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2023 01:03:02 PM
// Design Name: 
// Module Name: U_block
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
module U_block(
    input [3:0]c,
  
    input B,
    input A,
    output Z
    );
        
    Y_block y1(.a1(c[3]),.a2(c[2]),.c(B),.b1(b1));
    Y_block y2(.a1(c[1]),.a2(c[0]),.c(B),.b1(b2));
    Y_block y3(.a1(b1),.a2(b2),.c(A),.b1(Z));

endmodule
