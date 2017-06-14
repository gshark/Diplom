var
  n, p, q, i, j: integer;

function divide(i, j: integer): Boolean;
begin
  for t:integer:=1 to i do begin
    if (i mod t <>0) and (j mod t <> 0) then divide:=true
    else divide:=false;
  end;
end;

begin
  read(n); read(p); read(q);
  for i := 1 to n - 1 do 
  begin
    for j := 2 to n do 
    begin
      if (i / j > 1 / p) and (i / j < 1 / q) and not(divide(i, j)) then writeln(i, '/', j);
    end;
  end;
end.