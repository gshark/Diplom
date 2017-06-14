program drobi;
var m: array[1..4] of real;
var i, p, n, q, l, x: integer; k: real;
begin
read(n);
read(p);
read(q);
x:=1;
for i:=2 to n-1 do
begin
for l:=2 to n-1 do
begin
while m[x]<>0 do
if (l/i>1/p) and (l/i<1/q) and (i mod l<>0) then
begin
m[x]:=(l/i);
x:=x+1;
end;
end;
end;
i:=x;
k:=m[1];
for x:=2 to i do
begin
if k>=m[x] then 
begin
m[x-1]:=m[x];
m[x]:=k;
end;
end;
for x:=1 to i do
writeln(m[x]);
end.




