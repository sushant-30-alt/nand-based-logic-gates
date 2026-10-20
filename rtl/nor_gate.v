`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2026 23:39:56
// Design Name: 
// Module Name: nor_gate
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


module nor_gate(
    input a,
    input b,
    output y
);

    wire o;

    or_gate n1 (
        .a(a),
        .b(b),
        .y(o)
    );

    not_gate n2 (
        .a(o),
        .y(y)
    );

endmodule
