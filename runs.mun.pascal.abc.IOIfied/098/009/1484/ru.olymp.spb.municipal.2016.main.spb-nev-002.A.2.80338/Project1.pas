var
  k : string;
  a : char;
  output, i, sum : integer;
begin
  read(k);
  sum := 0;
  output := 0;
  for i := 1 to k.Length do
  begin
    a := input[i];
    if a = '0' then
      sum := sum + 1
    else if a <> '0' then
      begin
        output := output + sum;
        sum := 0
      end;
  end;
  write(output);
  end.