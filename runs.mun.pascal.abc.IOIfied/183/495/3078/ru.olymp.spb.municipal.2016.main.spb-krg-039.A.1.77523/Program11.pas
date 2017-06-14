program zadacha1;
uses crt;
var i,k,h,x,f,g: integer;
begin
g:=0;
h:=0;
read(k);
while k mod 10 = 0 do
begin
x:=k div 10;
k:=x;
end;
while x div 10 > 0 do begin
g:=g+1;
If x mod 10 = 0 then h:=h+1;
f:=x div 10;
x:=f;
end;
writeln('Красота числа по мнению Саши - ',h);
end.