program n1;
var a,c:longint;
begin
read(a);
while a mod 10=0 do
a:=a div 10;
while a<>0 do
if a mod 10=0 then begin 
c:=c+1;
a:=a div 10;
end
else
a:=a div 10;
write(c);
end.