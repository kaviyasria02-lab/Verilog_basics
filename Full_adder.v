module full_adder(a,b,cin,sum,cout);
    input  a;
    input  b;
    input  cin;
    output sum;
    output cout;
  assign sum  = a ^ b ^ cin;
  assign cout = (a & b) | (b & cin) | (a & cin);
endmodule


#testbench

module tb;
  reg a, b, cin;
  wire sum, cout;
  full_adder dut(a, b, cin, sum, cout);
  initial begin
    $display("A B Cin");
    $monitor("a=%b,b=%b,cin=%b,sum=%b,cout=%b" ,a, b, cin, sum, cout);
    a=0; b=0; cin=0; #10;
    a=0; b=0; cin=1; #10;
    a=0; b=1; cin=0; #10;
    a=0; b=1; cin=1; #10;
    a=1; b=0; cin=0; #10;
    a=1; b=0; cin=1; #10;
    a=1; b=1; cin=0; #10;
    a=1; b=1; cin=1; #10;
    $finish;
  end
endmodule
