program new;
var n,p,q,j,i,t,c,v,s :integer;
a:array [1..100] of integer;
b:array [1..100] of integer;
begin
 read(n,p,q);
 c:=1;
for i:=1 to n do begin
  for j:=1 to (n-1) do begin
  if ((i/j)<(1/q)) and ((i/j)>(1/p)) then begin
  writeln(i,'/',j);
  end;
  end;
  end;
  end.
  