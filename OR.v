module orlogic(A,B,C);
  input A,B;
  output C;
  assign C=A|B;
endmodule



# TESTBENCH

module orlogic_tb;
  reg A,B;
  wire C;
  orlogic dut(A,B,C);
  initial begin
       A=0;B=0;
    #5 A=0;B=1;
    #5 A=1;B=0;
    #5 A=1;B=1;
    #50 $finish;
  end
  always@(A,B,C)
  $display("time=%0t,a=%b,b=%b,c=%b",$time,A,B,C);
endmodule
