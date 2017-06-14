var
a1:array [1..100] of integer;
b1:array[1..100] of integer;
f1:array[1..100] of real;
p,q,f,minn:real;
a,b,n,s,j,i,min2,q1:integer;
begin
s:=1;
minn:=1;
readln(n,p,q);
for b:=2 to n-1 do
begin
 for a:=1 to b do
  begin
  f:=a/b;
  if (f<(1/q)) and (f>(1/p)) then
  begin
  a1[s]:=a;
  b1[s]:=b;
  f1[s]:=f;
  s:=s+1;
 end;
 end;
 end;
 for q1:=1 to s-1 do
 begin
  minn:=1;
 for i:=q1 to s-1 do
 begin
 if f1[i]<minn then
 begin
 min2:=i;
 minn:=f1[i];
 end;
 end;
  f1[s+1]:=f1[min2];
  for j:=q1 to min2 do
 begin
 f1[j+1]:=f1[j];
 f1[q1]:=f1[s+1];
 end;
 if min2<>q1 then
 begin
 a1[s+1]:=a1[min2];
 b1[s+1]:=b1[min2];
 for j:=min2-1 downto q1 do
 begin
 a1[j+1]:=a1[j];
 b1[j+1]:=b1[j];
 end;
 a1[q1]:=a1[s+1];
 b1[q1]:=b1[s+1];
 end;
 end;
   for i:=1 to s-1 do
 writeln(a1[i],'/',b1[i]);
 end.

