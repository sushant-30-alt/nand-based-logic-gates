`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2026 20:24:43
// Design Name: 
// Module Name: tb_logic_gates
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


`timescale 1ns / 1ps

module module tb_nand_gate;

    reg a;
    reg b;
    wire y;

    // Instantiate the NAND gate
    nand_gate dut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        // Test all possible input combinations
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
