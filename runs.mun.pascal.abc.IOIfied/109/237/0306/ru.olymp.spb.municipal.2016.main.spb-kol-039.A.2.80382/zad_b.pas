program B1;
var n, p,k,i,q,f :integer;
 
begin
readln (n, p, q);
for i:= 1 to n do
for k:=1 to i do
begin
if (k/i)>(1/p) then
if (k/i)<(1/q) then
if (k mod 2<>0) or (i mod 2<>0) then
writeln (k, '/', i)
end;
end.