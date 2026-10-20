`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2026 01:02:08
// Design Name: 
// Module Name: tb_xnor_gate
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


module tb_xnor_gate;

    reg a;
    reg b;
    wire y;

    xnor_gate dut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        a = 0; b = 0; #10;
        $display("a=%b b=%b y=%b", a, b, y);

        a = 0; b = 1; #10;
        $display("a=%b b=%b y=%b", a, b, y);

        a = 1; b = 0; #10;
        $display("a=%b b=%b y=%b", a, b, y);

        a = 1; b = 1; #10;
        $display("a=%b b=%b y=%b", a, b, y);

        $finish;
    end

endmodule
