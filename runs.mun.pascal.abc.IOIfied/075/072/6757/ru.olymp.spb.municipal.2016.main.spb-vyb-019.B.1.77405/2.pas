var n,p,q,i,j:integer;
u:real;
begin
readln(n,p,q);
for i:=1 to n do
for j:=1 to n-1 do
begin
u:=i/j;
if (frac(u) > 0) and  (u > 1/p) and (u < 1/q) then
writeln (i,'/',j)
end;
end.
