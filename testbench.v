`include "half_add_des.v"
module tb;
	reg a,b;
	wire sum,carry;
	half_add dut(a,b,sum,carry);
	initial begin
	repeat (10) begin
		{a,b}=$random;
		#10;
		$display("a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);
	end
	end
endmodule

