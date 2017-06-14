program n2;
var a: array [1..10000] of real;
z,k,b,o,f,i,j,n,p,q:integer;
c:real;
begin
read(n);
read(p);
read(q);
 for i:=1 to n-1 do
  for j:=1 to i do
   if ((j/i)>(1/p)) and ((j/i)<(1/q)) then begin
    z:=z+1;
    a[z]:=j/i
   end;
 b:=z-1;
 for o:=1 to b do begin 
  for f:= 1 to z-1 do
   if a[f]>a[f+1] then begin
    c:=a[f];
    a[f]:=a[f+1];
    a[f+1]:=c
   end;
  end;
 for f:=1 to z do
  for i:=1 to n-1 do
  for j:=1 to i do
   if ((j/i)>(1/p)) and ((j/i)<(1/q))and ((j/i)=a[f])then 
    writeln(j,'/',i);
end.
