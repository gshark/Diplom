Program Duh;
var k, a: integer;
Begin
write ('¬ведите число k=');
readln (k);
a:=0;
while k mod 10 = 0 do k:= k div 10;
while k>0 do begin
             if k mod 10 = 0 then a:=a+1;
             k:=k div 10;
             end;
writeln (a);
end.