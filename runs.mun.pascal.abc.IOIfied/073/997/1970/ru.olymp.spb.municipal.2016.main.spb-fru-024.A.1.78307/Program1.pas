program zadacha_a;
var res,k,digit,i,max:integer;
begin
  max:=1000000000;
  res:=0;
  randomize;
  k:=random(max)+1;
  writeln('Исходное число ',k);
  while (k mod 10)=0 do
    k:=k div 10;
  while k>0 do begin
    if (k mod 10)=0 then
      res:=res+1;
    k:=k div 10;
  end;
  writeln('Красота числа',res:4);
 end.