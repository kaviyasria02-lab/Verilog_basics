module andlogic (A,B,C);
  input A,B;
  output C;
  assign C=A&B;
endmodule

#Testbench

module andlogic_tb;
  reg A,B;
  wire C;
  andlogic dut(A,B,C);
  initial begin
       A=0;B=0;
    #5 A=0;B=1;
    #5 A=1;B=0;
    #5 A=1;B=1;
    #100 $finish;
  end
  always@(A,B)
    $display("time=%0t,a=%b,b=%b,c=%b",$time,A,B,C);
endmodule
