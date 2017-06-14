var
n, p, q, znam, chisl, a, b, i, flag: longint;
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
          writeln(a,'/', b);
        end;
      end;
    end;
  end;
end.