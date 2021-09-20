module Moore
(input clk, reset, a_in, output reg [1:0] b_out, reg [2:0] st);

parameter [1:0] out0=2'b00,
                out1=2'b00,
                out2=2'b01,
                out3=2'b01,
                out4=2'b01,
                out5=2'b11,
                out6=2'b10,
                out7=2'b01;

parameter [2:0] st0=3'b000,
                st1=3'b001,
                st2=3'b010, 
                st3=3'b011, 
                st4=3'b100,
                st5=3'b101, 
                st6=3'b110, 
                st7=3'b111;

always@(posedge clk or posedge reset)
begin
if(reset)
	st=st0;
else
	case(st)
	st0:
		if(a_in==0) st=st4;
		else st=st2;
	st1:
        if(a_in==0) st=st1;
        else st=st1;
    st2:
    	begin
        if(a_in==0) st=st2;
        else st=st7;
		end
    st3:
        if(a_in==0) st=st3;
        else st=st2;
    st4:
        if(a_in==0) st=st6;
        else st=st1;
    st5:
        if(a_in==0) st=st7;
        else st=st7;
    st6:
        if(a_in==0) st=st5;
        else st=st5;
    st7:
        if(a_in==0) st=st5;
        else st=st3;
    default:
        st=st0;
	endcase
end

always@(st)
begin
	case(st)
	st0:b_out=out0;
	st1:b_out=out1;
	st2:b_out=out2;
	st3:b_out=out3;
	st4:b_out=out4;
	st5:b_out=out5;
	st6:b_out=out6;
	st7:b_out=out7;
	endcase
end
endmodule
