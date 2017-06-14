var n, p, q, i, j, a, x, b, s: integer; 
    d: array [1..10000,1..2] of integer;
begin
 read(n, p, q); a:=0;
 
 for j:= 1 to n do
  for i:= 1 to j do
  begin
   s:=0;
   for b:= 1 to i do
    if (i mod b = 0) and (j mod b = 0) and (b<>1) then s:=1;
   if ((i/j)>(1/p)) and ((i/j)<(1/q)) and (s=0) then
   begin
    a:=a+1;
    d[a,1]:=i;
    d[a,2]:=j;
   end;
  end;

 for j:= 1 to (a-1) do
  for i:= 1 to (a-j) do
   if (d[i,1]/d[i,2])>(d[i+1,1]/d[i+1,2]) then
   begin
    x:=d[i+1,1]; 
    d[i+1,1]:=d[i,1];
    d[i,1]:=x;
    x:=d[i+1,2]; 
    d[i+1,2]:=d[i,2];
    d[i,2]:=x;
   end;
   
 for i:= 1 to a do
  writeln(d[i,1],'/',d[i,2]);
end.