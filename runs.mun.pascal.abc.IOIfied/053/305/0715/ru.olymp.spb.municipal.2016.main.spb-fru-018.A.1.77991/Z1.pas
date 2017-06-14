program Z1;
var
 a , s : integer;
begin
s:=0;
read(a);
while (a mod 10) = 0 do begin

a:= (a div 10);
end; 
while a <> 0 do begin
if (a mod 10) = 0 then 
s:= s + 1 ;
a:=(a div 10);
end;
write (s);
end.

