const m=10;
var z,p,i,j,sum, n, k: integer;
    a:array [1..m] of integer;
begin
z:=0;
p:=0;
readln(n, k);
for i:=1 to n do 
  a[i]:=i;
for j:=1 to n -1 do 
begin
  for i:=1 to n div 2 do 
   sum:=sum+a[i]*a[i+1];
 if sum mod k =0 then z:=z+1;
 sum:=0;
 p:=a[j];
 a[j]:=a[j+1];
 a[j+1]:=p
 end;
 writeln(z)
 end.