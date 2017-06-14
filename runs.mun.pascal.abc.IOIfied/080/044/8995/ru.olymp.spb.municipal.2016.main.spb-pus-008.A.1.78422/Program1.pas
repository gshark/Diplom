var i, n, k: integer;
begin
writeln('Определяем идеальность числа');
write ('введите число 1<=k<= 1 000 000 000');
readln(k);
i:=0;
while k mod 10 = 0 do
begin
k:= k div 10;
end;
repeat
 if k mod 10 >0 then
 k:= k div 10
 else
   k:= k div 10;
 i:= i+1;


until k<=0;
writeln ('идеальность числа = ',i);
end.

