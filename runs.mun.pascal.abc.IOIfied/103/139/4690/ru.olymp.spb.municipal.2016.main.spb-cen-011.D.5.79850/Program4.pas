var k, n, p, i, j, f, m, l:integer;
var a: array [1..100] of integer;
var b: array [1..200] of integer;
var c: array [1..200] of integer;
begin;
readln(n, k);
for i:=1 to n do begin
a[i]:=i;
end;
for j:=1 to n do begin
i:=j;
if (a[i]>0) and (a[i+1]>0) then
b[j]:=a[i]*a[i+1];
l:=n+j;
if (a[i]>0) and (a[i+2]>0) then
b[l]:=a[i]*a[i+2];
if (a[i]>0) and (a[i+3]>0) then
b[l+n]:=a[i]*a[i+3];
if (a[i]>0) and (a[i+4]>0) then
b[l+2*n]:=a[i]*a[i+4];
end;
for f:=1 to n do begin
j:=f;
if (b[j]>0) and (b[j+1]>0) then
c[f]:=b[j]+b[j+1];
l:=n+f-1;
if (b[j]>0) and (b[j+2]>0) then
c[l]:=b[j]+b[j+2];
if (b[j]>0) and (b[j+3]>0) then
c[l+n]:=b[j]+b[j+3];
if (b[j]>0) and (b[j+4]>0) then
c[l+2*n]:=b[j]+b[j+4];
end;
for f:=1 to 4*n do begin
m:=c[f] mod k;
if (m=0) and (c[f]>=b[n-1]-1) then
p:=p+1;
end;
p:=p*(n-1);
writeln(p);
end.