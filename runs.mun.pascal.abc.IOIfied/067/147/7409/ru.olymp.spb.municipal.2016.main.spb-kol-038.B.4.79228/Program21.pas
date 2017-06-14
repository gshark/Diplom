var
  n, p, q, i, a, t, b, m, j: integer;
  iarr : array of integer;
  jarr : array of integer;

function divide(i, j: integer): Boolean;
begin
   for t: integer := 2 to i do 
  begin
    if (i mod t <> 0) or (j mod t <> 0) then divide := true
    else if (i mod t = 0) and (j mod t = 0) then begin divide := false; break; end;
  end;
end;

begin
  read(n, p, q); t:=0;
  for i := 1 to n - 1 do 
  begin
    for j := 2 to n do 
    begin
      if ((i / j) > (1 / p)) and ((i / j) < (1 / q)) and (divide(i, j)) then begin
        iarr[t]:=i; jarr[t]:=j; t:=t+1;
      end;
    end;
  end;
  for a:=0 to t-2 do begin
     for b:=a+1 to t-a-2 do begin
        if (iarr[a]/jarr[a]) > (iarr[b]/jarr[b]) then begin
          iarr[b]:=m; iarr[b]:=iarr[a]; iarr[a]:=m;
          jarr[b]:=m; jarr[b]:=jarr[a]; jarr[a]:=m;
        end;
     end;
  end;
  for a:=1 to t do begin
    writeln(iarr[a], '/', jarr[b]);
  end;
end.