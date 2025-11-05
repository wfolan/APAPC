`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2023 03:16:54 PM
// Design Name: 
// Module Name: U_block_LUT
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
module U_block_LUT(
//    input [3:0]c,
  
    input B,
    input A,
    output Z
    );
LUT2 #(
   .INIT(4'b0111)  // Specify LUT Contents
) LUT2_inst (
   .O(Z),   // LUT general output
   .I0(A), // LUT input
   .I1(B)  // LUT input
);

endmodule
