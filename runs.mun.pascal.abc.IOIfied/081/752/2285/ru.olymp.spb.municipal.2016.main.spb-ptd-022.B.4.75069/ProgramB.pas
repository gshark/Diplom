program drobi;
var i, p, n, q, l: integer;
begin
read(n, p, q);
for i:=2 to n-1 do
begin
for l:=2 to n-1 do
if (l/i>1/p) and (l/i<1/q) and (i mod l<>0) then writeln(l,'/',i);
end;
end.
