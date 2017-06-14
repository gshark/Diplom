
type frac=record 
          p,q:1..maxint;
          end;
var h,b,c,d,i,j:integer;
 s:string;
    n,k:integer;
    a:array[1..100] of frac;
    x:frac;
begin
n:=0;
read(d,b,c);
for i:=1 to d do begin
for j:=1 to d-1 do begin
if (1/b < i/j) and (1/c > i/j) then begin
n:=n+1;
a[n].p:=i;
a[n].q:=j;
end;
end;
end;
for i:=1 to n-1 do
for j:=i+1 to n do
if a[i].p/a[i].q>a[j].p/a[j].q then
 begin
  x:=a[i];
  a[i]:=a[j];
  a[j]:=x
 end;
for i:=1 to n do
if a[i].q=1 then writeln(a[i].p)
else writeln(a[i].p,'/',a[i].q);
readln
end.
