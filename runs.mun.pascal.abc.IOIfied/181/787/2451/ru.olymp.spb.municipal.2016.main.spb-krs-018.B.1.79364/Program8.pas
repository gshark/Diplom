program gt1;
var
n,p,q,i,a,b:integer;
begin
write ();
readln (n);
write ();
readln(p);
write();
readln(q);
a:=1;
for i:=1 to n-1 do begin
for b:=1 to n-1 do begin
if (a/b>1/p) and (a/b<1/q) and (a<b) then writeln (a,'/',b);
end;
a:=a+1;
end;
end.