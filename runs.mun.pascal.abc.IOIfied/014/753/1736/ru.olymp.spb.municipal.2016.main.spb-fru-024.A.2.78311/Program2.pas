program zadacha_b;
var p,q,n,chis,znam,max:integer;
res:real;
begin 
  max:=100;
  randomize;
  n:=random(max)+1;
  p:=random(max)+1;
  q:=random(max)+1;
  if q=p then q:=p-1;
  writeln('Данные числа',n:4,p:4,q:4);
  writeln('Искомые дроби');
  for znam:=1 to n do 
    for chis:=1 to znam do begin
      res:=chis/znam;
      if(res<1/q)and(res>1/p)and((znam mod chis)<>0)then
        writeln(chis,'/',znam);
    end;
end.