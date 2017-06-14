var a,c,d,p,q,f:real;i,n:integer;
begin
readln(n,p,q);
a:=p+q+1;
if n>=a then 
for i:=1 to n do begin
f:=1 / a;
writeln(f);
a:=a+1;
end;
end.
