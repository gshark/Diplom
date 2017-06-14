program M;

var
  s: string;
  j, k, l, oo: integer;

begin
  read(s);
  if (int64.Parse(s) <= 1000000000) and (int64.Parse(s) >= 1) then
  begin
    oo := 0;
    for j := 1 to length(s) do
      if not (s[j] = '0') then 
      begin
        for k := j to length(s) do
          if (s[k] = '0') then 
            for l := k to length(s) do
              if not (s[l] = '0') then 
              begin
                oo := oo + 1;
                break
              end;
        break;
      end;
    writeln(oo);
  end;
end.