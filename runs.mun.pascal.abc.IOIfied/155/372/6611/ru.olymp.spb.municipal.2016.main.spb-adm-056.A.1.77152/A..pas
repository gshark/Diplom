var k, i, a:integer;
begin
readln (k);
a := 0;
while a = 0 do begin
    if (k mod 10) = 0 then
    a := 0
    else
    a := 1;
  k := k div 10;
end;
while k <> 0 do begin
    if (k mod 10) = 0 then
    i := i + 1;
  k := k div 10;
end;
writeln (i);
end.