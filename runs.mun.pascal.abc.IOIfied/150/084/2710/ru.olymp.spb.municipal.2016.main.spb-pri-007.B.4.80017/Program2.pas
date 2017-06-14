var
a1:array [0..100] of integer;
b1:array[0..100] of integer;
f1:array[0..100] of real;
p,q,f,minn,m:real;
a,b,n,s,j,i,q1,c,k:integer;
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
 For j:=1 to s-1 do 
 For i:=1 to s-j do 
 if f1[ i ]>f1[i+1] then 
 begin 
 f1[0]:=f1[i]; 
  a1[0]:=a1[i]; 
   b1[0]:=b1[i]; 
 f1[i]:=f1[i+1]; 
  a1[i]:=a1[i+1];
   b1[i]:=b1[i+1];
 f1[i+1]:=f1[0]; 
  a1[i+1]:=a1[0];
   b1[i+1]:=b1[0];
 end; 
   for i:=2 to s do
   begin
 writeln(a1[i],'/',b1[i]);
 end;
 end.

