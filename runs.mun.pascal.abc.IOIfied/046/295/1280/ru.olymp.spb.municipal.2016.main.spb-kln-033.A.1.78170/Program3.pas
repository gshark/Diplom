program qq;
var
a,b,c,n: integer;
begin
read(c);
b:=0;
while (c mod 10 = 0) do begin
c:= c div 10;
 b:= b +1;
 n:= c;
end;

while n>0 do begin
 if (n mod 10 <> 0) then
 a:= a + 1;
 n:= n div 10;

end;

 
writeln(a);
end.