var
  k, c: longint;
begin
  read(k);
  c := 0;
  while k mod 10 = 0 do k := k div 10;
  while k > 0 do begin
    if k mod 10 = 0 then inc(c);
    k := k div 10;
  end;
  writeln(c);
end.