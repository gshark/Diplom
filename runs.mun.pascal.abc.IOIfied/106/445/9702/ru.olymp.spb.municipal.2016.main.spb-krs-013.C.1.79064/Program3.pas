program test2;
var a3: array [1..26] of char;
    a2, n1, i1, i2, i3: integer;
     a1: real;
begin 
  for i3:=1 to 26 do
  read(a3[i3]);
 a1:= n1/2;
 a2:= n1 mod 2;
 if a1=a2 then
 begin
 i1:= n1 mod 2;
 write(a3[1] to a3[n1 mod 2]);
 write(a3[n1 mod 2] to a3[1]);
 end
 else
 i1:=(n1-1) mod 2;
 i2:=(n1+1) mod 2;
 write(a3[1] to a3[(n1-1) mod 2]);
 write(a3[(n1+1) mod 2]);
 write(a3[(n1-1) mod 2] to a3[1]);
 end.