program abc_d;
var
n,k,i,j,g,o,p,x,y,b:integer;
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
  writeln(b);
  end;

if n=2 then
begin 
for i:=1 to n do
 for j:=1 to n do
  begin
  if (i<>j) then
  begin
  x:=i*j;
  y:=x mod k;
   if y=0 then
   b:=b+1;
  end;
  end;
  writeln(b);
  end;
  
if n=4 then
begin 
for i:=1 to n do
 for j:=1 to n do
  for g:=1 to n do
   for o:=1 to n do
  begin
  if (i<>j) and (j<>g) and (i<>g) and (i<>o) and (j<>o) and (g<>o) then
  begin
  x:=i*j+j*g+g*o;
  y:=x mod k;
   if y=0 then
   b:=b+1;
  end;
  end;
  writeln(b);
  end;
  
if n=5 then
begin 
for i:=1 to n do
 for j:=1 to n do
  for g:=1 to n do
   for o:=1 to n do
    for p:=1 to n do
  begin
  if (i<>j) and (j<>g) and (i<>g) and (i<>o) and (j<>o) and (g<>o) and (i<>p) and (j<>p) and (g<>p) and (o<>p) then
  begin
  x:=i*j+j*g+g*o+o*p;
  y:=x mod k;
   if y=0 then
   b:=b+1;
  end;
  end;
  writeln(b);
  end;
 
end.
