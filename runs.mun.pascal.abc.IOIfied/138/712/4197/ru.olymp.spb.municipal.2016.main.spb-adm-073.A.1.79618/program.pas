var a,k:integer;
begin 
a:=0;
readln(k);
repeat
k:= k div 100;
a:=a+1;
until ( k div 100 = 0);
writeln(a);
end.


