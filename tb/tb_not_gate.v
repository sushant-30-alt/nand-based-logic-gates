`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2026 21:38:19
// Design Name: 
// Module Name: tb_not_gate
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

module tb_not_gate;

    reg a;
    wire y;

    not_gate dut (
        .a(a),
        .y(y)
    );

    initial begin
        a = 0; #10;
        $display("a=%b y=%b", a, y);

        a = 1; #10;
        $display("a=%b y=%b", a, y);

        $finish;
    end

endmodule
