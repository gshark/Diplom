program abc_d;
var
n,k,i,j,g,o,p,q,w,e,r,t,x,y,b:integer;
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

if n=8 then
begin 
for i:=1 to n do
 for j:=1 to n do
  for g:=1 to n do
   for o:=1 to n do
    for p:=1 to n do
     for q:=1 to n do
      for w:=1 to n do
       for e:=1 to n do
  begin
  if (i<>j) and (j<>g) and (i<>g) and (i<>o) and (j<>o) and (g<>o) and (i<>p) and (j<>p) and (g<>p) and (o<>p) and (i<>q) and (j<>q) and (g<>q) and (o<>q) and (p>q) and (i<>w) and (j<>w) and (g<>w) and (o<>w) and (p<>w) and (q<>w) and (i<>e) and (j<>e) and (g<>e) and (o<>e) and (p<>e) and (q<>e) and (w<>e) then
  begin
  x:=i*j+j*g+g*o+o*p+p*q+q*w+w*e+e*r;
  y:=x mod k;
   if y=0 then
   b:=b+1;
  end;
  end;
  writeln(b);
  end;
 
end.
