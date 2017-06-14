program sasha;
var a,x,k,q,w:integer;

begin
q:=0;
w:=0;
k:=0;
writeln('Введите число');
read(a);
while q=0 do begin
q:=a mod 10;
if q=0 then 
a:=a div 10; end; 
while not(a=0) do begin
q:=a mod 10; 
if q=0 then w:=w+1;
a:=a div 10;
end;
writeln('Красота числа- ',w)
end.