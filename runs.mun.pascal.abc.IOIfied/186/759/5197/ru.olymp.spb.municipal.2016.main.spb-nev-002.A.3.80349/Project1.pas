var
  k : string;
  a : char;
  outp, i, sum : integer;
begin
  read(k);
  sum := 0;
  outp := 0;
  for i := 1 to k.Length do
  begin
    a := k[i];
    if a = '0' then
      sum := sum + 1
    else if a <> '0' then
      begin
        outp := outp + sum;
        sum := 0
      end;
  end;
  write(outp);
  end.