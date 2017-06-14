var
n, p, q, znam, chisl, a, b, i, j, flag, k: longint;
ans: array of real;
ans2: array of string;
begin
  read(n, p, q);
  for znam:=1 to n do begin
    for chisl:=1 to znam do begin
      flag:= 0;
      if (1/p < chisl/znam) and (chisl/znam < 1/q) then begin
        a:= chisl;
        b:= znam;
        for i:=2 to chisl do begin
          if (chisl mod i = 0) and (znam mod i = 0) then begin
            flag:= 1;
          end;
        end;
        if flag = 0 then begin
          SetLength(ans, length(ans) + 1);
          ans[High(ans)] := a/b;
          SetLength(ans2, length(ans2) + 1);
          ans2[High(ans2)] := IntToStr(a) + '/' + IntToStr(b);
        end;
      end;
    end;
  end;
  Sort(ans);
  for i:= 0 to length(ans) - 1 do begin
    for j:= 0 to length(ans2) - 1  do begin
      k:= 1;
      while ans2[j][k] <> '/' do begin
        inc(k);
      end;
      if ans[i] = StrToInt(ans2[j][1:k]) / StrToInt(ans2[j][k + 1: length(ans2[j]) + 1]) then begin
        writeln(ans2[j]);
      end;
    end;
  end;
end.