var k,k2,kol,kol2,otv,i:integer;
begin
  while (k<=1) or (k>power(10,9)) do
    readln(k);
  k2:=k;
  while k2>0 do 
  begin
    k2 := k2 div 10;
    kol := kol + 1;
  end;
  k2:=k;
  kol2:=kol;
  for i:=1 to kol do
  begin
      if (k2 mod 10) <> 0 then
        break
      else
      begin
       kol2:=kol2-1;
      end;
      k2:= k2 div 10;
  end;
  while k2>1 do
    begin
    if k2 mod 10 = 0 then
    otv:=otv+1;
    k2:=k2 div 10;
    end;
  writeln(otv);
end.