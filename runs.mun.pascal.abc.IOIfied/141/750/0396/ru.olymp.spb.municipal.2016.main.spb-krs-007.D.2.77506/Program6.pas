program abc_d;
var
n,k,i,j,g,x,y,b:integer;
begin
read(n,k);

if n=3 then
begin
for i:=1 to n do
 for j:=1 to n do
  for g:=1 to n do
  begin
  if (i<>j) and (j<>g) and (i<>g) then
  begin
  x:=i*j+j*g;
  y:=x mod k;
   if y=0 then
   b:=b+1;
  end;
  end;
  end;
  
if n=1 then
begin
for i:=1 to n do
  begin
  x:=i;
  y:=x mod k;
   if y=0 then
   b:=b+1;
  end;
  end;
  
  if n=2 then
begin
for i:=1 to n do
 for j:=1 to n do
  begin
  if (i<>j)then
  begin
  x:=i*j;
  y:=x mod k;
   if y=0 then
   b:=b+1;
  end;
  end;
  end;
  
writeln(b);
  end.


