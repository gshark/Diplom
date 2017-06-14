program zadachad;
var n,k,i,j:integer;
a:array [1..3]of integer;
begin
read(n,k);
k:=0;
for i:=1 to n-1 do
for j:=1+i to n do
if i<>j then writeln(a[i]*a[j]+a[j]*a[j+1])
end.

