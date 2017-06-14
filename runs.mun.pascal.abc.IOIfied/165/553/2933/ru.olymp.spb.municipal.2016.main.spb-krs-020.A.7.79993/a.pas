program A;

var k,m,d,n,o,s,i,l:longint;
  
begin
readln(k);
m:= k mod 10;
d:= k div 10; 
n:=0;
o:=0;
s:=0;
l:=2;

while (m = 0) do
 begin
  n:=n+1;
  m:= d mod 10;
  d:= d div 10;
 end;
 
 d:=k mod 10000000000;
 m:=k div 10000000000; 
 while (m = 0) do
 begin
  l:=l+1;
  m:= d div 10;
  d:= d mod 10;
 end;

m:=k mod 10;
d:=k div 10;
For i:= 1 to 9 do
 begin
  if (m = 0)then
   s:=s+1;
  m:= d mod 10;
  d:= d div 10;
 end;
writeln(s,n,l);
o:=s-n-l;
writeln(o);
end. 
