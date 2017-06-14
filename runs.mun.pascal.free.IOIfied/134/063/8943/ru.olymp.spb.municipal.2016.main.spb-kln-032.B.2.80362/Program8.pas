var a,c,d,p,q,k:real;i,n:integer;
begin
readln(n,p,q);
a:=p*q;
c:=p+q;
for i:=1 to n do begin
if a<n then begin
d:=a+i;
k:=c+i;
end;
writeln ( k, '/', d );
end;
end.
