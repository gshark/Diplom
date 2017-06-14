program B;
var n,p,q,f:integer;
begin
readln(n,p,q);
p:=1 div p;
q:=1 div q;
f:=f div 8;
if f<=n then writeln(f)
else writeln(q)
end.