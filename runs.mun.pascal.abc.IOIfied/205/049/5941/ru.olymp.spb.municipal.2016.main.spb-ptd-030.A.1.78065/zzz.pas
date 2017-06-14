program namber_1;
var a,b :integer;
begin
writeln('введите число a');
read(a);
while a mod 10=0 do a:=a div 10;
while a>0 do begin 
if (a mod 10=0) and (a>0) then  
begin
a:=a div 10;
b:=b+1;
end
else a:=a div 10;
end;
writeln(b);
end.