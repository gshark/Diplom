var n,p,q,i,j:integer;
begin
read(n,p,q);
n-=1;
for i:=1 to n do
  for j:=1 to n do
    if ((i/j)>(1/p)) and ((i/j)<(1/q)) then writeln(i,'/',j);
end.