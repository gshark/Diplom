program BB;
var p,q,m:real; k,z,n:shortint;
begin
readln(n,p,q);
for k:=1 to n do
for z:=1 to k do
if (z/k>1/p) and (z/k<1/q) then writeln(z,'/',k);
end.
