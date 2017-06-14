program second;
var
p,q,b,j,ch,zn,i,n:integer;
begin
readln (n,p,q);
for j:=1 to n-1 do begin
  for i:=1 to j do begin
  if ((1/p)<(i/j)) and ((i/j)<(1/q))  then writeln (i,'/',j);
  end;
  end;
end.