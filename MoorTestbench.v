module MoorTestbench;
reg clk, reset, a_in; 
wire [1:0] b_out;
wire [2:0] st;

Moore test (clk, reset, a_in, b_out, st);

initial
begin
  	clk=1;
  	forever #50 clk=!clk;
end

initial
begin
   	reset=0;
   	#800 reset=1;
	#100 reset=0;
    #1300 reset=1;
    #100 reset=0;
end

initial
begin
	a_in=1;
    #100 a_in=0;
    #100 a_in=0;
   	#100 a_in=1;
   	#100 a_in=0;
    #100 a_in=1;
    #100 a_in=0;
    #100 a_in=1;

    #100 a_in=0;
    #100 a_in=0;
    #100 a_in=1;
    #100 a_in=0;
    #100 a_in=1;

   	#100 a_in=0;
    #100 a_in=1;
    #100 a_in=1;
    #100 a_in=0;
    #100 a_in=1;
end
endmodule