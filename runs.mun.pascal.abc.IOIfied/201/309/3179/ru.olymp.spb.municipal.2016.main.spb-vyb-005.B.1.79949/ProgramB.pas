program b;
var n,p,q,o,i: byte;
var f: real;
begin
readln(n);
readln(p);
readln(q);
for i := 2 to n-1 do
begin
for o := 2 to n-1 do
begin
f:=o/i;
if (f>1/p) and (f<1/q) then
begin
writeln(o,'/',i)
end;
end;
end;
end.
