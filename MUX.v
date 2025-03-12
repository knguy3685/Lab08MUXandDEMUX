`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2025 09:23:03 AM
// Design Name: 
// Module Name: MUX
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


module MUX(
        input [3:0] A,[3:0] B,[3:0] C,[3:0] D,
        input [1:0] Sel,
        input enable,
        output [3:0] Y
    );
    

                            
    assign Y = enable == 1 ? Sel == 'b00 ? A:
            Sel == 'b01 ? B:
            Sel == 'b10 ? C:
            Sel == 'b11 ? D:
            enable == 0: 'b0000;

    
 
       
endmodule


module DEMUX(
    input [3:0] In,
    input [1:0] Sel,
    input enabler,
    output [3:0] W,[3:0] X,[3:0] Y,[3:0] Z
    
    );

    
   
    assign W = enabler == 1 ? Sel =='b00 ? In : 0:0;
    assign X = enabler == 1 ? Sel =='b01 ? In : 0:0;
    assign Y = enabler == 1 ? Sel =='b10 ? In : 0:0;
    assign Z = enabler == 1 ? Sel =='b11 ? In : 0:0;
    
    endmodule
