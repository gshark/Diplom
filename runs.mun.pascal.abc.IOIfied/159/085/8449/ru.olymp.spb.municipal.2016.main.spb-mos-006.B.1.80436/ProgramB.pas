program new;
var n,p,q,j,i,t,c,v,s :integer;
a:array [1..100] of integer;
b:array [1..100] of integer;
begin
 read(n,p,q);
 c:=1;
for i:=1 to n do begin
  for j:=1 to (n-1) do begin
  if ((i/j)<(1/q)) and ((i/j)>(1/p)) then begin
 a[c]:=i;
 b[c]:=j;
 inc(c);
end;
end;
end;
v:=c;
for c:=1 to v do begin
if ((a[c]/b[c])>(a[c+1]/b[c+1]))then begin
s:=a[c];
a[c]:=a[c+1];
a[c+1]:=s;
s:=b[c];
b[c]:=b[c+1];
b[c+1]:=s;
end;
end;
for c:=1 to v do begin
if ((a[c]/b[c])>(a[c+1]/b[c+1]))then begin
s:=a[c];
a[c]:=a[c+1];
a[c+1]:=s;
s:=b[c];
b[c]:=b[c+1];
b[c+1]:=s;
end;
end;
for c:=1 to (v-1) do begin
writeln(a[c],'/',b[c]);
end;
end.
  