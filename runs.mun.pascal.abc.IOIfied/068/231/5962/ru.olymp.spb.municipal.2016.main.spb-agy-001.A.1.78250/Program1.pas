var
  k: longint;
  i, f, p: integer;
  a: array[1..9] of integer;

begin
  p := 1;
  read(k);
  if k = 1000000000 then f := 0
  else begin
    for i := 1 to 9 do 
    begin
      p := p * 10;
      a[i] := (k div (p div 10)) mod (10);
    end;
    while a[1] = 0 do 
    begin
      if a[1] = 0 then for i := 2 to 9 do
          a[i - 1] := a[i];
    end;
    while a[9] = 0 do 
    begin
      if a[9] = 0 then for i := 9 downto 2 do
          a[i] := a[i - 1];
    end;
    for i := 1 to 9 do 
    begin
      if a[i] = 0 then inc(f);
    end;
  end;
  writeln(f);
end.