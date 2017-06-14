var
  n, p, q, i, j, f, r, min: integer;  
  s: array [0..4, 0..101]  of real;
begin
  for i := 0 to 4 do 
  begin
    for j := 0 to 100 do 
    begin
      s[i, j] := 1;
    end;
  end;
  read(n, p, q); 
  for i := 1 to n - 1 do 
  begin
    for j := 1 to i do 
    begin
      if ((1 / p) < (j / i)) and ((j / i) < (1 / q)) then
      begin
        
        s[1, f] := j / i + 0.00000000000000000000000001;
        s[2, f] := j;
        s[3, f] := i;
        f := f + 1;
      end;
    end;
  end;
  i := 1;
  min := 0;
  for i := 1 to 100  do 
  begin    
    for j := 0 to 100 do 
    begin     
      if (s[1, j] < s[1, min]) then 
        min := j;      
    end; 
    if (s[2, min]/s[3, min]<1) then
    writeln(s[2, min], '/', s[3, min]);
    s[1, min] := 10; 
    
  end;
end.