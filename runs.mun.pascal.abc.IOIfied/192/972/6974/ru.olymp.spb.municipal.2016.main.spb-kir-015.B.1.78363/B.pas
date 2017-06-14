var p,q:real;
i,n,j:integer;
begin
readln(n,p,q);
for i:=1 to n do
for j:=1 to n do
if (i/j>1/p) and (i/j<1/q) then
writeln(i,'/',j);
end.
