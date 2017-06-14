var n, i, j, ii, jj, k, count, res, ans:longint;
perc: array [1..10] of longint;
per1, per2: array [1..4000000, 1..10] of longint;
begin
  read(n, k);
  ans := 0;
  per1[1,1] := 1;
  perc[1] := 1;
  for i := 2 to n do begin
    for j := 1 to perc[i-1] do begin
      for ii := 0 to i-1 do begin
        inc(perc[i]);
        count := 0;
        if (ii = 0) then begin
          inc(count);
          per2[perc[i], count] := i;          
        end;
        for jj := 1 to i-1 do begin
          inc(count);
          per2[perc[i],count] := per1[perc[i - 1],jj];
          if (jj = ii) then begin
            inc(count);
            per2[perc[i],count] := i;
          end;
        end;
      end;
    end;
    for ii := 1 to perc[i] do begin
      for jj := 1 to i do begin 
        per1[ii,jj] := per2[ii,jj];
      end;
    end;
  end;
  for i := 1 to perc[n] do begin
    res := 0;
    for j := 1 to n - 1 do begin
      res := res + per1[i,j] * per1[i,j + 1];
    end;
    if (res mod k = 0) then
      inc(ans);
  end;
  writeln(ans);
end.