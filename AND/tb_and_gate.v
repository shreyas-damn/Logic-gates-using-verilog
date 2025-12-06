`timescale 1ns/1ps
module tb_and_gate;
    reg a, b;
    wire y;
    // Instantiate DUT
    and_gate dut(y, a, b);
    initial begin
        $dumpfile("and_wave.vcd");
        $dumpvars(0,tb_and_gate);
        $display("Time\t a b | y");
        $display("----------------");
        a = 0; b = 0; #10; $display("%0t\t %b %b | %b", $time, a, b, y);
        a = 0; b = 1; #10; $display("%0t\t %b %b | %b", $time, a, b, y);
        a = 1; b = 0; #10; $display("%0t\t %b %b | %b", $time, a, b, y);
        a = 1; b = 1; #10; $display("%0t\t %b %b | %b", $time, a, b, y);
        $finish;
    end

endmodule
