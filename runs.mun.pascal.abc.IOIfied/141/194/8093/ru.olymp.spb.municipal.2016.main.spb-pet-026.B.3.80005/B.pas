var
mas:array[1..100] of real;
n, p, q, i, j, f, a:integer;
t:real;
begin
readln(n, p, q);
 for i:=1 to (n-1) do
  begin
   for j:=1 to (n-1) do
    if ((i mod j)=0) and ((n mod j)=0) then
      f:=1;
   for j:=1 to (n-1) do
    begin
      if ((i/j)>(1/p)) and ((i/j)<(1/q)) and (f=1) then
        begin
          a:=a+1;
          mas[j]:=(i/j);
        end;  
    end;
 end;
 for i:=1 to (n-1) do
 begin
  for j:=2 to (n-1) do
    if mas[j]>mas[j-1] then
      begin
        t:=mas[j-1];
        mas[j-1]:=mas[j];
        mas[j]:=t;
      end;
 end;
for i:=1 to n do
  for j:=2 to  n do 
    begin
     t:=mas[j-1];
        mas[j-1]:=mas[j];
        mas[j]:=t;
    end;
  for f:=100 downto 1 do     
 for i:=1 to n-1 do
  for j:=1 to  n-1 do
 
    if (i/j)=mas[f] then
      writeln(i, '/', j);    
end.