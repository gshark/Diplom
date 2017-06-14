program w1;
var n,k:integer;
begin
read(n);
k:=0;
while n>10 do
begin
while n mod 10 = 0 do
n:=n div 10;
 while (n mod 10)<>0 do
 n:=n div 10;
  while n mod 10=0 do
  begin
  k:=k+1;
  n:=n div 10;
  end;
end;
writeln(k);
end.