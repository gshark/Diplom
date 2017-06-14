var k, b, i, j, m: integer;
    a: real;
    x: array [1..9] of integer;
begin
 readln(k); a:=1; b:=k; m:=0;
 for i:= 1 to 9 do
 begin
  for j:= 1 to (10-i) do
   a:=a*10;
  a:=a/10;
  x[i]:= b div round(a);
  b:=b-x[i]*round(a);
  a:=1;
 end;
 
 j:=1;
 while x[j]=0 do j:=j+1;
 for i:= j to 9 do
  if (x[i]=0) then m:=m+1;
 
 i:=9;
   while x[i]=0 do
   begin
    i:=i-1;
    m:=m-1;
   end;
 write(m);
end.