program zadachab;
var n,p,q,m,c,i:integer;
a:array [1..9] of integer;
begin
read(n,p,q);
for m:=1 to 8 do
for c:=2 to 9 do
for i := (1 mod p) to (1 mod q) do
writeln(a[m]/a[c]);
end.