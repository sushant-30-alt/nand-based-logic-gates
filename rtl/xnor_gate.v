`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2026 01:00:23
// Design Name: 
// Module Name: xnor_gate
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


module xnor_gate(
    input a,
    input b,
    output y
);

    wire x;

    xor_gate n1 (
        .a(a),
        .b(b),
        .y(x)
    );

    not_gate n2 (
        .a(x),
        .y(y)
    );

endmodule
