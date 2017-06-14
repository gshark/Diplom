program z1;

var
  k: string;
  i,n,j,count: integer;
  
begin
  n := 0;
  count := 0;
  readln(k);
  begin
    
    for j := length(k) downto 1 do 
    begin
      repeat 
        count := count + 1
      until k[j] <> '0';
    end;
  end;
  
  for i := 1 to (length(k) - count) do 
  begin
    
    if (k[i] = '0') then
      n := n + 1;
  end;
  writeln(n);
  
  
end.