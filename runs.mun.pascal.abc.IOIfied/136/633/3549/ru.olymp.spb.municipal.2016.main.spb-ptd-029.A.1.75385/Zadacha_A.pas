program zadacha_a;

var
  k, i, res: integer;
  b: string;

begin
  readln(k);
  res := 0;
  while (k mod 10) = 0 do k := k div 10;
  str(k, b);
  for i := 1 to length(b) do
    if b[i] = '0' then res := res + 1;
  writeln(res);
end.
