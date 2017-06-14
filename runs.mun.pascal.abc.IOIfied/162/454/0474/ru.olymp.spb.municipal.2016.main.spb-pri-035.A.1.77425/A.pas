var
  k, a, s: integer;
begin
  read(k);    
  while (k > 0) do
  begin
    while (s = 0) do
    begin
    k := k div 10;
     s := k mod 10;      
     
    end;  
    if (k mod 10 = 0) then 
    begin
      a := a + 1;
    end;
    
    k := k div 10;
    
  end;  
  writeln(a);
end.