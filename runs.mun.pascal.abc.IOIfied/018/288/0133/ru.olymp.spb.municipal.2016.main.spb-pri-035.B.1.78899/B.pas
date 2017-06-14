var
  n, p, q, i, j, f, r, min: integer;
  
  s: array [0..4, 0..101]  of real;

begin
  s[1, 0] := 1;
  read(n, p, q); 
  for i := 1 to n - 1 do 
  begin
    for j := 1 to i do 
    begin
      if ((1 / p) < (j / i)) and ((j / i) < (1 / q)) then
      begin
        f := f + 1;
        s[1, f] := j / i;
        s[2, f] := j;
        s[3, f] := i;
      end;
    end;
  end;

end.