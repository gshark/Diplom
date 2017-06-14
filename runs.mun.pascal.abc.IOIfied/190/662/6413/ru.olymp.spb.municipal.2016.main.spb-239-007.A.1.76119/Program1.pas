var
  s: string;
  i, k: integer;
  f: boolean;

begin
  read(s);
  f := false;
  for i := 1 to length(s) do
  begin
    if (s[i] = '0') and (f = false) then s[i] := 'a'
    else f := true;
  end;
  f := false;
  for i := length(s) downto 1 do
  begin
    if (s[i] = '0') and (f = false) then s[i] := 'a'
    else f := true;
  end;
  k := 0;
  for i := 1 to length(s) do
  begin
    if (s[i] = '0') then k := k + 1;
  end;  
  {}writeln(k);
end.