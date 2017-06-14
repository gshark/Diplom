program zadachaA;
var a, i, j:integer;
    k:boolean;
    mas:array[1..10] of integer;
begin
readln(a);
i:=1;
for j:=1 to 9 do
  begin
  mas[j]:=i*10;
  i:=i*10;
  end;
i:=0; k:=false;
if a mod 10 <> 0 then k:=true;
for j:=2 to 9 do
  begin
  if a < mas[j] then break;
  if (a mod mas[j] div mas[j-1] = 0) and (k = true) then i:=i+1;
  if (a mod mas[j] div mas[j-1] <> 0) and (k = false) then k:=true;
  end;
writeln(i);
end.