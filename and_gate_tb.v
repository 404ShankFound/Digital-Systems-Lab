// and_gate_tb.v
`include "and_gate.v" // Include the design file

module and_gate_tb;

    // Declare signals for the testbench
    reg A_tb;
    reg B_tb;
    wire Y_tb;

    // Instantiate the Unit Under Test (UUT) - the AND gate
    and_gate uut (
        .A(A_tb),
        .B(B_tb),
        .Y(Y_tb)
    );

    // Initial block for applying stimulus
    initial begin
        // Open VCD file for waveform viewing
        $dumpfile("and_gate.vcd");
        $dumpvars(0, and_gate_tb);

        // Test case 1: A=0, B=0
        A_tb = 0;
        B_tb = 0;
        #10; // Wait for 10 time units

        // Test case 2: A=0, B=1
        A_tb = 0;
        B_tb = 1;
        #10;

        // Test case 3: A=1, B=0
        A_tb = 1;
        B_tb = 0;
        #10;

        // Test case 4: A=1, B=1
        A_tb = 1;
        B_tb = 1;
        #10;

        $finish; // End simulation
    end

    // Monitor block to display changes in signals
    initial begin
        $monitor("Time = %0t | A = %b | B = %b | Y = %b", $time, A_tb, B_tb, Y_tb);
    end

endmodule