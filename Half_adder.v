module halfadder(A,B,sum,carry);
  input A,B;
  output sum,carry;
  reg A,B,sum,carry;
  assign carry=A&B;
  assign sum=A^B;
endmodule

#Testbench

module hf_tb;
  reg A,B;
  wire sum,carry;
  halfadder dut(A,B,sum,carry);
  initial begin
    A=0;B=0;
   #5 A=0;B=1;
   #5 A=1;B=0;
   #5 A=1;B=1;
    #10 $finish;
  end
  always@(A,B)
    $display("A=%b,B=%b,sum=%b,carry=%b",A,B,sum,carry);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule
  
  
