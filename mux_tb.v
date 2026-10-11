`timescale 1ns / 1ps

module mux_family_tb;

    reg [1:0]  d2;
    reg        sel2;
    wire       y2;

    reg [3:0]  d4;
    reg [1:0]  sel4;
    wire       y4;

    reg [7:0]  d8;
    reg [2:0]  sel8;
    wire       y8;

    reg [15:0] d16;
    reg [3:0]  sel16;
    wire       y16;

    integer i;

    mux2to1  m2  (.d(d2),   .sel(sel2),  .y(y2));
    mux4to1  m4  (.d(d4),   .sel(sel4),  .y(y4));
    mux8to1  m8  (.d(d8),   .sel(sel8),  .y(y8));
    mux16to1 m16 (.d(d16),  .sel(sel16), .y(y16));

    initial begin

        // Different input patterns
        d2  = 2'b10;
        d4  = 4'b1010;
        d8  = 8'b10101010;
        d16 = 16'b1010101010101010;

        // Test every selector value
        for (i = 0; i < 16; i = i + 1) begin
            sel16 = i;
            #10;
        end

        // Check 2:1, 4:1 and 8:1 selector ranges
        for (i = 0; i < 8; i = i + 1) begin
            sel2 = i % 2;
            sel4 = i % 4;
            sel8 = i;
            #10;
        end

        $display("MUX simulation completed.");
        $finish;
    end

endmodule