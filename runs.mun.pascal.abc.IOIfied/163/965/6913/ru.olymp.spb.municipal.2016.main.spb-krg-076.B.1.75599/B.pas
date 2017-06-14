program t1;
var n,p,q,a,b,i:integer;
Begin
readln(n,p,q);
a:=0;
b:=0;
for i:=1 to (n-2) do begin
a:=i;
for b:=1 to (n-1) do begin
if ((1/p)<(a/b)) and ((1/q)>(a/b)) then writeln(a,'/',b)
end;
end;
End.