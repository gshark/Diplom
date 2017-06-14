program lol;
var a,i,z: longint;
begin
readln(a);
while (a mod 10 = 0) do a:= a div 10;
for i:=1 to Length(IntToStr(a)) do begin
if a mod 10 = 0 then z:=z+1; a:=a div 10;
end;
writeln(z);
end.