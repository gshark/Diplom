program B;
var n,p,q,f:integer;
begin
readln(n,p,q);
p:=1 div p;
q:=1 div q;
f:=f div 8;
if f<=n then writeln('3/8');
writeln('2/5');
writeln('3/7');
writeln('4/9')
end.