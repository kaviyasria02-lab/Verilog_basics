module notlogic(A,B);
  input A;
  output B;
  assign B=~A;
endmodule


#testbench

module notlogic_tb;
  reg A;
  wire B;
  notlogic dut (A,B);
  initial begin
       A=0;
    #5 A=1;
    #50 $finish;
  end
  always@(A)
    $display("time=%0t,A=%b,B=%b",$time,A,B);
endmodule
