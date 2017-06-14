program A;
var
k, i, s, f:integer;
begin
i:=0;
readln(k);
while k>0 do
  begin
    if (k mod 10)>0 then
      f:=1;
    if ((k mod 10)=0) and (i>0) and (f=1) then
      s:=s+1;
      i:=i+1;
      k:=k div 10;
  end;
write(s);
end.
