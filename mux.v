// 2:1 Multiplexer
module mux2to1 (
    input  [1:0] d,
    input        sel,
    output       y
);
    assign y = d[sel];
endmodule


// 4:1 Multiplexer
module mux4to1 (
    input  [3:0] d,
    input  [1:0] sel,
    output       y
);
    assign y = d[sel];
endmodule


// 8:1 Multiplexer
module mux8to1 (
    input  [7:0] d,
    input  [2:0] sel,
    output       y
);
    assign y = d[sel];
endmodule


// 16:1 Multiplexer
module mux16to1 (
    input  [15:0] d,
    input  [3:0]  sel,
    output        y
);
    assign y = d[sel];
endmodule