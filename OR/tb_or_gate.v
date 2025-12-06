`timescale 1ns/1ps
module tb_or_gate;
reg a,b;
wire y;
or_gate dut(
    .a(a),
    .b(b),
    .y(y)
);
initial begin
    $dumpfile("or_wave.vcd");   // <-- creates VCD file
    $dumpvars(0, tb_or_gate);   // <-- dump all signals in this module
    $display("%0t\t %b %b | %b",$time,a,b,y);
    $display("----------------");
    a = 0; b = 0; #10; $display("%0t\t %b %b | %b", $time, a, b, y);
    a = 0; b = 1; #10; $display("%0t\t %b %b | %b", $time, a, b, y);
    a = 1; b = 0; #10; $display("%0t\t %b %b | %b", $time, a, b, y);
    a = 1; b = 1; #10; $display("%0t\t %b %b | %b", $time, a, b, y);
    $finish;
    end
endmodule