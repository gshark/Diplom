Program Duh;
var k, a: integer;
Begin
write ('¬ведите число a=');
readln (a);
k:=0;
while a mod 10 = 0 do a:= a div 10;
while a>0 do begin
             if a mod 10 = 0 then k:=k+1;
             a:=a div 10;
             end;
writeln (k);
end.