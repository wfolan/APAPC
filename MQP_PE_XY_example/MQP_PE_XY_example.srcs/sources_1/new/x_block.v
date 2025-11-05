`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2023 01:08:14 PM
// Design Name: 
// Module Name: x_block
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
module X_block(
    input a1,
    input a2,
    input c,
    output b1,
    output b2
    );
    wire in1,f;
    xor(in1,a1,a2);
    and(f,in1,c);
    xor(b1,f,a1);
    xor(b2,f,a2);
endmodule
