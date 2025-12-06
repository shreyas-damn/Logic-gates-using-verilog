`timescale 1ns/1ps
module tb_xor_gate;
reg a,b;
wire y;
xor_gate dut(
    .a(a),
    .b(b),
    .y(y)
);
initial begin
    $dumpfile("xor_wave.vcd");
    $dumpvars(0, tb_xor_gate);
    $display("Time\t a b | y");
    a = 0; b = 0; #10;
    $display("%0t\t %b %b | %b",$time, a, b, y);
    a = 0; b = 1; #10;
    $display("%0t\t %b %b | %b",$time, a, b, y);
    a = 1; b = 0; #10;
    $display("%0t\t %b %b | %b",$time, a, b, y);
    a = 1; b = 1; #10;
    $display("%0t\t %b %b | %b",$time, a, b, y);
    $finish;
end
endmodule