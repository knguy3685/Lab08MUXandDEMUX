module top(

    input btnL, btnU, btnD, btnR, btnC,

    input [15:0] sw,
   output [15:0] led


    );
    
    
    wire [1:0] brute1;
    assign brute1[0] = btnL;
    assign brute1[1] = btnU;
    
    wire [1:0] brute2;
    assign brute2[0] = btnD;
    assign brute2[1] = btnR;
    
    
    wire [3:0] out;
    
    
    MUX multi(
        .A(sw[3:0]),
        .B(sw[7:4]),
        .C(sw[11:8]),
        .D(sw[15:12]),
        .Sel(brute1),
        .enable(~btnC),
        .Y(out)
    );
    
    DEMUX Demulti(
        .In(out),
        .Sel(brute2),
        .enabler(~btnC),
        .W(led[3:0]),
        .X(led[7:4]),
        .Y(led[11:8]),
        .Z(led[15:12])
    );

    
    
    
endmodule
