program A;
var k:longint; nol:boolean; count:byte;
begin
readln(k);
nol:=false;
count:=0;
while k>0 do
  begin
  if (k mod 10<>0) and (not nol) then
  nol:=not nol;
  if nol and (k mod 10=0) then
  inc(count);
  k:=k div 10;
  end;
write(count);
end.