program qq;
var n,p,q,f,i,v: integer;
begin
read(n,p,q);
for i :=1 to n do begin
for v:=1 to n-1 do begin
if (v mod i <> 0) and (i<v) and (i*p>1*v) and (i*q<1*v) then
writeln(i,'/',v);
end;
end;
end.