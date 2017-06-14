var
k,b,c:longint;
begin
  readln(k);
  repeat 
    begin
      b:=k mod 10;
      if b = 0 then
        k:=k div 10;
    end;
  until b <> 0 ;
  repeat
    if k mod 10 = 0 then
      begin
      c:=c+1;
      k:=k div 10;
      end;
    if k mod 10 > 0 then
      k:= k div 10;
  until k div  10 < 1;
  writeln(c);
  end.