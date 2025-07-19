module sync_ram #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 4  // 16 locations
)(
    input clk,
    input we,                // Write Enable
    input [ADDR_WIDTH-1:0] addr,
    input [DATA_WIDTH-1:0] din,  // Data Input
    output reg [DATA_WIDTH-1:0] dout  // Data Output
);

    // Declare memory
    reg [DATA_WIDTH-1:0] mem [(2**ADDR_WIDTH)-1:0];

    always @(posedge clk) begin
        if (we)
            mem[addr] <= din;     // Write data on rising edge
        dout <= mem[addr];        // Read data on rising edge (synchronous read)
    end

endmodule

#testbench

module sync_ram_tb;

    parameter DATA_WIDTH = 8;
    parameter ADDR_WIDTH = 4;

    reg clk;
    reg we;
    reg [ADDR_WIDTH-1:0] addr;
    reg [DATA_WIDTH-1:0] din;
    wire [DATA_WIDTH-1:0] dout;

    // Instantiate the RAM
    sync_ram #(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(ADDR_WIDTH)) uut (
        .clk(clk),
        .we(we),
        .addr(addr),
        .din(din),
        .dout(dout)
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk; // 10ns clock period

    initial begin
        // Initialize
        we = 0;
        addr = 0;
        din = 0;

        // Wait for global reset
        #10;

        // Write values to RAM
        we = 1;
        addr = 4'h1; din = 8'hA5; #10;
        addr = 4'h2; din = 8'h3C; #10;
        addr = 4'h3; din = 8'hFF; #10;

        // Read values from RAM
        we = 0;
        addr = 4'h1; #10;
        addr = 4'h2; #10;
        addr = 4'h3; #10;

        // End simulation
        $finish;
    end

endmodule
