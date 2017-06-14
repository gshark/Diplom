var
  n, p, q, i, i2, j, j2, temp: integer;
  f: double;

begin
  readln(n, p, q);
  
  while(i < 100) do 
  begin
    Inc(i);
    while(j < n) do
    begin
      Inc(j);
      f := i / j;
      if ((f > (1 / p)) and (f < (1 / q))) then begin
        i2 := i;
        j2 := j;
        
        while (j2 <> 0) do 
        begin
          temp := j2;
          j2 := i2 mod j2;
          i2 := temp;
        end;
        
        if (i2 = 1) then writeln(i, '/', j);
      end;
    end;
    j := 0;
  end;
end.