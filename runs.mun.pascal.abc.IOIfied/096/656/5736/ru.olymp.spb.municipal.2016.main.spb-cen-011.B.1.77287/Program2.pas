var n, p, q, a, b, k, m, v, w:integer;
var c, d: real;
begin;
readln(n, p, q);
for b:=2 to n do begin
for a:=1 to 100 do begin
c:=a/b;
m:=0;
for k:=2 to 10 do begin
v:=round(a/k*10);
w:=round(b/k*10);
if (v mod 10=0) and (w mod 10=0) then
m:=m+1;
end;
if (c<1/q) and (c>1/p) and (m=0) then
writeln(a, '/', b);
end;
end;
end.