var
  n, p, q, c: integer;

var
  nok: boolean;

begin
  read(n, p, q);
  c:=1;
  for var i := 1 to n - 1 do 
  begin
    for var j := 2 to n do 
    begin
      if ((i / j) > (1 / p)) and ((i / j) < (1 / q)) then begin
        nok := false;
        for var k := 2 to (j div 2) do 
        begin
          if ((i mod k) = 0) and ((j mod k) = 0) then nok := true;
        end;
        if (nok = false) then writeln(i, '/', j);
      end;
    end;
  end;
end.