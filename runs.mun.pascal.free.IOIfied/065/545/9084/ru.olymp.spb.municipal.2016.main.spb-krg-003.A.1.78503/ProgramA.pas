Program BoikoIvA;
var k,n:integer;
Begin
write('¬ведите число: ');
read(k);

while k mod 10 =0 do k:= k div 10;
writeln(k);

while k div 10 > 0 do begin if k mod 10 = 0 then n:=n+1; k:= k div 10; end;
writeln(n);
end.