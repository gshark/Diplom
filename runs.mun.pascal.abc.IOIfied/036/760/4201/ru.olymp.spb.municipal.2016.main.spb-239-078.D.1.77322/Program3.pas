var
  k, i, l, r, c, j, y, p: longint;
  s: longint;
  a: array of integer;
  b: array of integer;

begin
  read(k, c);
  setlength(b, k);
  setlength(a, k);
  for i := 0 to k - 1 do a[i] := i + 1;
  for l := 0 to k - 1 do 
  begin
    for i := 0 to k - 1 do 
    begin
      if i mod 2 = 1 then b[l] := a[i] * a[i - 1] + b[l];
      

    end;
          r := a[0];
      for p := 0 to k - 2 do a[p] := a[p + 1];
      a[k - 1] := r;
      
    if (k mod 2 = 1 ) then b[l] := a[k - 1] * a[k - 2] + b[l];
    end;
  for i := 0 to k - 1 do begin if b[i] mod c = 0 then y := y + 1; end;
  write(y*2);
end.