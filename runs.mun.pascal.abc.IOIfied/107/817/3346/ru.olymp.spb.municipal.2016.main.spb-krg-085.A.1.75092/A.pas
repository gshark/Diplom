var k, x, t: integer;
    nk: boolean;
begin
readln(k);
nk:=false;
x:=0;
while k > 0 do
  begin
  t:=k mod 10;
  if t = 0
    then if nk
      then x:=x+1;
  if (t <> 0) and (not nk) then nk:=true;
  k:=k div 10;
  end;
write(x);
end.