var k,i,d,u,r,plus,des: integer;
var n: integer;
begin
  readln(k);
  for i:=1 to 9 do
  begin
    if (k/(Power(10,i))<1) then
    begin
      r:=i;
      break;
    end;
  end;
  for i:=1 to r do
  begin
    if(k mod 10 = 0) then
      k:= k div 10
    else
      break;
  end;
  for i:=1 to r do
  begin
    if (k/(Power(10,i))<1) then
    begin
      r:=i;
      break;
    end;
  end;
  n:=1;
  plus:=0;
  des:=1;
  for i:=0 to r-1 do
  begin
    for d:=0 to 9 do
    begin
    n:=1;
      for u:=0 to i do
        begin
          n:=n*10;
        end;
      if (k mod n = 0) and (d=0) then
      begin
        Inc(plus);
        break;
      end;
      k-=n div 10;
      
      if (k mod n = 0) then
        break; 
      n:=1;
    end; 
  end;
  writeln(plus);
end.