module testbench();

reg A, B, C;
reg[1:0] S;
wire Y;

MUX3 myMUX(A, B, C, S, Y);

initial begin
A=1; B=0; C=0; S=2'b00;  #10; 
if (Y !== A) begin
           $display("Error: Expected %d got %d for S=%d", A, Y, S); $stop;
end
A=0; B=1; C=0; S=2'b01;  #10; 
if (Y !== B) begin
           $display("Error: Expected %d got %d for S=%d", B, Y, S); $stop;
end
A=0; B=0; C=1; S=2'b10;  #10; 
if (Y !== C) begin
           $display("Error: Expected %d got %d for S=%d", C, Y, S); $stop;
end

$display("All tests passed.");
end

endmodule