program Nul;
var Num,k, shet : Integer;
begin
  readln(Num);
  shet:=0;
  while Num <> 0 do 
  begin 
  if shet=0 then if (Num mod 10 = 0) then Num:= Num div 10 else shet:=1
  else begin if (Num mod 10 = 0) then inc(k); Num := Num div 10 end
  end;
  write(k) 
end.