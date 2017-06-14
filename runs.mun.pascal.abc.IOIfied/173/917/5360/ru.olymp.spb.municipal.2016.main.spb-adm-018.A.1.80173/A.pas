var
i:shortint;// счетчик
k:string; // ввод
o:integer; // вывод
b,b2:boolean; // проверки все ли 0 с конца и начала посчитаны 
begin
read(k);
for i:=0 to k.Length-1 do
begin
if (k[i+1]='0') then o+=1; // + 1 красота за каждый 0
if ((k[k.Length-i]='0') and(not b)) then o-=1 else b:=true; //-1 красота за каждый 0 на конце
if ((k[i+1]='0') and(not b2)) then o-=1 else b2:=true; //-1 красота за каждый 0 в начале записи
end;
writeln(o);
end.