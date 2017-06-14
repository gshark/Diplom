program qq;

var
  a, b, i: integer;



begin
  readln(a);
  i := 0;
  while (a > 0) do 
  begin
    if a mod 10 <> 0 then 
    begin
      b := a div 10;
      while (b > 0) do 
      begin
        if b mod 10 = 0 then inc(i)
        else break;
        b := b div 10;
      end; 
    end;
    a := a div 10;   
  end;
  writeln(i);
end.