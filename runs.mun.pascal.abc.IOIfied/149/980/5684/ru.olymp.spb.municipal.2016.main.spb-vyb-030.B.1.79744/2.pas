Program b;
var n,p,q,i,j,k,o:integer;
c:real;
d:array[1..100] of real;
begin
read(n, p, q);
for j:=1 to n-1 do
begin
for i:=1 to n-2 do
 if (i/j<1/q) and (i/j>1/p) then
writeln(i,'/',j);
 end;

 end.
