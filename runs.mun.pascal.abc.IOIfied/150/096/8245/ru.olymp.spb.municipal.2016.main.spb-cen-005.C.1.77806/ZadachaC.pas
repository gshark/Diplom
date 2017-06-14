program ZadachaC;

var
  n, i, ii, iii, r, z,m: integer;
  f, rr: string;
  p: array of array of char;

begin
  readln(n);
  Setlength(p, n);
  f := 'abcdefghijklmnopqrstuvwxyza';
  for i := 0 to (n - 1) do 
  begin
    SetLength(p[i], n);
    for ii := 0 to (n - 1) do 
    begin
      p[i][ii] := '0';
    end;
  end;
  
  p[0][0] := 'a';
  p[0][n - 1] := 'a';
  p[n - 1][0] := 'a';
  p[n - 1][n - 1] := 'a';
  repeat
    r := 1;
    for i := 1 to (n-1) do begin
      for ii := 1 to (n-1) do begin
       if p[i-1][ii-1] = 'a' then p[i][ii] := 'a';
      end;
    end;
  until r = 1;
  
  for i := 1 to (n-2) do begin
    p[i][n-1-i] := 'a';
  end;
  
  repeat
  r := 1;
  for i := 0 to (n-1) do begin
    for ii := 0 to (n-1) do begin
      if p[i][ii] = '0' then begin
        r := 1;
        if not (i = 0) then begin
          if not (p[i-1][ii] = '0') then begin
            for iii := 1 to 26 do begin
              if p[i-1][ii] = f[iii] then p[i][ii] := f[iii+1];
            end;
          end;
        end;
        if not (i = (n-1)) then begin
          if not (p[i+1][ii] = '0') then begin
            for iii := 1 to 26 do begin
              if p[i+1][ii] = f[iii] then p[i][ii] := f[iii+1];
            end;
          end;
        end;
        if not (ii = 0) then begin
          if not (p[i][ii-1] = '0') then begin
            for iii := 1 to 26 do begin
              if p[i][ii-1] = f[iii] then p[i][ii] := f[iii+1];
            end;
          end;
        end;
        if not (ii = (n-1)) then begin
          if not (p[i][ii+1] = '0') then begin
            for iii := 1 to 26 do begin
              if p[i][ii+1] = f[iii] then p[i][ii] := f[iii+1];
            end;
          end;
        end;
      end;
    end;
  end;
  until r = 1;
  
  for i := 0 to (n - 1) do 
  begin
    rr := '';
    for ii := 0 to (n - 1) do 
    begin
      rr := rr + p[i][ii];
    end;
    writeln(rr);
  end;
end.