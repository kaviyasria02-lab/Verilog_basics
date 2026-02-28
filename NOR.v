module norlogic(A,B,C);
  input A,B;
  output C;
  assign C=~(A|B);
endmodule

#testbench

module norlogic_tb;
  reg A,B;
  wire C;
  norlogic dut(A,B,C);
  initial begin
       A=0;B=0;
    #5 A=0;B=1;
    #5 A=1;B=1;
    #5 A=1;B=1;
  end
  always@(A,B,C)
    $display("a=%b,b=%b,C=%b",A,B,C);
endmodule
  
