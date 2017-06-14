type
  ar=record
 
  x: integer;
  y:integer;
  res:real;
  end;


var  a: array [1..100] of ar; 
n,p,q,i,j,k:integer;
l:ar;
min,minR:real;
begin
readln(n,p,q);
k:=0;
for i:=1 to n do
for j:=1 to n do
begin
  if (j mod i <> 0) and (i/j>1/p) and (i/j<1/q)  then begin 
  a[i].res:=i/j;
  a[i].x:=i;
  a[i].y:=j;
  k:=k+1;
  end;
  
end;

for i:=1 to  k do
for j:=1 to  i do
if a[i].res < a[j].res then 
begin
l:=a[i];
a[i]:=a[j];
a[j]:=l;
end;
for i:=1 to k do
write(a[i].x,'/',a[i].y,' ');
end.