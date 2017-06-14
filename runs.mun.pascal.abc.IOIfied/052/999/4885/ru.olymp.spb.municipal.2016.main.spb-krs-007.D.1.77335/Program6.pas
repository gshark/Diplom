program abc_d;
var
n,k,i,j,g,x,y,b:integer;
begin
read(n,k);

for i:=1 to n do
 for j:=1 to n do
  for g:=1 to n do
  begin
  if (i<>j) and (j<>g) and (i<>g) then
  begin
  x:=i*j+j*g;
  y:=x mod k;
   if y=0 then
   b:=b+1;
  end;
  end;
  writeln(b);
  end.

