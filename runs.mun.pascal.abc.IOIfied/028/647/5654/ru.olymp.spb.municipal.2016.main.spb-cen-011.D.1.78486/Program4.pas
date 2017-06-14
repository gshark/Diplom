var k, n, p, i, j, f, m, l:integer;
var a: array [1..10] of integer;
var b: array [1..20] of integer;
var c: array [1..20] of integer;
begin;
readln(n, k);
for i:=1 to n do begin
a[i]:=i;
end;
for j:=1 to n do begin
i:=j;
b[j]:=a[i]*a[i+1];
l:=n+j;
b[l]:=a[i]*a[i+2];
end;
for f:=1 to n do begin
j:=f;
c[f]:=b[j]+b[j+1];
l:=n+f;
c[l]:=b[j]+b[j+2];
end;
for f:=1 to 2 do begin
m:=round(c[f]/k*10);
if (m mod 10=0) and (c[f]>4) then
p:=p+1;
end;
writeln(p);
end.