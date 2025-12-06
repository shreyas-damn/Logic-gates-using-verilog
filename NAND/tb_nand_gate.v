`timescale 1ns/1ps
module tb_nand_gate;
reg a,b;
wire y;
nand_gate dut(
    .a(a),
    .b(b),
    .y(y)
);
initial begin
    $dumpfile("nand_wave.vcd");
    $dumpvars(0,tb_nand_gate);
    $display("%0t\t %b %b | %b", $time,a,b,y);
    $display("----------------"); 
    a = 0; b = 0; #10; $display("%0t\t %b %b | %b", $time, a, b, y);
    a = 0; b = 1; #10; $display("%0t\t %b %b | %b", $time, a, b, y);
    a = 1; b = 0; #10; $display("%0t\t %b %b | %b", $time, a, b, y);
    a = 1; b = 1; #10; $display("%0t\t %b %b | %b", $time, a, b, y);
    $finish;
    end
endmodule    