var
  i, j, x, k: integer;
  el: array[1..100, 1..100]of integer;
  el1: array[1..100, 1..100]of char;

begin
  readln(x);
  
  for i := 1 to x do
    for j := 1 to x do
    begin
      for k := 0 to x do
        if (i = j + k) or (i = j - k) then el[i, j] := k;   
    end;
  
  
  for i := 1 to x do
    for j := 1 to x do
    begin
      for k := 0 to x div 2 do   
        if (i = x + 1 - k - j) or (i = x + 1 + k - j) then if el[i, j] > k then el[i, j] := k;      
    end;
  
  for i := 1 to x do
    for j := 1 to x do
      if el[i, j] <= 25 then el1[i, j] := chr(el[i, j] - 159) else el1[i, j] := chr(el[i, j] - 159 - 26);    
  
  
  for i := 1 to x do
  begin
    for j := 1 to x do
    begin
      write(el1[i, j]);      
    end;
    writeln;
  end;
end.