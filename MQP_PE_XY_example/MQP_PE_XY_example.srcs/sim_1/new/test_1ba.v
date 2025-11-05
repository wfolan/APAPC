`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/20/2023 03:49:43 PM
// Design Name: 
// Module Name: test_1ba
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


module test_1ba(

    );
    reg [1:0]mid;
    wire O;
    
//    reg a,b,c;
//    wire e,d;
    UC hahah( mid, O);
//    X_block x_0(.a1(a),.a2(b),.c(c),.b1(d),.b2(e));
    initial begin 
    
//    a=0;
//    b=0;c=0;
//    #20
//    a=1;
//    #40
//    b=1;
//    #20
//    c=1;
    mid =0;
    #20mid=1;
    #20mid=2;
    #20mid=3;
 
    
    end
    
endmodule
