program abc;
var k, i, n, m, s, t: integer;
ending: boolean;
begin
read(k);
s := 0;
ending := True;
while k <> 0 do
  begin
    n := k mod 10;
    if (not ending) and (n = 0) then
      s := s + 1;
    if (ending) and (n <> 0) then
      ending := False;
    k := k div 10
  end;
write(s);
end.