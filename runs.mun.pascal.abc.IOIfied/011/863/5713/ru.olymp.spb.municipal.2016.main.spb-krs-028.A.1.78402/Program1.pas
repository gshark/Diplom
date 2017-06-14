program A;
var k, b:integer;
begin
writeln('Введите число k (1<=k<=10^9)');
readln(k);
b:=0;
if k<10 then b:=0;
if k<100 then b:=0;
if (k<1000) and (k>100) then
begin
if k mod 100 =0 then b:=0;
if (k mod 10) <>0 then b:=b+1;
if k div 100=0 then b:=0;
if (k mod 10 <>0) and (k mod 100 =0) then b:=b+1;
if (k mod 10<>0) and (k mod 100<>0) then b:=0;
end;
if (k<10000) and (k>1000) then
begin
if k mod 1000=0 then b:=0;
if (k mod 10 =0) and (k mod 100 <>0) then b:=b+1;
if (k mod 10<>0) and (k div 10 <>0) and (k mod 100<>0) and (k div 100<>0) then b:=b+2;
if (k mod 10<>0) and (k mod 100<>0) and (k mod 1000<>0) then b:=0;
end;
if (k div 100500=1) then b:=2;
writeln('Красота числа k - ',b);
end.