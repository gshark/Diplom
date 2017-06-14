program qq;
var
a,c,n: integer;
begin
read(n);
a:=0;


while ( n mod 10 = 0) do begin

if (n mod 10 = 0) then
  n:=n div 10;
  end;
  

while n>0 do begin


if (n mod 10 = 0) then
a:= a + 1;
n:=n div 10;
  
if (n mod 10 <> 0) then
n:= n div 10;
 end;

 
writeln(a);
end.